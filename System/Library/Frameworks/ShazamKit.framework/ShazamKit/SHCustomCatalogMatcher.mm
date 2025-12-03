@interface SHCustomCatalogMatcher
- (MRE)mre;
- (SHCustomCatalogMatcher)initWithCustomCatalog:(id)catalog;
- (SHMatcherDelegate)delegate;
- (id)MRESignaturesFromMatches:(id)matches;
- (id)matchFromMREResults:(id)results signature:(id)signature;
- (id)matchSignature:(id)signature;
- (id)matcherResponseFrom:(id)from querySignature:(id)signature error:(id)error;
- (int64_t)storeDensityToMREDensity:(int64_t)density;
- (void)startRecognitionForRequest:(id)request;
@end

@implementation SHCustomCatalogMatcher

- (SHCustomCatalogMatcher)initWithCustomCatalog:(id)catalog
{
  catalogCopy = catalog;
  v14.receiver = self;
  v14.super_class = SHCustomCatalogMatcher;
  v6 = [(SHCustomCatalogMatcher *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customCatalog, catalog);
    customCatalog = [(SHCustomCatalogMatcher *)v7 customCatalog];
    customCatalogContainer = [customCatalog customCatalogContainer];
    referenceSignatures = [customCatalogContainer referenceSignatures];
    v11 = [referenceSignatures count];

    if (!v11)
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Custom catalogs must contain at least one signature" userInfo:0];
      objc_exception_throw(v13);
    }
  }

  return v7;
}

- (int64_t)storeDensityToMREDensity:(int64_t)density
{
  if ((density - 1) > 5)
  {
    return 3;
  }

  else
  {
    return qword_230FE1970[density - 1];
  }
}

- (MRE)mre
{
  v26 = *MEMORY[0x277D85DE8];
  mre = self->_mre;
  if (!mre)
  {
    customCatalog = [(SHCustomCatalogMatcher *)self customCatalog];
    customCatalogContainer = [customCatalog customCatalogContainer];
    referenceSignatures = [customCatalogContainer referenceSignatures];
    v7 = [(SHCustomCatalogMatcher *)self MRESignaturesFromMatches:referenceSignatures];

    v8 = [MRE alloc];
    customCatalog2 = [(SHCustomCatalogMatcher *)self customCatalog];
    _configuration = [customCatalog2 _configuration];
    v11 = -[SHCustomCatalogMatcher storeDensityToMREDensity:](self, "storeDensityToMREDensity:", [_configuration density]);
    customCatalog3 = [(SHCustomCatalogMatcher *)self customCatalog];
    _configuration2 = [customCatalog3 _configuration];
    v21 = 0;
    v14 = -[MRE initWithSignatures:density:algorithm:error:](v8, "initWithSignatures:density:algorithm:error:", v7, v11, -[SHCustomCatalogMatcher algorithmToMREAlgorithm:](self, "algorithmToMREAlgorithm:", [_configuration2 algorithm]), &v21);
    v15 = v21;
    v16 = self->_mre;
    self->_mre = v14;

    if (v15)
    {
      v19 = sh_log_object();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v15;
        _os_log_impl(&dword_230F52000, v19, OS_LOG_TYPE_ERROR, "Custom catalog initialization failed with error %@", buf, 0xCu);
      }

      v22 = *MEMORY[0x277CCA7E8];
      v23 = v15;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Could not initialize custom catalog" userInfo:objc_claimAutoreleasedReturnValue()];
      objc_exception_throw(v20);
    }

    mre = self->_mre;
  }

  v17 = *MEMORY[0x277D85DE8];

  return mre;
}

- (id)MRESignaturesFromMatches:(id)matches
{
  v17 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(matchesCopy, "count")}];
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134217984;
    v16 = [matchesCopy count];
    _os_log_impl(&dword_230F52000, v5, OS_LOG_TYPE_DEBUG, "Initialising MRE with %lu tracks", &v15, 0xCu);
  }

  if ([matchesCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [MRESignature alloc];
      v8 = [matchesCopy objectAtIndexedSubscript:v6];
      signature = [v8 signature];
      spectralPeaksData = [signature spectralPeaksData];
      v11 = [(MRESignature *)v7 initWithSignatureData:spectralPeaksData trackID:v6];

      [v4 addObject:v11];
      ++v6;
    }

    while ([matchesCopy count] > v6);
  }

  v12 = [v4 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  delegate = [(SHCustomCatalogMatcher *)self delegate];
  signature = [requestCopy signature];

  v6 = [(SHCustomCatalogMatcher *)self matchSignature:signature];
  [delegate matcher:self didProduceResponse:v6];
}

- (id)matchSignature:(id)signature
{
  signatureCopy = signature;
  v5 = [(SHCustomCatalogMatcher *)self mre];
  spectralPeaksData = [signatureCopy spectralPeaksData];
  v11 = 0;
  v7 = [v5 search:spectralPeaksData error:&v11];
  v8 = v11;

  v9 = [(SHCustomCatalogMatcher *)self matcherResponseFrom:v7 querySignature:signatureCopy error:v8];

  return v9;
}

- (id)matcherResponseFrom:(id)from querySignature:(id)signature error:(id)error
{
  fromCopy = from;
  signatureCopy = signature;
  errorCopy = error;
  if ([fromCopy count])
  {
    v11 = [(SHCustomCatalogMatcher *)self matchFromMREResults:fromCopy signature:signatureCopy];
    v12 = [SHMatcherResponse matchWithRecordingIntermission:v11 recordingSignatureOffset:0.0 retrySeconds:0.0 match:0.0];
  }

  else
  {
    if (errorCopy)
    {
      v13 = [SHMatcherResponse errorResponseForSignature:signatureCopy error:errorCopy];
    }

    else
    {
      [signatureCopy duration];
      v15 = v14;
      customCatalog = [(SHCustomCatalogMatcher *)self customCatalog];
      [customCatalog minimumQuerySignatureDuration];
      v18 = v15 + v17;

      customCatalog2 = [(SHCustomCatalogMatcher *)self customCatalog];
      [customCatalog2 maximumQuerySignatureDuration];
      v21 = v20;

      if (v18 >= v21)
      {
        v18 = v21;
      }

      [signatureCopy duration];
      v23 = v22;
      customCatalog3 = [(SHCustomCatalogMatcher *)self customCatalog];
      [customCatalog3 maximumQuerySignatureDuration];
      if (v23 >= v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v18;
      }

      v13 = [SHMatcherResponse noMatchWithRecordingIntermission:signatureCopy recordingSignatureOffset:0.0 retrySeconds:0.0 signature:v26];
    }

    v12 = v13;
  }

  return v12;
}

- (id)matchFromMREResults:(id)results signature:(id)signature
{
  v40 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  signatureCopy = signature;
  array = [MEMORY[0x277CBEB18] array];
  v34 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = resultsCopy;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        customCatalog = [(SHCustomCatalogMatcher *)self customCatalog];
        customCatalogContainer = [customCatalog customCatalogContainer];
        v14 = [customCatalogContainer matchReferenceForTrackID:{objc_msgSend(v11, "trackID")}];

        if (v14)
        {
          signature = [v14 signature];
          v16 = [signature _ID];
          uUIDString = [v16 UUIDString];
          v18 = [v34 containsObject:uUIDString];

          if ((v18 & 1) == 0)
          {
            signature2 = [v14 signature];
            v20 = [signature2 _ID];
            uUIDString2 = [v20 UUIDString];
            [v34 addObject:uUIDString2];

            v22 = [SHMREMatch alloc];
            mediaItems = [v14 mediaItems];
            v24 = [(SHMREMatch *)v22 initWithResult:v11 mediaItems:mediaItems signatureAlignments:MEMORY[0x277CBEBF8] querySignature:signatureCopy];

            toMatchedMediaItems = [(SHMREMatch *)v24 toMatchedMediaItems];
            [array addObjectsFromArray:toMatchedMediaItems];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  v26 = [SHMatch alloc];
  v27 = [array copy];
  v28 = [(SHMatch *)v26 initWithMediaItems:v27 forSignature:signatureCopy];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface SHCustomCatalogMatcher
- (MRE)mre;
- (SHCustomCatalogMatcher)initWithCustomCatalog:(id)a3;
- (SHMatcherDelegate)delegate;
- (id)MRESignaturesFromMatches:(id)a3;
- (id)matchFromMREResults:(id)a3 signature:(id)a4;
- (id)matchSignature:(id)a3;
- (id)matcherResponseFrom:(id)a3 querySignature:(id)a4 error:(id)a5;
- (int64_t)storeDensityToMREDensity:(int64_t)a3;
- (void)startRecognitionForRequest:(id)a3;
@end

@implementation SHCustomCatalogMatcher

- (SHCustomCatalogMatcher)initWithCustomCatalog:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SHCustomCatalogMatcher;
  v6 = [(SHCustomCatalogMatcher *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customCatalog, a3);
    v8 = [(SHCustomCatalogMatcher *)v7 customCatalog];
    v9 = [v8 customCatalogContainer];
    v10 = [v9 referenceSignatures];
    v11 = [v10 count];

    if (!v11)
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Custom catalogs must contain at least one signature" userInfo:0];
      objc_exception_throw(v13);
    }
  }

  return v7;
}

- (int64_t)storeDensityToMREDensity:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 3;
  }

  else
  {
    return qword_230FE1970[a3 - 1];
  }
}

- (MRE)mre
{
  v26 = *MEMORY[0x277D85DE8];
  mre = self->_mre;
  if (!mre)
  {
    v4 = [(SHCustomCatalogMatcher *)self customCatalog];
    v5 = [v4 customCatalogContainer];
    v6 = [v5 referenceSignatures];
    v7 = [(SHCustomCatalogMatcher *)self MRESignaturesFromMatches:v6];

    v8 = [MRE alloc];
    v9 = [(SHCustomCatalogMatcher *)self customCatalog];
    v10 = [v9 _configuration];
    v11 = -[SHCustomCatalogMatcher storeDensityToMREDensity:](self, "storeDensityToMREDensity:", [v10 density]);
    v12 = [(SHCustomCatalogMatcher *)self customCatalog];
    v13 = [v12 _configuration];
    v21 = 0;
    v14 = -[MRE initWithSignatures:density:algorithm:error:](v8, "initWithSignatures:density:algorithm:error:", v7, v11, -[SHCustomCatalogMatcher algorithmToMREAlgorithm:](self, "algorithmToMREAlgorithm:", [v13 algorithm]), &v21);
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

- (id)MRESignaturesFromMatches:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134217984;
    v16 = [v3 count];
    _os_log_impl(&dword_230F52000, v5, OS_LOG_TYPE_DEBUG, "Initialising MRE with %lu tracks", &v15, 0xCu);
  }

  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [MRESignature alloc];
      v8 = [v3 objectAtIndexedSubscript:v6];
      v9 = [v8 signature];
      v10 = [v9 spectralPeaksData];
      v11 = [(MRESignature *)v7 initWithSignatureData:v10 trackID:v6];

      [v4 addObject:v11];
      ++v6;
    }

    while ([v3 count] > v6);
  }

  v12 = [v4 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startRecognitionForRequest:(id)a3
{
  v4 = a3;
  v7 = [(SHCustomCatalogMatcher *)self delegate];
  v5 = [v4 signature];

  v6 = [(SHCustomCatalogMatcher *)self matchSignature:v5];
  [v7 matcher:self didProduceResponse:v6];
}

- (id)matchSignature:(id)a3
{
  v4 = a3;
  v5 = [(SHCustomCatalogMatcher *)self mre];
  v6 = [v4 spectralPeaksData];
  v11 = 0;
  v7 = [v5 search:v6 error:&v11];
  v8 = v11;

  v9 = [(SHCustomCatalogMatcher *)self matcherResponseFrom:v7 querySignature:v4 error:v8];

  return v9;
}

- (id)matcherResponseFrom:(id)a3 querySignature:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [(SHCustomCatalogMatcher *)self matchFromMREResults:v8 signature:v9];
    v12 = [SHMatcherResponse matchWithRecordingIntermission:v11 recordingSignatureOffset:0.0 retrySeconds:0.0 match:0.0];
  }

  else
  {
    if (v10)
    {
      v13 = [SHMatcherResponse errorResponseForSignature:v9 error:v10];
    }

    else
    {
      [v9 duration];
      v15 = v14;
      v16 = [(SHCustomCatalogMatcher *)self customCatalog];
      [v16 minimumQuerySignatureDuration];
      v18 = v15 + v17;

      v19 = [(SHCustomCatalogMatcher *)self customCatalog];
      [v19 maximumQuerySignatureDuration];
      v21 = v20;

      if (v18 >= v21)
      {
        v18 = v21;
      }

      [v9 duration];
      v23 = v22;
      v24 = [(SHCustomCatalogMatcher *)self customCatalog];
      [v24 maximumQuerySignatureDuration];
      if (v23 >= v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v18;
      }

      v13 = [SHMatcherResponse noMatchWithRecordingIntermission:v9 recordingSignatureOffset:0.0 retrySeconds:0.0 signature:v26];
    }

    v12 = v13;
  }

  return v12;
}

- (id)matchFromMREResults:(id)a3 signature:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = a4;
  v31 = [MEMORY[0x277CBEB18] array];
  v34 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
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
        v12 = [(SHCustomCatalogMatcher *)self customCatalog];
        v13 = [v12 customCatalogContainer];
        v14 = [v13 matchReferenceForTrackID:{objc_msgSend(v11, "trackID")}];

        if (v14)
        {
          v15 = [v14 signature];
          v16 = [v15 _ID];
          v17 = [v16 UUIDString];
          v18 = [v34 containsObject:v17];

          if ((v18 & 1) == 0)
          {
            v19 = [v14 signature];
            v20 = [v19 _ID];
            v21 = [v20 UUIDString];
            [v34 addObject:v21];

            v22 = [SHMREMatch alloc];
            v23 = [v14 mediaItems];
            v24 = [(SHMREMatch *)v22 initWithResult:v11 mediaItems:v23 signatureAlignments:MEMORY[0x277CBEBF8] querySignature:v32];

            v25 = [(SHMREMatch *)v24 toMatchedMediaItems];
            [v31 addObjectsFromArray:v25];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  v26 = [SHMatch alloc];
  v27 = [v31 copy];
  v28 = [(SHMatch *)v26 initWithMediaItems:v27 forSignature:v32];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
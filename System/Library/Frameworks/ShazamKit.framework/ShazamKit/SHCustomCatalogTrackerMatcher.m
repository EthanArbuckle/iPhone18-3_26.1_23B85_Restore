@interface SHCustomCatalogTrackerMatcher
- (SHCustomCatalogTrackerMatcher)initWithCustomCatalogConfiguration:(id)a3 container:(id)a4;
- (SHMatcherDelegate)delegate;
- (id)matchFromMREResults:(id)a3 signature:(id)a4 signatureAlignments:(id)a5;
- (id)trackQuerySignature:(id)a3 inReferenceSignature:(id)a4;
- (void)startRecognitionForRequest:(id)a3;
@end

@implementation SHCustomCatalogTrackerMatcher

- (SHCustomCatalogTrackerMatcher)initWithCustomCatalogConfiguration:(id)a3 container:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SHCustomCatalogTrackerMatcher;
  v9 = [(SHCustomCatalogTrackerMatcher *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_customCatalogConfiguration, a3);
    objc_storeStrong(&v10->_container, a4);
    v11 = [(SHCustomCatalogTrackerMatcher *)v10 container];
    v12 = [v11 referenceSignatures];
    v13 = [v12 count];

    if (v13 != 1)
    {
      v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Tracking only supports one reference signature" userInfo:0];
      objc_exception_throw(v15);
    }
  }

  return v10;
}

- (void)startRecognitionForRequest:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 signature];
  [v5 duration];
  v7 = v6;
  +[SHCustomCatalogConfiguration minimumQuerySignatureDurationForTracking];
  v9 = v8;

  if (v7 >= v9)
  {
    v22 = [(SHCustomCatalogTrackerMatcher *)self container];
    v23 = [v22 referenceSignatures];
    v28 = [v23 firstObject];

    v24 = [(SHCustomCatalogTrackerMatcher *)self delegate];
    v25 = [v4 signature];

    v26 = [(SHCustomCatalogTrackerMatcher *)self trackQuerySignature:v25 inReferenceSignature:v28];
    [v24 matcher:self didProduceResponse:v26];

    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = [(SHCustomCatalogTrackerMatcher *)self delegate];
    v11 = [v4 signature];
    v29 = *MEMORY[0x277CCA068];
    v12 = MEMORY[0x277CCACA8];
    v13 = [v4 signature];

    [v13 duration];
    v15 = v14;
    +[SHCustomCatalogConfiguration minimumQuerySignatureDurationForTracking];
    v17 = [v12 stringWithFormat:@"Signature cannot be tracked with duration of %.2f secs it must be at least %.2f secs in duration", v15, v16];
    v30[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v19 = [SHError errorWithCode:202 underlyingError:0 keyOverrides:v18];
    v20 = [SHMatcherResponse errorResponseForSignature:v11 error:v19];
    [v10 matcher:self didProduceResponse:v20];

    v21 = *MEMORY[0x277D85DE8];
  }
}

- (id)trackQuerySignature:(id)a3 inReferenceSignature:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 signature];
  v9 = [(SHCustomCatalogTrackerMatcher *)self customCatalogConfiguration];
  v18 = 0;
  v10 = [SHContinuityTracker trackQuerySignature:v6 inReferenceSignature:v8 configuration:v9 error:&v18];
  v11 = v18;

  if ([v10 count])
  {
    v12 = -[MREResult initWithTrackId:offset:timeSkew:freqSkew:score:]([MREResult alloc], "initWithTrackId:offset:timeSkew:freqSkew:score:", [v7 trackID], &unk_2845D1518, &unk_2845D1518, &unk_2845D1518, 0.0);
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

    v14 = [(SHCustomCatalogTrackerMatcher *)self matchFromMREResults:v13 signature:v6 signatureAlignments:v10];
    v15 = [SHMatcherResponse matchWithRecordingIntermission:v14 recordingSignatureOffset:0.0 retrySeconds:0.0 match:0.0];
  }

  else
  {
    if (v11)
    {
      [SHMatcherResponse errorResponseForSignature:v6 error:v11];
    }

    else
    {
      [SHMatcherResponse noMatchWithRecordingIntermission:v6 recordingSignatureOffset:0.0 retrySeconds:0.0 signature:0.0];
    }
    v15 = ;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)matchFromMREResults:(id)a3 signature:(id)a4 signatureAlignments:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v27 = a4;
  v28 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [(SHCustomCatalogTrackerMatcher *)self container];
        v17 = [v16 matchReferenceForTrackID:{objc_msgSend(v15, "trackID")}];

        if (v17)
        {
          v18 = [SHMREMatch alloc];
          v19 = [v17 mediaItems];
          v20 = [(SHMREMatch *)v18 initWithResult:v15 mediaItems:v19 signatureAlignments:v28 querySignature:v27];

          v21 = [(SHMREMatch *)v20 toMatchedMediaItems];
          [v9 addObjectsFromArray:v21];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = [SHMatch alloc];
  v23 = [v9 copy];
  v24 = [(SHMatch *)v22 initWithMediaItems:v23 forSignature:v27];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
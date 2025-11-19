@interface SHContinuityTracker
+ (id)buildSignatureAlignment:(id)a3;
+ (id)trackQuerySignature:(id)a3 inReferenceSignature:(id)a4 usingMergePolicy:(int64_t)a5 configuration:(id)a6 error:(id *)a7;
@end

@implementation SHContinuityTracker

+ (id)trackQuerySignature:(id)a3 inReferenceSignature:(id)a4 usingMergePolicy:(int64_t)a5 configuration:(id)a6 error:(id *)a7
{
  v56[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  [v12 duration];
  if (v15 < 2.0 || ([v13 duration], v16 < 2.0))
  {
    v17 = MEMORY[0x277CCACA8];
    [v12 duration];
    v19 = v18;
    [v13 duration];
    v21 = [v17 stringWithFormat:@"Duration of query signature: %f or reference signature: %f is less than the minimum required duration for tracking: %f", v19, v20, 0x4000000000000000];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    [SHError annotateClientError:a7 code:201 underlyingError:0 keyOverrides:v22];
LABEL_4:
    v23 = 0;
    goto LABEL_5;
  }

  v47 = [v12 spectralPeaksData];
  v26 = [v13 spectralPeaksData];
  v46 = [v14 numHistogramBuckets];
  [v14 scoreThreshold];
  v28 = v27;
  v45 = [v14 boundingBox];
  [v14 frequencyPenaltyMultiplier];
  v30 = v29;
  v31 = [v14 forwardPassOnly];
  v32 = [v14 singlePassOnly];
  v33 = [v14 refineStartEnd];
  [v14 queryThreshold];
  LODWORD(v35) = v34;
  v53 = 0;
  BYTE1(v44) = v33;
  LOBYTE(v44) = v32;
  LODWORD(v36) = v28;
  LODWORD(v37) = v30;
  v22 = [SignatureAlignmentTracker compareQuerySignature:v47 withReferenceSignature:v26 mergeMode:a5 numHistogramBuckets:v46 scoreThreshold:v45 boundingBox:v31 frequencyPenaltyMultiplier:v36 forwardPassOnly:v37 singlePassOnly:v35 refineStartEnd:v44 queryThreshold:&v53 error:?];
  v21 = v53;

  if (!v22)
  {
    [SHError annotateClientError:a7 code:200 underlyingError:v21];
    goto LABEL_4;
  }

  v48 = v13;
  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = v22;
  v39 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v50;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(v22);
        }

        v43 = [a1 buildSignatureAlignment:*(*(&v49 + 1) + 8 * i)];
        [v38 addObject:v43];
      }

      v40 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v40);
  }

  v23 = [v38 copy];
  v13 = v48;
LABEL_5:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)buildSignatureAlignment:(id)a3
{
  v3 = a3;
  v4 = [SHRange alloc];
  [v3 queryStart];
  v6 = v5;
  [v3 queryEnd];
  v8 = [(SHRange *)v4 initWithLowerBound:v6 upperBound:v7];
  v9 = [SHRange alloc];
  [v3 referenceStart];
  v11 = v10;
  [v3 referenceEnd];
  v13 = [(SHRange *)v9 initWithLowerBound:v11 upperBound:v12];
  v14 = [SHSignatureAlignment alloc];
  [v3 confidence];
  LODWORD(v11) = v15;

  LODWORD(v16) = LODWORD(v11);
  v17 = [(SHSignatureAlignment *)v14 initWithQueryRange:v8 referenceRange:v13 alignmentConfidence:v16];

  return v17;
}

@end
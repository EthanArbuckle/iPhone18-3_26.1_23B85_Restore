@interface SHContinuityTracker
+ (id)buildSignatureAlignment:(id)alignment;
+ (id)trackQuerySignature:(id)signature inReferenceSignature:(id)referenceSignature usingMergePolicy:(int64_t)policy configuration:(id)configuration error:(id *)error;
@end

@implementation SHContinuityTracker

+ (id)trackQuerySignature:(id)signature inReferenceSignature:(id)referenceSignature usingMergePolicy:(int64_t)policy configuration:(id)configuration error:(id *)error
{
  v56[1] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  referenceSignatureCopy = referenceSignature;
  configurationCopy = configuration;
  [signatureCopy duration];
  if (v15 < 2.0 || ([referenceSignatureCopy duration], v16 < 2.0))
  {
    v17 = MEMORY[0x277CCACA8];
    [signatureCopy duration];
    v19 = v18;
    [referenceSignatureCopy duration];
    0x4000000000000000 = [v17 stringWithFormat:@"Duration of query signature: %f or reference signature: %f is less than the minimum required duration for tracking: %f", v19, v20, 0x4000000000000000];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = 0x4000000000000000;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    [SHError annotateClientError:error code:201 underlyingError:0 keyOverrides:v22];
LABEL_4:
    v23 = 0;
    goto LABEL_5;
  }

  spectralPeaksData = [signatureCopy spectralPeaksData];
  spectralPeaksData2 = [referenceSignatureCopy spectralPeaksData];
  numHistogramBuckets = [configurationCopy numHistogramBuckets];
  [configurationCopy scoreThreshold];
  v28 = v27;
  boundingBox = [configurationCopy boundingBox];
  [configurationCopy frequencyPenaltyMultiplier];
  v30 = v29;
  forwardPassOnly = [configurationCopy forwardPassOnly];
  singlePassOnly = [configurationCopy singlePassOnly];
  refineStartEnd = [configurationCopy refineStartEnd];
  [configurationCopy queryThreshold];
  LODWORD(v35) = v34;
  v53 = 0;
  BYTE1(v44) = refineStartEnd;
  LOBYTE(v44) = singlePassOnly;
  LODWORD(v36) = v28;
  LODWORD(v37) = v30;
  v22 = [SignatureAlignmentTracker compareQuerySignature:spectralPeaksData withReferenceSignature:spectralPeaksData2 mergeMode:policy numHistogramBuckets:numHistogramBuckets scoreThreshold:boundingBox boundingBox:forwardPassOnly frequencyPenaltyMultiplier:v36 forwardPassOnly:v37 singlePassOnly:v35 refineStartEnd:v44 queryThreshold:&v53 error:?];
  0x4000000000000000 = v53;

  if (!v22)
  {
    [SHError annotateClientError:error code:200 underlyingError:0x4000000000000000];
    goto LABEL_4;
  }

  v48 = referenceSignatureCopy;
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

        v43 = [self buildSignatureAlignment:*(*(&v49 + 1) + 8 * i)];
        [v38 addObject:v43];
      }

      v40 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v40);
  }

  v23 = [v38 copy];
  referenceSignatureCopy = v48;
LABEL_5:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)buildSignatureAlignment:(id)alignment
{
  alignmentCopy = alignment;
  v4 = [SHRange alloc];
  [alignmentCopy queryStart];
  v6 = v5;
  [alignmentCopy queryEnd];
  v8 = [(SHRange *)v4 initWithLowerBound:v6 upperBound:v7];
  v9 = [SHRange alloc];
  [alignmentCopy referenceStart];
  v11 = v10;
  [alignmentCopy referenceEnd];
  v13 = [(SHRange *)v9 initWithLowerBound:v11 upperBound:v12];
  v14 = [SHSignatureAlignment alloc];
  [alignmentCopy confidence];
  LODWORD(v11) = v15;

  LODWORD(v16) = LODWORD(v11);
  v17 = [(SHSignatureAlignment *)v14 initWithQueryRange:v8 referenceRange:v13 alignmentConfidence:v16];

  return v17;
}

@end
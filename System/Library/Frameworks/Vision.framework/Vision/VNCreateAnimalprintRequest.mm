@interface VNCreateAnimalprintRequest
+ (const)dependentRequestMappingTable;
+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)a3 fromDescriptorData:(const void *)a4 length:(unint64_t)a5 elementCount:(unint64_t)a6 error:(id *)a7;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (void)_determineAnimalsToProcessFrom:(id)a3 outputAnimalsThatNeedNoProcessing:(id)a4 outputAnimalsThatNeedAnimalprints:(id)a5;
@end

@implementation VNCreateAnimalprintRequest

+ (const)dependentRequestMappingTable
{
  {
    +[VNCreateAnimalprintRequest dependentRequestMappingTable]::ourDependentRequestMappingTable = 1;
    qword_1EB2864B0 = objc_opt_class();
    unk_1EB2864B8 = xmmword_1A6038C70;
    qword_1EB2864C8 = objc_opt_class();
    unk_1EB2864D0 = 1;
    qword_1EB2864E0 = 0;
    unk_1EB2864E8 = 0;
    qword_1EB2864D8 = 0;
  }

  return &+[VNCreateAnimalprintRequest dependentRequestMappingTable]::ourDependentRequestMappingTable;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v76 = 0;
  v56 = v8;
  v9 = [(VNImageBasedRequest *)self getOptionalValidatedInputDetectedObjectObservations:&v76 forObservationClass:objc_opt_class() relationWithRegionOfInterest:1 error:a5];
  v57 = v76;
  if (v9)
  {
    v53 = a3;
    v58 = a5;
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v57)
    {
      [(VNCreateAnimalprintRequest *)self _determineAnimalsToProcessFrom:v57 outputAnimalsThatNeedNoProcessing:v55 outputAnimalsThatNeedAnimalprints:v10];
    }

    else
    {
      v54 = [v8 requestPerformerAndReturnError:a5];
      if (!v54)
      {
        v29 = 0;
        goto LABEL_42;
      }

      v62 = objc_alloc_init(VNRecognizeAnimalsRequest);
      [(VNImageBasedRequest *)v62 applyConfigurationOfRequest:self];
      v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v62, 0}];
      if ([objc_opt_class() _isAnimalFaceprintingSupportedForRequestRevision:v53])
      {
        v30 = objc_alloc_init(VNRecognizeAnimalFacesRequest);
        [(VNImageBasedRequest *)v30 applyConfigurationOfRequest:self];
        [v59 addObject:v30];
      }

      if (([v54 performDependentRequests:v59 onBehalfOfRequest:self inContext:v8 error:a5] & 1) == 0)
      {
        goto LABEL_37;
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obja = v59;
      v31 = [obja countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v31)
      {
        v32 = *v73;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v73 != v32)
            {
              objc_enumerationMutation(obja);
            }

            v34 = *(*(&v72 + 1) + 8 * i);
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v35 = [v34 results];
            v36 = [v35 countByEnumeratingWithState:&v68 objects:v79 count:16];
            if (v36)
            {
              v37 = *v69;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v69 != v37)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v39 = *(*(&v68 + 1) + 8 * j);
                  [(VNImageBasedRequest *)self regionOfInterest];
                  v41 = v40;
                  v43 = v42;
                  v45 = v44;
                  v47 = v46;
                  [v39 boundingBox];
                  v83.origin.x = v48;
                  v83.origin.y = v49;
                  v83.size.width = v50;
                  v83.size.height = v51;
                  v82.origin.x = v41;
                  v82.origin.y = v43;
                  v82.size.width = v45;
                  v82.size.height = v47;
                  if (CGRectIntersectsRect(v82, v83))
                  {
                    [v10 addObject:v39];
                  }
                }

                v36 = [v35 countByEnumeratingWithState:&v68 objects:v79 count:16];
              }

              while (v36);
            }
          }

          v31 = [obja countByEnumeratingWithState:&v72 objects:v80 count:16];
        }

        while (v31);
      }

      v8 = v56;
    }

    v54 = [v8 session];
    v11 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:v53 session:v54];
    v67 = v11;
    v59 = [(VNRequest *)self applicableDetectorAndOptions:&v67 forRevision:v53 loadedInSession:v54 error:v58];
    v62 = v67;

    if (v59)
    {
      v12 = [MEMORY[0x1E695DF70] arrayWithArray:v55];
      v13 = [v56 imageBufferAndReturnError:v58];
      obj = v13;
      if (v13)
      {
        v78 = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
        [(VNRecognizeAnimalsRequest *)v62 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        [(VNImageBasedRequest *)self regionOfInterest];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = [v56 qosClass];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v24 = v10;
        v25 = [v24 countByEnumeratingWithState:&v63 objects:v77 count:16];
        if (v25)
        {
          v26 = *v64;
          while (2)
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v64 != v26)
              {
                objc_enumerationMutation(v24);
              }

              [(VNRecognizeAnimalsRequest *)v62 setObject:*(*(&v63 + 1) + 8 * k) forKeyedSubscript:@"VNAnimalprintDetectorProcessOption_InputAnimalObservation"];
              v28 = [v59 processUsingQualityOfServiceClass:v23 options:v62 regionOfInterest:self warningRecorder:v58 error:0 progressHandler:{v16, v18, v20, v22}];
              if (!v28)
              {

                goto LABEL_39;
              }

              [v12 addObjectsFromArray:v28];
            }

            v25 = [v24 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        [(VNRequest *)self setResults:v12];
        v29 = 1;
      }

      else
      {
LABEL_39:
        v29 = 0;
      }

      goto LABEL_41;
    }

LABEL_37:
    v29 = 0;
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v29 = 0;
LABEL_43:

  return v29;
}

- (void)_determineAnimalsToProcessFrom:(id)a3 outputAnimalsThatNeedNoProcessing:(id)a4 outputAnimalsThatNeedAnimalprints:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v16 = v9;
        if (isKindOfClass)
        {
          v17 = [v14 animalprint];
          v18 = v17 == 0;

          if (v18)
          {
            v16 = v9;
          }

          else
          {
            v16 = v8;
          }
        }

        [v16 addObject:{v14, v19}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 3737841667 || a3 == 1)
  {
    v5 = @"VNAnimalprintDetectorDetectorType";
    v6 = @"VNAnimalprintDetectorDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841665u >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNCreateAnimalprintRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = *(&off_1E77B40D8 + a3 - 3737841665u);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNCreateAnimalprintRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNCreateAnimalprintRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_17794);
  }

  v3 = +[VNCreateAnimalprintRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __62__VNCreateAnimalprintRequest_Revisioning__privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNCreateAnimalprintRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF003uLL, a2, a3, a4, a5, a6, a7, a8, 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)a3 fromDescriptorData:(const void *)a4 length:(unint64_t)a5 elementCount:(unint64_t)a6 error:(id *)a7
{
  v11 = [VNAnimalprint alloc];
  LODWORD(v12) = 1.0;
  v13 = [(VNAnimalprint *)v11 initWithData:a4 elementCount:a6 elementType:1 lengthInBytes:a5 confidence:a3 requestRevision:v12];

  return v13;
}

@end
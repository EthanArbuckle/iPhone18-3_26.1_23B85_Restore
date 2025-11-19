@interface VNCalculateImageAestheticsScoresRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (id)_configureDependentRequestForRevision:(unint64_t)a3 error:(id *)a4;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
@end

@implementation VNCalculateImageAestheticsScoresRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v58[2] = *MEMORY[0x1E69E9840];
  v48 = a4;
  v50 = objc_alloc_init(VNClassifyImageAestheticsRequest);
  [(VNImageBasedRequest *)v50 applyConfigurationOfRequest:self];
  v49 = objc_alloc_init(VNClassifyJunkImageRequest);
  [(VNClassifyJunkImageRequest *)v49 applyConfigurationOfRequest:self];
  if (a3 == 1)
  {
    if ([(VNRequest *)v50 setRevision:3737841667 error:a5]&& [(VNRequest *)v49 setRevision:3737841669 error:a5])
    {
      v46 = [v48 requestPerformerAndReturnError:a5];
      if (!v46 || (v45 = self, v58[0] = v50, v58[1] = v49, [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v46, "performDependentRequests:onBehalfOfRequest:inContext:error:", v7, self, v48, a5), v7, (v8 & 1) == 0))
      {
        v27 = 0;
LABEL_52:

        goto LABEL_31;
      }

      v9 = [(VNRequest *)v50 results];
      v44 = [v9 objectAtIndexedSubscript:0];

      [v44 aestheticScore];
      v43 = v10;
      [v44 failureScore];
      v12 = v11;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v13 = [(VNRequest *)v49 results];
      v14 = NAN;
      v15 = [v13 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v15)
      {
        v16 = *v53;
        v47 = NAN;
        v17 = NAN;
        v18 = NAN;
        v19 = NAN;
        v20 = NAN;
        v21 = NAN;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v53 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v23 = *(*(&v52 + 1) + 8 * i);
            v24 = [v23 identifier];
            [v23 confidence];
            v26 = v25;
            if ([v24 isEqualToString:@"negative"])
            {
              v21 = v26;
            }

            else if ([v24 isEqualToString:@"tragic_failure"])
            {
              v20 = v26;
            }

            else if ([v24 isEqualToString:@"hier_poor_quality"])
            {
              v19 = v26;
            }

            else if ([v24 isEqualToString:@"hier_non_memorable"])
            {
              v18 = v26;
            }

            else if ([v24 isEqualToString:@"screenshot"])
            {
              v17 = v26;
            }

            else if ([v24 isEqualToString:@"receipt_or_document"])
            {
              v47 = v26;
            }

            else if ([v24 isEqualToString:@"hier_text_document"])
            {
              v14 = v26;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v15);
      }

      else
      {
        v47 = NAN;
        v17 = NAN;
        v18 = NAN;
        v19 = NAN;
        v20 = NAN;
        v21 = NAN;
      }

      v29 = -v12;
      if (v12 < -0.025 || v20 > 0.15 || v19 > 0.62)
      {
        v30 = 0;
        if (v20 >= v19)
        {
          v31 = v20;
        }

        else
        {
          v31 = v19;
        }

        if (v31 > v29)
        {
          v12 = -v31;
        }

        goto LABEL_49;
      }

      if (v18 > 0.675)
      {
        v30 = 1;
        if (v21 < 0.3 || v17 > 0.84 || v47 > 0.71)
        {
          goto LABEL_43;
        }

        v12 = v43;
        if (v14 >= 0.58)
        {
LABEL_49:
          v32 = [(VNRequest *)v45 specifier];
          *&v33 = v12;
          *&v34 = v43;
          *&v35 = v29;
          *&v36 = v21;
          *&v37 = v20;
          *&v38 = v19;
          *&v39 = v18;
          *&v40 = v17;
          v41 = [VNImageAestheticsScoresObservation observationForOriginatingRequestSpecifier:v32 isUtility:v30 overallScore:a5 aestheticScore:v33 failureScore:v34 junkNegativeScore:v35 junkTragicFailureScore:v36 poorQualityScore:v37 nonMemorableScore:v38 screenShotScore:v39 receiptOrDocumentScore:v40 textDocumentScore:__PAIR64__(LODWORD(v14) error:LODWORD(v47))];

          v27 = v41 != 0;
          if (v41)
          {
            v56 = v41;
            v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
            [(VNRequest *)v45 setResults:v42];
          }

          goto LABEL_52;
        }
      }

      v30 = 0;
LABEL_43:
      v12 = v43;
      goto LABEL_49;
    }

    goto LABEL_30;
  }

  if (!a5)
  {
LABEL_30:
    v27 = 0;
    goto LABEL_31;
  }

  [VNError errorForUnsupportedRevision:a3 ofRequest:self];
  *a5 = v27 = 0;
LABEL_31:

  return v27;
}

- (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = VNCalculateImageAestheticsScoresRequest;
  if ([(VNRequest *)&v20 warmUpSession:v6 error:a4])
  {
    v7 = [(VNCalculateImageAestheticsScoresRequest *)self _configureDependentRequestForRevision:[(VNRequest *)self resolvedRevision] error:a4];
    v8 = v7;
    if (v7)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [v7 requests];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            [v13 applyConfigurationOfRequest:self];
            if (([v13 warmUpSession:v6 error:a4] & 1) == 0)
            {
              v14 = 0;
              goto LABEL_14;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v14 = 1;
LABEL_14:
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = &stru_1F1976900;
    v5 = &stru_1F1976900;
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v27 = [(VNCalculateImageAestheticsScoresRequest *)self _configureDependentRequestForRevision:[(VNRequest *)self resolvedRevision] error:a3];
  if (v27)
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = [v27 requests];
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v36 + 1) + 8 * i) supportedComputeStageDevicesAndReturnError:a3];
        if (!v8)
        {

          v9 = 0;
          goto LABEL_47;
        }

        [v30 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v5);
LABEL_10:

    v26 = v30;
    context = objc_autoreleasePoolPush();
    v25 = [v26 firstObject];
    if (v25)
    {
      if ([v26 count] == 1)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v25 copyItems:1];
        goto LABEL_46;
      }

      v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v26;
      v10 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v10)
      {
        v11 = *v49;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v49 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = [*(*(&v48 + 1) + 8 * j) allKeys];
            [v35 addObjectsFromArray:v13];
          }

          v10 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v10);
      }

      v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v29 = v35;
      v32 = [v29 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v32)
      {
        v31 = *v45;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v14 = *(*(&v44 + 1) + 8 * k);
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v15 = obj;
            v16 = [v15 countByEnumeratingWithState:&v40 objects:v53 count:16];
            if (!v16)
            {
              v17 = v15;
              goto LABEL_42;
            }

            v17 = 0;
            v18 = *v41;
            do
            {
              for (m = 0; m != v16; ++m)
              {
                if (*v41 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v40 + 1) + 8 * m) objectForKey:v14];
                if (v20)
                {
                  if (v17)
                  {
                    v21 = [MEMORY[0x1E695DFD8] setWithArray:v20];
                    [v17 intersectSet:v21];
                  }

                  else
                  {
                    v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v20];
                  }
                }
              }

              v16 = [v15 countByEnumeratingWithState:&v40 objects:v53 count:16];
            }

            while (v16);

            if (v17)
            {
              v22 = [v17 allObjects];
              [v28 setObject:v22 forKeyedSubscript:v14];

LABEL_42:
              continue;
            }
          }

          v32 = [v29 countByEnumeratingWithState:&v44 objects:v54 count:16];
        }

        while (v32);
      }

      v9 = [v28 copy];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F8];
    }

LABEL_46:

    objc_autoreleasePoolPop(context);
LABEL_47:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_configureDependentRequestForRevision:(unint64_t)a3 error:(id *)a4
{
  v7 = [[_VNCalculateImageAestheticsScoresDependentRequests alloc] initWithRevision:a3 error:a4];
  v8 = v7;
  if (a4 && !v7)
  {
    v9 = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:a3 error:0];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = objc_opt_class();
    v12 = VNRequestRevisionString(v11, a3);
    v13 = NSStringFromClass(v9);
    v14 = [v10 initWithFormat:@"%@ is handled by %@", v12, v13];

    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v14];
  }

  return v8;
}

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VNCalculateImageAestheticsScoresRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

@end
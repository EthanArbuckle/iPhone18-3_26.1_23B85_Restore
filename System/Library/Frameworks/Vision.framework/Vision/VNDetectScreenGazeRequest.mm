@interface VNDetectScreenGazeRequest
+ (id)publicRevisionsSet;
+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)a3 beingPerformedByRevision:(unint64_t)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNDetectScreenGazeRequest)initWithCompletionHandler:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (int64_t)temporalSmoothingFrameCount;
- (unint64_t)screenSize;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setScreenSize:(unint64_t)a3;
- (void)setTemporalSmoothingFrameCount:(int64_t)a3;
@end

@implementation VNDetectScreenGazeRequest

+ (id)publicRevisionsSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VNDetectScreenGazeRequest_publicRevisionsSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNDetectScreenGazeRequest publicRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectScreenGazeRequest publicRevisionsSet]::onceToken, block);
  }

  v2 = +[VNDetectScreenGazeRequest publicRevisionsSet]::supportedPublicRevisions;

  return v2;
}

void __47__VNDetectScreenGazeRequest_publicRevisionsSet__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___VNDetectScreenGazeRequest;
  v1 = objc_msgSendSuper2(&v6, sel_publicRevisionsSet);
  v2 = +[VNDetectScreenGazeRequest publicRevisionsSet]::supportedPublicRevisions;
  +[VNDetectScreenGazeRequest publicRevisionsSet]::supportedPublicRevisions = v1;

  if (!+[VNScreenGazeDetectorRevision2 supportsExecution])
  {
    v3 = [+[VNDetectScreenGazeRequest publicRevisionsSet]::supportedPublicRevisions mutableCopy];
    [v3 removeIndex:2];
    v4 = [v3 copy];
    v5 = +[VNDetectScreenGazeRequest publicRevisionsSet]::supportedPublicRevisions;
    +[VNDetectScreenGazeRequest publicRevisionsSet]::supportedPublicRevisions = v4;
  }
}

+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)a3 beingPerformedByRevision:(unint64_t)a4
{
  if (a4 == 2 && ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 3737841670;
  }

  else
  {
    return 0;
  }
}

- (void)setScreenSize:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setScreenSize:a3];
}

- (unint64_t)screenSize
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 screenSize];

  return v3;
}

- (void)setTemporalSmoothingFrameCount:(int64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setTemporalSmoothingFrameCount:a3];
}

- (int64_t)temporalSmoothingFrameCount
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 temporalSmoothingFrameCount];

  return v3;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNDetectScreenGazeRequest *)self temporalSmoothingFrameCount];
  if (v5 == [v4 temporalSmoothingFrameCount])
  {
    v8.receiver = self;
    v8.super_class = VNDetectScreenGazeRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v114 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v83 = v8;
  if (!self->_state)
  {
    v9 = a5;
    v10 = [VNScreenGazeState alloc];
    v11 = [(VNDetectScreenGazeRequest *)self temporalSmoothingFrameCount];
    if (v10)
    {
      v12 = v11;
      v113.receiver = v10;
      v113.super_class = VNScreenGazeState;
      v13 = [(VNRequest *)&v113 init];
      v10 = v13;
      if (v13)
      {
        LODWORD(v13->super.super.super._completionHandler) = v12;
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        faceObjectStates = v10->_faceObjectStates;
        v10->_faceObjectStates = v14;
      }
    }

    state = self->_state;
    self->_state = v10;

    v8 = v83;
    a5 = v9;
  }

  v91 = a5;
  v17 = [v8 imageBufferAndReturnError:a5];
  v18 = v17;
  v81 = v17;
  if (!v17)
  {
    LOBYTE(v23) = 0;
    goto LABEL_91;
  }

  v85 = [v17 width];
  v84 = [v18 height];
  v90 = v83;
  *&v102 = 0;
  v19 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v102 clippedToRegionOfInterest:1 error:v91];
  v20 = v102;
  v21 = v20;
  if (v19)
  {
    v22 = v20;
    if (v22)
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v109 objects:&v113 count:16];
      if (v25)
      {
        v26 = *v110;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v110 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v109 + 1) + 8 * i);
            v29 = [v28 landmarks];
            if (!v29 || [v28 requestRevision] < 2)
            {

              goto LABEL_22;
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v109 objects:&v113 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v21 = v24;
      v79 = v21;
      goto LABEL_33;
    }
  }

LABEL_22:
  v30 = [v90 requestPerformerAndReturnError:v91];
  if (!v30)
  {
    goto LABEL_31;
  }

  if (!v21)
  {
    v31 = objc_alloc_init(VNDetectFaceRectanglesRequest);
    [(VNDetectFaceRectanglesRequest *)v31 applyConfigurationOfRequest:self];
    v113.receiver = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
    v33 = [v30 performDependentRequests:v32 onBehalfOfRequest:self inContext:v90 error:v91];

    if ((v33 & 1) == 0)
    {

      v21 = 0;
      goto LABEL_31;
    }

    v21 = [(VNRequest *)v31 results];
  }

  if (a3 != 2)
  {
    if (v91)
    {
      [VNError errorForUnsupportedRevision:a3 ofRequest:self];
      *v91 = v79 = 0;
      goto LABEL_32;
    }

LABEL_31:
    v79 = 0;
    goto LABEL_32;
  }

  v21 = v21;
  v79 = v21;
LABEL_32:

LABEL_33:
  if (v79)
  {
    [v90 session];
    v78 = v96 = 0;
    v34 = [VNRequest applicableDetectorAndOptions:"applicableDetectorAndOptions:forRevision:loadedInSession:error:" forRevision:&v96 loadedInSession:a3 error:?];
    v35 = v96;
    v89 = v34;
    if (v34)
    {
      v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v36 = self->_state;
      if (v36)
      {
        ++v36->_currentFrame;
      }

      v108 = v81;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
      [v35 setObject:v37 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      obj = v79;
      v38 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
      if (v38)
      {
        v87 = *v93;
        v39 = &selRef_gazeMask;
        do
        {
          v86 = v38;
          v40 = 0;
          v80 = v39[189];
          do
          {
            if (*v93 != v87)
            {
              objc_enumerationMutation(obj);
            }

            v41 = self->_state;
            v42 = *(*(&v92 + 1) + 8 * v40);
            if (v41)
            {
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v43 = v41->_faceObjectStates;
              v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v97 objects:&v109 count:16];
              if (v44)
              {
                v45 = *v98;
                do
                {
                  v46 = 0;
                  do
                  {
                    if (*v98 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v97 + 1) + 8 * v46);
                    if (v47)
                    {
                      [v47[1] boundingBox];
                      v49 = v48;
                      v51 = v50;
                      v53 = v52;
                      v55 = v54;
                    }

                    else
                    {
                      v51 = 0.0;
                      v53 = 0.0;
                      v55 = 0.0;
                      v49 = 0.0;
                    }

                    [v42 boundingBox];
                    v117.origin.x = v56;
                    v117.origin.y = v57;
                    v117.size.width = v58;
                    v117.size.height = v59;
                    v115.origin.x = v49;
                    v115.origin.y = v51;
                    v115.size.width = v53;
                    v115.size.height = v55;
                    v116 = CGRectIntersection(v115, v117);
                    if (v116.size.width * v116.size.height / (v53 * v55) >= 0.7)
                    {
                      [(VNScreenGazeFaceObjectState *)v47 _replaceFaceObservation:v42 imageWidth:v85 imageHeight:v84 frameIndex:v41->_currentFrame];
                      v61 = v47;

                      goto LABEL_60;
                    }

                    ++v46;
                  }

                  while (v44 != v46);
                  v60 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v97 objects:&v109 count:16];
                  v44 = v60;
                }

                while (v60);
              }

              v61 = [VNScreenGazeFaceObjectState alloc];
              v62 = v42;
              if (v61)
              {
                v101.receiver = v61;
                v101.super_class = VNScreenGazeFaceObjectState;
                v61 = objc_msgSendSuper2(&v101, v80);
                if (v61)
                {
                  v63 = [v62 uuid];
                  uuid = v61->_uuid;
                  v61->_uuid = v63;

                  operator new();
                }
              }

              [(NSMutableArray *)v41->_faceObjectStates addObject:v61];
            }

            else
            {
              v61 = 0;
            }

LABEL_60:

            v106 = v42;
            v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
            [v35 setObject:v65 forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];

            [v35 setObject:v61 forKeyedSubscript:@"VNScreenGazeDetectorProcessOption_FaceObjectState"];
            v66 = [v90 qosClass];
            [(VNImageBasedRequest *)self regionOfInterest];
            v67 = [v89 processUsingQualityOfServiceClass:v66 options:v35 regionOfInterest:self warningRecorder:v91 error:0 progressHandler:?];
            if (!v67)
            {

              v23 = 0;
              goto LABEL_68;
            }

            [v88 addObjectsFromArray:v67];

            ++v40;
          }

          while (v40 != v86);
          v38 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
          v39 = &selRef_gazeMask;
        }

        while (v38);
      }

      v23 = 1;
LABEL_68:

      v68 = self->_state;
      if (v68)
      {
        if (v68->_temporalSmoothingFrameCount > 1)
        {
          v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v70 = v68->_faceObjectStates;
          v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v102 objects:&v113 count:16];
          if (v71)
          {
            v72 = *v103;
            do
            {
              v73 = 0;
              do
              {
                if (*v103 != v72)
                {
                  objc_enumerationMutation(v70);
                }

                v74 = *(*(&v102 + 1) + 8 * v73);
                if (v74)
                {
                  v75 = *(v74 + 32);
                }

                else
                {
                  v75 = 0;
                }

                if (v75 != v68->_currentFrame)
                {
                  [v69 addObject:?];
                }

                ++v73;
              }

              while (v71 != v73);
              v76 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v102 objects:&v113 count:16];
              v71 = v76;
            }

            while (v76);
          }

          [(NSMutableArray *)v68->_faceObjectStates removeObjectsInArray:v69];
        }

        else
        {
          [(NSMutableArray *)v68->_faceObjectStates removeAllObjects];
        }
      }

      if (v23)
      {
        [(VNRequest *)self setResults:v88];
      }
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
  }

LABEL_91:
  return v23;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 2)
  {
    if (+[VNScreenGazeDetectorRevision2 supportsExecution])
    {
      v5 = @"VNE5RTScreenGazeDetectorType";
      v6 = @"VNE5RTScreenGazeDetectorType";
      goto LABEL_10;
    }

    if (a4)
    {
      v7 = [VNError errorWithCode:22 message:@"Requires newer ANE device"];
      goto LABEL_8;
    }
  }

  else if (a4)
  {
    v7 = [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
LABEL_8:
    v5 = 0;
    *a4 = v7;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNDetectScreenGazeRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNDetectScreenGazeRequest *)self setTemporalSmoothingFrameCount:[(VNDetectScreenGazeRequest *)v5 temporalSmoothingFrameCount]];
    }
  }
}

- (VNDetectScreenGazeRequest)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  CMTimeMake(&v8, 0, 1);
  v7.receiver = self;
  v7.super_class = VNDetectScreenGazeRequest;
  v5 = [(VNStatefulRequest *)&v7 initWithFrameAnalysisSpacing:&v8 completionHandler:v4];

  return v5;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v9.receiver = self;
  v9.super_class = VNDetectScreenGazeRequest;
  v6 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  if (a3 == 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectScreenGazeRequest screenSize](self, "screenSize")}];
    [v6 setObject:v7 forKeyedSubscript:@"VNScreenGazeDetectorInitOption_ScreenSize"];
  }

  return v6;
}

@end
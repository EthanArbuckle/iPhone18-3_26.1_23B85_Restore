@interface AXMTFaceKitFaceTracker
+ (NSDictionary)_faceKitCreationOptions;
+ (__n128)_poseRotationMatrixFromArray:(void *)array;
+ (__n128)_poseTranslationMatrixFromArray:(void *)array;
+ (id)_backupIntrinsicsMatrixForiOS;
+ (id)_faceKitProcessOptionsForSampleBuffer:(opaqueCMSampleBuffer *)buffer detectedFaceInfo:(id)info callback:(id)callback;
+ (id)_intrinsicsArrayFromMatrix:(__n128)matrix;
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)_updateAXExpressions:(SEL)expressions withFaceKitLiteExpresion:(id *)expresion faceKitLiteExpressionActivation:(id)activation;
- (AXMTFaceKitFaceTracker)initWithFaceKitPipeline:(BOOL)pipeline;
- (AXMTFaceKitFaceTrackerDelegate)delegate;
- (BOOL)_videoFrameisValidForProcessing:(opaqueCMSampleBuffer *)processing;
- (id)_generateFaceKitResultForLiteOutput:(id)output imageProcessedInExclaves:(BOOL)exclaves;
- (id)_generateFaceKitResultForVanillaOutput:(id)output withSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (id)_handleFaceBlendShapes:(id)shapes;
- (unint64_t)_axFacialExpressionActivationForFaceKitLiteExpresionActivation:(unsigned __int8)activation;
- (void)_processFaceKitOnVideoFrame:(opaqueCMSampleBuffer *)frame;
- (void)_processFaceKitResults:(__CFDictionary *)results withSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_updateFaceInfoIfNeededWithMetadata:(id)metadata;
- (void)dealloc;
- (void)didUpdateVideoResolution:(CGSize)resolution;
- (void)failedToTrackFaceWithError:(id)error;
- (void)processTrackedFacesMetadata:(id)metadata;
- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame;
- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame metadata:(id)metadata;
- (void)reset;
@end

@implementation AXMTFaceKitFaceTracker

- (AXMTFaceKitFaceTracker)initWithFaceKitPipeline:(BOOL)pipeline
{
  pipelineCopy = pipeline;
  v25.receiver = self;
  v25.super_class = AXMTFaceKitFaceTracker;
  v4 = [(AXMTFaceKitFaceTracker *)&v25 init];
  if (!v4)
  {
    goto LABEL_30;
  }

  if (pipelineCopy)
  {
    v24 = 0;
    _faceKitCreationOptions = [objc_opt_class() _faceKitCreationOptions];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v6 = off_100054690;
    v34 = off_100054690;
    if (!off_100054690)
    {
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_100027DA8;
      v29 = &unk_100048BA8;
      v30 = &v31;
      v7 = sub_100027DF8();
      v8 = dlsym(v7, "CVAFaceTrackingCreate");
      *(v30[1] + 24) = v8;
      off_100054690 = *(v30[1] + 24);
      v6 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (!v6)
    {
LABEL_33:
      v23 = sub_100029794();
      _Block_object_dispose(&v31, 8);
      _Unwind_Resume(v23);
    }

    v9 = kCFAllocatorDefault;
    v10 = v6(kCFAllocatorDefault, _faceKitCreationOptions, &v24);

    v11 = v24;
    v12 = AXSSLogForCategory();
    v13 = v12;
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    if (v14)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100028DC0();
      }

      goto LABEL_29;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E34(&v24, v13);
    }

    v4->__faceKitRef = v24;
  }

  else
  {
    v15 = AXSSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100028D7C(v15);
    }

    v9 = kCFAllocatorDefault;
  }

  v24 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v17 = off_1000546A0;
  v34 = off_1000546A0;
  if (!off_1000546A0)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100027F6C;
    v29 = &unk_100048BA8;
    v30 = &v31;
    v18 = sub_100027DF8();
    v19 = dlsym(v18, "CVAFaceTrackingLiteFilterCreate");
    *(v30[1] + 24) = v19;
    off_1000546A0 = *(v30[1] + 24);
    v17 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v17)
  {
    sub_100029794();
    goto LABEL_33;
  }

  if (v17(v9, &v24))
  {
    v20 = 1;
  }

  else
  {
    v20 = v24 == 0;
  }

  if (!v20)
  {
    v4->__faceKitLiteFilterRef = v24;
LABEL_30:
    v21 = v4;
    goto LABEL_31;
  }

  v13 = AXSSLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100028EB0();
  }

LABEL_29:

  v21 = 0;
LABEL_31:

  return v21;
}

- (void)dealloc
{
  faceKitRef = self->__faceKitRef;
  if (faceKitRef)
  {
    CFRelease(faceKitRef);
    self->__faceKitRef = 0;
  }

  v4.receiver = self;
  v4.super_class = AXMTFaceKitFaceTracker;
  [(AXMTFaceKitFaceTracker *)&v4 dealloc];
}

- (void)reset
{
  [(AXMTFaceKitFaceTracker *)self setLastResult:0];

  [(AXMTFaceKitFaceTracker *)self set_initialFaceInfo:0];
}

- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame
{
  if ([(AXMTFaceKitFaceTracker *)self _videoFrameisValidForProcessing:?])
  {

    [(AXMTFaceKitFaceTracker *)self _processFaceKitOnVideoFrame:frame];
  }
}

- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame metadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(AXMTFaceKitFaceTracker *)self _videoFrameisValidForProcessing:frame])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100022044;
    v12 = sub_100022054;
    v13 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002205C;
    v7[3] = &unk_100049158;
    v7[4] = &v8;
    [metadataCopy enumerateObjectsUsingBlock:v7];
    if (v9[5])
    {
      [(AXMTFaceKitFaceTracker *)self _updateFaceInfoIfNeededWithMetadata:?];
      [(AXMTFaceKitFaceTracker *)self _processFaceKitOnVideoFrame:frame];
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (void)processTrackedFacesMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100022044;
  v12 = sub_100022054;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022218;
  v7[3] = &unk_100049158;
  v7[4] = &v8;
  [metadataCopy enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  if (v5)
  {
    payload = [v5 payload];
    [(AXMTFaceKitFaceTracker *)self _processFaceKitResults:payload withSampleBuffer:0];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)failedToTrackFaceWithError:(id)error
{
  errorCopy = error;
  delegate = [(AXMTFaceKitFaceTracker *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [[AXMTFaceKitResult alloc] initWithError:errorCopy];
    delegate2 = [(AXMTFaceKitFaceTracker *)self delegate];
    [delegate2 faceKitFaceTracker:self updatedResult:v6];
  }
}

- (void)didUpdateVideoResolution:(CGSize)resolution
{
  v4 = [NSValue valueWithSize:resolution.width, resolution.height];
  [(AXMTFaceKitFaceTracker *)self set_referenceDimensionsValue:v4];
}

- (BOOL)_videoFrameisValidForProcessing:(opaqueCMSampleBuffer *)processing
{
  if (processing && [(AXMTFaceKitFaceTracker *)self _faceKitRef])
  {
    return 1;
  }

  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100028F24(processing, self, v6);
  }

  return 0;
}

- (void)_processFaceKitOnVideoFrame:(opaqueCMSampleBuffer *)frame
{
  v5 = dispatch_semaphore_create(0);
  v6 = objc_opt_class();
  _initialFaceInfo = [(AXMTFaceKitFaceTracker *)self _initialFaceInfo];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100022658;
  v21 = &unk_100049180;
  selfCopy = self;
  frameCopy = frame;
  v8 = v5;
  v23 = v8;
  v9 = [v6 _faceKitProcessOptionsForSampleBuffer:frame detectedFaceInfo:_initialFaceInfo callback:&v18];

  v10 = [(AXMTFaceKitFaceTracker *)self _faceKitRef:v18];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v11 = off_1000546A8;
  v33 = off_1000546A8;
  if (!off_1000546A8)
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100027FBC;
    v28 = &unk_100048BA8;
    v29 = &v30;
    v12 = sub_100027DF8();
    v13 = dlsym(v12, "CVAFaceTrackingProcess");
    *(v29[1] + 24) = v13;
    off_1000546A8 = *(v29[1] + 24);
    v11 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v11)
  {
    v17 = sub_100029794();
    _Block_object_dispose(&v30, 8);
    _Unwind_Resume(v17);
  }

  v14 = v11(v10, v9);
  if (v14)
  {
    v15 = v14;
    v16 = AXSSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100028FD4(frame, v15, v16);
    }
  }

  else
  {
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (id)_generateFaceKitResultForVanillaOutput:(id)output withSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  outputCopy = output;
  if (qword_100054608 != -1)
  {
    sub_10002905C();
  }

  v35 = outputCopy;
  v36 = [outputCopy objectForKeyedSubscript:sub_100022FAC()];
  if (![v36 count])
  {
    v25 = 0;
    goto LABEL_33;
  }

  firstObject = [v36 firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [firstObject objectForKeyedSubscript:sub_1000230A0()];
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v7 = qword_1000546D0;
      v49 = qword_1000546D0;
      if (!qword_1000546D0)
      {
        v41 = _NSConcreteStackBlock;
        v42 = 3221225472;
        v43 = sub_10002814C;
        v44 = &unk_100048BA8;
        v45 = &v46;
        v8 = sub_100027DF8();
        v47[3] = dlsym(v8, "kCVAFaceTracking_Animation");
        qword_1000546D0 = *(v45[1] + 24);
        v7 = v47[3];
      }

      _Block_object_dispose(&v46, 8);
      if (v7)
      {
        v31 = [v6 objectForKeyedSubscript:*v7];

        if (!v31)
        {
          v24 = 0;
LABEL_29:
          v26 = [AXMTFaceKitXNUResult alloc];
          v27 = qword_1000545F8;
          _referenceDimensionsValue = [(AXMTFaceKitFaceTracker *)self _referenceDimensionsValue];
          v25 = [(AXMTFaceKitXNUResult *)v26 initWithFaceKitTrackedFaceDictionary:firstObject semanticsDictionary:v27 sampleBuffer:buffer expressions:v24 referenceDimensionsValue:_referenceDimensionsValue];

          if (v25)
          {
            v29 = v25;
          }

          v5 = firstObject;
          goto LABEL_32;
        }

        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v9 = qword_1000546D8;
        v49 = qword_1000546D8;
        if (!qword_1000546D8)
        {
          v41 = _NSConcreteStackBlock;
          v42 = 3221225472;
          v43 = sub_10002819C;
          v44 = &unk_100048BA8;
          v45 = &v46;
          v10 = sub_100027DF8();
          v47[3] = dlsym(v10, "kCVAFaceTracking_AnimationBlendshapes");
          qword_1000546D8 = *(v45[1] + 24);
          v9 = v47[3];
        }

        _Block_object_dispose(&v46, 8);
        if (v9)
        {
          v11 = [v31 objectForKeyedSubscript:*v9];
          v12 = +[NSMutableDictionary dictionary];
          if (v11)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v13 = qword_100054600;
            v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
            if (v14)
            {
              v15 = *v38;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v38 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v37 + 1) + 8 * i);
                  v18 = [qword_100054600 objectForKeyedSubscript:{v17, v31}];
                  unsignedIntValue = [v18 unsignedIntValue];

                  v20 = v11;
                  LODWORD(v21) = *([v11 bytes] + unsignedIntValue);
                  v22 = [NSNumber numberWithFloat:v21];
                  [v12 setObject:v22 forKey:v17];
                }

                v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
              }

              while (v14);
            }

            v23 = [v31 objectForKeyedSubscript:@"tongue_out"];
            if (v23)
            {
              [v12 setObject:v23 forKey:@"tongue_out"];
            }

            v24 = [(AXMTFaceKitFaceTracker *)self _handleFaceBlendShapes:v12, v31];
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_29;
        }
      }

      sub_100029794();
      __break(1u);
    }
  }

  v25 = 0;
LABEL_32:

LABEL_33:

  return v25;
}

- (id)_generateFaceKitResultForLiteOutput:(id)output imageProcessedInExclaves:(BOOL)exclaves
{
  exclavesCopy = exclaves;
  outputCopy = output;
  v47 = [outputCopy objectForKeyedSubscript:sub_1000238F4()];
  *&v53 = 0;
  *(&v53 + 1) = &v53;
  *&v54 = 0x2020000000;
  v5 = qword_1000546E8;
  *(&v54 + 1) = qword_1000546E8;
  if (!qword_1000546E8)
  {
    *&v62 = _NSConcreteStackBlock;
    *(&v62 + 1) = 3221225472;
    *&v63 = sub_10002823C;
    *(&v63 + 1) = &unk_100048BA8;
    *&v64 = &v53;
    v6 = sub_100027DF8();
    v7 = dlsym(v6, "kCVAFaceTrackingLiteFilter_ClientData");
    *(*(v64 + 8) + 24) = v7;
    qword_1000546E8 = *(*(v64 + 8) + 24);
    v5 = *(*(&v53 + 1) + 24);
  }

  _Block_object_dispose(&v53, 8);
  if (!v5)
  {
    goto LABEL_35;
  }

  v8 = [outputCopy objectForKeyedSubscript:*v5];
  *&v53 = 0;
  *(&v53 + 1) = &v53;
  *&v54 = 0x2020000000;
  v9 = qword_1000546F0;
  *(&v54 + 1) = qword_1000546F0;
  if (!qword_1000546F0)
  {
    *&v62 = _NSConcreteStackBlock;
    *(&v62 + 1) = 3221225472;
    *&v63 = sub_10002828C;
    *(&v63 + 1) = &unk_100048BA8;
    *&v64 = &v53;
    v10 = sub_100027DF8();
    v11 = dlsym(v10, "kCVAFaceTrackingLiteFilter_ClientDataAccessibility");
    *(*(v64 + 8) + 24) = v11;
    qword_1000546F0 = *(*(v64 + 8) + 24);
    v9 = *(*(&v53 + 1) + 24);
  }

  _Block_object_dispose(&v53, 8);
  if (!v9)
  {
    goto LABEL_35;
  }

  v12 = [v8 objectForKeyedSubscript:*v9];

  v45 = [v47 objectForKeyedSubscript:sub_100022FAC()];
  firstObject = [v45 firstObject];
  v44 = [firstObject objectForKeyedSubscript:sub_1000230A0()];
  if (v12 && v44)
  {
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    *&v54 = 0x2020000000;
    v14 = qword_1000546F8;
    *(&v54 + 1) = qword_1000546F8;
    if (!qword_1000546F8)
    {
      *&v62 = _NSConcreteStackBlock;
      *(&v62 + 1) = 3221225472;
      *&v63 = sub_1000282DC;
      *(&v63 + 1) = &unk_100048BA8;
      *&v64 = &v53;
      v15 = sub_100027DF8();
      v16 = dlsym(v15, "kCVAFaceTrackingLiteFilterClientAccessibility_Expressions");
      *(*(v64 + 8) + 24) = v16;
      qword_1000546F8 = *(*(v64 + 8) + 24);
      v14 = *(*(&v53 + 1) + 24);
    }

    _Block_object_dispose(&v53, 8);
    if (v14)
    {
      v17 = [v12 objectForKeyedSubscript:*v14];
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      +[AXSSMotionTrackingExpressionConfiguration_Exclave emptyAccessibilityExpressions];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v19)
      {
        v20 = *v59;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v58 + 1) + 8 * i);
            v23 = [v18 objectForKeyedSubscript:v22];
            charValue = [v23 charValue];
            v50 = v64;
            v51 = v65;
            v52 = v66;
            v48 = v62;
            v49 = v63;
            [(AXMTFaceKitFaceTracker *)self _updateAXExpressions:&v48 withFaceKitLiteExpresion:v22 faceKitLiteExpressionActivation:charValue];
            v64 = v55;
            v65 = v56;
            v66 = v57;
            v62 = v53;
            v63 = v54;
          }

          v19 = [v18 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v19);
      }

      *&v48 = 0;
      *(&v48 + 1) = &v48;
      *&v49 = 0x2020000000;
      v25 = qword_100054700;
      *(&v49 + 1) = qword_100054700;
      if (!qword_100054700)
      {
        *&v53 = _NSConcreteStackBlock;
        *(&v53 + 1) = 3221225472;
        *&v54 = sub_10002832C;
        *(&v54 + 1) = &unk_100048BA8;
        *&v55 = &v48;
        v26 = sub_100027DF8();
        v27 = dlsym(v26, "kCVAFaceTrackingLiteFilterClientAccessibility_Landmarks");
        *(*(v55 + 8) + 24) = v27;
        qword_100054700 = *(*(v55 + 8) + 24);
        v25 = *(*(&v48 + 1) + 24);
      }

      _Block_object_dispose(&v48, 8);
      if (v25)
      {
        v28 = [v12 objectForKeyedSubscript:*v25];
        *&v48 = 0;
        *(&v48 + 1) = &v48;
        *&v49 = 0x2020000000;
        v29 = qword_100054708;
        *(&v49 + 1) = qword_100054708;
        if (!qword_100054708)
        {
          *&v53 = _NSConcreteStackBlock;
          *(&v53 + 1) = 3221225472;
          *&v54 = sub_10002837C;
          *(&v54 + 1) = &unk_100048BA8;
          *&v55 = &v48;
          v30 = sub_100027DF8();
          v31 = dlsym(v30, "kCVAFaceTrackingLiteFilterClientAccessibility_LandmarkNoseBaseCenter");
          *(*(v55 + 8) + 24) = v31;
          qword_100054708 = *(*(v55 + 8) + 24);
          v29 = *(*(&v48 + 1) + 24);
        }

        _Block_object_dispose(&v48, 8);
        if (v29)
        {
          v32 = [v28 objectForKeyedSubscript:*v29];

          if ([v32 count] == 2)
          {
            v33 = [v32 objectAtIndexedSubscript:0];
            v34 = [v32 objectAtIndexedSubscript:1];
            [v33 doubleValue];
            v36 = v35;
            [v34 doubleValue];
            v38 = [NSValue valueWithPoint:v36, v37];
            v39 = [AXMTFaceKitExclavesResult alloc];
            _referenceDimensionsValue = [(AXMTFaceKitFaceTracker *)self _referenceDimensionsValue];
            v55 = v64;
            v56 = v65;
            v57 = v66;
            v53 = v62;
            v54 = v63;
            v41 = [(AXMTFaceKitExclavesResult *)v39 initWithFaceKitLiteSharedDataDictionary:v47 expressions:&v53 noseBaseCenter:v38 referenceDimensionsValue:_referenceDimensionsValue imageProcessedInExclaves:exclavesCopy];
          }

          else
          {
            v41 = 0;
          }

          goto LABEL_32;
        }
      }

      sub_100029794();
LABEL_37:
      __break(1u);
    }

LABEL_35:
    sub_100029794();
    goto LABEL_37;
  }

  v18 = AXSSLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1000290E4();
  }

  v41 = 0;
LABEL_32:

  return v41;
}

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)_updateAXExpressions:(SEL)expressions withFaceKitLiteExpresion:(id *)expresion faceKitLiteExpressionActivation:(id)activation
{
  v6 = a6;
  activationCopy = activation;
  v11 = [(AXMTFaceKitFaceTracker *)self _axFacialExpressionActivationForFaceKitLiteExpresionActivation:v6];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v12 = qword_100054710;
  v33 = qword_100054710;
  if (!qword_100054710)
  {
    v13 = sub_100027DF8();
    v31[3] = dlsym(v13, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionBrowsUp");
    qword_100054710 = v31[3];
    v12 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v12)
  {
    sub_100029794();
LABEL_39:
    sub_100029794();
LABEL_40:
    sub_100029794();
LABEL_41:
    sub_100029794();
LABEL_42:
    sub_100029794();
    goto LABEL_43;
  }

  v14 = [activationCopy isEqualToString:*v12];
  p_var1 = expresion;
  if (v14)
  {
LABEL_36:
    p_var1->var0 = v11;
    goto LABEL_37;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v16 = qword_100054718;
  v33 = qword_100054718;
  if (!qword_100054718)
  {
    v17 = sub_100027DF8();
    v31[3] = dlsym(v17, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionJawOpen");
    qword_100054718 = v31[3];
    v16 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v16)
  {
    goto LABEL_39;
  }

  if ([activationCopy isEqualToString:*v16])
  {
    p_var1 = &expresion->var1;
    goto LABEL_36;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v18 = qword_100054720;
  v33 = qword_100054720;
  if (!qword_100054720)
  {
    v19 = sub_100027DF8();
    v31[3] = dlsym(v19, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionSmile");
    qword_100054720 = v31[3];
    v18 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v18)
  {
    goto LABEL_40;
  }

  if ([activationCopy isEqualToString:*v18])
  {
    p_var1 = &expresion->var2;
    goto LABEL_36;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v20 = qword_100054728;
  v33 = qword_100054728;
  if (!qword_100054728)
  {
    v21 = sub_100027DF8();
    v31[3] = dlsym(v21, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionTongueOut");
    qword_100054728 = v31[3];
    v20 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v20)
  {
    goto LABEL_41;
  }

  if ([activationCopy isEqualToString:*v20])
  {
    p_var1 = &expresion->var3;
    goto LABEL_36;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v22 = qword_100054730;
  v33 = qword_100054730;
  if (!qword_100054730)
  {
    v23 = sub_100027DF8();
    v31[3] = dlsym(v23, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionEyeBlink");
    qword_100054730 = v31[3];
    v22 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v22)
  {
    goto LABEL_42;
  }

  if ([activationCopy isEqualToString:*v22])
  {
    p_var1 = &expresion->var4;
    goto LABEL_36;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v24 = qword_100054738;
  v33 = qword_100054738;
  if (!qword_100054738)
  {
    v25 = sub_100027DF8();
    v31[3] = dlsym(v25, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionNoseSneer");
    qword_100054738 = v31[3];
    v24 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v24)
  {
LABEL_43:
    v29 = sub_100029794();
    _Block_object_dispose(&v30, 8);
    _Unwind_Resume(v29);
  }

  if ([activationCopy isEqualToString:*v24])
  {
    p_var1 = &expresion->var5;
    goto LABEL_36;
  }

  if ([activationCopy isEqualToString:sub_100023F84()])
  {
    p_var1 = &expresion->var6;
    goto LABEL_36;
  }

  if ([activationCopy isEqualToString:sub_100024078()])
  {
    p_var1 = &expresion->var8;
    goto LABEL_36;
  }

  if ([activationCopy isEqualToString:sub_10002416C()])
  {
    p_var1 = &expresion->var7;
    goto LABEL_36;
  }

LABEL_37:
  v26 = *&expresion->var6;
  *&retstr->var4 = *&expresion->var4;
  *&retstr->var6 = v26;
  retstr->var8 = expresion->var8;
  v27 = *&expresion->var2;
  *&retstr->var0 = *&expresion->var0;
  *&retstr->var2 = v27;

  return result;
}

- (unint64_t)_axFacialExpressionActivationForFaceKitLiteExpresionActivation:(unsigned __int8)activation
{
  if ((activation - 1) < 3)
  {
    return (activation - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_processFaceKitResults:(__CFDictionary *)results withSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  resultsCopy = results;
  v7 = [(__CFDictionary *)resultsCopy objectForKeyedSubscript:sub_1000238F4()];
  v8 = v7;
  if (buffer)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = !v9;
  if (v7)
  {
    goto LABEL_18;
  }

  _faceKitLiteFilterRef = [(AXMTFaceKitFaceTracker *)self _faceKitLiteFilterRef];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v12 = off_100054758;
  v46 = off_100054758;
  if (!off_100054758)
  {
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_10002869C;
    v41 = &unk_100048BA8;
    v42 = &v43;
    v13 = sub_100027DF8();
    v44[3] = dlsym(v13, "CVAFaceTrackingLiteFilterProcessVanilla");
    off_100054758 = *(v42[1] + 24);
    v12 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v12)
  {
    sub_100029794();
LABEL_32:
    sub_100029794();
    goto LABEL_33;
  }

  v12(_faceKitLiteFilterRef, resultsCopy);
  v37 = 0;
  v36 = 0;
  _faceKitLiteFilterRef2 = [(AXMTFaceKitFaceTracker *)self _faceKitLiteFilterRef];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v15 = off_100054768;
  v46 = off_100054768;
  if (!off_100054768)
  {
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_10002873C;
    v41 = &unk_100048BA8;
    v42 = &v43;
    v16 = sub_100027DF8();
    v44[3] = dlsym(v16, "CVAFaceTrackingLiteFilterGetOutput");
    off_100054768 = *(v42[1] + 24);
    v15 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v15)
  {
    goto LABEL_32;
  }

  v17 = v15(_faceKitLiteFilterRef2);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v18 = off_100054760;
  v46 = off_100054760;
  if (!off_100054760)
  {
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_1000286EC;
    v41 = &unk_100048BA8;
    v42 = &v43;
    v19 = sub_100027DF8();
    v44[3] = dlsym(v19, "CVAFaceTrackingLiteFilterCopyDecodedOutput");
    off_100054760 = *(v42[1] + 24);
    v18 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v18)
  {
LABEL_33:
    v35 = sub_100029794();
    _Block_object_dispose(&v43, 8);
    _Unwind_Resume(v35);
  }

  v18(v17, &v37, &v36);
  v20 = v37;

  resultsCopy = v20;
LABEL_18:
  v21 = [(__CFDictionary *)resultsCopy objectForKeyedSubscript:sub_1000238F4()];

  if (v21)
  {
    [(AXMTFaceKitFaceTracker *)self _generateFaceKitResultForLiteOutput:resultsCopy imageProcessedInExclaves:v10];
  }

  else
  {
    [(AXMTFaceKitFaceTracker *)self _generateFaceKitResultForVanillaOutput:resultsCopy withSampleBuffer:buffer];
  }
  v22 = ;
  if (!v22)
  {
    v23 = AXSSLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100029164();
    }

    [(AXMTFaceKitFaceTracker *)self set_initialFaceInfo:0];
    lastResult = [(AXMTFaceKitFaceTracker *)self lastResult];
    error = [lastResult error];
    if (error)
    {
      lastResult2 = [(AXMTFaceKitFaceTracker *)self lastResult];
      error2 = [lastResult2 error];
      v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error2 code]);
    }

    else
    {
      v28 = 0;
    }

    v29 = [AXMTUtilities errorCodeForFaceKitPayload:resultsCopy lastReportedFailureNumber:v28];
    v30 = [NSError alloc];
    v31 = [v30 initWithDomain:AXSSMotionTrackingErrorDomain code:v29 userInfo:0];
    v22 = [[AXMTFaceKitResult alloc] initWithError:v31];
  }

  [(AXMTFaceKitFaceTracker *)self setLastResult:v22];
  delegate = [(AXMTFaceKitFaceTracker *)self delegate];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    delegate2 = [(AXMTFaceKitFaceTracker *)self delegate];
    [delegate2 faceKitFaceTracker:self updatedResult:v22];
  }
}

- (void)_updateFaceInfoIfNeededWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[AXMTFaceKitFaceTrackerFaceInfo alloc] initWithFaceMetadata:metadataCopy];

  [(AXMTFaceKitFaceTracker *)self set_initialFaceInfo:v5];
}

- (id)_handleFaceBlendShapes:(id)shapes
{
  shapesCopy = shapes;
  if (qword_100054618 != -1)
  {
    sub_1000291E4();
  }

  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = qword_100054610;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [shapesCopy objectForKeyedSubscript:{v10, v14}];
        if (v11)
        {
          v12 = [qword_100054610 objectForKeyedSubscript:v10];
          [v4 setObject:v11 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (__n128)_poseTranslationMatrixFromArray:(void *)array
{
  arrayCopy = array;
  v4 = [arrayCopy objectAtIndexedSubscript:0];
  [v4 floatValue];
  v13 = v5;
  v6 = [arrayCopy objectAtIndexedSubscript:1];
  [v6 floatValue];
  v12 = v7;
  v8 = [arrayCopy objectAtIndexedSubscript:2];

  [v8 floatValue];
  v11 = v9;

  result.n128_u32[0] = v13;
  result.n128_u32[1] = v12;
  result.n128_u32[2] = v11;
  return result;
}

+ (__n128)_poseRotationMatrixFromArray:(void *)array
{
  arrayCopy = array;
  v4 = [arrayCopy objectAtIndexedSubscript:0];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 floatValue];
  v28 = v6;

  v7 = [arrayCopy objectAtIndexedSubscript:1];
  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 floatValue];
  v27 = v9;

  v10 = [arrayCopy objectAtIndexedSubscript:2];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 floatValue];
  *&v12 = __PAIR64__(v27, v28);
  *(&v12 + 1) = v13;
  v29 = v12;

  v14 = [arrayCopy objectAtIndexedSubscript:0];
  v15 = [v14 objectAtIndexedSubscript:1];
  [v15 floatValue];

  v16 = [arrayCopy objectAtIndexedSubscript:1];
  v17 = [v16 objectAtIndexedSubscript:1];
  [v17 floatValue];

  v18 = [arrayCopy objectAtIndexedSubscript:2];
  v19 = [v18 objectAtIndexedSubscript:1];
  [v19 floatValue];

  v20 = [arrayCopy objectAtIndexedSubscript:0];
  v21 = [v20 objectAtIndexedSubscript:2];
  [v21 floatValue];

  v22 = [arrayCopy objectAtIndexedSubscript:1];
  v23 = [v22 objectAtIndexedSubscript:2];
  [v23 floatValue];

  v24 = [arrayCopy objectAtIndexedSubscript:2];

  v25 = [v24 objectAtIndexedSubscript:2];
  [v25 floatValue];

  return v29;
}

+ (id)_intrinsicsArrayFromMatrix:(__n128)matrix
{
  v19 = [NSNumber numberWithFloat:?];
  v25[0] = v19;
  v18 = [NSNumber numberWithFloat:a2.n128_f64[0]];
  v25[1] = v18;
  v17 = [NSNumber numberWithFloat:matrix.n128_f64[0]];
  v25[2] = v17;
  v3 = [NSArray arrayWithObjects:v25 count:3];
  v26[0] = v3;
  HIDWORD(v4) = self.n128_u32[1];
  LODWORD(v4) = self.n128_u32[1];
  v5 = [NSNumber numberWithFloat:v4];
  v24[0] = v5;
  HIDWORD(v6) = a2.n128_u32[1];
  LODWORD(v6) = a2.n128_u32[1];
  v7 = [NSNumber numberWithFloat:v6];
  v24[1] = v7;
  HIDWORD(v8) = matrix.n128_u32[1];
  LODWORD(v8) = matrix.n128_u32[1];
  v9 = [NSNumber numberWithFloat:v8];
  v24[2] = v9;
  v10 = [NSArray arrayWithObjects:v24 count:3];
  v26[1] = v10;
  v11 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))];
  v23[0] = v11;
  v12 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))];
  v23[1] = v12;
  v13 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(matrix.n128_u32[1], matrix.n128_u32[2]))];
  v23[2] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:3];
  v26[2] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:3];

  return v15;
}

+ (id)_faceKitProcessOptionsForSampleBuffer:(opaqueCMSampleBuffer *)buffer detectedFaceInfo:(id)info callback:(id)callback
{
  infoCopy = info;
  callbackCopy = callback;
  v9 = +[NSMutableDictionary dictionary];
  v63[0] = sub_100025A00();
  v64[0] = &off_100049FB8;
  v63[1] = sub_100025AF4();
  v64[1] = &off_100049FD0;
  v48 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
  v52 = +[NSMutableDictionary dictionary];
  [v52 setObject:v48 forKeyedSubscript:sub_100025BE8()];
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    v11 = AXSSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000291F8();
    }
  }

  v12 = CMGetAttachment(buffer, kCMSampleBufferAttachmentKey_CameraIntrinsicMatrix, 0);
  v13 = v12;
  if (v12 && (v14 = CFGetTypeID(v12), v14 == CFDataGetTypeID()))
  {
    *v55 = 0u;
    memset(time, 0, sizeof(time));
    [v13 getBytes:time length:48];
    _backupIntrinsicsMatrixForiOS = [self _intrinsicsArrayFromMatrix:{*time, *&time[16], v55[0]}];
  }

  else
  {
    if (!ImageBuffer)
    {
LABEL_12:
      _backupIntrinsicsMatrixForiOS = 0;
      goto LABEL_13;
    }

    _backupIntrinsicsMatrixForiOS = [objc_opt_class() _backupIntrinsicsMatrixForiOS];
  }

  if (!_backupIntrinsicsMatrixForiOS)
  {
    goto LABEL_12;
  }

  [v52 setObject:_backupIntrinsicsMatrixForiOS forKeyedSubscript:sub_100025CDC()];
LABEL_13:
  v15 = [v52 copy];
  [v9 setObject:v15 forKeyedSubscript:sub_100025DD0()];

  if (!infoCopy)
  {
    v16 = AXSSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100029278();
    }
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v17 = qword_100054798;
  v59 = qword_100054798;
  if (!qword_100054798)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_10002891C;
    *&time[24] = &unk_100048BA8;
    *&v55[0] = &v56;
    v18 = sub_100027DF8();
    v19 = dlsym(v18, "kCVAFaceTracking_DetectedFaceFaceID");
    *(*(*&v55[0] + 8) + 24) = v19;
    qword_100054798 = *(*(*&v55[0] + 8) + 24);
    v17 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v17)
  {
    goto LABEL_47;
  }

  v60[0] = *v17;
  v49 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [infoCopy identifier]);
  v61[0] = v49;
  v60[1] = sub_100025EC4();
  [infoCopy boundingBoxInNormalizedCoordinates];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v66);
  v61[1] = DictionaryRepresentation;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v21 = qword_1000547A8;
  v59 = qword_1000547A8;
  if (!qword_1000547A8)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_1000289BC;
    *&time[24] = &unk_100048BA8;
    *&v55[0] = &v56;
    v22 = sub_100027DF8();
    v23 = dlsym(v22, "kCVAFaceTracking_DetectedFaceAngleInfoRoll");
    *(*(*&v55[0] + 8) + 24) = v23;
    qword_1000547A8 = *(*(*&v55[0] + 8) + 24);
    v21 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v21)
  {
    goto LABEL_47;
  }

  v60[2] = *v21;
  [infoCopy roll];
  v24 = [NSNumber numberWithDouble:?];
  v61[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];
  v62 = v25;
  v26 = [NSArray arrayWithObjects:&v62 count:1];
  v27 = infoCopy;
  bufferCopy = buffer;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v29 = qword_1000547B0;
  v59 = qword_1000547B0;
  if (!qword_1000547B0)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_100028A0C;
    *&time[24] = &unk_100048BA8;
    *&v55[0] = &v56;
    v30 = sub_100027DF8();
    v31 = dlsym(v30, "kCVAFaceTracking_DetectedFacesArray");
    *(*(*&v55[0] + 8) + 24) = v31;
    qword_1000547B0 = *(*(*&v55[0] + 8) + 24);
    v29 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v29)
  {
    goto LABEL_47;
  }

  [v9 setObject:v26 forKeyedSubscript:*v29];

  if (!ImageBuffer)
  {
    goto LABEL_31;
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v32 = qword_1000547B8;
  v59 = qword_1000547B8;
  if (!qword_1000547B8)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_100028A5C;
    *&time[24] = &unk_100048BA8;
    *&v55[0] = &v56;
    v33 = sub_100027DF8();
    v34 = dlsym(v33, "kCVAFaceTracking_Color");
    *(*(*&v55[0] + 8) + 24) = v34;
    qword_1000547B8 = *(*(*&v55[0] + 8) + 24);
    v32 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v32)
  {
LABEL_47:
    sub_100029794();
    goto LABEL_51;
  }

  [v9 setObject:ImageBuffer forKeyedSubscript:*v32];
LABEL_31:
  memset(&v53, 0, sizeof(v53));
  CMSampleBufferGetPresentationTimeStamp(&v53, bufferCopy);
  *time = v53;
  v35 = CMTimeCopyAsDictionary(time, kCFAllocatorDefault);
  if (v35)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v36 = qword_1000547C0;
    v59 = qword_1000547C0;
    if (!qword_1000547C0)
    {
      *time = _NSConcreteStackBlock;
      *&time[8] = 3221225472;
      *&time[16] = sub_100028AAC;
      *&time[24] = &unk_100048BA8;
      *&v55[0] = &v56;
      v37 = sub_100027DF8();
      v38 = dlsym(v37, "kCVAFaceTracking_Timestamp");
      *(*(*&v55[0] + 8) + 24) = v38;
      qword_1000547C0 = *(*(*&v55[0] + 8) + 24);
      v36 = v57[3];
    }

    _Block_object_dispose(&v56, 8);
    if (!v36)
    {
      goto LABEL_50;
    }

    [v9 setObject:v35 forKeyedSubscript:*v36];
  }

  if (callbackCopy)
  {
    v39 = objc_retainBlock(callbackCopy);
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v40 = qword_1000547C8;
    v59 = qword_1000547C8;
    if (!qword_1000547C8)
    {
      *time = _NSConcreteStackBlock;
      *&time[8] = 3221225472;
      *&time[16] = sub_100028AFC;
      *&time[24] = &unk_100048BA8;
      *&v55[0] = &v56;
      v41 = sub_100027DF8();
      v42 = dlsym(v41, "kCVAFaceTracking_Callback");
      *(*(*&v55[0] + 8) + 24) = v42;
      qword_1000547C8 = *(*(*&v55[0] + 8) + 24);
      v40 = v57[3];
    }

    _Block_object_dispose(&v56, 8);
    if (!v40)
    {
      goto LABEL_50;
    }

    [v9 setObject:v39 forKeyedSubscript:*v40];
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v43 = qword_1000547D0;
  v59 = qword_1000547D0;
  if (!qword_1000547D0)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_100028B4C;
    *&time[24] = &unk_100048BA8;
    *&v55[0] = &v56;
    v44 = sub_100027DF8();
    v45 = dlsym(v44, "kCVAFaceTracking_AddMesh");
    *(*(*&v55[0] + 8) + 24) = v45;
    qword_1000547D0 = *(*(*&v55[0] + 8) + 24);
    v43 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v43)
  {
LABEL_50:
    sub_100029794();
LABEL_51:
    __break(1u);
  }

  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:*v43];
  v46 = [v9 copy];

  return v46;
}

+ (NSDictionary)_faceKitCreationOptions
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v2 = qword_1000547D8;
  v19 = qword_1000547D8;
  if (!qword_1000547D8)
  {
    v3 = sub_100027DF8();
    v17[3] = dlsym(v3, "kCVAFaceTracking_ColorOnly");
    qword_1000547D8 = v17[3];
    v2 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v2)
  {
    goto LABEL_16;
  }

  v20[0] = *v2;
  v21[0] = &__kCFBooleanTrue;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = qword_1000547E0;
  v19 = qword_1000547E0;
  if (!qword_1000547E0)
  {
    v5 = sub_100027DF8();
    v17[3] = dlsym(v5, "kCVAFaceTracking_NumTrackedFaces");
    qword_1000547E0 = v17[3];
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v20[1] = *v4;
  v6 = [NSNumber numberWithInteger:1];
  v21[1] = v6;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = qword_1000547E8;
  v19 = qword_1000547E8;
  if (!qword_1000547E8)
  {
    v8 = sub_100027DF8();
    v17[3] = dlsym(v8, "kCVAFaceTracking_UseRecognition");
    qword_1000547E8 = v17[3];
    v7 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v7)
  {
    goto LABEL_16;
  }

  v20[2] = *v7;
  v9 = [NSNumber numberWithBool:AXMTFaceKitUseRecognition];
  v21[2] = v9;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = qword_1000547F0;
  v19 = qword_1000547F0;
  if (!qword_1000547F0)
  {
    v11 = sub_100027DF8();
    v17[3] = dlsym(v11, "kCVAFaceTracking_NetworkFailureThresholdMultiplier");
    qword_1000547F0 = v17[3];
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
LABEL_16:
    sub_100029794();
    __break(1u);
  }

  v20[3] = *v10;
  LODWORD(v12) = 1069547520;
  v13 = [NSNumber numberWithFloat:v12];
  v21[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v14;
}

+ (id)_backupIntrinsicsMatrixForiOS
{
  if (qword_100054628 != -1)
  {
    sub_1000292F8();
  }

  v3 = qword_100054620;

  return v3;
}

- (AXMTFaceKitFaceTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
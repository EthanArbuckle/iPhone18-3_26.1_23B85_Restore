@interface CIFaceCoreDetector
- (CGAffineTransform)ctmForImageWithBounds:(SEL)bounds orientation:(CGRect)orientation;
- (CIFaceCoreDetector)initWithContext:(id)context options:(id)options;
- (id)adjustedImageFromImage:(id)image orientation:(int)orientation inverseCTM:(CGAffineTransform *)m;
- (id)createFaceCoreDataFromCIImage:(id)image width:(unint64_t *)width height:(unint64_t *)height;
- (id)featuresInImage:(id)image options:(id)options;
- (void)dealloc;
@end

@implementation CIFaceCoreDetector

- (CIFaceCoreDetector)initWithContext:(id)context options:(id)options
{
  v38.receiver = self;
  v38.super_class = CIFaceCoreDetector;
  v6 = [(CIDetector *)&v38 init];
  if (!v6)
  {
    return v6;
  }

  if (!context)
  {
    context = +[CIContext _singletonContext];
  }

  [(CIFaceCoreDetector *)v6 setContext:context];
  v7 = [options objectForKey:@"CIDetectorAccuracy"];
  v8 = [v7 isEqual:@"CIDetectorAccuracyLow"];
  v9 = v8;
  if (v7 && (v8 & 1) == 0 && ([v7 isEqual:@"CIDetectorAccuracyHigh"] & 1) == 0)
  {
    NSLog(&cfstr_UnknownCidetec.isa);
  }

  v10 = [options objectForKey:@"CIDetectorTracking"];
  v6->_tracking = 0;
  v11 = *MEMORY[0x1E695E4D0];
  v12 = MEMORY[0x1E695E4C0];
  if (v10 == *MEMORY[0x1E695E4D0])
  {
    v6->_tracking = 1;
  }

  else
  {
    if (v10)
    {
      v13 = v10 == *MEMORY[0x1E695E4C0];
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      NSLog(&cfstr_UnknownCidetec_0.isa);
    }
  }

  v14 = [options objectForKey:@"CIDetectorBetterEyeLocs"];
  v15 = (v9 & 1) == 0 && !v6->_tracking;
  v16 = v14 == v11;
  v17 = v14 != *v12;
  v18 = [options objectForKey:@"CIDetectorMinFeatureSize"];
  v19 = v18;
  if (v18)
  {
    [v18 floatValue];
    v21 = v20;
  }

  else
  {
    v21 = 0.15;
  }

  if (v21 <= 0.0 || v21 > 1.0)
  {
    NSLog(&cfstr_UnknownCidetec_1.isa);
    v19 = 0;
  }

  v22 = [options objectForKey:@"CIDetectorNumberOfAngles"];
  v24 = v22;
  if (v22)
  {
    [v22 floatValue];
  }

  else
  {
    v23.i32[0] = -1.0;
  }

  v37 = *&v23;
  if (v24)
  {
    v25 = vandq_s8(vceqq_f32(vdupq_lane_s32(v23, 0), xmmword_19CF26620), xmmword_19CF26630);
    v26 = (vaddvq_s32(v25) & 0xF) != 0 || *&v37 == 9.0;
    v25.i32[0] = 11.0;
    if (!v26 && *&v37 != 11.0)
    {
      NSLog(&cfstr_UnknownCidetec_2.isa, *v25.i64, COERCE_DOUBLE(0x200000001), v37);
      v24 = 0;
    }
  }

  if (v6->_tracking)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3052000000;
    v47 = __Block_byref_object_copy__6;
    v28 = getVNFaceObservationClass(void)::softClass;
    v48 = __Block_byref_object_dispose__6;
    v49 = getVNFaceObservationClass(void)::softClass;
    if (!getVNFaceObservationClass(void)::softClass)
    {
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = ___ZL25getVNFaceObservationClassv_block_invoke;
      v42 = &unk_1E75C1E10;
      v43 = &v44;
      ___ZL25getVNFaceObservationClassv_block_invoke(&v39);
      v28 = v45[5];
    }

    _Block_object_dispose(&v44, 8);
    v29 = [v28 faceObservationWithRequestRevision:0 boundingBox:0 roll:0 yaw:0 pitch:{0.0, 0.0, 1.0, 1.0}];
    v44 = 0;
    v45 = &v44;
    v46 = 0x3052000000;
    v47 = __Block_byref_object_copy__6;
    v30 = getVNTrackLegacyFaceCoreObjectRequestClass(void)::softClass;
    v48 = __Block_byref_object_dispose__6;
    v49 = getVNTrackLegacyFaceCoreObjectRequestClass(void)::softClass;
    if (!getVNTrackLegacyFaceCoreObjectRequestClass(void)::softClass)
    {
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = ___ZL42getVNTrackLegacyFaceCoreObjectRequestClassv_block_invoke;
      v42 = &unk_1E75C1E10;
      v43 = &v44;
      ___ZL42getVNTrackLegacyFaceCoreObjectRequestClassv_block_invoke(&v39);
      v30 = v45[5];
    }

    _Block_object_dispose(&v44, 8);
    v31 = [[v30 alloc] initWithDetectedObjectObservation:v29];
    p_visionTrackingRequest = &v6->visionTrackingRequest;
    v6->visionTrackingRequest = v31;
    [(VNTrackLegacyFaceCoreObjectRequest *)v31 setRevision:3737841664 error:0];
    [(VNTrackLegacyFaceCoreObjectRequest *)v6->visionTrackingRequest setTrackingLevel:v9];
    if (!v19)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3052000000;
    v47 = __Block_byref_object_copy__6;
    v34 = getVNDetectFaceRectanglesRequestClass(void)::softClass;
    v48 = __Block_byref_object_dispose__6;
    v49 = getVNDetectFaceRectanglesRequestClass(void)::softClass;
    if (!getVNDetectFaceRectanglesRequestClass(void)::softClass)
    {
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = ___ZL37getVNDetectFaceRectanglesRequestClassv_block_invoke;
      v42 = &unk_1E75C1E10;
      v43 = &v44;
      ___ZL37getVNDetectFaceRectanglesRequestClassv_block_invoke(&v39);
      v34 = v45[5];
    }

    _Block_object_dispose(&v44, 8);
    v35 = objc_alloc_init(v34);
    p_visionTrackingRequest = &v6->visionRequest;
    v6->visionRequest = v35;
    [(VNDetectFaceRectanglesRequest *)v35 setRevision:3737841665 error:0];
    [(VNDetectFaceRectanglesRequest *)v6->visionRequest setFaceCoreType:v9];
    if (!v19)
    {
      goto LABEL_47;
    }
  }

  *&v33 = v21;
  [*p_visionTrackingRequest setFaceCoreMinFaceSize:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v33, *&v37)}];
LABEL_47:
  if (v24)
  {
    [*p_visionTrackingRequest setFaceCoreNumberOfDetectionAngles:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v37)}];
  }

  [*p_visionTrackingRequest setFaceCoreEnhanceEyesAndMouthLocalization:{v17 & (v16 | v15), *&v37}];
  [*p_visionTrackingRequest setFaceCoreExtractBlink:1];
  [*p_visionTrackingRequest setFaceCoreExtractSmile:1];
  return v6;
}

- (void)dealloc
{
  [(CIFaceCoreDetector *)self setContext:0];
  visionRequest = self->visionRequest;
  if (visionRequest)
  {
  }

  visionTrackingRequest = self->visionTrackingRequest;
  if (visionTrackingRequest)
  {
  }

  v5.receiver = self;
  v5.super_class = CIFaceCoreDetector;
  [(CIFaceCoreDetector *)&v5 dealloc];
}

- (id)featuresInImage:(id)image options:(id)options
{
  v114 = *MEMORY[0x1E69E9840];
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v7 = ci_signpost_log_detector();
  if (&self->super.super.isa + 1 >= 2)
  {
    v19 = v7;
    if (os_signpost_enabled(v7))
    {
      v20 = *(v102 + 6);
      LODWORD(buf.a) = 67109120;
      HIDWORD(buf.a) = v20;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v19, OS_SIGNPOST_INTERVAL_BEGIN, self, "CIFaceCoreDetector", "count:%d", &buf, 8u);
    }
  }

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v97 = __46__CIFaceCoreDetector_featuresInImage_options___block_invoke;
  v98 = &unk_1E75C25C0;
  v99 = &v101;
  selfCopy = self;
  p_visionRequest = &self->visionRequest;
  if (!self->visionRequest && !self->visionTrackingRequest)
  {
    array = [MEMORY[0x1E695DEC8] array];
    goto LABEL_47;
  }

  v95 = 0;
  v9 = -[CIFaceCoreDetector adjustedImageFromImage:orientation:inverseCTM:](self, "adjustedImageFromImage:orientation:inverseCTM:", image, [objc_msgSend(options valueForKey:{@"CIDetectorImageOrientation", "intValue"}], &v94);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = self->context;
  if (context)
  {
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v12 = getVNImageOptionCIContextSymbolLoc(void)::ptr;
    v108 = getVNImageOptionCIContextSymbolLoc(void)::ptr;
    if (!getVNImageOptionCIContextSymbolLoc(void)::ptr)
    {
      *&buf.a = MEMORY[0x1E69E9820];
      *&buf.b = 3221225472;
      *&buf.c = ___ZL34getVNImageOptionCIContextSymbolLocv_block_invoke;
      *&buf.d = &unk_1E75C1E10;
      *&buf.tx = &v105;
      v13 = VisionLibrary();
      v14 = dlsym(v13, "VNImageOptionCIContext");
      *(*(*&buf.tx + 8) + 24) = v14;
      getVNImageOptionCIContextSymbolLoc(void)::ptr = *(*(*&buf.tx + 8) + 24);
      v12 = *(v106 + 24);
    }

    _Block_object_dispose(&v105, 8);
    if (!v12)
    {
      goto LABEL_52;
    }

    [dictionary setObject:context forKey:*v12];
  }

  v15 = [objc_msgSend(options valueForKey:{@"CIDetectorEyeBlink", "BOOLValue"}];
  v16 = [objc_msgSend(options valueForKey:{@"CIDetectorSmile", "BOOLValue"}];
  buf.a = 0.0;
  *&buf.b = &buf;
  *&buf.c = 0x3052000000;
  *&buf.d = __Block_byref_object_copy__6;
  v17 = getVNImageRequestHandlerClass(void)::softClass;
  *&buf.tx = __Block_byref_object_dispose__6;
  *&buf.ty = getVNImageRequestHandlerClass(void)::softClass;
  if (!getVNImageRequestHandlerClass(void)::softClass)
  {
    v105 = MEMORY[0x1E69E9820];
    v106 = 3221225472;
    v107 = ___ZL29getVNImageRequestHandlerClassv_block_invoke;
    v108 = &unk_1E75C1E10;
    p_buf = &buf;
    ___ZL29getVNImageRequestHandlerClassv_block_invoke(&v105);
    v17 = *(*&buf.b + 40);
  }

  _Block_object_dispose(&buf, 8);
  v18 = [[v17 alloc] initWithCIImage:v9 options:dictionary];
  if (*p_visionRequest)
  {
    [*p_visionRequest setFaceCoreExtractBlink:v15];
    [*p_visionRequest setFaceCoreExtractSmile:v16];
    v112 = *p_visionRequest;
    [v18 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v112, 1), &v95}];
  }

  else
  {
    p_visionRequest = &self->visionTrackingRequest;
    visionTrackingRequest = self->visionTrackingRequest;
    if (!visionTrackingRequest)
    {
      goto LABEL_18;
    }

    [(VNTrackLegacyFaceCoreObjectRequest *)visionTrackingRequest setFaceCoreExtractBlink:v15];
    [*p_visionRequest setFaceCoreExtractSmile:v16];
    v111 = *p_visionRequest;
    [v18 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v111, 1), &v95}];
  }

  if (!v95)
  {
    obj = [*p_visionRequest results];
    goto LABEL_20;
  }

LABEL_18:
  obj = 0;
LABEL_20:
  v67 = v18;
  array = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy2 = self;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v22 = [obj countByEnumeratingWithState:&v90 objects:v110 count:16];
  if (v22)
  {
    v70 = *v91;
    do
    {
      v71 = v22;
      for (i = 0; i != v71; ++i)
      {
        if (*v91 != v70)
        {
          objc_enumerationMutation(obj);
        }

        legacyFaceCore = [*(*(&v90 + 1) + 8 * i) legacyFaceCore];
        features = [legacyFaceCore features];
        v105 = 0;
        v106 = &v105;
        v107 = 0x2020000000;
        v26 = getVNFaceLegacyFaceCoreFeature_SmileScoreSymbolLoc(void)::ptr;
        v108 = getVNFaceLegacyFaceCoreFeature_SmileScoreSymbolLoc(void)::ptr;
        if (!getVNFaceLegacyFaceCoreFeature_SmileScoreSymbolLoc(void)::ptr)
        {
          *&buf.a = MEMORY[0x1E69E9820];
          *&buf.b = 3221225472;
          *&buf.c = ___ZL50getVNFaceLegacyFaceCoreFeature_SmileScoreSymbolLocv_block_invoke;
          *&buf.d = &unk_1E75C1E10;
          *&buf.tx = &v105;
          v27 = VisionLibrary();
          v28 = dlsym(v27, "VNFaceLegacyFaceCoreFeature_SmileScore");
          *(*(*&buf.tx + 8) + 24) = v28;
          getVNFaceLegacyFaceCoreFeature_SmileScoreSymbolLoc(void)::ptr = *(*(*&buf.tx + 8) + 24);
          v26 = *(v106 + 24);
        }

        _Block_object_dispose(&v105, 8);
        if (!v26)
        {
          [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
          goto LABEL_51;
        }

        v29 = [features valueForKey:*v26];
        features2 = [legacyFaceCore features];
        v105 = 0;
        v106 = &v105;
        v107 = 0x2020000000;
        v31 = getVNFaceLegacyFaceCoreFeature_LeftEyeClosedScoreSymbolLoc(void)::ptr;
        v108 = getVNFaceLegacyFaceCoreFeature_LeftEyeClosedScoreSymbolLoc(void)::ptr;
        if (!getVNFaceLegacyFaceCoreFeature_LeftEyeClosedScoreSymbolLoc(void)::ptr)
        {
          *&buf.a = MEMORY[0x1E69E9820];
          *&buf.b = 3221225472;
          *&buf.c = ___ZL58getVNFaceLegacyFaceCoreFeature_LeftEyeClosedScoreSymbolLocv_block_invoke;
          *&buf.d = &unk_1E75C1E10;
          *&buf.tx = &v105;
          v32 = VisionLibrary();
          v33 = dlsym(v32, "VNFaceLegacyFaceCoreFeature_LeftEyeClosedScore");
          *(*(*&buf.tx + 8) + 24) = v33;
          getVNFaceLegacyFaceCoreFeature_LeftEyeClosedScoreSymbolLoc(void)::ptr = *(*(*&buf.tx + 8) + 24);
          v31 = *(v106 + 24);
        }

        _Block_object_dispose(&v105, 8);
        if (!v31)
        {
          [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
          goto LABEL_51;
        }

        v34 = [features2 valueForKey:*v31];
        features3 = [legacyFaceCore features];
        v105 = 0;
        v106 = &v105;
        v107 = 0x2020000000;
        v36 = getVNFaceLegacyFaceCoreFeature_RightEyeClosedScoreSymbolLoc(void)::ptr;
        v108 = getVNFaceLegacyFaceCoreFeature_RightEyeClosedScoreSymbolLoc(void)::ptr;
        if (!getVNFaceLegacyFaceCoreFeature_RightEyeClosedScoreSymbolLoc(void)::ptr)
        {
          *&buf.a = MEMORY[0x1E69E9820];
          *&buf.b = 3221225472;
          *&buf.c = ___ZL59getVNFaceLegacyFaceCoreFeature_RightEyeClosedScoreSymbolLocv_block_invoke;
          *&buf.d = &unk_1E75C1E10;
          *&buf.tx = &v105;
          v37 = VisionLibrary();
          v38 = dlsym(v37, "VNFaceLegacyFaceCoreFeature_RightEyeClosedScore");
          *(*(*&buf.tx + 8) + 24) = v38;
          getVNFaceLegacyFaceCoreFeature_RightEyeClosedScoreSymbolLoc(void)::ptr = *(*(*&buf.tx + 8) + 24);
          v36 = *(v106 + 24);
        }

        _Block_object_dispose(&v105, 8);
        if (!v36)
        {
          [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
          while (1)
          {
LABEL_51:
            __break(1u);
LABEL_52:
            [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
          }
        }

        v39 = [features3 valueForKey:*v36];
        v40 = [CIFaceFeature alloc];
        [legacyFaceCore faceBoundingBox];
        buf = v94;
        v116 = CGRectApplyAffineTransform(v115, &buf);
        y = v116.origin.y;
        x = v116.origin.x;
        height = v116.size.height;
        width = v116.size.width;
        [legacyFaceCore leftEye];
        v42 = v41;
        v44 = v43;
        v84 = *&v94.a;
        tx = v94.tx;
        c = v94.c;
        ty = v94.ty;
        d = v94.d;
        [legacyFaceCore rightEye];
        v46 = v45;
        v48 = v47;
        v79 = *&v94.a;
        v75 = v94.tx;
        v76 = v94.c;
        v77 = v94.ty;
        v78 = v94.d;
        [legacyFaceCore mouth];
        v50 = v49;
        v52 = v51;
        v74 = *&v94.a;
        v53 = *&v94.c;
        v72 = *&v94.tx;
        v73 = v94.d;
        [legacyFaceCore faceAngle];
        v55 = v54;
        v56 = selfCopy2->visionTrackingRequest;
        trackID = [legacyFaceCore trackID];
        v58 = selfCopy2->visionTrackingRequest;
        trackDuration = [legacyFaceCore trackDuration];
        if (v29)
        {
          LOBYTE(v29) = [v29 BOOLValue];
        }

        if (v34)
        {
          LOBYTE(v34) = [v34 BOOLValue];
        }

        if (v39)
        {
          bOOLValue = [v39 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        BYTE6(v66) = bOOLValue;
        BYTE5(v66) = v34;
        BYTE4(v66) = v29;
        LODWORD(v66) = trackDuration;
        BYTE4(v65) = v58 != 0;
        v61 = v55;
        *&v65 = v61;
        v62 = [(CIFaceFeature *)v40 initWithBounds:1 hasLeftEyePosition:1 leftEyePosition:1 hasRightEyePosition:1 rightEyePosition:v56 != 0 hasMouthPosition:trackID mouthPosition:x hasFaceAngle:y faceAngle:width hasTrackingID:height trackingID:tx + v44 * c + *&v84 * v42 hasTrackingFrameCount:ty + v44 * d + *(&v84 + 1) * v42 trackingFrameCount:v75 + v48 * v76 + *&v79 * v46 hasSmile:v77 + v48 * v78 + *(&v79 + 1) * v46 leftEyeClosed:*&v72 + v52 * *&v53 + *&v74 * v50 rightEyeClosed:*(&v72 + 1) + v52 * v73 + *(&v74 + 1) * v50 landmarks:v65, v66, 0, v67];
        if (v62)
        {
          [array addObject:v62];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v90 objects:v110 count:16];
    }

    while (v22);
  }

  v63 = [array count];
  *(v102 + 6) = v63;
LABEL_47:
  v97(v96);
  _Block_object_dispose(&v101, 8);
  return array;
}

void __46__CIFaceCoreDetector_featuresInImage_options___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_detector();
  v3 = *(a1 + 40);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "CIFaceCoreDetector", "count:%d", v6, 8u);
    }
  }
}

- (CGAffineTransform)ctmForImageWithBounds:(SEL)bounds orientation:(CGRect)orientation
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = fmax(orientation.size.width, orientation.size.height);
  t1.b = 0.0;
  t1.c = 0.0;
  v16[0] = 0x3FF0000000000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0x3FF0000000000000;
  v16[4] = 0;
  v16[5] = 0;
  v16[6] = 0xBFF0000000000000;
  v16[7] = 0;
  v16[8] = 0;
  v16[9] = 0x3FF0000000000000;
  v6 = 1024.0 / v5;
  v7 = v5 <= 1228.0;
  v8 = 1.0;
  if (!v7)
  {
    v8 = v6;
  }

  *&v16[10] = orientation.size.width * v8;
  v17 = xmmword_19CF26640;
  v18 = 0;
  v19 = 0;
  v20 = 0xBFF0000000000000;
  v21 = orientation.size.width * v8;
  v22 = orientation.size.height * v8;
  v24 = 0;
  v25 = 0;
  v23 = 0x3FF0000000000000;
  v26 = xmmword_19CF25100;
  v28 = xmmword_19CF26640;
  v29 = xmmword_19CF25100;
  v27 = orientation.size.height * v8;
  v30 = orientation.size.height * v8;
  v31 = orientation.size.width * v8;
  v32 = xmmword_19CF26640;
  v34 = 0;
  v35 = 0;
  v33 = 0x3FF0000000000000;
  v36 = orientation.size.width * v8;
  v37 = xmmword_19CF26650;
  v39 = 0u;
  v40 = 0u;
  v38 = 0x3FF0000000000000;
  v41 = 0x3FF0000000000000;
  v42 = xmmword_19CF25100;
  v43 = orientation.size.height * v8;
  v44 = 0;
  t1.a = v8;
  t1.d = v8;
  y = orientation.origin.y;
  *&t1.tx = vandq_s8(vmulq_n_f64(vnegq_f64(orientation.origin), v8), vcgtq_f64(vabsq_f64(orientation.origin), vdupq_n_s64(0x3F847AE147AE147BuLL)));
  if ((a5 - 9) >= 0xFFFFFFF8)
  {
    v10 = a5 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = &v16[6 * v10];
  v12 = v11[1];
  *&v14.a = *v11;
  *&v14.c = v12;
  *&v14.tx = v11[2];
  return CGAffineTransformConcat(retstr, &t1, &v14);
}

- (id)adjustedImageFromImage:(id)image orientation:(int)orientation inverseCTM:(CGAffineTransform *)m
{
  v6 = *&orientation;
  imageCopy = image;
  memset(&v13, 0, sizeof(v13));
  [image extent];
  if (self)
  {
    [(CIFaceCoreDetector *)self ctmForImageWithBounds:v6 orientation:?];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v11 = v13;
  CGAffineTransformInvert(&v12, &v11);
  v9 = *&v12.c;
  *&m->a = *&v12.a;
  *&m->c = v9;
  *&m->tx = *&v12.tx;
  v12 = v13;
  if (!CGAffineTransformIsIdentity(&v12))
  {
    v12 = v13;
    return [imageCopy imageByApplyingTransform:&v12];
  }

  return imageCopy;
}

- (id)createFaceCoreDataFromCIImage:(id)image width:(unint64_t *)width height:(unint64_t *)height
{
  result = [(CIFaceCoreDetector *)self context];
  if (result)
  {
    [image extent];
    LODWORD(v5) = vcvtmd_s64_f64(CGRectGetWidth(v25));
    [image extent];
    LODWORD(v6) = vcvtmd_s64_f64(CGRectGetHeight(v26));
    [image extent];
    v13 = v12;
    v15 = v14;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v17 = malloc_type_malloc(4 * v5 * v6, 0x100004077774924uLL);
    if (v17)
    {
      v18 = v17;
      [(CIContext *)[(CIFaceCoreDetector *)self context] render:image toBitmap:v17 rowBytes:4 * v5 bounds:264 format:DeviceRGB colorSpace:v13, v15, v5, v6];
      if (v6 >= 1)
      {
        v19 = 0;
        v20 = v18;
        do
        {
          if (v5 >= 1)
          {
            v21 = &v18[4 * v19 * v5];
            v22 = v5;
            v23 = v20;
            do
            {
              *v23++ = (77 * *v21 + 151 * v21[1] + 28 * v21[2]) >> 8;
              v21 += 4;
              --v22;
            }

            while (v22);
          }

          ++v19;
          v20 += v5;
        }

        while (v19 != v6);
      }

      v24 = malloc_type_realloc(v18, v6 * v5, 0x100004077774924uLL);
      CGColorSpaceRelease(DeviceRGB);
      result = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v24 length:v6 * v5 freeWhenDone:1];
      if (width)
      {
        *width = v5;
      }

      if (height)
      {
        *height = v6;
      }
    }

    else
    {
      CGColorSpaceRelease(DeviceRGB);
      return 0;
    }
  }

  return result;
}

@end
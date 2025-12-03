@interface CIVNFaceDetector
- (CIVNFaceDetector)initWithContext:(id)context options:(id)options;
- (id)featuresInImage:(id)image options:(id)options;
- (void)dealloc;
@end

@implementation CIVNFaceDetector

- (CIVNFaceDetector)initWithContext:(id)context options:(id)options
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = CIVNFaceDetector;
  v5 = [(CIDetector *)&v8 init:context];
  if (v5)
  {
    if (!contextCopy)
    {
      contextCopy = +[CIContext _singletonContext];
    }

    v5->context = contextCopy;
    v6 = contextCopy;
  }

  return v5;
}

- (id)featuresInImage:(id)image options:(id)options
{
  v130 = *MEMORY[0x1E69E9840];
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v6 = ci_signpost_log_detector();
  if (&self->super.super.isa + 1 >= 2)
  {
    v11 = v6;
    if (os_signpost_enabled(v6))
    {
      v12 = *(v111 + 6);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, self, "CIVNFaceDetector", "count:%d", buf, 8u);
    }
  }

  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v106 = __44__CIVNFaceDetector_featuresInImage_options___block_invoke;
  v107 = &unk_1E75C25C0;
  selfCopy = self;
  v108 = &v110;
  if (options)
  {
    v7 = [objc_msgSend(options objectForKey:{@"CIDetectorAccuracy", "isEqual:", @"CIDetectorAccuracyLow"}];
    if ([options objectForKey:@"CIDetectorSmile"])
    {
      v8 = [objc_msgSend(options objectForKey:{@"CIDetectorSmile", "BOOLValue"}];
    }

    else
    {
      v8 = 0;
    }

    if ([options objectForKey:@"CIDetectorEyeBlink"])
    {
      v13 = [objc_msgSend(options objectForKey:{@"CIDetectorEyeBlink", "BOOLValue"}];
    }

    else
    {
      v13 = 0;
    }

    if ([options objectForKey:@"CIDetectorImageOrientation"])
    {
      v78 = [objc_msgSend(options objectForKey:{@"CIDetectorImageOrientation", "intValue"}];
    }

    else
    {
      v78 = 1;
    }

    v9 = [options mutableCopy];
    v10 = v8 | v13;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = 0;
    v7 = 0;
    v78 = 1;
  }

  v14 = MEMORY[0x1E695E118];
  v123[0] = MEMORY[0x1E695E118];
  v122[0] = @"kCIVNDetectOptionRequestLandmarks";
  v122[1] = @"kCIVNDetectOptionRequestAttributes";
  v123[1] = [MEMORY[0x1E696AD98] numberWithBool:v10];
  v123[2] = v14;
  v122[2] = @"kCIVNDetectOptionRequestPose";
  v122[3] = @"kCIVNDetectOptionRequestFast";
  v123[3] = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v9 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v123, v122, 4)}];
  obj = CIVNDetectFaces(image, v78, self->context, v9);

  if (!obj)
  {
    v69 = MEMORY[0x1E695E0F0];
    goto LABEL_64;
  }

  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v77 = [obj countByEnumeratingWithState:&v101 objects:v121 count:16];
  if (!v77)
  {
    goto LABEL_62;
  }

  v75 = *v102;
  do
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v102 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v101 + 1) + 8 * i);
      v16 = CIVNDenormalizedLandmarks(image, v78, v15);
      v87 = [v16 objectForKeyedSubscript:@"allPoints"];
      v17 = [v16 objectForKeyedSubscript:@"leftEye"];
      v88 = [v16 objectForKeyedSubscript:@"outerLips"];
      v89 = [v16 objectForKeyedSubscript:@"rightEye"];
      v100 = 0;
      v99 = 0.0;
      [v15 pose];
      v22 = *v18.i64;
      v86 = v16;
      if (*v18.i32 != 1.0 || (v23 = vceqz_f32(*&vextq_s8(v18, v18, 4uLL)), (v23.i8[0] & 1) == 0) || (v23.i8[4] & 1) == 0)
      {
        v74 = v21;
        v80 = v20;
        v82 = v19;
        v84 = v22;
        *buf = 0;
        v125 = buf;
        v126 = 0x3052000000;
        v127 = __Block_byref_object_copy__17;
        v24 = getVNFaceObservationClass_softClass;
        v128 = __Block_byref_object_dispose__17;
        v129 = getVNFaceObservationClass_softClass;
        if (!getVNFaceObservationClass_softClass)
        {
          v114 = MEMORY[0x1E69E9820];
          v115 = 3221225472;
          v116 = __getVNFaceObservationClass_block_invoke;
          v117 = &unk_1E75C1E10;
          v118 = buf;
          __getVNFaceObservationClass_block_invoke(&v114);
          v24 = *(v125 + 40);
        }

        _Block_object_dispose(buf, 8);
        if ([v24 computeYawPitchRollFromPoseMatrix:&v100 + 4 outputYaw:&v100 outputPitch:&v99 outputRoll:{v84, v82, v80, v74}])
        {
          v25 = v99;
LABEL_31:
          v26 = v25 * -57.296;
          goto LABEL_33;
        }
      }

      if ([v15 roll])
      {
        [objc_msgSend(v15 "roll")];
        goto LABEL_31;
      }

      v26 = 0.0;
LABEL_33:
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v27 = [objc_msgSend(objc_msgSend(v15 "faceAttributes")];
      v28 = [v27 countByEnumeratingWithState:&v95 objects:v120 count:16];
      if (v28)
      {
        v81 = v17;
        v29 = *v96;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v96 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v95 + 1) + 8 * j);
            identifier = [v31 identifier];
            v114 = 0;
            v115 = &v114;
            v116 = 0x2020000000;
            v33 = getVNFaceAttributeSmilingSymbolLoc_ptr;
            v117 = getVNFaceAttributeSmilingSymbolLoc_ptr;
            if (!getVNFaceAttributeSmilingSymbolLoc_ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              v125 = 3221225472;
              v126 = __getVNFaceAttributeSmilingSymbolLoc_block_invoke;
              v127 = &unk_1E75C1E10;
              v128 = &v114;
              v34 = VisionLibrary_0();
              v35 = dlsym(v34, "VNFaceAttributeSmiling");
              *(*(v128 + 1) + 24) = v35;
              getVNFaceAttributeSmilingSymbolLoc_ptr = *(*(v128 + 1) + 24);
              v33 = *(v115 + 24);
            }

            _Block_object_dispose(&v114, 8);
            if (!v33)
            {
              [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
              goto LABEL_67;
            }

            if ([identifier isEqualToString:*v33])
            {
              [v31 confidence];
              v17 = v81;
              v85 = v36 > 0.5;
              goto LABEL_47;
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v95 objects:v120 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

        v85 = 0;
        v17 = v81;
      }

      else
      {
        v85 = 0;
      }

LABEL_47:
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v37 = [objc_msgSend(objc_msgSend(v15 "faceAttributes")];
      v38 = [v37 countByEnumeratingWithState:&v91 objects:v119 count:16];
      v83 = v26;
      if (!v38)
      {
        goto LABEL_58;
      }

      v39 = *v92;
LABEL_49:
      v40 = 0;
      while (1)
      {
        if (*v92 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v91 + 1) + 8 * v40);
        identifier2 = [v41 identifier];
        v114 = 0;
        v115 = &v114;
        v116 = 0x2020000000;
        v43 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
        v117 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
        if (!getVNFaceAttributeEyesClosedSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          v125 = 3221225472;
          v126 = __getVNFaceAttributeEyesClosedSymbolLoc_block_invoke;
          v127 = &unk_1E75C1E10;
          v128 = &v114;
          v44 = VisionLibrary_0();
          v45 = dlsym(v44, "VNFaceAttributeEyesClosed");
          *(*(v128 + 1) + 24) = v45;
          getVNFaceAttributeEyesClosedSymbolLoc_ptr = *(*(v128 + 1) + 24);
          v43 = *(v115 + 24);
        }

        _Block_object_dispose(&v114, 8);
        if (!v43)
        {
          [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_67:
          __break(1u);
        }

        if ([identifier2 isEqualToString:*v43])
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [v37 countByEnumeratingWithState:&v91 objects:v119 count:16];
          if (!v38)
          {
LABEL_58:
            v46 = 0;
            goto LABEL_60;
          }

          goto LABEL_49;
        }
      }

      [v41 confidence];
      v46 = v47 > 0.5;
LABEL_60:
      v48 = [CIFaceFeature alloc];
      v49 = CIVNBoundingRect(v87);
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v56 = [v17 count];
      v57 = CIVNAverage(v17);
      v59 = v58;
      v60 = [v89 count];
      v61 = CIVNAverage(v89);
      v63 = v62;
      v64 = [v88 count];
      v65 = CIVNAverage(v88);
      BYTE6(v72) = v46;
      BYTE5(v72) = v46;
      BYTE4(v72) = v85;
      LODWORD(v72) = 0;
      BYTE4(v71) = 0;
      *&v71 = v83;
      v67 = [(CIFaceFeature *)v48 initWithBounds:v56 != 0 hasLeftEyePosition:v60 != 0 leftEyePosition:v64 != 0 hasRightEyePosition:1 rightEyePosition:0 hasMouthPosition:0 mouthPosition:v49 hasFaceAngle:v51 faceAngle:v53 hasTrackingID:v55 trackingID:v57 hasTrackingFrameCount:v59 trackingFrameCount:v61 hasSmile:v63 leftEyeClosed:*&v65 rightEyeClosed:v66 landmarks:v71, v72, v86];
      [v76 addObject:v67];
    }

    v77 = [obj countByEnumeratingWithState:&v101 objects:v121 count:16];
  }

  while (v77);
LABEL_62:
  v68 = [v76 count];
  *(v111 + 6) = v68;
  v69 = v76;
LABEL_64:
  v106(v105);
  _Block_object_dispose(&v110, 8);
  return v69;
}

void __44__CIVNFaceDetector_featuresInImage_options___block_invoke(uint64_t a1)
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
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "CIVNFaceDetector", "count:%d", v6, 8u);
    }
  }
}

- (void)dealloc
{
  self->context = 0;
  v3.receiver = self;
  v3.super_class = CIVNFaceDetector;
  [(CIVNFaceDetector *)&v3 dealloc];
}

@end
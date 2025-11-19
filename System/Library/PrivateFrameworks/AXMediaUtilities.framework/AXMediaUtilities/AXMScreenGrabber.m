@interface AXMScreenGrabber
- (double)_adjustedScaleFactorForInputSize:(CGSize)a3 constrainingToPreferredInputSizeFromDetectors:(id)a4;
- (id)_ioSurfaceConfigurationWithSize:(CGSize)a3;
- (id)_renderOptionsForSurface:(__IOSurface *)a3 captureRect:(CGRect)a4 displayName:(id)a5 scaleFactor:(double)a6 ignoredLayerContextIDs:(id)a7 includedLayerContextIDs:(id)a8 snapshotLayerID:(id)a9 snapshotContextID:(id)a10;
- (id)grabScreenWithRect:(CGRect)a3 orientation:(int64_t)a4 options:(id)a5 metrics:(id)a6 error:(id *)a7;
- (void)recordScreenForDuration:(double)a3 completion:(id)a4;
@end

@implementation AXMScreenGrabber

- (id)grabScreenWithRect:(CGRect)a3 orientation:(int64_t)a4 options:(id)a5 metrics:(id)a6 error:(id *)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v139 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v17 = [v16 startMeasure:@"Screen Grab"];
  v18 = AXMSharedDisplayManager();
  v19 = [v18 coreAnimationMainDisplay];

  if (v19)
  {
    v32 = [v19 name];
    if (!v32)
    {
      if (a7)
      {
        *a7 = _AXMMakeError(0, @"displayName was nil", v26, v27, v28, v29, v30, v31, v105);
      }

      [v17 endMeasurement];
      v78 = 0;
      goto LABEL_47;
    }

    cf = a4;
    v117 = a7;
    [v19 convertRectToDisplay:{x, y, width, height}];
    v119 = v33;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v118 = [v15 objectForKeyedSubscript:@"UsePreferredModelInputSizeForDetectors"];
    [(AXMScreenGrabber *)self _adjustedScaleFactorForInputSize:v37 constrainingToPreferredInputSizeFromDetectors:v39];
    v41 = v40;
    v42 = AXMediaLogScreenGrab();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = [MEMORY[0x1E696AD98] numberWithInteger:cf];
      v44 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "physicalOrientation")}];
      AXMStringFromCGRect(x, y, width, height);
      v45 = v109 = v15;
      AXMStringFromCGRect(v119, v35, v37, v39);
      v46 = v113 = v17;
      AXMStringFromCGSize(v37, v39);
      v47 = v111 = v32;
      v48 = AXMStringFromCGSize(v37, v39);
      *buf = 134220034;
      *&buf[4] = 0;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      *&buf[22] = 2112;
      *&buf[24] = v43;
      *v130 = 2112;
      *&v130[2] = v44;
      *&v130[10] = 2112;
      *&v130[12] = v45;
      v131 = 2112;
      v132 = v46;
      v133 = 2048;
      v134 = v41;
      v135 = 2112;
      v136 = v47;
      v137 = 2112;
      v138 = v48;
      _os_log_impl(&dword_1AE37B000, v42, OS_LOG_TYPE_INFO, "Will perform capture\n\tUse Efficient Downsampling: %ld\n\tDisplay: %@\n\tInterface Orientation:%@\n\tPhysical Orientation:%@\n\tInput Rect: %@\n\tDisplay Rect: %@\n\tAdjusted Scale: %.2f\n\tInputSize (px): %@\n\tSurface Size (px): %@", buf, 0x5Cu);

      v32 = v111;
      v17 = v113;

      v15 = v109;
    }

    v49 = [(AXMScreenGrabber *)self _ioSurfaceConfigurationWithSize:v37, v39];
    v50 = IOSurfaceCreate(v49);
    if (!v50)
    {
      if (v117)
      {
        *v117 = _AXMMakeError(0, @"Failed to create IOSurface", v51, v52, v53, v54, v55, v56, v105);
      }

      [v17 endMeasurement];
      v78 = 0;
      goto LABEL_46;
    }

    v57 = v50;
    v58 = AXMediaLogScreenGrab();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [AXMScreenGrabber grabScreenWithRect:orientation:options:metrics:error:];
    }

    v108 = v49;

    v59 = [v15 objectForKeyedSubscript:@"IgnoredLayerContextIDs"];
    v60 = [v15 objectForKeyedSubscript:@"IncludedLayerContextIDs"];
    v61 = [v15 objectForKeyedSubscript:@"SnapshotLayerID"];
    v62 = [v15 objectForKeyedSubscript:@"SnapshotContextID"];
    v63 = v119;
    v64 = v35;
    v65 = v41;
    v120 = v60;
    v110 = v61;
    v107 = v62;
    v66 = [(AXMScreenGrabber *)self _renderOptionsForSurface:v57 captureRect:v32 displayName:v59 scaleFactor:v60 ignoredLayerContextIDs:v61 includedLayerContextIDs:v63 snapshotLayerID:v64 snapshotContextID:v37, v39, v41];
    IOSurfaceLock(v57, 0, 0);
    LOBYTE(v60) = CARenderServerSnapshot();
    IOSurfaceUnlock(v57, 0, 0);
    if ((v60 & 1) == 0)
    {
      CFRelease(v57);
      if (v117)
      {
        *v117 = _AXMMakeError(0, @"Failed to render display", v79, v80, v81, v82, v83, v84, v105);
      }

      [v17 endMeasurement];
      v78 = 0;
      v49 = v108;
      goto LABEL_45;
    }

    v112 = v32;
    v114 = v17;
    v67 = [MEMORY[0x1E695F658] imageWithIOSurface:v57];
    v68 = [v67 rotatedImageWithInterfaceOrientation:cf displayOrientation:objc_msgSend(v19 appliedImageOrientation:{"physicalOrientation"), 0}];

    if (v68)
    {
      v69 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
      v49 = v108;
      if (v69)
      {
        cfa = v69;
        [v68 extent];
        v72 = v70;
        v73 = v71;
        v106 = v59;
        if (v65 < 1.0)
        {
          v72 = v65 * v70;
          *v130 = 0u;
          v73 = v65 * v71;
          memset(buf, 0, sizeof(buf));
          CGAffineTransformMakeScale(buf, v65, v65);
          v128[0] = *buf;
          v128[1] = *&buf[16];
          v128[2] = *v130;
          v74 = [v68 imageByApplyingTransform:v128];

          v68 = v74;
        }

        *buf = 0;
        v75 = CVPixelBufferCreate(0, v72, v73, *AXMVisionNativeVideoPixelBufferFormat, 0, buf);
        if (v75 || !*buf)
        {
          CFRelease(v57);
          CFRelease(cfa);
          if (*buf)
          {
            CFRelease(*buf);
            *buf = 0;
          }

          if (v117)
          {
            v97 = [MEMORY[0x1E696AD98] numberWithInt:v75];
            *v117 = _AXMMakeError(0, @"CVPixelBufferCreate returned NULL buffer for pixel buffer. CVReturn: %@", v98, v99, v100, v101, v102, v103, v97);
          }

          [v17 endMeasurement];
          v78 = 0;
        }

        else
        {
          v121[0] = MEMORY[0x1E69E9820];
          v121[1] = 3221225472;
          v121[2] = __73__AXMScreenGrabber_grabScreenWithRect_orientation_options_metrics_error___block_invoke;
          v121[3] = &unk_1E7A1C628;
          v122 = v16;
          v123 = v68;
          v124 = *buf;
          v125 = v72;
          v126 = v73;
          v127 = cfa;
          [v122 measure:@"Render ScreenGrab" execute:v121];
          v76 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:*buf];
          v77 = AXMediaLogScreenGrab();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            [AXMScreenGrabber grabScreenWithRect:orientation:options:metrics:error:];
          }

          if (*buf)
          {
            CFRelease(*buf);
            *buf = 0;
          }

          CFRelease(cfa);
          CFRelease(v57);
          v17 = v114;
          [v114 endMeasurement];
          v78 = v76;
        }

        v32 = v112;
        v59 = v106;
        goto LABEL_45;
      }

      CFRelease(v57);
      if (v117)
      {
        *v117 = _AXMMakeError(0, @"Could not create color space", v91, v92, v93, v94, v95, v96, v105);
      }

      [v17 endMeasurement];
    }

    else
    {
      CFRelease(v57);
      v49 = v108;
      if (v117)
      {
        *v117 = _AXMMakeError(0, @"Could not convert surface to CIImage", v85, v86, v87, v88, v89, v90, v105);
      }

      [v17 endMeasurement];
    }

    v78 = 0;
    v32 = v112;
LABEL_45:

LABEL_46:
LABEL_47:

    goto LABEL_48;
  }

  if (a7)
  {
    *a7 = _AXMMakeError(0, @"mainDisplay was nil", v20, v21, v22, v23, v24, v25, v105);
  }

  [v17 endMeasurement];
  v78 = 0;
LABEL_48:

  return v78;
}

void __73__AXMScreenGrabber_grabScreenWithRect_orientation_options_metrics_error___block_invoke(uint64_t a1)
{
  v2 = AXMCoreImageContext(*(a1 + 32));
  [v2 render:*(a1 + 40) toCVPixelBuffer:*(a1 + 48) bounds:*(a1 + 72) colorSpace:{0.0, 0.0, *(a1 + 56), *(a1 + 64)}];
}

- (id)_ioSurfaceConfigurationWithSize:(CGSize)a3
{
  width = a3.width;
  v4 = llroundf(width);
  v18[6] = *MEMORY[0x1E69E9840];
  height = a3.height;
  v6 = llroundf(height);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v8 = (AlignedBytesPerRow * v6);
  v17[0] = *MEMORY[0x1E696D130];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v18[0] = v9;
  v17[1] = *MEMORY[0x1E696CF58];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v18[1] = v10;
  v17[2] = *MEMORY[0x1E696CE58];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:AlignedBytesPerRow];
  v18[2] = v11;
  v17[3] = *MEMORY[0x1E696CE30];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v18[3] = v12;
  v17[4] = *MEMORY[0x1E696CE50];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v18[4] = v13;
  v17[5] = *MEMORY[0x1E696CFC0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*AXMVisionNativeVideoPixelBufferFormat];
  v18[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];

  return v15;
}

- (id)_renderOptionsForSurface:(__IOSurface *)a3 captureRect:(CGRect)a4 displayName:(id)a5 scaleFactor:(double)a6 ignoredLayerContextIDs:(id)a7 includedLayerContextIDs:(id)a8 snapshotLayerID:(id)a9 snapshotContextID:(id)a10
{
  y = a4.origin.y;
  x = a4.origin.x;
  v61 = *MEMORY[0x1E69E9840];
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [MEMORY[0x1E695DF90] dictionary];
  [v22 setObject:a3 forKeyedSubscript:*MEMORY[0x1E6979F50]];
  [v22 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6979F68]];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:x];
  [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6979FE0]];

  v24 = [MEMORY[0x1E696AD98] numberWithInt:y];
  [v22 setObject:v24 forKeyedSubscript:*MEMORY[0x1E6979FE8]];

  [v22 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6979FA8]];
  v25 = *MEMORY[0x1E6979F40];
  [v22 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6979F40]];
  if ([v19 count])
  {
    v43 = v21;
    v44 = v20;
    v45 = v18;
    v46 = v17;
    [v22 setObject:*MEMORY[0x1E6979FD8] forKeyedSubscript:*MEMORY[0x1E6979FB0]];
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = v19;
    v28 = [v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v52;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v51 + 1) + 8 * i);
          if ([v32 unsignedIntegerValue])
          {
            v58 = v25;
            v59 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            [v26 addObject:v33];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v29);
    }

LABEL_22:

    [v22 setObject:v26 forKeyedSubscript:*MEMORY[0x1E6979F48]];
    v18 = v45;
    v17 = v46;
    v21 = v43;
    v20 = v44;
    goto LABEL_23;
  }

  v34 = [v18 count];
  v35 = *MEMORY[0x1E6979FB0];
  if (v34)
  {
    v43 = v21;
    v44 = v20;
    v46 = v17;
    [v22 setObject:*MEMORY[0x1E6979FC0] forKeyedSubscript:v35];
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v45 = v18;
    v27 = v18;
    v36 = [v27 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v48;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v27);
          }

          v40 = *(*(&v47 + 1) + 8 * j);
          if ([v40 unsignedIntegerValue])
          {
            v55 = v25;
            v56 = v40;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            [v26 addObject:v41];
          }
        }

        v37 = [v27 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v37);
    }

    goto LABEL_22;
  }

  [v22 setObject:*MEMORY[0x1E6979FB8] forKeyedSubscript:v35];
LABEL_23:

  return v22;
}

- (double)_adjustedScaleFactorForInputSize:(CGSize)a3 constrainingToPreferredInputSizeFromDetectors:(id)a4
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 preferredModelInputSize];
          v14 = v13 / width;
          v16 = v15 / height;
          if (v16 > v14)
          {
            v14 = v16;
          }

          if (v14 > v10 && v14 < 1.0)
          {
            v10 = v14;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v18 = 1.0;
  if (v10 != 0.0)
  {
    v18 = v10;
  }

  if (v18 >= 0.33)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0.33;
  }

  return v19;
}

- (void)recordScreenForDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  if (ReplayKitLibraryCore())
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v13 = getRPScreenRecorderClass_softClass;
    v37 = getRPScreenRecorderClass_softClass;
    if (!getRPScreenRecorderClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __getRPScreenRecorderClass_block_invoke;
      v32 = &unk_1E7A1C700;
      v33 = &v34;
      __getRPScreenRecorderClass_block_invoke(buf);
      v13 = v35[3];
    }

    v14 = v13;
    _Block_object_dispose(&v34, 8);
    v15 = [v13 sharedRecorder];
    [v15 setSystemRecording:1];
    [v15 setDelegate:self];
    if ([v15 isAvailable])
    {
      v22 = AXMediaLogScreenGrab();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE37B000, v22, OS_LOG_TYPE_DEFAULT, "Will begin recording screen", buf, 2u);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke;
      v25[3] = &unk_1E7A1C6A0;
      v27 = v6;
      v28 = a3;
      v26 = v15;
      [v26 startSystemRecordingWithMicrophoneEnabled:0 handler:v25];

      v23 = v27;
      goto LABEL_12;
    }

    if (v6)
    {
      v23 = _AXMMakeError(0, @"Screen recording is not available", v16, v17, v18, v19, v20, v21, v24);
      (*(v6 + 2))(v6, 0, v23);
LABEL_12:
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v6)
  {
    v15 = _AXMMakeError(0, @"ReplayKit is not available", v7, v8, v9, v10, v11, v12, v24);
    (*(v6 + 2))(v6, 0, v15);
    goto LABEL_13;
  }

LABEL_14:
}

void __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AXMediaLogScreenGrab();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_cold_1();
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 134217984;
      v14 = v7;
      _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "Screen recording in progress for %.1fs", buf, 0xCu);
    }

    v8 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    v9 = dispatch_get_global_queue(33, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_78;
    v10[3] = &unk_1E7A1C678;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    dispatch_after(v8, v9, v10);
  }
}

void __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_78(uint64_t a1)
{
  v2 = AXMediaLogScreenGrab();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE37B000, v2, OS_LOG_TYPE_DEFAULT, "Screen recording is finishing", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_79;
  v4[3] = &unk_1E7A1C650;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 stopSystemRecordingWithURLHandler:v4];
}

void __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AXMediaLogScreenGrab();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_79_cold_1();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_10:
      v9();
    }
  }

  else
  {
    v10 = AXMediaLogScreenGrab();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 138412290;
        *&v20[4] = v5;
        _os_log_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_DEFAULT, "Screen recording did finish with output URL: %@", v20, 0xCu);
      }

      v9 = *(*(a1 + 32) + 16);
      goto LABEL_10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_79_cold_2(v11);
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = _AXMMakeError(0, @"No video URL was produced", v12, v13, v14, v15, v16, v17, *v20);
      (*(v18 + 16))(v18, 0, v19);
    }
  }
}

void __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_ERROR, "Screen recording did fail to start: %@", v1, 0xCu);
}

void __55__AXMScreenGrabber_recordScreenForDuration_completion___block_invoke_79_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_ERROR, "Screen recording did fail to finish: %@", v1, 0xCu);
}

@end
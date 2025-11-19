@interface FBSProcessorCPU
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
@end

@implementation FBSProcessorCPU

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v88 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"fullROI", "CGRectValue"}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputMaxNumVertices", "intValue"}];
  v17 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputSigmaS", "intValue"}];
  v18 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputSigmaRLuma", "intValue"}];
  v19 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputSigmaRChroma", "intValue"}];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"inputLambda", "floatValue"}];
  v21 = v20;
  v22 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputMaxNumIterations", "intValue"}];
  if (v16 <= 1000)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (!v17)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (!v18)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (!v19)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (v21 == 0.0)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  v23 = v22;
  if (!v22)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  v24 = v13;
  v85 = v15;
  v25 = [a3 objectAtIndexedSubscript:0];
  v26 = [a3 objectAtIndexedSubscript:1];
  v27 = [a3 objectAtIndexedSubscript:2];
  v82 = convertToFullFloatPixelBuffer(v26, v9, v11, v13, v15);
  v81 = convertToFullFloatPixelBuffer(v27, v9, v11, v13, v15);
  if ([a5 format] == 2309)
  {
    v28 = [a5 bytesPerRow];
  }

  else
  {
    v28 = 4 * v24;
  }

  pixelBuffer = createPixelBuffer(v13, v85, v28, 0);
  v29 = v16;
  v30 = [[CIBilateralGridHash alloc] initWithWidth:v13 height:v85 maxHashTableSize:v16];
  v31 = [v25 surface];
  [v25 region];
  if ([CIBilateralGridHash createWithSurface:v30 region:"createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:" cropRect:v31 sigma_s:v17 sigma_r_luma:v18 sigma_r_chroma:v19])
  {
    v32 = ci_logger_performance();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.data) = 136446210;
      *(&buf.data + 4) = "+[FBSProcessorCPU processWithInputs:arguments:output:error:]";
      _os_log_impl(&dword_19CC36000, v32, OS_LOG_TYPE_INFO, "%{public}s Returning disparity image; unable to create 3D bilateral grid hash. Please file a radar.", &buf, 0xCu);
    }
  }

  v33 = [[CIBilateralSolverCPU alloc] initWithWidth:v13 height:v85 maxVertices:v29];
  v34 = [v25 surface];
  v35 = pixelBuffer;
  *&v36 = v21;
  [(CIBilateralSolverCPU *)v33 doSolveWithBilateralGridhash:v30 reference:v34 disparity:v81 confidence:v82 output:pixelBuffer lambda:v23 maxIterations:v36];

  if ([a5 format] == 2053)
  {
    if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
    {
      goto LABEL_31;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    v39 = [a5 baseAddress];
    [a5 region];
    v41 = v40;
    [a5 region];
    if (v41 >= v9)
    {
      v44 = 0;
      v43 = (v42 * 4.0 + 0.0);
    }

    else
    {
      v43 = 0;
      v44 = ((v9 - v42) * 4.0 + 0.0);
    }

    [a5 region];
    v51 = v50;
    [a5 region];
    if (v51 >= v11)
    {
      v43 = (v43 + v52 * BytesPerRow);
    }

    else
    {
      v44 = (v44 + (v11 - v52) * [a5 bytesPerRow]);
    }

    [a5 region];
    v54 = v53;
    v55 = v24;
    if (v54 < v24)
    {
      [a5 region];
    }

    v56 = v55;
    [a5 region];
    v57 = v15;
    if (v58 < v15)
    {
      [a5 region];
      v57 = v59;
    }

    buf.data = &BaseAddress[v43];
    buf.height = v57;
    buf.width = v56;
    buf.rowBytes = BytesPerRow;
    dest.data = (v39 + v44);
    dest.height = v57;
    dest.width = v56;
    dest.rowBytes = [a5 bytesPerRow];
    vImageConvert_PlanarFtoPlanar16F(&buf, &dest, 0);
    goto LABEL_30;
  }

  if ([a5 format] == 2309 && !CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    v45 = CVPixelBufferGetBaseAddress(pixelBuffer);
    v46 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (v46 == [a5 bytesPerRow])
    {
      v47 = [a5 baseAddress];
      v48 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      memcpy(v47, v45, Height * v48);
    }

    else
    {
      v61 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      [a5 region];
      if (v62 < v13)
      {
        [a5 region];
        v13 = v63;
      }

      [a5 region];
      if (v64 < v15)
      {
        [a5 region];
        v85 = v65;
      }

      v66 = [a5 baseAddress];
      [a5 region];
      v68 = v67;
      [a5 region];
      if (v68 >= v9)
      {
        v71 = 0;
        v70 = (v69 * 4.0 + 0.0);
      }

      else
      {
        v70 = 0;
        v71 = ((v9 - v69) * 4.0 + 0.0);
      }

      [a5 region];
      v73 = v72;
      [a5 region];
      if (v73 >= v11)
      {
        v70 = (v70 + v74 * v61);
      }

      else
      {
        v71 = (v71 + (v11 - v74) * [a5 bytesPerRow]);
      }

      if (v85)
      {
        v75 = 0;
        v76 = vcvtd_n_u64_f64(v13, 2uLL);
        v77 = v66 + v71;
        v78 = 1;
        v79 = &v45[v70];
        do
        {
          memcpy((v77 + [a5 bytesPerRow] * v75), &v79[v75 * v61], v76);
          v75 = v78;
        }

        while (v85 > v78++);
      }
    }

LABEL_30:
    v35 = pixelBuffer;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

LABEL_31:
  if (v35)
  {
    CVPixelBufferRelease(v35);
  }

  if (v82)
  {
    CVPixelBufferRelease(v82);
  }

  if (v81)
  {
    CVPixelBufferRelease(v81);
  }

  return 1;
}

@end
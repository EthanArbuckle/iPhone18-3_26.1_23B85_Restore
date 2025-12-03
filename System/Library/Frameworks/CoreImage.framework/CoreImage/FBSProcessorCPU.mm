@interface FBSProcessorCPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation FBSProcessorCPU

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v88 = *MEMORY[0x1E69E9840];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"fullROI", "CGRectValue"}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMaxNumVertices", "intValue"}];
  v17 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaS", "intValue"}];
  v18 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaRLuma", "intValue"}];
  v19 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaRChroma", "intValue"}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputLambda", "floatValue"}];
  v21 = v20;
  v22 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMaxNumIterations", "intValue"}];
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
  v25 = [inputs objectAtIndexedSubscript:0];
  v26 = [inputs objectAtIndexedSubscript:1];
  v27 = [inputs objectAtIndexedSubscript:2];
  v82 = convertToFullFloatPixelBuffer(v26, v9, v11, v13, v15);
  v81 = convertToFullFloatPixelBuffer(v27, v9, v11, v13, v15);
  if ([output format] == 2309)
  {
    bytesPerRow = [output bytesPerRow];
  }

  else
  {
    bytesPerRow = 4 * v24;
  }

  pixelBuffer = createPixelBuffer(v13, v85, bytesPerRow, 0);
  v29 = v16;
  v30 = [[CIBilateralGridHash alloc] initWithWidth:v13 height:v85 maxHashTableSize:v16];
  surface = [v25 surface];
  [v25 region];
  if ([CIBilateralGridHash createWithSurface:v30 region:"createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:" cropRect:surface sigma_s:v17 sigma_r_luma:v18 sigma_r_chroma:v19])
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
  surface2 = [v25 surface];
  v35 = pixelBuffer;
  *&v36 = v21;
  [(CIBilateralSolverCPU *)v33 doSolveWithBilateralGridhash:v30 reference:surface2 disparity:v81 confidence:v82 output:pixelBuffer lambda:v23 maxIterations:v36];

  if ([output format] == 2053)
  {
    if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
    {
      goto LABEL_31;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    baseAddress = [output baseAddress];
    [output region];
    v41 = v40;
    [output region];
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

    [output region];
    v51 = v50;
    [output region];
    if (v51 >= v11)
    {
      v43 = (v43 + v52 * BytesPerRow);
    }

    else
    {
      v44 = (v44 + (v11 - v52) * [output bytesPerRow]);
    }

    [output region];
    v54 = v53;
    v55 = v24;
    if (v54 < v24)
    {
      [output region];
    }

    v56 = v55;
    [output region];
    v57 = v15;
    if (v58 < v15)
    {
      [output region];
      v57 = v59;
    }

    buf.data = &BaseAddress[v43];
    buf.height = v57;
    buf.width = v56;
    buf.rowBytes = BytesPerRow;
    dest.data = (baseAddress + v44);
    dest.height = v57;
    dest.width = v56;
    dest.rowBytes = [output bytesPerRow];
    vImageConvert_PlanarFtoPlanar16F(&buf, &dest, 0);
    goto LABEL_30;
  }

  if ([output format] == 2309 && !CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    v45 = CVPixelBufferGetBaseAddress(pixelBuffer);
    v46 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (v46 == [output bytesPerRow])
    {
      baseAddress2 = [output baseAddress];
      v48 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      memcpy(baseAddress2, v45, Height * v48);
    }

    else
    {
      v61 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      [output region];
      if (v62 < v13)
      {
        [output region];
        v13 = v63;
      }

      [output region];
      if (v64 < v15)
      {
        [output region];
        v85 = v65;
      }

      baseAddress3 = [output baseAddress];
      [output region];
      v68 = v67;
      [output region];
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

      [output region];
      v73 = v72;
      [output region];
      if (v73 >= v11)
      {
        v70 = (v70 + v74 * v61);
      }

      else
      {
        v71 = (v71 + (v11 - v74) * [output bytesPerRow]);
      }

      if (v85)
      {
        v75 = 0;
        v76 = vcvtd_n_u64_f64(v13, 2uLL);
        v77 = baseAddress3 + v71;
        v78 = 1;
        v79 = &v45[v70];
        do
        {
          memcpy((v77 + [output bytesPerRow] * v75), &v79[v75 * v61], v76);
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
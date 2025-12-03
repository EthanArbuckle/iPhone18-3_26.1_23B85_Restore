@interface PFPFFBSProcessorCPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation PFPFFBSProcessorCPU

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
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
    sub_49E50();
  }

  if (!v17)
  {
    sub_49E24();
  }

  if (!v18)
  {
    sub_49DF8();
  }

  if (!v19)
  {
    sub_49DCC();
  }

  if (v21 == 0.0)
  {
    sub_49DA0();
  }

  v23 = v22;
  if (!v22)
  {
    sub_49D74();
  }

  v82 = v17;
  v24 = v13;
  v25 = [inputs objectAtIndexedSubscript:0];
  v26 = [inputs objectAtIndexedSubscript:1];
  v27 = [inputs objectAtIndexedSubscript:2];
  v83 = sub_8558(v26, v9, v11, v13, v15);
  v85 = sub_8558(v27, v9, v11, v13, v15);
  format = [output format];
  v29 = kCIFormatRf;
  if (format == kCIFormatRf)
  {
    bytesPerRow = [output bytesPerRow];
  }

  else
  {
    bytesPerRow = (4 * v24);
  }

  pixelBuffer = sub_875C(v13, v15, bytesPerRow, 0);
  v31 = v16;
  v32 = [[PFBilateralGridHash alloc] initWithWidth:v13 height:v15 maxHashTableSize:v16];
  surface = [v25 surface];
  [v25 region];
  if ([PFBilateralGridHash createWithSurface:v32 region:"createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:" cropRect:surface sigma_s:v82 sigma_r_luma:v18 sigma_r_chroma:v19])
  {
    NSLog(@"Returning disparity image; unable to create 3D bilateral grid hash. Please file a radar.");
  }

  v34 = [[PFBilateralSolverCPU alloc] initWithWidth:v13 height:v15 maxVertices:v31];
  surface2 = [v25 surface];
  v37 = pixelBuffer;
  v36 = v85;
  v38 = v83;
  *&v39 = v21;
  [(PFBilateralSolverCPU *)v34 doSolveWithBilateralGridhash:v32 reference:surface2 disparity:v85 confidence:v83 output:pixelBuffer lambda:v23 maxIterations:v39];

  format2 = [output format];
  if (format2 == kCIFormatRh)
  {
    if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
    {
      goto LABEL_46;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    baseAddress = [output baseAddress];
    [output region];
    v45 = v44;
    [output region];
    if (v45 >= v9)
    {
      v48 = 0;
      v47 = (v46 * 4.0 + 0.0);
    }

    else
    {
      v47 = 0;
      v48 = ((v9 - v46) * 4.0 + 0.0);
    }

    [output region];
    v55 = v54;
    [output region];
    if (v55 >= v11)
    {
      v47 = (v47 + v56 * BytesPerRow);
    }

    else
    {
      v48 = (v48 + (v11 - v56) * [output bytesPerRow]);
    }

    [output region];
    v58 = v24;
    if (v57 < v24)
    {
      v58 = v57;
    }

    v59 = v58;
    [output region];
    if (v60 >= v15)
    {
      v61 = v15;
    }

    else
    {
      v61 = v60;
    }

    src.data = &BaseAddress[v47];
    src.height = v61;
    src.width = v59;
    src.rowBytes = BytesPerRow;
    dest.data = &baseAddress[v48];
    dest.height = v61;
    dest.width = v59;
    dest.rowBytes = [output bytesPerRow];
    vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    v37 = pixelBuffer;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    goto LABEL_45;
  }

  if ([output format] == v29 && !CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    v49 = CVPixelBufferGetBaseAddress(pixelBuffer);
    v50 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (v50 == [output bytesPerRow])
    {
      baseAddress2 = [output baseAddress];
      v52 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      memcpy(baseAddress2, v49, Height * v52);
    }

    else
    {
      v62 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      [output region];
      if (v63 < v13)
      {
        v13 = v63;
      }

      [output region];
      if (v64 >= v15)
      {
        v65 = v15;
      }

      else
      {
        v65 = v64;
      }

      v66 = v65;
      baseAddress3 = [output baseAddress];
      [output region];
      v69 = v68;
      [output region];
      if (v69 >= v9)
      {
        v72 = 0;
        v71 = (v70 * 4.0 + 0.0);
      }

      else
      {
        v71 = 0;
        v72 = ((v9 - v70) * 4.0 + 0.0);
      }

      [output region];
      v74 = v73;
      [output region];
      if (v74 >= v11)
      {
        v71 = (v71 + v75 * v62);
      }

      else
      {
        v72 = (v72 + (v11 - v75) * [output bytesPerRow]);
      }

      if (v66)
      {
        v76 = 0;
        v77 = vcvtd_n_u64_f64(v13, 2uLL);
        v78 = &baseAddress3[v72];
        v79 = 1;
        v80 = &v49[v71];
        do
        {
          memcpy(&v78[[output bytesPerRow] * v76], &v80[v76 * v62], v77);
          v76 = v79++;
        }

        while (v76 < v66);
      }
    }

    v37 = pixelBuffer;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    v38 = v83;
LABEL_45:
    v36 = v85;
  }

LABEL_46:
  if (v37)
  {
    CVPixelBufferRelease(v37);
  }

  if (v38)
  {
    CVPixelBufferRelease(v38);
  }

  if (v36)
  {
    CVPixelBufferRelease(v36);
  }

  return 1;
}

@end
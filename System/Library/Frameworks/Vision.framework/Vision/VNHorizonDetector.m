@interface VNHorizonDetector
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNHorizonDetector

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v102[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 error:a8];
  if (!v13)
  {
    v32 = 0;
    goto LABEL_35;
  }

  v14 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  v15 = v14;
  if (v14)
  {
    v22 = [v14 imageProperties];
    if (!v22)
    {
      v33 = 0;
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
LABEL_28:
      VNValidatedLog(1, @"MaxPitch = %.3f, MaxPixelTilt = %.3f, MinPixelTilt = %.3f, MaxAccelMagDev = %.3f, MaxAccelFFTDifff = %.3f\n", v16, v17, v18, v19, v20, v21, 0x4039000000000000);
      if (fabsf(v34) <= 0.03)
      {
        v77 = v33;
      }

      else
      {
        v77 = 0;
      }

      if (fabsf(v36) > 0.43633 || (v101 = 0.0, BaseAddress = CVPixelBufferGetBaseAddress(a4), BytesPerRow = CVPixelBufferGetBytesPerRow(a4), Width = CVPixelBufferGetWidth(a4), Height = CVPixelBufferGetHeight(a4), horizonDetectionFFT(BaseAddress, BytesPerRow, Width, Height, &v101, 1), v83 = v101, VNValidatedLog(1, @"FFT detected angle = %.3f deg\n", v84, v85, v86, v87, v88, v89, COERCE__INT64((v101 * 180.0) / 3.14159265)), v90 = fabsf(v83), v90 < 0.017453) || v90 > 0.17453 || v77 && vabds_f32((v83 * 180.0) / 3.1416, v35) > 5.0)
      {
        v32 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v91 = [v15 width];
        v92 = [v15 height];
        memset(&v100, 0, sizeof(v100));
        v93 = v92;
        CGAffineTransformMakeTranslation(&v100, vcvts_n_f32_s32(v91, 1uLL), vcvts_n_f32_s32(v92, 1uLL));
        v98 = v100;
        v94 = v83;
        CGAffineTransformRotate(&v99, &v98, v94);
        v100 = v99;
        v98 = v99;
        CGAffineTransformTranslate(&v99, &v98, (v91 * -0.5), (v93 * -0.5));
        v100 = v99;
        v95 = [(VNObservation *)[VNHorizonObservation alloc] initWithOriginatingRequestSpecifier:v13];
        v99 = v100;
        [(VNHorizonObservation *)v95 setTransform:&v99];
        [(VNHorizonObservation *)v95 setAngle:v94];
        v102[0] = v95;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:1];
      }

      goto LABEL_34;
    }

    VNValidatedLog(1, @"horizonDetector: props exist\n", v16, v17, v18, v19, v20, v21, v96);
    v23 = *MEMORY[0x1E696DE78];
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];

    if (v24)
    {
      v31 = [v24 intValue];
    }

    else
    {
      v31 = 0;
    }

    VNValidatedLog(1, @"horizonDetector: Orientation = %d\n", v25, v26, v27, v28, v29, v30, v31);
    v37 = *MEMORY[0x1E696DE30];
    v38 = [v22 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    if (v38)
    {
      v45 = [v38 objectForKeyedSubscript:@"8"];
      VNValidatedLog(1, @"  Found makerNotes\n", v46, v47, v48, v49, v50, v51, v97);
      if (v45)
      {
        v52 = [v45 objectAtIndexedSubscript:0];
        [v52 floatValue];
        v54 = v53;

        v55 = [v45 objectAtIndexedSubscript:1];
        [v55 floatValue];
        v57 = v56;

        v58 = [v45 objectAtIndexedSubscript:2];
        [v58 floatValue];
        v60 = v59;

        VNValidatedLog(1, @"    Found vector: %.3f,%.3f,%.3f\n", v61, v62, v63, v64, v65, v66, COERCE__INT64(v54));
      }

      else
      {
        v54 = 0.0;
        v57 = 0.0;
        v60 = 0.0;
      }
    }

    else
    {
      v54 = 0.0;
      v57 = 0.0;
      v60 = 0.0;
    }

    VNValidatedLog(1, @"acc = (%.5f, %.5f, %.5f)\n", v39, v40, v41, v42, v43, v44, COERCE__INT64(v54));
    v67 = (v57 * v57) + (v54 * v54);
    v36 = atan2f(v60, sqrtf(v67));
    v34 = sqrtf(v67 + (v60 * v60)) + -1.0;
    v74 = atan2f(v57, v54);
    v75 = v74;
    if (v31 > 5)
    {
      if (v31 == 6)
      {
        v76 = 1.5708;
      }

      else
      {
        if (v31 != 8)
        {
LABEL_23:
          VNValidatedLog(1, @"accelPitch = %.3f deg, accelMagnitudeDev = %.3f\n", v68, v69, v70, v71, v72, v73, COERCE__INT64((v36 * 180.0) / 3.14159265));
          v33 = 0;
          v35 = ((v75 + 0.0) * -180.0) / 3.14159265;
LABEL_27:

          goto LABEL_28;
        }

        v76 = -1.5708;
      }
    }

    else if (v31 == 1)
    {
      v76 = flt_1A60385E0[v74 < 0.0];
    }

    else
    {
      v76 = 0.0;
      if (v31 != 3)
      {
        goto LABEL_23;
      }
    }

    v35 = ((v75 + v76) * -180.0) / 3.14159265;
    v33 = 1;
    VNValidatedLog(1, @"accelTilt = %.3f deg, accelPitch = %.3f deg, accMagnitudeDev %.3f\n", v68, v69, v70, v71, v72, v73, COERCE__INT64(v35));
    goto LABEL_27;
  }

  v32 = 0;
LABEL_34:

LABEL_35:

  return v32;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 width];
    v20 = [v18 height];
    v26.origin.x = x * v19;
    v26.size.width = width * v19;
    v26.origin.y = y * v20;
    v26.size.height = height * v20;
    v27 = CGRectIntegral(v26);
    if (v19 > v20)
    {
      v21 = 256;
    }

    else
    {
      v21 = (((v20 / v19) * 256.0) + 0.5);
    }

    if (v19 > v20)
    {
      v22 = (((v19 / v20) * 256.0) + 0.5);
    }

    else
    {
      v22 = 256;
    }

    v23 = [v18 croppedBufferWithWidth:v22 height:v21 format:1111970369 cropRect:v16 options:a8 error:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];
    *a7 = v23;
    v24 = v23 != 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end
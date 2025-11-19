@interface VNTorsoprintGeneratorFaceBased
+ (CGSize)torsoprintDescriptorSize;
+ (CGSize)torsoprintInputImageSizeForFaceOrientation:(int)a3;
- (BOOL)_calculateTorsoBBoxFromFaceBBox:(CGRect)a3 insideImageWithSize:(CGSize)a4 faceOrientationRelativeToUpright:(int)a5 torsoBBox:(CGRect *)a6 error:(id *)a7;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNTorsoprintGeneratorFaceBased

- (BOOL)_calculateTorsoBBoxFromFaceBBox:(CGRect)a3 insideImageWithSize:(CGSize)a4 faceOrientationRelativeToUpright:(int)a5 torsoBBox:(CGRect *)a6 error:(id *)a7
{
  if (!a6)
  {
    if (a7)
    {
      v13 = @"Memory for torso bouding box is not allocated";
LABEL_23:
      v33 = [VNError errorForInternalErrorWithLocalizedDescription:v13, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.width, a4.height];
      v34 = v33;
      result = 0;
      *a7 = v33;
      return result;
    }

    return 0;
  }

  height = a4.height;
  width = a4.width;
  v11 = MEMORY[0x1E695F050];
  v36[0] = *MEMORY[0x1E695F050];
  if (a5 <= 5)
  {
    if (a5 == 1)
    {
      v20 = (a3.origin.x + a3.size.width * -0.5) * a4.width;
      a3.origin.x = roundf(v20);
      a4.width = -3.0;
      a3.origin.y = a3.origin.y + a3.size.height * -3.0;
      goto LABEL_15;
    }

    if (a5 == 3)
    {
      a4.width = -0.5;
      v12 = (a3.origin.x + a3.size.width * -0.5) * width;
      a3.origin.x = roundf(v12);
LABEL_15:
      v21 = a3.origin.y * a4.height;
      v16 = roundf(v21);
      v22 = a3.size.height;
      v18 = xmmword_1A6038EF0;
      goto LABEL_16;
    }

LABEL_12:
    if (a7)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithInt:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.width, a4.height, a4.width, a4.height}];
      *a7 = [VNError errorForInvalidArgument:v19 named:@"faceOrientationRelativeToUpright"];
    }

    return 0;
  }

  if (a5 != 6)
  {
    if (a5 != 8)
    {
      goto LABEL_12;
    }

    a3.origin.x = a3.origin.x + a3.size.width * -3.0;
  }

  v14 = a3.origin.x * a4.width;
  a3.origin.x = roundf(v14);
  a4.width = -0.5;
  v15 = (a3.origin.y + a3.size.height * -0.5) * a4.height;
  v16 = roundf(v15);
  v17 = a3.size.height;
  v18 = xmmword_1A6038EE0;
LABEL_16:
  a3.size = vmulq_f64(a3.size, v18);
  v23.f64[0] = width;
  v23.f64[1] = a4.height;
  *&a3.size.width = vrnda_f32(vcvt_f32_f64(vmulq_f64(a3.size, v23)));
  *&a3.size.height = vcvtq_f64_f32(*&a3.size.width);
  a3.origin.y = v16;
  v36[0] = *&a3.origin.x;
  v36[1] = *&a3.origin.y;
  v37 = *&a3.size.height;
  if (*&a3.size.width == 0.0 || (LODWORD(a3.size.width) = HIDWORD(a3.size.width), *(&a3.size.width + 1) == 0.0))
  {
    if (a7)
    {
      v13 = @"Error in calculating torso bounding box dimensions";
      goto LABEL_23;
    }

    return 0;
  }

  v24 = *&a3.size.height;
  a3.size.height = v25;
  v35 = v24;
  v26 = 0;
  v27 = 0;
  v38 = CGRectIntersection(a3, *(&width - 2));
  v28 = v38.size.width * v38.size.height / vmuld_lane_f64(v35.f64[0], v35, 1);
  [objc_opt_class() minimumTorsoInsideInputImageThreshold];
  v29 = v36;
  if (v30 > v28)
  {
    v29 = v11;
  }

  v31 = *(v29 + 1);
  a6->origin = *v29;
  a6->size = v31;
  return 1;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v18[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 error:a8];
  if (v13)
  {
    v14 = VNCloneFaceObservationFromOptions(v12, a8);
    if (v14)
    {
      v15 = -[VNTorsoprintGeneratorFaceBased torsoprintForImageBuffer:requestRevision:error:](self, "torsoprintForImageBuffer:requestRevision:error:", a4, [v13 requestRevision], a8);
      if (v15)
      {
        [v14 setTorsoprint:v15];
        v18[0] = v14;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a4;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight"];
    v15 = [v14 integerValue];

    [objc_opt_class() torsoprintInputImageSizeForFaceOrientation:v15];
    v17 = v16;
    v19 = v18;
    v20 = [v12 objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_X"];
    [v20 doubleValue];
    v22 = v21;
    v23 = [v12 objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Y"];
    [v23 doubleValue];
    v25 = v24;
    v26 = [v12 objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Width"];
    [v26 doubleValue];
    v28 = v27;
    v29 = [v12 objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Height"];
    [v29 doubleValue];
    v31 = v30;

    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    v32 = [v13 croppedBufferWithWidth:v17 height:v19 format:1111970369 cropRect:v12 options:a8 error:{v22, v25, v28, v31}];
    *a7 = v32;
    v33 = v32 != 0;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v50[1] = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a7];
  if (v20)
  {
    v21 = [VNValidationUtilities requiredFaceObservationInOptions:v17 error:a7];
    if (v21 && ([v20 orientation], (VNSetFaceOrientationInOptionsDictionary(v21, v17, a7) & 1) != 0) && (objc_msgSend(v17, "objectForKeyedSubscript:", @"VNImageBufferOption_FeatureOrientationRelativeToUpRight"), v22 = objc_claimAutoreleasedReturnValue(), v47 = a3, v23 = objc_msgSend(v22, "integerValue"), v22, v24 = objc_msgSend(v20, "width"), v25 = objc_msgSend(v20, "height"), objc_msgSend(v21, "unalignedBoundingBox"), v27 = v26, v29 = v28, v31 = v30, v33 = v32, objc_msgSend(objc_opt_class(), "magnifiedBBoxScaleFactor"), v35 = (v34 + -1.0), v36 = -(v31 * v35) * 0.5, v37 = -(v33 * v35) * 0.5, v52.origin.x = v27, v52.origin.y = v29, v52.size.width = v31, v52.size.height = v33, v53 = CGRectInset(v52, v36, v37), v38 = *(MEMORY[0x1E695F040] + 16), v49.origin = *MEMORY[0x1E695F040], v49.size = v38, -[VNTorsoprintGeneratorFaceBased _calculateTorsoBBoxFromFaceBBox:insideImageWithSize:faceOrientationRelativeToUpright:torsoBBox:error:](self, "_calculateTorsoBBoxFromFaceBBox:insideImageWithSize:faceOrientationRelativeToUpright:torsoBBox:error:", v23, &v49, a7, v53.origin.x, v53.origin.y, v53.size.width, v53.size.height, v24, v25)))
    {
      if (CGRectIsNull(v49))
      {
        v39 = VNCloneFaceObservationFromOptions(v17, a7);
        v40 = v39;
        if (v39)
        {
          v50[0] = v39;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v43 = [MEMORY[0x1E696AD98] numberWithDouble:v49.origin.x];
        [v17 setObject:v43 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_X"];

        v44 = [MEMORY[0x1E696AD98] numberWithDouble:v49.origin.y];
        [v17 setObject:v44 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Y"];

        v45 = [MEMORY[0x1E696AD98] numberWithDouble:v49.size.width];
        [v17 setObject:v45 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Width"];

        v46 = [MEMORY[0x1E696AD98] numberWithDouble:v49.size.height];
        [v17 setObject:v46 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Height"];

        v48.receiver = self;
        v48.super_class = VNTorsoprintGeneratorFaceBased;
        v41 = [(VNDetector *)&v48 internalProcessUsingQualityOfServiceClass:v47 options:v17 regionOfInterest:v18 warningRecorder:a7 error:v19 progressHandler:x, y, width, height];
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (CGSize)torsoprintDescriptorSize
{
  v2 = 128.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)torsoprintInputImageSizeForFaceOrientation:(int)a3
{
  v3 = 128.0;
  if (a3 <= 4)
  {
    v4 = 128.0;
  }

  else
  {
    v4 = 256.0;
  }

  if (a3 <= 4)
  {
    v3 = 256.0;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

@end
@interface VNTorsoprintGeneratorFaceBased
+ (CGSize)torsoprintDescriptorSize;
+ (CGSize)torsoprintInputImageSizeForFaceOrientation:(int)orientation;
- (BOOL)_calculateTorsoBBoxFromFaceBBox:(CGRect)box insideImageWithSize:(CGSize)size faceOrientationRelativeToUpright:(int)upright torsoBBox:(CGRect *)bBox error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNTorsoprintGeneratorFaceBased

- (BOOL)_calculateTorsoBBoxFromFaceBBox:(CGRect)box insideImageWithSize:(CGSize)size faceOrientationRelativeToUpright:(int)upright torsoBBox:(CGRect *)bBox error:(id *)error
{
  if (!bBox)
  {
    if (error)
    {
      v13 = @"Memory for torso bouding box is not allocated";
LABEL_23:
      v33 = [VNError errorForInternalErrorWithLocalizedDescription:v13, box.origin.x, box.origin.y, box.size.width, box.size.height, size.width, size.height];
      v34 = v33;
      result = 0;
      *error = v33;
      return result;
    }

    return 0;
  }

  height = size.height;
  width = size.width;
  v11 = MEMORY[0x1E695F050];
  v36[0] = *MEMORY[0x1E695F050];
  if (upright <= 5)
  {
    if (upright == 1)
    {
      v20 = (box.origin.x + box.size.width * -0.5) * size.width;
      box.origin.x = roundf(v20);
      size.width = -3.0;
      box.origin.y = box.origin.y + box.size.height * -3.0;
      goto LABEL_15;
    }

    if (upright == 3)
    {
      size.width = -0.5;
      v12 = (box.origin.x + box.size.width * -0.5) * width;
      box.origin.x = roundf(v12);
LABEL_15:
      v21 = box.origin.y * size.height;
      v16 = roundf(v21);
      v22 = box.size.height;
      v18 = xmmword_1A6038EF0;
      goto LABEL_16;
    }

LABEL_12:
    if (error)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithInt:{box.origin.x, box.origin.y, box.size.width, box.size.height, size.width, size.height, size.width, size.height}];
      *error = [VNError errorForInvalidArgument:v19 named:@"faceOrientationRelativeToUpright"];
    }

    return 0;
  }

  if (upright != 6)
  {
    if (upright != 8)
    {
      goto LABEL_12;
    }

    box.origin.x = box.origin.x + box.size.width * -3.0;
  }

  v14 = box.origin.x * size.width;
  box.origin.x = roundf(v14);
  size.width = -0.5;
  v15 = (box.origin.y + box.size.height * -0.5) * size.height;
  v16 = roundf(v15);
  v17 = box.size.height;
  v18 = xmmword_1A6038EE0;
LABEL_16:
  box.size = vmulq_f64(box.size, v18);
  v23.f64[0] = width;
  v23.f64[1] = size.height;
  *&box.size.width = vrnda_f32(vcvt_f32_f64(vmulq_f64(box.size, v23)));
  *&box.size.height = vcvtq_f64_f32(*&box.size.width);
  box.origin.y = v16;
  v36[0] = *&box.origin.x;
  v36[1] = *&box.origin.y;
  v37 = *&box.size.height;
  if (*&box.size.width == 0.0 || (LODWORD(box.size.width) = HIDWORD(box.size.width), *(&box.size.width + 1) == 0.0))
  {
    if (error)
    {
      v13 = @"Error in calculating torso bounding box dimensions";
      goto LABEL_23;
    }

    return 0;
  }

  v24 = *&box.size.height;
  box.size.height = v25;
  v35 = v24;
  v26 = 0;
  v27 = 0;
  v38 = CGRectIntersection(box, *(&width - 2));
  v28 = v38.size.width * v38.size.height / vmuld_lane_f64(v35.f64[0], v35, 1);
  [objc_opt_class() minimumTorsoInsideInputImageThreshold];
  v29 = v36;
  if (v30 > v28)
  {
    v29 = v11;
  }

  v31 = *(v29 + 1);
  bBox->origin = *v29;
  bBox->size = v31;
  return 1;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = VNCloneFaceObservationFromOptions(optionsCopy, error);
    if (v14)
    {
      v15 = -[VNTorsoprintGeneratorFaceBased torsoprintForImageBuffer:requestRevision:error:](self, "torsoprintForImageBuffer:requestRevision:error:", buffer, [v13 requestRevision], error);
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

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight"];
    integerValue = [v14 integerValue];

    [objc_opt_class() torsoprintInputImageSizeForFaceOrientation:integerValue];
    v17 = v16;
    v19 = v18;
    v20 = [optionsCopy objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_X"];
    [v20 doubleValue];
    v22 = v21;
    v23 = [optionsCopy objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Y"];
    [v23 doubleValue];
    v25 = v24;
    v26 = [optionsCopy objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Width"];
    [v26 doubleValue];
    v28 = v27;
    v29 = [optionsCopy objectForKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Height"];
    [v29 doubleValue];
    v31 = v30;

    [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    v32 = [v13 croppedBufferWithWidth:v17 height:v19 format:1111970369 cropRect:optionsCopy options:error error:{v22, v25, v28, v31}];
    *buffer = v32;
    v33 = v32 != 0;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v50[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v20 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v20)
  {
    v21 = [VNValidationUtilities requiredFaceObservationInOptions:optionsCopy error:error];
    if (v21 && ([v20 orientation], (VNSetFaceOrientationInOptionsDictionary(v21, optionsCopy, error) & 1) != 0) && (objc_msgSend(optionsCopy, "objectForKeyedSubscript:", @"VNImageBufferOption_FeatureOrientationRelativeToUpRight"), v22 = objc_claimAutoreleasedReturnValue(), v47 = class, v23 = objc_msgSend(v22, "integerValue"), v22, v24 = objc_msgSend(v20, "width"), v25 = objc_msgSend(v20, "height"), objc_msgSend(v21, "unalignedBoundingBox"), v27 = v26, v29 = v28, v31 = v30, v33 = v32, objc_msgSend(objc_opt_class(), "magnifiedBBoxScaleFactor"), v35 = (v34 + -1.0), v36 = -(v31 * v35) * 0.5, v37 = -(v33 * v35) * 0.5, v52.origin.x = v27, v52.origin.y = v29, v52.size.width = v31, v52.size.height = v33, v53 = CGRectInset(v52, v36, v37), v38 = *(MEMORY[0x1E695F040] + 16), v49.origin = *MEMORY[0x1E695F040], v49.size = v38, -[VNTorsoprintGeneratorFaceBased _calculateTorsoBBoxFromFaceBBox:insideImageWithSize:faceOrientationRelativeToUpright:torsoBBox:error:](self, "_calculateTorsoBBoxFromFaceBBox:insideImageWithSize:faceOrientationRelativeToUpright:torsoBBox:error:", v23, &v49, error, v53.origin.x, v53.origin.y, v53.size.width, v53.size.height, v24, v25)))
    {
      if (CGRectIsNull(v49))
      {
        v39 = VNCloneFaceObservationFromOptions(optionsCopy, error);
        v40 = v39;
        if (v39)
        {
          v50[0] = v39;
          height = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
        }

        else
        {
          height = 0;
        }
      }

      else
      {
        v43 = [MEMORY[0x1E696AD98] numberWithDouble:v49.origin.x];
        [optionsCopy setObject:v43 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_X"];

        v44 = [MEMORY[0x1E696AD98] numberWithDouble:v49.origin.y];
        [optionsCopy setObject:v44 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Y"];

        v45 = [MEMORY[0x1E696AD98] numberWithDouble:v49.size.width];
        [optionsCopy setObject:v45 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Width"];

        v46 = [MEMORY[0x1E696AD98] numberWithDouble:v49.size.height];
        [optionsCopy setObject:v46 forKeyedSubscript:@"VNDetectorInternalProcessOption_TorsoBBox_Height"];

        v48.receiver = self;
        v48.super_class = VNTorsoprintGeneratorFaceBased;
        height = [(VNDetector *)&v48 internalProcessUsingQualityOfServiceClass:v47 options:optionsCopy regionOfInterest:recorderCopy warningRecorder:error error:handlerCopy progressHandler:x, y, width, height];
      }
    }

    else
    {
      height = 0;
    }
  }

  else
  {
    height = 0;
  }

  return height;
}

+ (CGSize)torsoprintDescriptorSize
{
  v2 = 128.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)torsoprintInputImageSizeForFaceOrientation:(int)orientation
{
  v3 = 128.0;
  if (orientation <= 4)
  {
    v4 = 128.0;
  }

  else
  {
    v4 = 256.0;
  }

  if (orientation <= 4)
  {
    v3 = 256.0;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

@end
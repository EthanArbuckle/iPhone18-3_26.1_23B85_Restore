@interface ARObjectDetectionResult
- (BOOL)isEqual:(id)equal;
- (__n128)setVisionTransform:(__n128)transform;
@end

@implementation ARObjectDetectionResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    referenceObject = [(ARObjectDetectionResult *)self referenceObject];
    referenceObject2 = [v5 referenceObject];
    if ([referenceObject isEqual:referenceObject2])
    {
      [v5 visionTransform];
      v20 = v9;
      v21 = v8;
      v18 = v11;
      v19 = v10;
      [(ARObjectDetectionResult *)self visionTransform];
      v16 = AREqualTransforms(v21, v20, v19, v18, v12, v13, v14, v15);
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

- (__n128)setVisionTransform:(__n128)transform
{
  result[1] = a2;
  result[2] = transform;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end
@interface CIReductionFilter
+ (id)customAttributes;
- (id)offsetAndCrop;
- (void)offsetAndCrop;
@end

@implementation CIReductionFilter

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryReduction";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryHighDynamicRange";
  v3[4] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"9";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.5";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)offsetAndCrop
{
  [(CIVector *)self->inputExtent CGRectValue];
  if (CGRectIsEmpty(v27))
  {
    v3 = ci_logger_filter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CIReductionFilter offsetAndCrop];
    }

    return 0;
  }

  [(CIImage *)self->inputImage extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CIVector *)self->inputExtent CGRectValue];
  v35.origin.x = v12;
  v35.origin.y = v13;
  v35.size.width = v14;
  v35.size.height = v15;
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  v29 = CGRectIntersection(v28, v35);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if (!CGRectIsInfinite(v29))
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    if (!CGRectIsEmpty(v30))
    {
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v32 = CGRectStandardize(v31);
      x = ceil(v32.origin.x);
      y = ceil(v32.origin.y);
      v20 = floor(v32.origin.x + v32.size.width);
      v21 = floor(v32.origin.y + v32.size.height);
      if (v20 > x && v21 > y)
      {
        width = v20 - x;
        height = v21 - y;
      }

      else
      {
        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
      }
    }
  }

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (CGRectIsEmpty(v33))
  {
    return 0;
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  if (CGRectIsInfinite(v34))
  {
    v23 = ci_logger_filter();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CIReductionFilter offsetAndCrop];
    }

    return 0;
  }

  inputImage = self->inputImage;
  CGAffineTransformMakeTranslation(&v26, -x, -y);
  return [[(CIImage *)inputImage imageByApplyingTransform:&v26] imageByCroppingToRect:0.0, 0.0, width, height];
}

- (void)offsetAndCrop
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end
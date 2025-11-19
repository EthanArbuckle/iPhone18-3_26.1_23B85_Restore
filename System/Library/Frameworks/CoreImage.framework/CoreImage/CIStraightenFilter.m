@interface CIStraightenFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIStraightenFilter

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryGeometryAdjustment";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v5[1] = @"5";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.7";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputAngle doubleValue];
  v4 = v3;
  v5 = __sincos_stret(v3);
  v6 = fabs(v5.__sinval);
  inputImage = self->inputImage;
  if (v6 >= 0.001 || v5.__cosval <= 0.0)
  {
    [(CIImage *)inputImage extent];
    v43 = CGRectStandardize(v42);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    MidX = CGRectGetMidX(v43);
    v33 = x;
    v34 = y;
    v44.origin.x = x;
    v14 = height;
    v15 = width;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = v14;
    *&v16 = CGRectGetMidY(v44);
    if (v6 >= 0.001 || v5.__cosval >= 0.0)
    {
      v19 = fmax(width, v14);
      v20 = fmin(width, v14);
      if (fabs(v5.__cosval) >= 0.001)
      {
        v32 = v16;
        v26 = hypot(v19, v20);
        v27 = atan2(v19, v20);
        v28 = -v4;
        v29 = fabs(cos(v27 - v4));
        v30 = v26 * fmax(v29, fabs(cos(v28 - v27))) / v20;
        v31 = MidX - v5.__cosval * v30 * MidX + v5.__sinval * v30 * *&v32;
        v24 = self->inputImage;
        v36 = v5.__cosval * v30;
        v37 = v5.__sinval * v30;
        v38 = -(v5.__sinval * v30);
        v39 = v5.__cosval * v30;
        v25 = *&v32 - v5.__sinval * v30 * MidX - v5.__cosval * v30 * *&v32;
        v40.f64[0] = v31;
      }

      else
      {
        v21 = -v19;
        if (v5.__sinval > 0.0)
        {
          v21 = v19;
        }

        v22 = v21 / v20;
        v23 = MidX + v22 * *&v16;
        v24 = self->inputImage;
        v36 = 0.0;
        v37 = v22;
        v38 = -v22;
        v39 = 0.0;
        v25 = *&v16 - v22 * MidX;
        v40.f64[0] = v23;
      }

      v40.f64[1] = v25;
      return [[(CIImage *)v24 imageByApplyingTransform:&v36 imageByCroppingToRect:"imageByCroppingToRect:", v33, v34, v15, v14];
    }

    else
    {
      v17 = self->inputImage;
      v18.f64[0] = MidX;
      *&v18.f64[1] = v16;
      v36 = -1.0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = -1.0;
      v40 = vaddq_f64(v18, v18);
      return [(CIImage *)v17 imageByApplyingTransform:&v36];
    }
  }

  else
  {
    v8 = inputImage;

    return v8;
  }
}

@end
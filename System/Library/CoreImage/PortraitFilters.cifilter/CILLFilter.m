@interface CILLFilter
+ (id)customAttributes;
- (id)_polyKernel;
- (id)_shadowKernel;
- (id)outputImage;
@end

@implementation CILLFilter

+ (id)customAttributes
{
  v12[0] = kCIAttributeFilterCategories;
  v11[0] = kCICategoryColorAdjustment;
  v11[1] = kCICategoryStillImage;
  v11[2] = kCICategoryApplePrivate;
  v13[0] = [NSArray arrayWithObjects:v11 count:3];
  v12[1] = @"inputLocalLight";
  v9[0] = kCIAttributeMin;
  v9[1] = kCIAttributeSliderMin;
  v10[0] = &off_79C00;
  v10[1] = &off_79C00;
  v9[2] = kCIAttributeSliderMax;
  v9[3] = kCIAttributeMax;
  v10[2] = &off_79C10;
  v10[3] = &off_79C20;
  v9[4] = kCIAttributeDefault;
  v9[5] = kCIAttributeIdentity;
  v10[4] = &off_79BE0;
  v10[5] = &off_79BE0;
  v9[6] = kCIAttributeType;
  v9[7] = kCIAttributeClass;
  v10[6] = kCIAttributeTypeScalar;
  v10[7] = @"NSNumber";
  v13[1] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:8];
  v12[2] = @"inputSmartShadows";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeSliderMin;
  v8[0] = &off_79C30;
  v8[1] = &off_79C30;
  v7[2] = kCIAttributeSliderMax;
  v7[3] = kCIAttributeMax;
  v8[2] = &off_79C20;
  v8[3] = &off_79C20;
  v7[4] = kCIAttributeDefault;
  v7[5] = kCIAttributeIdentity;
  v8[4] = &off_79BE0;
  v8[5] = &off_79BE0;
  v7[6] = kCIAttributeType;
  v8[6] = kCIAttributeTypeScalar;
  v13[2] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:7];
  v12[3] = @"inputLightMapWidth";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeDefault;
  v6[0] = &off_79BE0;
  v6[1] = &off_79BE0;
  v5[2] = kCIAttributeType;
  v5[3] = kCIAttributeClass;
  v6[2] = kCIAttributeTypeDistance;
  v6[3] = @"NSNumber";
  v13[3] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v12[4] = @"inputLightMapHeight";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeDefault;
  v4[0] = &off_79BE0;
  v4[1] = &off_79BE0;
  v3[2] = kCIAttributeType;
  v3[3] = kCIAttributeClass;
  v4[2] = kCIAttributeTypeDistance;
  v4[3] = @"NSNumber";
  v13[4] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
}

- (id)_shadowKernel
{
  if (qword_8CBA8 != -1)
  {
    sub_4A4B8();
  }

  return qword_8CBA0;
}

- (id)_polyKernel
{
  if (qword_8CBB8 != -1)
  {
    sub_4A4CC();
  }

  return qword_8CBB0;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputLocalLight doubleValue];
  if (fabs(v3) < 1.0e-10)
  {
    [(NSNumber *)self->inputSmartShadows doubleValue];
    if (fabs(v4) < 1.0e-10)
    {
      return self->inputImage;
    }
  }

  if (!self->inputLightMap && !self->inputLightMapImage)
  {
    return self->inputImage;
  }

  inputGuideImage = self->inputGuideImage;
  if (!inputGuideImage)
  {
    inputGuideImage = self->inputImage;
  }

  [(CIImage *)inputGuideImage extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CIImage *)self->inputImage extent];
  v51.origin.x = v14;
  v51.origin.y = v15;
  v51.size.width = v16;
  v51.size.height = v17;
  v49.origin.x = v7;
  v49.origin.y = v9;
  v49.size.width = v11;
  v49.size.height = v13;
  if (!CGRectEqualToRect(v49, v51))
  {
    sub_4A4E0();
  }

  inputLightMapImage = self->inputLightMapImage;
  if (!inputLightMapImage)
  {
    inputLightMapImage = sub_17188(self->inputLightMap, self->inputLightMapWidth, self->inputLightMapHeight);
  }

  v19 = sub_17308(inputLightMapImage, inputGuideImage, &off_79BF0);
  if (!v19)
  {
    return self->inputImage;
  }

  v20 = [(CILLFilter *)self _polyKernel];
  if (!self->inputImage)
  {
    sub_4A590();
  }

  if (!inputGuideImage)
  {
    sub_4A564();
  }

  if (!self->inputLocalLight)
  {
    sub_4A538();
  }

  v21 = v20;
  [v19 extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(CIImage *)self->inputImage extent];
  v52.origin.x = v30;
  v52.origin.y = v31;
  v52.size.width = v32;
  v52.size.height = v33;
  v50.origin.x = v23;
  v50.origin.y = v25;
  v50.size.width = v27;
  v50.size.height = v29;
  if (!CGRectEqualToRect(v50, v52))
  {
    sub_4A50C();
  }

  inputImage = self->inputImage;
  [(NSNumber *)self->inputLocalLight doubleValue];
  if (fabs(v35) >= 1.0e-10)
  {
    [(CIImage *)self->inputImage extent];
    v48[0] = inputImage;
    v48[1] = v19;
    v48[2] = self->inputLocalLight;
    inputImage = [v21 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v48, 3), v36, v37, v38, v39}];
  }

  [(NSNumber *)self->inputSmartShadows doubleValue];
  if (fabs(v40) >= 1.0e-10)
  {
    v41 = [(CILLFilter *)self _shadowKernel];
    [(CIImage *)self->inputImage extent];
    v47[0] = inputImage;
    v47[1] = v19;
    v47[2] = self->inputSmartShadows;
    return [v41 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v47, 3), v42, v43, v44, v45}];
  }

  return inputImage;
}

@end
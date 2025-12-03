@interface CISmartColorFilter
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
- (void)dealloc;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CISmartColorFilter

+ (id)customAttributes
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13[0] = @"CIAttributeFilterCategories";
  v12[0] = @"CICategoryStylize";
  v12[1] = @"CICategoryVideo";
  v12[2] = @"CICategoryStillImage";
  v12[3] = @"CICategoryBuiltIn";
  v12[4] = @"CICategoryApplePrivate";
  v14[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v13[1] = @"inputVibrancy";
  v10[0] = @"CIAttributeMin";
  v10[1] = @"CIAttributeSliderMin";
  v11[0] = &unk_1F1084AE8;
  v11[1] = &unk_1F1084AE8;
  v10[2] = @"CIAttributeSliderMax";
  v10[3] = @"CIAttributeMax";
  v11[2] = &unk_1F1084AF8;
  v11[3] = &unk_1F1084B08;
  v10[4] = @"CIAttributeDefault";
  v10[5] = @"CIAttributeIdentity";
  v11[4] = &unk_1F1084B18;
  v11[5] = &unk_1F1084B18;
  v10[6] = @"CIAttributeType";
  v11[6] = @"CIAttributeTypeScalar";
  v14[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v13[2] = @"inputContrast";
  v8[0] = @"CIAttributeMin";
  v8[1] = @"CIAttributeSliderMin";
  v9[0] = &unk_1F1084AE8;
  v9[1] = &unk_1F1084AE8;
  v8[2] = @"CIAttributeSliderMax";
  v8[3] = @"CIAttributeMax";
  v9[2] = &unk_1F1084AF8;
  v9[3] = &unk_1F1084B08;
  v8[4] = @"CIAttributeDefault";
  v8[5] = @"CIAttributeIdentity";
  v9[4] = &unk_1F1084B18;
  v9[5] = &unk_1F1084B18;
  v8[6] = @"CIAttributeType";
  v9[6] = @"CIAttributeTypeScalar";
  v14[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v13[3] = @"inputCast";
  v6[0] = @"CIAttributeMin";
  v6[1] = @"CIAttributeSliderMin";
  v7[0] = &unk_1F1084AE8;
  v7[1] = &unk_1F1084AE8;
  v6[2] = @"CIAttributeSliderMax";
  v6[3] = @"CIAttributeMax";
  v7[2] = &unk_1F1084AF8;
  v7[3] = &unk_1F1084AF8;
  v6[4] = @"CIAttributeDefault";
  v6[5] = @"CIAttributeIdentity";
  v7[4] = &unk_1F1084B18;
  v7[5] = &unk_1F1084B18;
  v6[6] = @"CIAttributeType";
  v7[6] = @"CIAttributeTypeScalar";
  v14[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
  v13[4] = @"inputUseCube";
  v4[0] = @"CIAttributeMin";
  v4[1] = @"CIAttributeMax";
  v5[0] = &unk_1F10822C8;
  v5[1] = &unk_1F10822E0;
  v4[2] = @"CIAttributeDefault";
  v4[3] = @"CIAttributeType";
  v5[2] = &unk_1F10822C8;
  v5[3] = @"CIAttributeTypeInteger";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v13[5] = @"inputUseCubeColorSpace";
  v14[4] = v2;
  v14[5] = MEMORY[0x1E695E0F8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputVibrancy doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputContrast doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputCast doubleValue];
  result = 0;
  if (fabs(v4) < 1.0e-10 && fabs(v6) < 1.0e-10)
  {
    return fabs(v7) < 1.0e-10;
  }

  return result;
}

- (void)dealloc
{
  self->_cubeImage = 0;
  v3.receiver = self;
  v3.super_class = CISmartColorFilter;
  [(CIFilter *)&v3 dealloc];
}

- (void)setValue:(id)value forKey:(id)key
{
  if (([key isEqualToString:@"inputImage"] & 1) == 0)
  {

    self->_cubeImage = 0;
  }

  v7.receiver = self;
  v7.super_class = CISmartColorFilter;
  [(CISmartColorFilter *)&v7 setValue:value forKey:key];
}

- (id)outputImage
{
  v87[1] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CISmartColorFilter *)self _isIdentity])
  {
    inputImage = self->inputImage;
LABEL_19:
    v8 = inputImage;

    return v8;
  }

  intValue = [(NSNumber *)[(CISmartColorFilter *)self inputUseCube] intValue];
  if (CI_SMART_COLOR_USE_CUBE(void)::didCheck != -1)
  {
    [CISmartColorFilter outputImage];
  }

  if ((CI_SMART_COLOR_USE_CUBE(void)::v & 0x80000000) == 0 && (intValue & 0x80000000) == 0)
  {
    intValue = CI_SMART_COLOR_USE_CUBE(void)::v;
  }

  if (intValue < 1)
  {
    [(NSNumber *)self->inputVibrancy doubleValue];
    v10 = fmin(fmax(v9, -1.0), 2.0);
    [(NSNumber *)self->inputContrast doubleValue];
    v12 = fmin(fmax(v11, -1.0), 2.0);
    [(NSNumber *)self->inputCast doubleValue];
    v14 = fmax(v13, -1.0);
    result = self->inputImage;
    if (fabs(v10) >= 1.0e-10)
    {
      if (v10 <= 0.0)
      {
        v15 = v10 + 1.0;
      }

      else
      {
        v15 = v10 * 3.0 + 1.0;
      }

      imageByUnpremultiplyingAlpha = [result imageByUnpremultiplyingAlpha];
      if (v15 >= 1.0)
      {
        _kernelV_gt1 = [(CISmartColorFilter *)self _kernelV_gt1];
      }

      else
      {
        _kernelV_gt1 = [(CISmartColorFilter *)self _kernelV_lt1];
      }

      v23 = _kernelV_gt1;
      [imageByUnpremultiplyingAlpha extent];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v84[0] = imageByUnpremultiplyingAlpha;
      v84[1] = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      result = [objc_msgSend(v23 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v84, 2), v25, v27, v29, v31), "imageByPremultiplyingAlpha"}];
    }

    v32 = fmin(v14, 1.0);
    if (fabs(v12) >= 1.0e-10)
    {
      v33 = v12 + v12;
      imageByUnpremultiplyingAlpha2 = [result imageByUnpremultiplyingAlpha];
      if (v12 + v12 <= 0.0)
      {
        v81 = @"inputAmount";
        v82 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v33 / 6.0, -0.4)}];
        v45 = [imageByUnpremultiplyingAlpha2 imageByApplyingFilter:@"CIVibrance" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v82, &v81, 1)}];
        _kernelCNeg = [(CISmartColorFilter *)self _kernelCNeg];
        [v45 extent];
        v37 = v46;
        v39 = v47;
        v41 = v48;
        v43 = v49;
        v80[0] = v45;
        v80[1] = [MEMORY[0x1E696AD98] numberWithDouble:-v33];
        v44 = v80;
      }

      else
      {
        _kernelCNeg = [(CISmartColorFilter *)self _kernelCPos];
        [imageByUnpremultiplyingAlpha2 extent];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v83[0] = imageByUnpremultiplyingAlpha2;
        v83[1] = [MEMORY[0x1E696AD98] numberWithDouble:v12 + v12];
        v44 = v83;
      }

      result = [objc_msgSend(_kernelCNeg applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v44, 2), v37, v39, v41, v43), "imageByPremultiplyingAlpha"}];
    }

    if (fabs(v32) < 1.0e-10)
    {
      return result;
    }

    if (v32 <= 0.0)
    {
      if (v32 > -0.5)
      {
        v53 = v32 * -2.0;
        v51 = v53;
        v52 = xmmword_19CF29C90;
        goto LABEL_43;
      }

      v64 = (v32 + 0.5) * -2.0;
      v59 = v64;
      v60 = 1.0;
      v61 = 1.0 - v64;
      v62 = vmulq_n_f64(xmmword_19CF29C80, v64);
      v63 = xmmword_19CF29C90;
    }

    else
    {
      if (v32 < 0.5)
      {
        v50 = v32 + v32;
        v51 = v50;
        v52 = xmmword_19CF29CB0;
LABEL_43:
        v54 = vmulq_n_f64(v52, v51);
        v55 = 0.3;
LABEL_49:
        v65 = v54.f64[1];
        v66 = v54.f64[0];
        imageByUnpremultiplyingAlpha3 = [result imageByUnpremultiplyingAlpha];
        _kernelCast = [(CISmartColorFilter *)self _kernelCast];
        [imageByUnpremultiplyingAlpha3 extent];
        v70 = v69;
        v72 = v71;
        v74 = v73;
        v76 = v75;
        v79[0] = imageByUnpremultiplyingAlpha3;
        v79[1] = &unk_1F1084B08;
        *&v69 = v66;
        v79[2] = [MEMORY[0x1E696AD98] numberWithFloat:v69];
        *&v77 = v65;
        v79[3] = [MEMORY[0x1E696AD98] numberWithFloat:v77];
        *&v78 = v55;
        v79[4] = [MEMORY[0x1E696AD98] numberWithFloat:v78];
        return [objc_msgSend(_kernelCast applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v79, 5), v70, v72, v74, v76), "imageByPremultiplyingAlpha"}];
      }

      v58 = v32 + -0.5 + v32 + -0.5;
      v59 = v58;
      v60 = 1.0;
      v61 = 1.0 - v58;
      v62 = vmulq_n_f64(xmmword_19CF29CA0, v58);
      v63 = xmmword_19CF29CB0;
    }

    v54 = vmlaq_n_f64(v62, v63, v61);
    v55 = (v60 + v59 * -0.6) * 0.300000012;
    goto LABEL_49;
  }

  if (intValue >= 0x20)
  {
    v6 = 32;
  }

  else
  {
    v6 = intValue;
  }

  if (intValue == 1)
  {
    v7 = 32;
  }

  else
  {
    v7 = v6;
  }

  inputImage = self->_cubeImage;
  if (inputImage)
  {
    goto LABEL_19;
  }

  v18 = [(CISmartColorFilter *)self copy];
  [v18 setValue:&unk_1F10822F8 forKey:@"inputUseCube"];
  v86 = @"working_format";
  v87[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
  v19 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CISmartColorFilter-cubeContext", [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1]);
  v85 = v18;
  v20 = [v19 createColorCubeDataForFilters:objc_msgSend(MEMORY[0x1E695DEC8] dimension:{"arrayWithObjects:count:", &v85, 1), v7}];

  inputUseCubeColorSpace = [(CISmartColorFilter *)self inputUseCubeColorSpace];
  if (inputUseCubeColorSpace)
  {
    DeviceRGB = CGColorSpaceRetain(inputUseCubeColorSpace);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v56 = DeviceRGB;
  v57 = +[CIFilter filterWithName:keysAndValues:](CIFilter, "filterWithName:keysAndValues:", @"CIColorCubeWithColorSpace", @"inputImage", self->inputImage, @"inputCubeData", v20, @"inputColorSpace", DeviceRGB, @"inputCubeDimension", [MEMORY[0x1E696AD98] numberWithInt:v7], 0);
  CGColorSpaceRelease(v56);
  result = [(CIFilter *)v57 outputImage];
  self->_cubeImage = result;
  return result;
}

@end
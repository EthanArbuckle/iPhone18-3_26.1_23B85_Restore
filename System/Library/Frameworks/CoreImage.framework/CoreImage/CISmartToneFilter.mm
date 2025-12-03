@interface CISmartToneFilter
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
- (void)dealloc;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CISmartToneFilter

+ (id)customAttributes
{
  v24[11] = *MEMORY[0x1E69E9840];
  v23[0] = @"CIAttributeFilterCategories";
  v22[0] = @"CICategoryStylize";
  v22[1] = @"CICategoryVideo";
  v22[2] = @"CICategoryStillImage";
  v22[3] = @"CICategoryBuiltIn";
  v22[4] = @"CICategoryApplePrivate";
  v24[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
  v23[1] = @"inputExposure";
  v20[0] = @"CIAttributeMin";
  v20[1] = @"CIAttributeSliderMin";
  v21[0] = &unk_1F1084AD8;
  v21[1] = &unk_1F1084AE8;
  v20[2] = @"CIAttributeSliderMax";
  v20[3] = @"CIAttributeMax";
  v21[2] = &unk_1F1084AF8;
  v21[3] = &unk_1F1084B08;
  v20[4] = @"CIAttributeDefault";
  v20[5] = @"CIAttributeIdentity";
  v21[4] = &unk_1F1084B18;
  v21[5] = &unk_1F1084B18;
  v20[6] = @"CIAttributeType";
  v21[6] = @"CIAttributeTypeScalar";
  v24[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:7];
  v23[2] = @"inputContrast";
  v18[0] = @"CIAttributeMin";
  v18[1] = @"CIAttributeSliderMin";
  v19[0] = &unk_1F1084AD8;
  v19[1] = &unk_1F1084AE8;
  v18[2] = @"CIAttributeSliderMax";
  v18[3] = @"CIAttributeMax";
  v19[2] = &unk_1F1084AF8;
  v19[3] = &unk_1F1084B08;
  v18[4] = @"CIAttributeDefault";
  v18[5] = @"CIAttributeIdentity";
  v19[4] = &unk_1F1084B18;
  v19[5] = &unk_1F1084B18;
  v18[6] = @"CIAttributeType";
  v19[6] = @"CIAttributeTypeScalar";
  v24[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];
  v23[3] = @"inputBrightness";
  v16[0] = @"CIAttributeMin";
  v16[1] = @"CIAttributeSliderMin";
  v17[0] = &unk_1F1084AD8;
  v17[1] = &unk_1F1084AE8;
  v16[2] = @"CIAttributeSliderMax";
  v16[3] = @"CIAttributeMax";
  v17[2] = &unk_1F1084AF8;
  v17[3] = &unk_1F1084B08;
  v16[4] = @"CIAttributeDefault";
  v16[5] = @"CIAttributeIdentity";
  v17[4] = &unk_1F1084B18;
  v17[5] = &unk_1F1084B18;
  v16[6] = @"CIAttributeType";
  v17[6] = @"CIAttributeTypeScalar";
  v24[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v23[4] = @"inputShadows";
  v14[0] = @"CIAttributeMin";
  v14[1] = @"CIAttributeSliderMin";
  v15[0] = &unk_1F1084AD8;
  v15[1] = &unk_1F1084AE8;
  v14[2] = @"CIAttributeSliderMax";
  v14[3] = @"CIAttributeMax";
  v15[2] = &unk_1F1084AF8;
  v15[3] = &unk_1F1084B08;
  v14[4] = @"CIAttributeDefault";
  v14[5] = @"CIAttributeIdentity";
  v15[4] = &unk_1F1084B18;
  v15[5] = &unk_1F1084B18;
  v14[6] = @"CIAttributeType";
  v15[6] = @"CIAttributeTypeScalar";
  v24[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];
  v23[5] = @"inputHighlights";
  v12[0] = @"CIAttributeMin";
  v12[1] = @"CIAttributeSliderMin";
  v13[0] = &unk_1F1084AD8;
  v13[1] = &unk_1F1084AE8;
  v12[2] = @"CIAttributeSliderMax";
  v12[3] = @"CIAttributeMax";
  v13[2] = &unk_1F1084AF8;
  v13[3] = &unk_1F1084B08;
  v12[4] = @"CIAttributeDefault";
  v12[5] = @"CIAttributeIdentity";
  v13[4] = &unk_1F1084B18;
  v13[5] = &unk_1F1084B18;
  v12[6] = @"CIAttributeType";
  v13[6] = @"CIAttributeTypeScalar";
  v24[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
  v23[6] = @"inputBlack";
  v10[0] = @"CIAttributeMin";
  v10[1] = @"CIAttributeSliderMin";
  v11[0] = &unk_1F1084AD8;
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
  v24[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v23[7] = @"inputRawHighlights";
  v8[0] = @"CIAttributeMin";
  v8[1] = @"CIAttributeSliderMin";
  v9[0] = &unk_1F1084B18;
  v9[1] = &unk_1F1084B18;
  v8[2] = @"CIAttributeSliderMax";
  v8[3] = @"CIAttributeMax";
  v9[2] = &unk_1F1084AF8;
  v9[3] = &unk_1F1084AF8;
  v8[4] = @"CIAttributeDefault";
  v8[5] = @"CIAttributeIdentity";
  v9[4] = &unk_1F1084B18;
  v9[5] = &unk_1F1084B18;
  v8[6] = @"CIAttributeType";
  v9[6] = @"CIAttributeTypeScalar";
  v24[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v23[8] = @"inputLocalLight";
  v6[0] = @"CIAttributeMin";
  v6[1] = @"CIAttributeSliderMin";
  v7[0] = &unk_1F1084AE8;
  v7[1] = &unk_1F1084AE8;
  v6[2] = @"CIAttributeSliderMax";
  v6[3] = @"CIAttributeMax";
  v7[2] = &unk_1F1084AF8;
  v7[3] = &unk_1F1084B08;
  v6[4] = @"CIAttributeDefault";
  v6[5] = @"CIAttributeIdentity";
  v7[4] = &unk_1F1084B18;
  v7[5] = &unk_1F1084B18;
  v6[6] = @"CIAttributeType";
  v7[6] = @"CIAttributeTypeScalar";
  v24[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
  v23[9] = @"inputUseCube";
  v4[0] = @"CIAttributeMin";
  v4[1] = @"CIAttributeMax";
  v5[0] = &unk_1F10822C8;
  v5[1] = &unk_1F10822E0;
  v4[2] = @"CIAttributeDefault";
  v4[3] = @"CIAttributeType";
  v5[2] = &unk_1F10822C8;
  v5[3] = @"CIAttributeTypeInteger";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v23[10] = @"inputUseCubeColorSpace";
  v24[9] = v2;
  v24[10] = MEMORY[0x1E695E0F8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:11];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputExposure doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputContrast doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputBrightness doubleValue];
  v8 = v7;
  [(NSNumber *)self->inputShadows doubleValue];
  v10 = v9;
  [(NSNumber *)self->inputHighlights doubleValue];
  v12 = v11;
  [(NSNumber *)self->inputBlack doubleValue];
  v14 = v13;
  [(NSNumber *)self->inputRawHighlights doubleValue];
  result = 0;
  if (fabs(v4) < 1.0e-10 && fabs(v6) < 1.0e-10 && fabs(v8) < 1.0e-10 && fabs(v10) < 1.0e-10 && fabs(v12) < 1.0e-10 && fabs(v14) < 1.0e-10)
  {
    return fabs(v15) < 1.0e-10;
  }

  return result;
}

- (void)dealloc
{
  self->_cubeImage = 0;

  self->_cubeData = 0;
  v3.receiver = self;
  v3.super_class = CISmartToneFilter;
  [(CIFilter *)&v3 dealloc];
}

- (void)setValue:(id)value forKey:(id)key
{
  v7 = [key isEqualToString:@"inputImage"];

  self->_cubeImage = 0;
  if ((v7 & 1) == 0)
  {

    self->_cubeData = 0;
  }

  v8.receiver = self;
  v8.super_class = CISmartToneFilter;
  [(CISmartToneFilter *)&v8 setValue:value forKey:key];
}

- (id)outputImage
{
  v123[1] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if (![(CISmartToneFilter *)self _isIdentity])
  {
    intValue = [(NSNumber *)[(CISmartToneFilter *)self inputUseCube] intValue];
    if (CI_SMART_TONE_USE_CUBE(void)::didCheck != -1)
    {
      [CISmartToneFilter outputImage];
    }

    if ((CI_SMART_TONE_USE_CUBE(void)::v & 0x80000000) == 0 && (intValue & 0x80000000) == 0)
    {
      intValue = CI_SMART_TONE_USE_CUBE(void)::v;
    }

    if (intValue < 1)
    {
      [(NSNumber *)self->inputExposure doubleValue];
      v11 = 2.0;
      v12 = fmin(fmax(v10, -2.0), 2.0);
      [(NSNumber *)self->inputContrast doubleValue];
      v104 = v13;
      [(NSNumber *)self->inputBrightness doubleValue];
      v15 = fmax(v14, -2.0);
      [(NSNumber *)self->inputShadows doubleValue];
      v17 = v16;
      [(NSNumber *)self->inputHighlights doubleValue];
      v19 = v18;
      [(NSNumber *)self->inputBlack doubleValue];
      v21 = fmax(v20, -2.0);
      [(NSNumber *)self->inputRawHighlights doubleValue];
      v23 = fmax(v22, 0.0);
      inputImage = self->inputImage;
      v102 = fmin(v23, 2.0);
      v106 = v23;
      v107 = fabs(v102);
      if (v107 >= 1.0e-10)
      {
        v24 = fmin(v23, 0.8);
        v25 = 1.0 - v24;
        v26 = (1.0 - v25) * 0.333333343;
        v119[0] = @"inputRVector";
        v27 = (v25 + v26);
        v28 = v26;
        v120[0] = [CIVector vectorWithX:v27 Y:v28 Z:v28 W:0.0];
        v119[1] = @"inputGVector";
        v120[1] = [CIVector vectorWithX:v28 Y:v27 Z:v28 W:0.0];
        v119[2] = @"inputBVector";
        v29 = v27;
        v11 = 2.0;
        v120[2] = [CIVector vectorWithX:v28 Y:v28 Z:v29 W:0.0];
        v119[3] = @"inputAVector";
        v120[3] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
        v119[4] = @"inputBiasVector";
        v120[4] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
        inputImage = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:5]);
      }

      v30 = fmax(v17, -2.0);
      v31 = fmin(v21, v11);
      v32 = fmin(v15, v11);
      if (fabs(v12) >= 1.0e-10 || fabs(v31) >= 1.0e-10)
      {
        v37 = 1.0 / (1.0 / exp2(v12 + v12) - v31 / 20.0);
        v38 = -(v31 / 20.0 * v37);
        v117[0] = @"inputRVector";
        v118[0] = [CIVector vectorWithX:v37 Y:0.0 Z:0.0 W:0.0];
        v117[1] = @"inputGVector";
        v118[1] = [CIVector vectorWithX:0.0 Y:v37 Z:0.0 W:0.0];
        v117[2] = @"inputBVector";
        v39 = v37;
        v11 = 2.0;
        v118[2] = [CIVector vectorWithX:0.0 Y:0.0 Z:v39 W:0.0];
        v117[3] = @"inputAVector";
        v118[3] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
        v117[4] = @"inputBiasVector";
        v118[4] = [CIVector vectorWithX:v38 Y:v38 Z:v38 W:0.0];
        inputImage = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:5]);
      }

      v40 = fmax(v19, -2.0);
      v41 = fmin(v30, v11);
      if (fabs(v32) >= 1.0e-10)
      {
        imageByUnpremultiplyingAlpha = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
        if (v32 >= 0.0)
        {
          _kernelBpos = [(CISmartToneFilter *)self _kernelBpos];
          [(CIImage *)imageByUnpremultiplyingAlpha extent];
          v45 = v53;
          v47 = v54;
          v49 = v55;
          v51 = v56;
          v115[0] = imageByUnpremultiplyingAlpha;
          v115[1] = [MEMORY[0x1E696AD98] numberWithDouble:v32 * 2.0 + 1.0];
          v52 = v115;
        }

        else
        {
          _kernelBpos = [(CISmartToneFilter *)self _kernelBneg];
          [(CIImage *)imageByUnpremultiplyingAlpha extent];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v116[0] = imageByUnpremultiplyingAlpha;
          v116[1] = [MEMORY[0x1E696AD98] numberWithDouble:v32 * -1.5 + 1.0];
          v52 = v116;
        }

        inputImage = [objc_msgSend(_kernelBpos applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v52, 2), v45, v47, v49, v51), "imageByPremultiplyingAlpha"}];
        v11 = 2.0;
      }

      v57 = fmax(v104, -2.0);
      v58 = fmin(v40, v11);
      if (fabs(v41) >= 1.0e-10)
      {
        v113[0] = @"inputShadowAmount";
        v114[0] = [MEMORY[0x1E696AD98] numberWithDouble:v41];
        v114[1] = &unk_1F1084AF8;
        v113[1] = @"inputHighlightAmount";
        v113[2] = @"inputRadius";
        v114[2] = &unk_1F1084B18;
        inputImage = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIHighlightShadowAdjust", [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:3]);
      }

      v59 = fmin(v57, v11);
      v60 = fabs(v58);
      if (v60 >= 1.0e-10)
      {
        v61 = exp(v58 * v58 / -0.75);
        v62 = v61 * -0.45 + 1.45;
        v63 = v61 * 0.45 + 0.55;
        if (v58 <= 0.0)
        {
          v64 = v63;
        }

        else
        {
          v64 = v62;
        }

        v65 = (v60 + -0.6) * 2.0 + 0.2;
        if (v60 < 0.6)
        {
          v65 = 0.2;
        }

        v105 = v65;
        imageByUnpremultiplyingAlpha2 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
        v67 = v107;
        if (v107 >= 1.0e-10)
        {
          if (v64 < v102)
          {
            v64 = v102;
          }

          _kernelRH = [(CISmartToneFilter *)self _kernelRH];
          [(CIImage *)imageByUnpremultiplyingAlpha2 extent];
          v103 = v69;
          v100 = v71;
          v101 = v70;
          v73 = v72;
          v112[0] = imageByUnpremultiplyingAlpha2;
          v112[1] = [MEMORY[0x1E696AD98] numberWithDouble:v64];
          imageByUnpremultiplyingAlpha2 = [_kernelRH applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v112, 2), v103, v101, v100, v73}];
          if (v58 <= 0.0)
          {
            v67 = exp(v58 * (v58 * -0.4245) / 0.75);
            v64 = v67 * 0.45 + 0.55;
          }

          else
          {
            v67 = exp(v58 * (v58 * -0.4225) / 0.75);
            v64 = v67 * -0.45 + 1.45;
          }
        }

        _kernelH = [(CISmartToneFilter *)self _kernelH];
        [(CIImage *)imageByUnpremultiplyingAlpha2 extent];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;
        v111[0] = imageByUnpremultiplyingAlpha2;
        v111[1] = [MEMORY[0x1E696AD98] numberWithDouble:v64];
        v111[2] = [MEMORY[0x1E696AD98] numberWithDouble:v105];
        inputImage = [objc_msgSend(_kernelH applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v111, 3), v78, v80, v82, v84), "imageByPremultiplyingAlpha"}];
      }

      if (fabs(v59) >= 1.0e-10)
      {
        imageByUnpremultiplyingAlpha3 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
        _kernelC = [(CISmartToneFilter *)self _kernelC];
        [(CIImage *)imageByUnpremultiplyingAlpha3 extent];
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v110[0] = imageByUnpremultiplyingAlpha3;
        v110[1] = [MEMORY[0x1E696AD98] numberWithDouble:v59 * 3.4];
        inputImage = [objc_msgSend(_kernelC applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v110, 2), v88, v90, v92, v94), "imageByPremultiplyingAlpha"}];
      }

      if (v107 >= 1.0e-10)
      {
        v95 = fmin(v106, 0.8);
        v96 = 1.0 / (1.0 - v95);
        v97 = (1.0 - v96) * 0.333333343;
        v108[0] = @"inputRVector";
        v98 = (v96 + v97);
        v99 = v97;
        v109[0] = [CIVector vectorWithX:v98 Y:v99 Z:v99 W:0.0];
        v108[1] = @"inputGVector";
        v109[1] = [CIVector vectorWithX:v99 Y:v98 Z:v99 W:0.0];
        v108[2] = @"inputBVector";
        v109[2] = [CIVector vectorWithX:v99 Y:v99 Z:v98 W:0.0];
        v108[3] = @"inputAVector";
        v109[3] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
        v108[4] = @"inputBiasVector";
        v109[4] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
        return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:5]);
      }
    }

    else
    {
      if (intValue >= 0x20)
      {
        v7 = 32;
      }

      else
      {
        v7 = intValue;
      }

      if (intValue == 1)
      {
        v8 = 32;
      }

      else
      {
        v8 = v7;
      }

      cubeImage = self->_cubeImage;
      if (cubeImage)
      {
        goto LABEL_19;
      }

      if (!self->_cubeData)
      {
        v33 = [(CISmartToneFilter *)self copy];
        [v33 setValue:&unk_1F10822F8 forKey:@"inputUseCube"];
        v122 = @"working_format";
        v123[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
        v34 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CISmartToneFilter-cubeContext", [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:&v122 count:1]);
        v121 = v33;
        self->_cubeData = [v34 createColorCubeDataForFilters:objc_msgSend(MEMORY[0x1E695DEC8] dimension:{"arrayWithObjects:count:", &v121, 1), v8}];
      }

      inputUseCubeColorSpace = [(CISmartToneFilter *)self inputUseCubeColorSpace];
      if (inputUseCubeColorSpace)
      {
        DeviceRGB = CGColorSpaceRetain(inputUseCubeColorSpace);
      }

      else
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
      }

      v74 = DeviceRGB;
      v75 = +[CIFilter filterWithName:keysAndValues:](CIFilter, "filterWithName:keysAndValues:", @"CIColorCubeWithColorSpace", @"inputImage", self->inputImage, @"inputCubeData", self->_cubeData, @"inputColorSpace", DeviceRGB, @"inputCubeDimension", [MEMORY[0x1E696AD98] numberWithInt:v8], 0);
      CGColorSpaceRelease(v74);
      inputImage = [(CIFilter *)v75 outputImage];
      self->_cubeImage = inputImage;
    }

    return inputImage;
  }

  cubeImage = self->inputImage;
LABEL_19:
  v9 = cubeImage;

  return v9;
}

@end
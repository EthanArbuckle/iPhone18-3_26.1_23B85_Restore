@interface CIMorphologyRectangle
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIMorphologyRectangle

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryBlur";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"13";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.15";
  v8[3] = @"inputWidth";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeInteger";
  v6[1] = &unk_1F1084338;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1084338;
  v6[3] = &unk_1F1084358;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F1084318;
  v6[5] = &unk_1F1084338;
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputHeight";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1084338;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1084338;
  v4[3] = &unk_1F1084358;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1084318;
  v4[5] = &unk_1F1084338;
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v34[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIMorphologyRectangle *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  [(NSNumber *)self->inputWidth floatValue];
  v7 = 1;
  if (v6 > 2.0)
  {
    v7 = (2 * vcvtms_s32_f32(v6 * 0.5)) | 1;
  }

  [(NSNumber *)self->inputHeight floatValue];
  v9 = 1;
  if (v8 > 2.0)
  {
    v9 = (2 * vcvtms_s32_f32(v8 * 0.5)) | 1;
  }

  v10 = [(CIMorphologyRectangle *)self _doMinimum];
  if (!v10)
  {
    v27 = 0;
    v28 = -1;
    v13 = &CI::_morphmax;
    goto LABEL_16;
  }

  [(CIImage *)self->inputImage extent];
  if (v11 > (v7 - 1))
  {
    [(CIImage *)self->inputImage extent];
    if (v12 > (v9 - 1))
    {
      v27 = v10;
      v28 = 1;
      v13 = &CI::_morphmin;
LABEL_16:
      inputImage = self->inputImage;
      v14 = [CIKernel kernelWithInternalRepresentation:v13];
      if (v7 >= 3)
      {
        [(CIImage *)inputImage extent];
        v37 = CGRectInset(v36, (v28 * v7 / 2), 0.0);
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __36__CIMorphologyRectangle_outputImage__block_invoke;
        v31[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v32 = v7 >> 1;
        v34[0] = inputImage;
        v34[1] = [MEMORY[0x1E696AD98] numberWithInt:v7 >> 1];
        v34[2] = [CIVector vectorWithX:1.0 Y:0.0];
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v14, "applyWithExtent:roiCallback:arguments:", v31, [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3], x, y, width, height);
      }

      if (v9 >= 3)
      {
        [(CIImage *)inputImage extent];
        v39 = CGRectInset(v38, 0.0, (v28 * v9 / 2));
        v19 = v39.origin.x;
        v20 = v39.origin.y;
        v21 = v39.size.width;
        v22 = v39.size.height;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __36__CIMorphologyRectangle_outputImage__block_invoke_2;
        v29[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v30 = v9 / 2;
        v33[0] = inputImage;
        v33[1] = [MEMORY[0x1E696AD98] numberWithInt:(v9 / 2)];
        v33[2] = [CIVector vectorWithX:0.0 Y:1.0];
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v14, "applyWithExtent:roiCallback:arguments:", v29, [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3], v19, v20, v21, v22);
      }

      if (CI_ENABLE_MPS())
      {
        v23 = self->inputImage;
        if (v7 > 9 || v9 > 9)
        {
          v23 = [CIMorphologyProcessor applyBoxToImage:v23 width:v7 height:1 doMin:v27];
          v24 = 1;
          v25 = v9;
          v26 = v27;
        }

        else
        {
          v24 = v7;
          v25 = v9;
          v26 = v27;
        }

        return [CIImage imageForRenderingWithMPS:[CIMorphologyProcessor applyBoxToImage:v23 width:v24 height:v25 doMin:v26] orNonMPS:inputImage];
      }

      return inputImage;
    }
  }

  return +[CIImage emptyImage];
}

@end
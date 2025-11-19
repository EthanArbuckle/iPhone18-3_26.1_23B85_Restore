@interface AXMCIMorphologyRectangle
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation AXMCIMorphologyRectangle

+ (id)customAttributes
{
  v28[5] = *MEMORY[0x1E69E9840];
  v27[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v26[0] = *MEMORY[0x1E695F780];
  v26[1] = v2;
  v3 = *MEMORY[0x1E695F788];
  v26[2] = *MEMORY[0x1E695F7C0];
  v26[3] = v3;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  v4 = *MEMORY[0x1E695F6B0];
  v28[0] = v17;
  v28[1] = @"13";
  v5 = *MEMORY[0x1E695F6A8];
  v27[1] = v4;
  v27[2] = v5;
  v28[2] = @"10.15";
  v27[3] = *MEMORY[0x1E695FB48];
  v7 = *MEMORY[0x1E695F728];
  v8 = *MEMORY[0x1E695F6D8];
  v20[0] = *MEMORY[0x1E695F6F0];
  v6 = v20[0];
  v20[1] = v8;
  v25[0] = v7;
  v25[1] = &unk_1F240B110;
  v10 = *MEMORY[0x1E695F6E0];
  v21 = *MEMORY[0x1E695F6E8];
  v9 = v21;
  v22 = v10;
  v25[2] = &unk_1F240B110;
  v25[3] = &unk_1F240B120;
  v12 = *MEMORY[0x1E695F6C8];
  v23 = *MEMORY[0x1E695F6A0];
  v11 = v23;
  v24 = v12;
  v25[4] = &unk_1F240B130;
  v25[5] = &unk_1F240B110;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v20 count:6];
  v28[3] = v13;
  v27[4] = @"inputHeight";
  v18[0] = v6;
  v18[1] = v8;
  v19[0] = v7;
  v19[1] = &unk_1F240B110;
  v18[2] = v9;
  v18[3] = v10;
  v19[2] = &unk_1F240B110;
  v19[3] = &unk_1F240B120;
  v18[4] = v11;
  v18[5] = v12;
  v19[4] = &unk_1F240B130;
  v19[5] = &unk_1F240B110;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v28[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];

  return v15;
}

- (id)outputImage
{
  v39[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if ([(AXMCIMorphologyRectangle *)self _isIdentity])
  {
    v3 = self->inputImage;
LABEL_21:
    v4 = v3;
    goto LABEL_25;
  }

  [(NSNumber *)self->inputWidth floatValue];
  v6 = 1;
  if (v5 > 2.0)
  {
    v6 = (2 * vcvtms_s32_f32(v5 * 0.5)) | 1;
  }

  [(NSNumber *)self->inputHeight floatValue];
  v8 = 1;
  if (v7 > 2.0)
  {
    v8 = (2 * vcvtms_s32_f32(v7 * 0.5)) | 1;
  }

  if ([(AXMCIMorphologyRectangle *)self _doMinimum])
  {
    [(CIImage *)self->inputImage extent];
    if (v9 <= (v6 - 1) || ([(CIImage *)self->inputImage extent], v10 <= (v8 - 1)))
    {
      v3 = [MEMORY[0x1E695F658] emptyImage];
      goto LABEL_21;
    }

    v4 = self->inputImage;
    if (kernel_morphmin_once != -1)
    {
      [AXMCIMorphologyRectangle outputImage];
    }

    v11 = 1;
    v12 = &kernel_morphmin_singleton;
  }

  else
  {
    v4 = self->inputImage;
    if (kernel_morphmax_once != -1)
    {
      [AXMCIMorphologyRectangle outputImage];
    }

    v11 = -1;
    v12 = &kernel_morphmax_singleton;
  }

  v13 = *v12;
  v33 = v11;
  if (v6 >= 3)
  {
    v14 = v11 * v6 / 2;
    v15 = v6 >> 1;
    [(CIImage *)v4 extent];
    v42 = CGRectInset(v41, v14, 0.0);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __39__AXMCIMorphologyRectangle_outputImage__block_invoke;
    v36[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v37 = v15;
    v39[0] = v4;
    v20 = [MEMORY[0x1E696AD98] numberWithInt:v15];
    v39[1] = v20;
    v21 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:0.0];
    v39[2] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v23 = [v13 applyWithExtent:v36 roiCallback:v22 arguments:{x, y, width, height}];

    v4 = v23;
  }

  if (v8 >= 3)
  {
    [(CIImage *)v4 extent];
    v44 = CGRectInset(v43, 0.0, (v33 * v8 / 2));
    v24 = v44.origin.x;
    v25 = v44.origin.y;
    v26 = v44.size.width;
    v27 = v44.size.height;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __39__AXMCIMorphologyRectangle_outputImage__block_invoke_2;
    v34[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v35 = v8 / 2;
    v38[0] = v4;
    v28 = [MEMORY[0x1E696AD98] numberWithInt:(v8 / 2)];
    v38[1] = v28;
    v29 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:1.0];
    v38[2] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
    v31 = [v13 applyWithExtent:v34 roiCallback:v30 arguments:{v24, v25, v26, v27}];

    v4 = v31;
  }

LABEL_25:

  return v4;
}

@end
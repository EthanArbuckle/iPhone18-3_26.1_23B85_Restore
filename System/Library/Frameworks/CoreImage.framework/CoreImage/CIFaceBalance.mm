@interface CIFaceBalance
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)_initFromProperties:(id)properties;
- (id)_outputProperties;
- (id)outputImage;
@end

@implementation CIFaceBalance

+ (id)customAttributes
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryColorAdjustment";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryHighDynamicRange";
  v11[4] = @"CICategoryInterlaced";
  v11[5] = @"CICategoryNonSquarePixels";
  v11[6] = @"CICategoryBuiltIn";
  v11[7] = @"CICategoryApplePrivate";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:8];
  v12[1] = @"inputOrigI";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F10839E8;
  v10[1] = &unk_1F10839F8;
  v9[2] = @"CIAttributeMin";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F10839E8;
  v10[3] = &unk_1F10839F8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = [MEMORY[0x1E696AD98] numberWithDouble:0.103905];
  v10[5] = @"CIAttributeTypeScalar";
  v13[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[2] = @"inputOrigQ";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F10839E8;
  v8[1] = &unk_1F10839F8;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F10839E8;
  v8[3] = &unk_1F10839F8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = [MEMORY[0x1E696AD98] numberWithDouble:0.0176465];
  v8[5] = @"CIAttributeTypeScalar";
  v13[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[3] = @"inputStrength";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1083A08;
  v6[1] = &unk_1F1083A18;
  v5[2] = @"CIAttributeMin";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1083A08;
  v6[3] = &unk_1F1083A18;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F10839F8;
  v6[5] = &unk_1F1083A08;
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v12[4] = @"inputWarmth";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1083A08;
  v4[1] = &unk_1F1083A28;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1083A08;
  v4[3] = &unk_1F1083A28;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10839F8;
  v4[5] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputWarmth doubleValue];
  v11 = v3;
  [(NSNumber *)self->inputStrength doubleValue];
  v12 = v4;
  [(NSNumber *)self->inputOrigI doubleValue];
  v10 = v5;
  [(NSNumber *)self->inputOrigQ doubleValue];
  v6.f64[0] = v10;
  v6.f64[1] = v7;
  v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3F50624DD2F1A9FCuLL), vabsq_f64(vmulq_n_f64(vsubq_f64(vmlaq_n_f64(vmulq_n_f64(faceBalanceIndoorIQ, 1.0 - v11), faceBalanceOutdoorIQ, v11), v6), v12))));
  return v8.i8[0] & v8.i8[4] & 1;
}

- (id)outputImage
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputWarmth doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputStrength doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputOrigI doubleValue];
  v8 = v7;
  [(NSNumber *)self->inputOrigQ doubleValue];
  v9 = (1.0 - v4) * *(&faceBalanceIndoorIQ + 1) + v4 * *(&faceBalanceOutdoorIQ + 1);
  v10 = v6 * ((1.0 - v4) * *&faceBalanceIndoorIQ + v4 * *&faceBalanceOutdoorIQ - v8);
  v12 = v6 * (v9 - v11);
  inputImage = self->inputImage;
  if (fabs(v10) >= 0.001 || fabs(v12) >= 0.001)
  {
    v16 = [-[CIImage _imageByApplyingGamma:](inputImage _imageByApplyingGamma:{0.25), "imageByUnpremultiplyingAlpha"}];
    _kernel = [(CIFaceBalance *)self _kernel];
    [(CIImage *)self->inputImage extent];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26[0] = v16;
    v26[1] = [CIVector vectorWithX:v10 Y:v12];
    return [objc_msgSend(objc_msgSend(_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v26, 2), v19, v21, v23, v25), "imageByPremultiplyingAlpha"), "_imageByApplyingGamma:", 4.0}];
  }

  else
  {
    v14 = inputImage;

    return v14;
  }
}

- (id)_outputProperties
{
  v39 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputOrigI doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputOrigQ doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputStrength doubleValue];
  v8 = v7;
  [(NSNumber *)self->inputWarmth doubleValue];
  v10 = v9;
  v11 = 1.0 - v9;
  v12 = v11 * *(&faceBalanceIndoorIQ + 1) + v10 * *(&faceBalanceOutdoorIQ + 1);
  v13 = v8 * (v11 * *&faceBalanceIndoorIQ + v10 * *&faceBalanceOutdoorIQ - v4);
  v14 = v8 * (v12 - v6);
  if (fabs(v13) < 0.001 && fabs(v14) < 0.001)
  {
    return 0;
  }

  v16 = (v13 + v14 * -0.2) * 222.43;
  v17 = (v13 + v14 * 5.0) * 127.955;
  v18 = metadataPropertyWithDouble(v4);
  if (v16 <= 10.0)
  {
    v22 = v18;
    v23 = metadataPropertyWithDouble(v6);
    v24 = metadataPropertyWithDouble(v8);
    v25 = metadataPropertyWithDouble(v10);
    v26 = metadataPropertyWithDouble(v16);
    v27 = metadataPropertyWithDouble(v17);
    v28 = metadataPropertyWithBool();
    v29 = metadataPropertyWithBool();
    v19 = MEMORY[0x1E695DEC8];
    v20 = &v22;
    v21 = 8;
  }

  else
  {
    v30 = v18;
    v31 = metadataPropertyWithDouble(v6);
    v32 = metadataPropertyWithDouble(v8);
    v33 = metadataPropertyWithDouble(v10);
    v34 = metadataPropertyWithDouble(v16);
    v35 = metadataPropertyWithDouble(v17);
    v36 = metadataPropertyWithBool();
    v37 = metadataPropertyWithBool();
    v38 = metadataPropertyWithDouble(fmax(v16 + -10.0, 0.0) / 1.5);
    v19 = MEMORY[0x1E695DEC8];
    v20 = &v30;
    v21 = 9;
  }

  return [v19 arrayWithObjects:v20 count:{v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38}];
}

- (id)_initFromProperties:(id)properties
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"FaceBalanceOrigI", &v9) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"FaceBalanceOrigQ", &v8) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"FaceBalanceStrength", &v7) && metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"FaceBalanceWarmth", &v6))
  {
    -[CIFaceBalance setInputOrigI:](self, "setInputOrigI:", [MEMORY[0x1E696AD98] numberWithDouble:v9]);
    -[CIFaceBalance setInputOrigQ:](self, "setInputOrigQ:", [MEMORY[0x1E696AD98] numberWithDouble:v8]);
    -[CIFaceBalance setInputStrength:](self, "setInputStrength:", [MEMORY[0x1E696AD98] numberWithDouble:v7]);
    -[CIFaceBalance setInputWarmth:](self, "setInputWarmth:", [MEMORY[0x1E696AD98] numberWithDouble:v6]);
  }

  else
  {

    return 0;
  }

  return self;
}

@end
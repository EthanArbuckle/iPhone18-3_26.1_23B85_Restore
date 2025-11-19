@interface CITileFilter
+ (id)customAttributes;
- (id)_croppedCenterPixelImage;
@end

@implementation CITileFilter

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryTileEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"6";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.5";
  v10[3] = @"inputCenter";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v8[1] = @"CIAttributeTypePosition";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputAngle";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1084858;
  v6[1] = &unk_1F1084868;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeIdentity";
  v6[2] = &unk_1F1084878;
  v6[3] = &unk_1F1084878;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeAngle";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v10[5] = @"inputWidth";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084878;
  v4[1] = &unk_1F1084888;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084898;
  v4[3] = &unk_1F10848A8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10848A8;
  v4[5] = @"CIAttributeTypeDistance";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)_croppedCenterPixelImage
{
  [(CIVector *)self->inputCenter X];
  v8 = v3;
  [(CIVector *)self->inputCenter Y];
  v4.f64[0] = v8;
  v4.f64[1] = v5;
  *&v4.f64[0] = vrndm_f32(vcvt_f32_f64(v4));
  v6 = [(CIImage *)self->inputImage imageByCroppingToRect:*v4.f64, *(v4.f64 + 1), 1.0, 1.0];

  return [(CIImage *)v6 imageByClampingToExtent];
}

@end
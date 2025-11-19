@interface CUIScaleClampFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CUIScaleClampFilter

+ (id)customAttributes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10851B8;
  v4[1] = &unk_1F10851B8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F10851C8;
  v4[3] = &unk_1F10851D8;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10851E8;
  v4[5] = @"CIAttributeTypeScalar";
  v6[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
}

- (id)outputImage
{
  v15[2] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputScale doubleValue];
  result = 0;
  if (self->inputImage)
  {
    v5 = fmin(fmax(v3, 0.01), 100.0);
    if (v5 != 0.0)
    {
      v6 = [(CUIScaleClampFilter *)self _kernel];
      [(CIImage *)self->inputImage extent];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15[0] = self->inputImage;
      v15[1] = [MEMORY[0x1E696AD98] numberWithDouble:v5];
      return [v6 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v15, 2), v8, v10, v12, v14}];
    }
  }

  return result;
}

@end
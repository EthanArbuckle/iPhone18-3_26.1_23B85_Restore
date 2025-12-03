@interface CIRectangleGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRectangleGenerator

- (id)outputImage
{
  v20[3] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputRectangle CGRectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NSNumber *)self->inputEdgeBlur floatValue];
  v12 = v11;
  v13 = 1.0 / v11;
  v14 = 100000.0;
  if (v12 != 0.0)
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = [CIVector vectorWithX:-v14 Y:v15 Z:-v14 W:v15];
  v17 = [CIVector vectorWithX:v4 * v15 + 0.5 Y:0.5 - (v4 + v8) * v15 Z:v6 * v15 + 0.5 W:0.5 - (v6 + v10) * v15];
  _CIRectangle = [(CIRectangleGenerator *)self _CIRectangle];
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v22 = CGRectInset(v21, -v12 * 0.5, -v12 * 0.5);
  v20[0] = v16;
  v20[1] = v17;
  v20[2] = self->inputColor;
  return [_CIRectangle applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v20, 3), v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
}

+ (id)customAttributes
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryGenerator";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryHighDynamicRange";
  v9[4] = @"CICategoryBuiltIn";
  v9[5] = @"CICategoryApplePrivate";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  v10[1] = @"inputEdgeBlur";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1084828;
  v8[1] = &unk_1F1084828;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1084838;
  v8[3] = &unk_1F1084848;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v11[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[2] = @"inputRectangle";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeRectangle";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v11[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v10[3] = @"inputColor";
  v3 = @"CIAttributeDefault";
  v4 = [CIColor colorWithRed:1.0 green:1.0 blue:1.0];
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
}

@end
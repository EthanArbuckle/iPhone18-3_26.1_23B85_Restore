@interface CIHighlightShadowAdjust
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)_initFromProperties:(id)a3;
- (id)_outputProperties;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIHighlightShadowAdjust

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryStylize";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryHighDynamicRange";
  v9[4] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v11[1] = @"5";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.7";
  v10[3] = @"inputRadius";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083D58;
  v8[1] = &unk_1F1083D58;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083D68;
  v8[3] = &unk_1F1083D58;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1083D58;
  v8[5] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[4] = @"inputShadowAmount";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1083D78;
  v6[1] = &unk_1F1083D88;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1083D78;
  v6[3] = &unk_1F1083D88;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F1083D58;
  v6[5] = &unk_1F1083D58;
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v10[5] = @"inputHighlightAmount";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1083D58;
  v4[1] = &unk_1F1083D88;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083D98;
  v4[3] = &unk_1F1083D88;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1083D88;
  v4[5] = &unk_1F1083D88;
  v3[6] = @"CIAttributeType";
  v4[6] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (void)setDefaults
{
  v3.receiver = self;
  v3.super_class = CIHighlightShadowAdjust;
  [(CIFilter *)&v3 setDefaults];
  -[CIHighlightShadowAdjust setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIHighlightShadowAdjust _defaultVersion](self, "_defaultVersion")}], @"__inputVersion");
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputShadowAmount doubleValue];
  v4 = fmin(fmax(v3, -1.0), 1.0);
  [(NSNumber *)self->inputHighlightAmount doubleValue];
  v5 = fabs(v4) < 0.05;
  return fmin(fmax(v6, 0.0), 1.0) > 0.95 && v5;
}

- (id)outputImage
{
  v58[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  v3 = [(CIHighlightShadowAdjust *)self valueForKey:@"__inputVersion"];
  if (v3)
  {
    v4 = v3;
    if ([v3 intValue] < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 intValue];
    }

    if (v5 >= [(CIHighlightShadowAdjust *)self _maxVersion])
    {
      v7 = [(CIHighlightShadowAdjust *)self _maxVersion];
    }

    else
    {
      if ([v4 intValue] < 1)
      {
        v8 = 0;
        goto LABEL_13;
      }

      v7 = [v4 intValue];
    }
  }

  else
  {
    v7 = [(CIHighlightShadowAdjust *)self _defaultVersion];
  }

  v8 = v7;
LABEL_13:
  [(NSNumber *)self->inputShadowAmount doubleValue];
  v10 = fmin(fmax(v9, -1.0), 1.0);
  [(NSNumber *)self->inputHighlightAmount doubleValue];
  v12 = fmin(fmax(v11, 0.0), 1.0);
  if (fabs(v10) >= 0.05 || v12 <= 0.95)
  {
    [(NSNumber *)self->inputRadius doubleValue];
    v15 = fmax(v14, 0.0);
    if (v8)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = [[(CIImage *)self->inputImage imageByApplyingGaussianBlurWithSigma:v16] imageByUnpremultiplyingAlpha];
    v18 = fmin(fmax(1.0 - pow(fabs(v10 / 0.3), 1.6), 0.0), 1.0);
    v19 = [CIVector vectorWithX:v10 Y:v12 Z:v18 W:1.0 / fmax(1.997 - 1.0 / (exp(v12 * -6.0) + 1.0), 1.0)];
    v20 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    if (!v8)
    {
      if (v12 <= 0.9999)
      {
        v21 = [(CIHighlightShadowAdjust *)self _kernelSHnoB_v0];
        [(CIImage *)v20 extent];
        v23 = v40;
        v25 = v41;
        v27 = v42;
        v29 = v43;
        v57[0] = v20;
        v57[1] = v19;
        v30 = MEMORY[0x1E695DEC8];
        v31 = v57;
      }

      else
      {
        v21 = [(CIHighlightShadowAdjust *)self _kernelSnoB_v0];
        [(CIImage *)v20 extent];
        v23 = v32;
        v25 = v33;
        v27 = v34;
        v29 = v35;
        v58[0] = v20;
        v58[1] = v19;
        v30 = MEMORY[0x1E695DEC8];
        v31 = v58;
      }

      goto LABEL_31;
    }

    if (v8 == 1)
    {
      if (v15 == 0.0)
      {
        v21 = [(CIHighlightShadowAdjust *)self _kernelSHnoB_v1];
        [(CIImage *)v20 extent];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v56[0] = v20;
        v56[1] = v19;
        v30 = MEMORY[0x1E695DEC8];
        v31 = v56;
LABEL_31:
        v44 = 2;
        return [objc_msgSend(v21 applyWithExtent:objc_msgSend(v30 arguments:{"arrayWithObjects:count:", v31, v44), v23, v25, v27, v29), "imageByPremultiplyingAlpha"}];
      }

      v21 = [(CIHighlightShadowAdjust *)self _kernelSH_v1];
      [(CIImage *)v20 extent];
      v23 = v45;
      v25 = v46;
      v27 = v47;
      v29 = v48;
      v55[0] = v20;
      v55[1] = v17;
      v55[2] = v19;
      v30 = MEMORY[0x1E695DEC8];
      v31 = v55;
    }

    else
    {
      if (v15 == 0.0)
      {
        v21 = [(CIHighlightShadowAdjust *)self _kernelSHnoB_v2];
        [(CIImage *)v20 extent];
        v23 = v36;
        v25 = v37;
        v27 = v38;
        v29 = v39;
        v54[0] = v20;
        v54[1] = v19;
        v30 = MEMORY[0x1E695DEC8];
        v31 = v54;
        goto LABEL_31;
      }

      v21 = [(CIHighlightShadowAdjust *)self _kernelSH_v2];
      [(CIImage *)v20 extent];
      v23 = v49;
      v25 = v50;
      v27 = v51;
      v29 = v52;
      v53[0] = v20;
      v53[1] = v17;
      v53[2] = v19;
      v30 = MEMORY[0x1E695DEC8];
      v31 = v53;
    }

    v44 = 3;
    return [objc_msgSend(v21 applyWithExtent:objc_msgSend(v30 arguments:{"arrayWithObjects:count:", v31, v44), v23, v25, v27, v29), "imageByPremultiplyingAlpha"}];
  }

  v13 = self->inputImage;

  return v13;
}

- (id)_outputProperties
{
  v9[4] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputShadowAmount doubleValue];
  v4 = fmin(fmax(v3, -1.0), 1.0);
  [(NSNumber *)self->inputHighlightAmount doubleValue];
  v6 = fmin(fmax(v5, 0.0), 1.0);
  if (fabs(v4) < 0.005 && v6 > 0.995)
  {
    return 0;
  }

  v9[0] = metadataPropertyWithBool();
  v9[1] = metadataPropertyWithDouble(v4);
  v9[2] = metadataPropertyWithDouble(v6);
  v8 = v4 * 25.0;
  if (v4 <= 0.0)
  {
    v8 = 0.0;
  }

  v9[3] = metadataPropertyWithDouble(v8);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
}

- (id)_initFromProperties:(id)a3
{
  v6 = 0.0;
  v7 = 0.0;
  if (metadataPropertyArrayGetDouble(a3, @"http://ns.apple.com/adjustment-settings/1.0/", @"Shadows", &v7) && metadataPropertyArrayGetDouble(a3, @"http://ns.apple.com/adjustment-settings/1.0/", @"Highlights", &v6))
  {
    -[CIHighlightShadowAdjust setInputShadowAmount:](self, "setInputShadowAmount:", [MEMORY[0x1E696AD98] numberWithDouble:v7]);
    -[CIHighlightShadowAdjust setInputHighlightAmount:](self, "setInputHighlightAmount:", [MEMORY[0x1E696AD98] numberWithDouble:v6]);
    [(CIHighlightShadowAdjust *)self setValue:&unk_1F1081D70 forKey:@"__inputVersion"];
  }

  else
  {

    return 0;
  }

  return self;
}

@end
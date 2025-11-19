@interface CIAffineTile
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAffineTile

+ (id)customAttributes
{
  v9[4] = *MEMORY[0x1E69E9840];
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeScale(&v4, 0.4, 0.4);
  v2 = [MEMORY[0x1E696B098] valueWithBytes:MEMORY[0x1E695EFD0] objCType:"{CGAffineTransform=dddddd}"];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryTileEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"6";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputTransform";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeTransform";
  v6[1] = v2;
  v5[2] = @"CIAttributeIdentity";
  v6[2] = v2;
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
}

- (id)outputImage
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputTransform = self->inputTransform;
  if (!inputTransform)
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v25.a = *MEMORY[0x1E695EFD0];
    *&v25.c = v5;
    v6 = *(MEMORY[0x1E695EFD0] + 32);
LABEL_10:
    *&v25.tx = v6;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSValue *)inputTransform objCType];
    if (!strcmp(v4, "{CGAffineTransform=dddddd}") || !strcmp(v4, "{?=dddddd}"))
    {
      [(NSValue *)inputTransform getValue:&v25 size:48];
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(&v26, 0, sizeof(v26));
    [(NSValue *)inputTransform transformStruct];
    memset(&v25, 0, 32);
    v6 = 0u;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [(NSValue *)inputTransform count]!= 6)
  {
LABEL_17:
    v22 = ci_logger_filter();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CIAffineClamp *)self outputImage];
    }

    return 0;
  }

  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{0), "doubleValue"}];
  v25.a = v16;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{1), "doubleValue"}];
  v25.b = v17;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{2), "doubleValue"}];
  v25.c = v18;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{3), "doubleValue"}];
  v25.d = v19;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{4), "doubleValue"}];
  v25.tx = v20;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{5), "doubleValue"}];
  v25.ty = v21;
LABEL_11:
  [(CIImage *)self->inputImage extent];
  IsInfinite = CGRectIsInfinite(v28);
  inputImage = self->inputImage;
  if (IsInfinite)
  {
    v26 = v25;
    return [(CIImage *)inputImage imageByApplyingTransform:&v26];
  }

  else
  {
    v10 = [(CIImage *)inputImage filteredImage:@"CISimpleTile" keysAndValues:0];
    v24 = v25;
    CGAffineTransformInvert(&v26, &v24);
    v25 = v26;
    v11 = [(CIAffineTile *)self _kernel];
    v12 = *MEMORY[0x1E695F040];
    v13 = *(MEMORY[0x1E695F040] + 8);
    v15 = *(MEMORY[0x1E695F040] + 16);
    v14 = *(MEMORY[0x1E695F040] + 24);
    v27[0] = [CIVector vectorWithX:*&v25.tx Y:MEMORY[0x1E69E9820], 3221225472, __27__CIAffineTile_outputImage__block_invoke, &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, *&v25.a, *&v25.c, *&v25.tx];
    v27[1] = [CIVector vectorWithX:v25.a Y:v25.c];
    v27[2] = [CIVector vectorWithX:v25.b Y:v25.d];
    return [v11 applyWithExtent:&v23 roiCallback:v10 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v27, 3), v12, v13, v15, v14}];
  }
}

double __27__CIAffineTile_outputImage__block_invoke(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  v5 = a1[3];
  *&v7.a = a1[2];
  *&v7.c = v5;
  *&v7.tx = a1[4];
  *&result = CGRectApplyAffineTransform(*&a2, &v7);
  return result;
}

@end
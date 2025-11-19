@interface CIRingBlur
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRingBlur

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryBlur";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"11";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.13";
  v8[3] = @"inputRadius";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeDistance";
  v6[1] = &unk_1F10832B8;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F10832B8;
  v6[3] = &unk_1F10832C8;
  v5[4] = @"CIAttributeDefault";
  v6[4] = &unk_1F1083348;
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputPointCount";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeCount";
  v4[1] = &unk_1F1083348;
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083358;
  v4[3] = &unk_1F1083368;
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v68[2] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v70))
  {

    return +[CIImage emptyImage];
  }

  [(NSNumber *)self->inputRadius floatValue];
  v5 = v4;
  if (v4 > 0.5)
  {
    v6 = v4;
    [(NSNumber *)self->inputPointCount floatValue];
    v8 = v7;
    inputImage = self->inputImage;
    if (v7 > 8)
    {
      if (v8 > 0x10)
      {
        if (v8 > 0x18)
        {
          v40 = v6 * 0.995184727;
          v56 = v40;
          v41 = v6 * 0.0980171403;
          v51 = v41;
          v42 = v6 * 0.956940336;
          v48 = v42;
          v43 = v6 * 0.290284677;
          v44 = v6 * 0.881921264;
          v53 = v44;
          v45 = v6 * 0.471396737;
          v49 = v45;
          v46 = v6 * 0.773010453;
          v47 = v6 * 0.634393284;
          v35 = [CIKernel kernelWithInternalRepresentation:&CI::_ringAvg32];
          [(CIImage *)inputImage extent];
          v78 = CGRectInset(v77, -v5, -v5);
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          height = v78.size.height;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __25__CIRingBlur_outputImage__block_invoke_4;
          v57[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v58 = v5;
          v65[0] = inputImage;
          v65[1] = [CIVector vectorWithX:v56 Y:v51 Z:v48 W:v43];
          v65[2] = [CIVector vectorWithX:v53 Y:v49 Z:v46 W:v47];
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
          v18 = v57;
        }

        else
        {
          v29 = v6 * 0.991444861;
          v55 = v29;
          v30 = v6 * 0.130526192;
          v50 = v30;
          v31 = v6 * 0.923879533;
          v32 = v6 * 0.382683432;
          v33 = v6 * 0.79335334;
          v52 = v33;
          v34 = v6 * 0.608761429;
          v35 = [CIKernel kernelWithInternalRepresentation:&CI::_ringAvg24];
          [(CIImage *)inputImage extent];
          v76 = CGRectInset(v75, -v5, -v5);
          x = v76.origin.x;
          y = v76.origin.y;
          width = v76.size.width;
          height = v76.size.height;
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __25__CIRingBlur_outputImage__block_invoke_3;
          v59[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v60 = v5;
          v66[0] = inputImage;
          v66[1] = [CIVector vectorWithX:v55 Y:v50 Z:v31 W:v32];
          v66[2] = [CIVector vectorWithX:v52 Y:v34];
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
          v18 = v59;
        }

        v24 = v35;
        v25 = x;
        v26 = y;
        v27 = width;
        v28 = height;
        return [(CIKernel *)v24 applyWithExtent:v18 roiCallback:v17 arguments:v25, v26, v27, v28];
      }

      v20 = v6 * 0.98078528;
      v54 = v20;
      v21 = v6 * 0.195090322;
      v22 = v6 * 0.831469612;
      v23 = v6 * 0.555570233;
      v12 = [CIKernel kernelWithInternalRepresentation:&CI::_ringAvg16];
      [(CIImage *)inputImage extent];
      v74 = CGRectInset(v73, -v5, -v5);
      v13 = v74.origin.x;
      v14 = v74.origin.y;
      v15 = v74.size.width;
      v16 = v74.size.height;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __25__CIRingBlur_outputImage__block_invoke_2;
      v61[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v62 = v5;
      v67[0] = inputImage;
      v67[1] = [CIVector vectorWithX:v54 Y:v21 Z:v22 W:v23];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
      v18 = v61;
    }

    else
    {
      v10 = v6 * 0.923879533;
      v11 = v6 * 0.382683432;
      v12 = [CIKernel kernelWithInternalRepresentation:&CI::_ringAvg8];
      [(CIImage *)inputImage extent];
      v72 = CGRectInset(v71, -v5, -v5);
      v13 = v72.origin.x;
      v14 = v72.origin.y;
      v15 = v72.size.width;
      v16 = v72.size.height;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __25__CIRingBlur_outputImage__block_invoke;
      v63[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v64 = v5;
      v68[0] = inputImage;
      v68[1] = [CIVector vectorWithX:v10 Y:v11];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
      v18 = v63;
    }

    v24 = v12;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    return [(CIKernel *)v24 applyWithExtent:v18 roiCallback:v17 arguments:v25, v26, v27, v28];
  }

  v19 = self->inputImage;

  return v19;
}

@end
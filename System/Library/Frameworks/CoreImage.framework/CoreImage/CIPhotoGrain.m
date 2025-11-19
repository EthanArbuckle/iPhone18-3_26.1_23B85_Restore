@interface CIPhotoGrain
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPhotoGrain

+ (id)customAttributes
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryInterlaced";
  v9[3] = @"CICategoryNonSquarePixels";
  v9[4] = @"CICategoryStillImage";
  v9[5] = @"CICategoryBuiltIn";
  v9[6] = @"CICategoryApplePrivate";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v10[1] = @"inputISO";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10845A8;
  v8[1] = &unk_1F10845A8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F10845B8;
  v8[3] = &unk_1F10845A8;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10845C8;
  v8[5] = @"CIAttributeTypeScalar";
  v11[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[2] = @"inputAmount";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10845C8;
  v6[1] = &unk_1F10845C8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F10845D8;
  v6[3] = &unk_1F10845D8;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10845C8;
  v6[5] = @"CIAttributeTypeScalar";
  v11[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[3] = @"inputSeed";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10845C8;
  v4[1] = &unk_1F10845C8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10845D8;
  v4[3] = &unk_1F10845C8;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
}

- (id)outputImage
{
  v62[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputAmount floatValue];
  if (v3 < 0.001)
  {
    return self->inputImage;
  }

  [(NSNumber *)self->inputISO floatValue];
  v6 = fminf(fmaxf(v5, 10.0), 3200.0);
  v7 = log10f(v6);
  if ([CIPhotoGrain outputImage]::onceToken != -1)
  {
    [CIPhotoGrain outputImage];
  }

  v8 = [CIPhotoGrain outputImage]::inputGrain;
  if (![CIPhotoGrain outputImage]::inputGrain)
  {
    return 0;
  }

  v54 = v6;
  CGAffineTransformMakeTranslation(&v57, -1.0, -1.0);
  v9 = [v8 imageByApplyingTransform:&v57];
  v10 = [(CIPhotoGrain *)self _interpolateGrainKernel];
  [v9 extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v62[0] = v9;
  v55 = v7;
  *&v11 = v7;
  v62[1] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v19 = [v10 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v62, 2), v12, v14, v16, v18}];
  [v19 extent];
  v21 = v20 + -2.0;
  [v19 extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(CIPhotoGrain *)self _paddedTileKernel];
  v32 = *MEMORY[0x1E695F040];
  v31 = *(MEMORY[0x1E695F040] + 8);
  v33 = *(MEMORY[0x1E695F040] + 16);
  v53 = *(MEMORY[0x1E695F040] + 24);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __27__CIPhotoGrain_outputImage__block_invoke_2;
  v59[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v59[4] = v23;
  v59[5] = v25;
  v59[6] = v27;
  v59[7] = v29;
  v61 = [CIVector vectorWithX:v21 Y:v21 Z:1.0 / v21 W:1.0 / v21];
  v34 = [v30 applyWithExtent:v59 roiCallback:v19 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v61, 1), v32, v31, v33, v53}];
  [(NSNumber *)self->inputSeed doubleValue];
  __src = v35;
  if (v35 != 0.0)
  {
    XXH64_reset(&v57, 0);
    XXH64_update(&v57, &__src, 8uLL);
    v36 = XXH64_digest(&v57);
    CGAffineTransformMakeTranslation(&v56, (v36 & 0x1FF), ((v36 >> 9) & 0x1FF));
    v34 = [v34 imageByApplyingTransform:&v56];
  }

  if (v54 < 400.0)
  {
    v37 = 1;
  }

  else
  {
    v37 = 2;
  }

  if (v54 >= 50.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = log10f(flt_19CF285F0[v38]);
  v40 = fmaxf(flt_19CF28600[v38] + ((flt_19CF28600[v38 + 1] - flt_19CF28600[v38]) * ((v55 - v39) / (log10f(flt_19CF285F0[v38 + 1]) - v39))), 0.2);
  v41 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
  v42 = [(CIPhotoGrain *)self _grainBlendAndMixKernel];
  [(CIImage *)v41 extent];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v60[0] = v41;
  v60[1] = v34;
  *&v43 = v40;
  v51 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
  inputAmount = self->inputAmount;
  v60[2] = v51;
  v60[3] = inputAmount;
  return [objc_msgSend(v42 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v60, 4), v44, v46, v48, v50), "imageByPremultiplyingAlpha"}];
}

CIImage *__27__CIPhotoGrain_outputImage__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = getsectdatafromFramework("CoreImage", "__TEXT", "__grain", &v4);
  if (v0 && v4 == 1069120)
  {
    v1 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v0 length:1069120 freeWhenDone:0];
    v5 = @"CIImageColorSpace";
    v6[0] = [MEMORY[0x1E695DFB0] null];
    v2 = +[CIImage imageWithBitmapData:bytesPerRow:size:format:options:](CIImage, "imageWithBitmapData:bytesPerRow:size:format:options:", v1, 2080, 264, [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1], 514.0, 514.0);
  }

  else
  {
    v2 = [+[CIImage clearImage](CIImage imageByCroppingToRect:"imageByCroppingToRect:", 0.0, 0.0, 514.0, 514.0];
  }

  [CIPhotoGrain outputImage]::inputGrain = v2;
  return v2;
}

@end
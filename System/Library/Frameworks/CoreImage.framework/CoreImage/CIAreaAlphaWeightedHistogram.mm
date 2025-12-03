@interface CIAreaAlphaWeightedHistogram
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAreaAlphaWeightedHistogram

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryReduction";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"18";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"15.0";
  v8[3] = @"inputCount";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082A38;
  v6[1] = &unk_1F1082A48;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1082A58;
  v6[3] = &unk_1F1082A68;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082A78;
  v6[5] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082A88;
  v4[1] = &unk_1F1082A88;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082A38;
  v4[3] = &unk_1F1082A38;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v37[2] = *MEMORY[0x1E69E9840];
  if (![(CIAreaHistogram *)self _inputsAreOK])
  {
    return 0;
  }

  imageByUnpremultiplyingAlpha = [(CIImage *)self->super.inputImage imageByUnpremultiplyingAlpha];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_prepHistogram];
  [(CIImage *)imageByUnpremultiplyingAlpha extent];
  inputCount = self->super.inputCount;
  v37[0] = imageByUnpremultiplyingAlpha;
  v37[1] = inputCount;
  v10 = -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2], v6, v7, v8, v9);
  [(CIImage *)self->super.inputImage extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(CIVector *)self->super.inputExtent CGRectValue];
  v40.origin.x = v19;
  v40.origin.y = v20;
  v40.size.width = v21;
  v40.size.height = v22;
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  v39 = CGRectIntersection(v38, v40);
  x = v39.origin.x;
  width = v39.size.width;
  height = v39.size.height;
  v35[0] = @"areaX";
  v36[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v39.origin.x];
  v35[1] = @"areaY";
  v36[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:x];
  v35[2] = @"areaW";
  v36[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:width];
  v35[3] = @"areaH";
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:height];
  inputScale = self->super.inputScale;
  v36[3] = v26;
  v36[4] = inputScale;
  v35[4] = @"scale";
  v35[5] = @"tileSize";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:256];
  v35[6] = @"binCount";
  v29 = self->super.inputCount;
  v36[5] = v28;
  v36[6] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:7];
  intValue = [(NSNumber *)self->super.inputCount intValue];
  v34 = v10;
  v32 = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](TiledHistogram, "applyWithExtent:inputs:arguments:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1], v30, 0, 0.0, 0.0, intValue, 1.0);
  [(CIImage *)v32 extent];
  return [(CIImage *)v32 imageBySettingAlphaOneInExtent:?];
}

@end
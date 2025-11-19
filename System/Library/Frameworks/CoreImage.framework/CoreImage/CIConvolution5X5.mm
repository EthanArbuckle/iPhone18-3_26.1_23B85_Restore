@interface CIConvolution5X5
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIConvolution5X5

+ (id)customAttributes
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", &+[CIConvolution5X5 customAttributes]::default_values, 25);
  v3 = [objc_msgSend(objc_opt_class() "description")];
  v13[0] = @"CIAttributeFilterCategories";
  v12[0] = @"CICategoryStylize";
  v12[1] = @"CICategoryVideo";
  v12[2] = @"CICategoryStillImage";
  v12[3] = @"CICategoryHighDynamicRange";
  v12[4] = @"CICategoryBuiltIn";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v5 = @"7";
  if (v3)
  {
    v5 = @"15";
  }

  v14[0] = v4;
  v14[1] = v5;
  v13[1] = @"CIAttributeFilterAvailable_iOS";
  v13[2] = @"CIAttributeFilterAvailable_Mac";
  if (v3)
  {
    v6 = @"12.0";
  }

  else
  {
    v6 = @"10.9";
  }

  v14[2] = v6;
  v13[3] = @"inputWeights";
  v10[0] = @"CIAttributeIdentity";
  v10[1] = @"CIAttributeDefault";
  v11[0] = v2;
  v11[1] = v2;
  v14[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[4] = @"inputBias";
  v8[0] = @"CIAttributeType";
  v8[1] = @"CIAttributeIdentity";
  v9[0] = @"CIAttributeTypeScalar";
  v9[1] = &unk_1F1083178;
  v8[2] = @"CIAttributeDefault";
  v9[2] = &unk_1F1083178;
  v14[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputBias floatValue];
  if (v3 != 0.0)
  {
    return 0;
  }

  inputWeights = self->inputWeights;
  [(CIVector *)inputWeights valueAtIndex:0];
  if (v6 != 0.0)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v7 == 24)
    {
      break;
    }

    ++v7;
    v9 = v8 == 11 ? 1.0 : 0.0;
    [(CIVector *)inputWeights valueAtIndex:v8 + 1];
  }

  while (v10 == v9);
  return v8 > 0x17;
}

- (id)outputImage
{
  v58 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputWeights = self->inputWeights;
  if (!inputWeights)
  {
    return 0;
  }

  if ([(CIVector *)inputWeights count]!= 25)
  {
    [MEMORY[0x1E695DF30] raise:@"CIConvolutionWeights" format:@"CIConvolution5X5 expects inputWeights to be a length-25 CIVector"];
  }

  if (![(CIConvolution5X5 *)self _isIdentity])
  {
    v7 = [(CIVector *)self->inputWeights _values];
    LODWORD(v8) = [objc_msgSend(objc_opt_class() "description")];
    v9 = 0;
    v10 = 0.0;
    LODWORD(v11) = -1;
    v12 = v7;
    v13 = -1;
    do
    {
      for (i = 0; i != 5; ++i)
      {
        v15 = fabs(v12[i]);
        if (v15 <= v10)
        {
          v11 = v11;
        }

        else
        {
          v10 = v15;
          v13 = i;
          v11 = v9;
        }
      }

      ++v9;
      v12 += 5;
    }

    while (v9 != 5);
    v16 = 0;
    v17 = &v7[5 * v11];
    v18 = *(v17 + 1);
    v56[0] = *v17;
    v56[1] = v18;
    v57 = *(v17 + 4);
    v19 = &v7[v13];
    do
    {
      v20 = *v19;
      v19 += 5;
      v55[v16++] = v20;
    }

    while (v16 != 5);
    for (j = 0; j != 40; j += 8)
    {
      *(v56 + j) = *(v56 + j) / v10;
    }

    v22 = 0;
    v23 = 0;
    while (v22 == v11)
    {
LABEL_27:
      v23 = v22 > 3;
      v7 += 5;
      if (++v22 == 5)
      {
        v23 = 1;
        goto LABEL_29;
      }
    }

    v24 = 0;
    while (fabs(v7[v24] - *(v56 + v24 * 8) * v55[v22]) <= 0.000001)
    {
      if (++v24 == 5)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    convert_weights(self->inputWeights, v52, 5u, 5u);
    [(NSNumber *)self->inputBias doubleValue];
    v26 = v25;
    if (fabs(v25) >= 1.0e-10)
    {
      x = *MEMORY[0x1E695F040];
      y = *(MEMORY[0x1E695F040] + 8);
      width = *(MEMORY[0x1E695F040] + 16);
      height = *(MEMORY[0x1E695F040] + 24);
    }

    else
    {
      [(CIImage *)self->inputImage extent];
      v61 = CGRectInset(v60, -2.0, -2.0);
      x = v61.origin.x;
      y = v61.origin.y;
      width = v61.size.width;
      height = v61.size.height;
    }

    inputImage = self->inputImage;
    if (v23)
    {
      memset(v54, 0, sizeof(v54));
      v32 = v56;
      v33 = 2;
      v34 = sqrt(v10);
      do
      {
        v35 = *v32++;
        *&v54[v33++] = v34 * v35;
      }

      while (v33 != 7);
      v36 = [CIVector vectorWithValues:v54 count:9];
      v37 = v55;
      for (k = 2; k != 7; ++k)
      {
        v39 = *v37++;
        *&v54[k] = v39 / v34;
      }

      v40 = [CIVector vectorWithValues:v54 count:9];
      v41 = apply1DConvolution(inputImage, v36, 0.0, 1u, 0);
      v42 = apply1DConvolution(v41, v40, v26, 0, 0);
    }

    else
    {
      if (v8)
      {
        v43 = &CI::_convolutionrgb5x5;
      }

      else
      {
        v43 = &CI::_convolution5x5;
      }

      v50 = [CIKernel kernelWithInternalRepresentation:v43];
      v49 = [CIVector vectorWithX:v52[0] Y:v52[1] Z:v52[2] W:v52[3]];
      v48 = [CIVector vectorWithX:v52[4] Y:v52[5] Z:v52[6] W:v52[7]];
      v51 = v8;
      v8 = [CIVector vectorWithX:v52[8] Y:v52[9] Z:v52[10] W:v52[11]];
      v44 = [CIVector vectorWithX:v52[12] Y:v52[13] Z:v52[14] W:v52[15]];
      v45 = [CIVector vectorWithX:v52[16] Y:v52[17] Z:v52[18] W:v52[19]];
      v46 = [CIVector vectorWithX:v52[20] Y:v52[21] Z:v52[22] W:v52[23]];
      v47 = [CIVector vectorWithX:v52[24] Y:v26 Z:1.0 W:1.0];
      v53[0] = inputImage;
      v53[1] = v49;
      v53[2] = v48;
      v53[3] = v8;
      LOBYTE(v8) = v51;
      v53[4] = v44;
      v53[5] = v45;
      v53[6] = v46;
      v53[7] = v47;
      v42 = -[CIKernel applyWithExtent:roiCallback:arguments:](v50, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_116, [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:8], x, y, width, height);
    }

    v6 = v42;
    if (!((CI_ENABLE_MPS() == 0) | v8 & 1))
    {
      return [CIImage imageForRenderingWithMPS:[CIConvolutionProcessor applyConToImage:self->inputImage width:5 height:5 bias:self->inputWeights weights:v26] orNonMPS:v6];
    }

    return v6;
  }

  v4 = self->inputImage;

  return v4;
}

@end
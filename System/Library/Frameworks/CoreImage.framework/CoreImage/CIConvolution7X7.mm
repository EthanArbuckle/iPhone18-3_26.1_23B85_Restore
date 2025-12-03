@interface CIConvolution7X7
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIConvolution7X7

+ (id)customAttributes
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", &+[CIConvolution7X7 customAttributes]::default_values, 49);
  v3 = [objc_msgSend(objc_opt_class() "description")];
  v13[0] = @"CIAttributeFilterCategories";
  v12[0] = @"CICategoryStylize";
  v12[1] = @"CICategoryVideo";
  v12[2] = @"CICategoryStillImage";
  v12[3] = @"CICategoryHighDynamicRange";
  v12[4] = @"CICategoryBuiltIn";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v5 = @"9";
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
    if (v7 == 48)
    {
      break;
    }

    ++v7;
    v9 = v8 == 23 ? 1.0 : 0.0;
    [(CIVector *)inputWeights valueAtIndex:v8 + 1];
  }

  while (v10 == v9);
  return v8 > 0x2F;
}

- (id)outputImage
{
  v65 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputWeights = self->inputWeights;
  if (!inputWeights)
  {
    return 0;
  }

  if ([(CIVector *)inputWeights count]!= 49)
  {
    [MEMORY[0x1E695DF30] raise:@"CIConvolutionWeights" format:@"CIConvolution7X7 expects inputWeights to be a length-49 CIVector"];
  }

  if (![(CIConvolution7X7 *)self _isIdentity])
  {
    LODWORD(v7) = [objc_msgSend(objc_opt_class() "description")];
    _values = [(CIVector *)self->inputWeights _values];
    v9 = 0;
    v10 = 0.0;
    LODWORD(v11) = -1;
    v12 = _values;
    v13 = -1;
    do
    {
      for (i = 0; i != 7; ++i)
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
      v12 += 7;
    }

    while (v9 != 7);
    v16 = 0;
    v17 = &_values[7 * v11];
    v18 = *(v17 + 1);
    v63[0] = *v17;
    v63[1] = v18;
    v63[2] = *(v17 + 2);
    v64 = *(v17 + 6);
    v19 = &_values[v13];
    do
    {
      v20 = *v19;
      v19 += 7;
      v62[v16++] = v20;
    }

    while (v16 != 7);
    for (j = 0; j != 56; j += 8)
    {
      *(v63 + j) = *(v63 + j) / v10;
    }

    v22 = 0;
    v23 = 0;
    while (v22 == v11)
    {
LABEL_27:
      v23 = v22 > 5;
      _values += 7;
      if (++v22 == 7)
      {
        v23 = 1;
        goto LABEL_29;
      }
    }

    v24 = 0;
    while (fabs(_values[v24] - *(v63 + v24 * 8) * v62[v22]) <= 0.000001)
    {
      if (++v24 == 7)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    convert_weights(self->inputWeights, v58, 7u, 7u);
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
      v68 = CGRectInset(v67, -3.0, -3.0);
      x = v68.origin.x;
      y = v68.origin.y;
      width = v68.size.width;
      height = v68.size.height;
    }

    inputImage = self->inputImage;
    if (v23)
    {
      v61 = 0;
      memset(v60, 0, sizeof(v60));
      v32 = v63;
      v33 = 8;
      v34 = sqrt(v10);
      do
      {
        v35 = *v32++;
        *&v60[v33] = v34 * v35;
        v33 += 8;
      }

      while (v33 != 64);
      v36 = [CIVector vectorWithValues:v60 count:9];
      v37 = v62;
      for (k = 8; k != 64; k += 8)
      {
        v39 = *v37++;
        *&v60[k] = v39 / v34;
      }

      v40 = [CIVector vectorWithValues:v60 count:9];
      v41 = apply1DConvolution(inputImage, v36, 0.0, 1u, 0);
      v42 = apply1DConvolution(v41, v40, v26, 0, 0);
    }

    else
    {
      if (v7)
      {
        v43 = &CI::_convolutionrgb7x7;
      }

      else
      {
        v43 = &CI::_convolution7x7;
      }

      v57 = [CIKernel kernelWithInternalRepresentation:v43];
      v56 = [CIVector vectorWithX:v58[0] Y:v58[1] Z:v58[2] W:v58[3]];
      v55 = [CIVector vectorWithX:v58[4] Y:v58[5] Z:v58[6] W:v58[7]];
      v54 = [CIVector vectorWithX:v58[8] Y:v58[9] Z:v58[10] W:v58[11]];
      v53 = [CIVector vectorWithX:v58[12] Y:v58[13] Z:v58[14] W:v58[15]];
      v52 = [CIVector vectorWithX:v58[16] Y:v58[17] Z:v58[18] W:v58[19]];
      v51 = [CIVector vectorWithX:v58[20] Y:v58[21] Z:v58[22] W:v58[23]];
      v50 = [CIVector vectorWithX:v58[24] Y:v58[25] Z:v58[26] W:v58[27]];
      v49 = [CIVector vectorWithX:v58[28] Y:v58[29] Z:v58[30] W:v58[31]];
      v48 = [CIVector vectorWithX:v58[32] Y:v58[33] Z:v58[34] W:v58[35]];
      v44 = v7;
      v7 = [CIVector vectorWithX:v58[36] Y:v58[37] Z:v58[38] W:v58[39]];
      v45 = [CIVector vectorWithX:v58[40] Y:v58[41] Z:v58[42] W:v58[43]];
      v46 = [CIVector vectorWithX:v58[44] Y:v58[45] Z:v58[46] W:v58[47]];
      v47 = [CIVector vectorWithX:v58[48] Y:v26 Z:1.0 W:1.0];
      v59[0] = inputImage;
      v59[1] = v56;
      v59[2] = v55;
      v59[3] = v54;
      v59[4] = v53;
      v59[5] = v52;
      v59[6] = v51;
      v59[7] = v50;
      v59[8] = v49;
      v59[9] = v48;
      v59[10] = v7;
      v59[11] = v45;
      LOBYTE(v7) = v44;
      v59[12] = v46;
      v59[13] = v47;
      v42 = -[CIKernel applyWithExtent:roiCallback:arguments:](v57, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_132, [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:14], x, y, width, height);
    }

    v6 = v42;
    if (!((CI_ENABLE_MPS() == 0) | v7 & 1))
    {
      return [CIImage imageForRenderingWithMPS:[CIConvolutionProcessor applyConToImage:self->inputImage width:7 height:7 bias:self->inputWeights weights:v26] orNonMPS:v6];
    }

    return v6;
  }

  v4 = self->inputImage;

  return v4;
}

@end
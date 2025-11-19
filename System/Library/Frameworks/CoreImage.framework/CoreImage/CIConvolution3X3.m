@interface CIConvolution3X3
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIConvolution3X3

+ (id)customAttributes
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", &+[CIConvolution3X3 customAttributes]::default_values, 9);
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
    if (v7 == 8)
    {
      break;
    }

    ++v7;
    v9 = v8 == 3 ? 1.0 : 0.0;
    [(CIVector *)inputWeights valueAtIndex:v8 + 1];
  }

  while (v10 == v9);
  return v8 > 7;
}

- (id)outputImage
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputWeights = self->inputWeights;
  if (!inputWeights)
  {
    return 0;
  }

  if ([(CIVector *)inputWeights count]!= 9)
  {
    [MEMORY[0x1E695DF30] raise:@"CIConvolutionWeights" format:@"CIConvolution3X3 expects inputWeights to be a length-9 CIVector"];
  }

  if (![(CIConvolution3X3 *)self _isIdentity])
  {
    [(NSNumber *)self->inputBias doubleValue];
    v8 = v7;
    v9 = [objc_msgSend(objc_opt_class() "description")];
    if (fabs(v8) >= 1.0e-10)
    {
      x = *MEMORY[0x1E695F040];
      y = *(MEMORY[0x1E695F040] + 8);
      width = *(MEMORY[0x1E695F040] + 16);
      height = *(MEMORY[0x1E695F040] + 24);
    }

    else
    {
      [(CIImage *)self->inputImage extent];
      v48 = CGRectInset(v47, -1.0, -1.0);
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
    }

    v14 = [(CIVector *)self->inputWeights _values];
    v17 = *v14;
    if (*v14 != v14[2])
    {
      goto LABEL_34;
    }

    if (v17 != v14[6])
    {
      goto LABEL_34;
    }

    if (v17 != v14[8])
    {
      goto LABEL_34;
    }

    v18 = v14[1];
    if (v18 != v14[3])
    {
      goto LABEL_34;
    }

    if (v18 != v14[5])
    {
      goto LABEL_34;
    }

    v15.i64[0] = v14[7];
    if (v18 != *v15.i64)
    {
      goto LABEL_34;
    }

    *v16.i32 = v17;
    v15.i32[0] = 1.0;
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    v20 = vbslq_s8(v19, v15, v16);
    v21 = *v16.i32 == 0.0 ? 0.0 : *v20.i32;
    *v20.i32 = v18;
    v22 = vbslq_s8(v19, v15, v20);
    v23 = *v20.i32 == 0.0 ? 0.0 : *v22.i32;
    if (v21 != v23)
    {
      goto LABEL_34;
    }

    v24 = v14[4];
    *v22.i32 = v24;
    LODWORD(v25) = vbslq_s8(v19, v15, v22).u32[0];
    if (*v22.i32 == 0.0)
    {
      v25 = 0.0;
    }

    if (v23 == v25 && (v26 = v24 + v17 * 4.0 + v18 * 4.0, fabs(v26) > 0.00001) && ((v27 = v18 * v18 - v24 * v17, v27 < 0.0) && (v28 = 0.0, v26 * (v26 * 0.000001) > -v27) || (v28 = v27, v27 >= 0.0)))
    {
      v35 = v26 * 0.25;
      v36 = v18 + v17 * 2.0;
      v37 = sqrt(v28);
      v38 = (v36 + v37 + v36 + v37) / v26;
      v39 = (v36 - v37 + v36 - v37) / v26;
      if (v9)
      {
        v40 = &CI::_convrgb3x3sym;
      }

      else
      {
        v40 = &CI::_conv3x3sym;
      }

      v41 = [CIKernel kernelWithInternalRepresentation:v40];
      v42 = [CIVector vectorWithX:v38 Y:v39 Z:v35 W:v8];
      v45[0] = self->inputImage;
      v45[1] = v42;
      return -[CIKernel applyWithExtent:roiCallback:arguments:](v41, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_16, [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2], x, y, width, height);
    }

    else
    {
LABEL_34:
      if (v9)
      {
        v29 = &CI::_convrgb3x3;
      }

      else
      {
        v29 = &CI::_conv3x3;
      }

      v30 = [CIKernel kernelWithInternalRepresentation:v29, v17];
      convert_weights(self->inputWeights, v43, 3u, 3u);
      v31 = [CIVector vectorWithX:v43[0] Y:v43[1] Z:v43[2] W:v43[3]];
      v32 = [CIVector vectorWithX:v43[4] Y:v43[5] Z:v43[6] W:v43[7]];
      v33 = [CIVector vectorWithX:v43[8] Y:v8 Z:1.0 W:1.0];
      v44[0] = self->inputImage;
      v44[1] = v31;
      v44[2] = v32;
      v44[3] = v33;
      v6 = -[CIKernel applyWithExtent:roiCallback:arguments:](v30, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_85, [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4], x, y, width, height);
      if ((CI_ENABLE_MPS() == 0) | v9 & 1)
      {
        return v6;
      }

      return [CIImage imageForRenderingWithMPS:[CIConvolutionProcessor applyConToImage:self->inputImage width:3 height:3 bias:self->inputWeights weights:v8] orNonMPS:v6];
    }
  }

  v4 = self->inputImage;

  return v4;
}

@end
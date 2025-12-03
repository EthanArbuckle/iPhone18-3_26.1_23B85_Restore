@interface CIKaleidoscope
+ (id)customAttributes;
- (CGRect)_outputExtent;
- (id)outputImage;
@end

@implementation CIKaleidoscope

- (CGRect)_outputExtent
{
  [(NSNumber *)self->inputAngle floatValue];
  v4 = v3;
  v5 = cosf(v3);
  v6 = 2 * [(NSNumber *)self->inputCount intValue];
  if (v6 <= 2)
  {
    v6 = 2;
  }

  v7 = 6.28318531 / v6;
  v8 = v4 + v7;
  v44 = sinf(v4 + v7);
  [(CIImage *)self->inputImage extent];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  v13 = MEMORY[0x1E695F040];
  if (CGRectEqualToRect(v49, *MEMORY[0x1E695F040]))
  {
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
  }

  else
  {
    v43 = v5;
    v18 = cosf(v8);
    v19 = sinf(v4);
    [(CIVector *)self->inputCenter X];
    v21 = v20;
    [(CIVector *)self->inputCenter Y];
    v23 = v22;
    v24 = -v19;
    v25 = -v18;
    v41 = y;
    v26 = x + width;
    v27 = x;
    v28 = y + height;
    v47 = v28;
    v48 = v27;
    v29 = v26;
    v45 = v28;
    v46 = v29;
    v30 = v21;
    v42 = v24;
    if (ClipSegmentToHalfplane(v27, v28, v29, v28, v21, v23, v24, v43, &v48, &v47, &v46, &v45))
    {
      v31 = ClipSegmentToHalfplane(v48, v47, v46, v45, v21, v23, v44, v25, &v48, &v47, &v46, &v45);
      v32 = 0.0;
      if (v31)
      {
        v32 = fmaxf(sqrtf(((v47 - v23) * (v47 - v23)) + ((v48 - v30) * (v48 - v30))), 0.0);
        v33 = sqrtf(((v45 - v23) * (v45 - v23)) + ((v46 - v30) * (v46 - v30)));
        if (v33 > v32)
        {
          v32 = v33;
        }
      }
    }

    else
    {
      v32 = 0.0;
    }

    v47 = v28;
    v48 = v29;
    v34 = y;
    v45 = v34;
    v46 = v29;
    if (ClipSegmentToHalfplane(v29, v28, v29, v34, v30, v23, v42, v43, &v48, &v47, &v46, &v45) && ClipSegmentToHalfplane(v48, v47, v46, v45, v30, v23, v44, v25, &v48, &v47, &v46, &v45))
    {
      v35 = sqrtf(((v47 - v23) * (v47 - v23)) + ((v48 - v30) * (v48 - v30)));
      if (v35 > v32)
      {
        v32 = v35;
      }

      v36 = sqrtf(((v45 - v23) * (v45 - v23)) + ((v46 - v30) * (v46 - v30)));
      if (v36 > v32)
      {
        v32 = v36;
      }
    }

    v47 = v41;
    v48 = v29;
    v45 = v41;
    v46 = v27;
    if (ClipSegmentToHalfplane(v29, v34, v27, v34, v30, v23, v42, v43, &v48, &v47, &v46, &v45) && ClipSegmentToHalfplane(v48, v47, v46, v45, v30, v23, v44, v25, &v48, &v47, &v46, &v45))
    {
      v37 = sqrtf(((v47 - v23) * (v47 - v23)) + ((v48 - v30) * (v48 - v30)));
      if (v37 > v32)
      {
        v32 = v37;
      }

      v38 = sqrtf(((v45 - v23) * (v45 - v23)) + ((v46 - v30) * (v46 - v30)));
      if (v38 > v32)
      {
        v32 = v38;
      }
    }

    v47 = v41;
    v48 = v27;
    v45 = v28;
    v46 = v27;
    if (ClipSegmentToHalfplane(v27, v34, v27, v28, v30, v23, v42, v43, &v48, &v47, &v46, &v45) && ClipSegmentToHalfplane(v48, v47, v46, v45, v30, v23, v44, v25, &v48, &v47, &v46, &v45))
    {
      v39 = sqrtf(((v47 - v23) * (v47 - v23)) + ((v48 - v30) * (v48 - v30)));
      if (v39 > v32)
      {
        v32 = v39;
      }

      v40 = sqrtf(((v45 - v23) * (v45 - v23)) + ((v46 - v30) * (v46 - v30)));
      if (v40 > v32)
      {
        v32 = v40;
      }
    }

    v14 = (v30 - v32);
    v15 = (v23 - v32);
    v16 = v32 + v32;
    v17 = v16;
  }

  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)outputImage
{
  v36[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(CIVector *)self->inputCenter X];
  v4 = v3;
  [(CIVector *)self->inputCenter Y];
  v6 = v5;
  [(NSNumber *)self->inputAngle floatValue];
  v8 = v7;
  v9 = __sincosf_stret(v7);
  [(CIImage *)self->inputImage extent];
  if (!CGRectIsInfinite(v37))
  {
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
    [(CIImage *)self->inputImage extent];
  }

  cosval = v9.__cosval;
  v11 = -v9.__sinval;
  v12 = [CIVector vectorWithX:cosval Y:v9.__sinval Z:v11 W:cosval];
  v13 = [CIVector vectorWithX:cosval Y:v11 Z:v9.__sinval W:cosval];
  [(NSNumber *)self->inputCount floatValue];
  v15 = fmax(floorf(v14), 1.0);
  v16 = v15;
  *&cosval = 6.28318531 / v16;
  v17 = v16 / 6.28318531;
  [(CIVector *)self->inputCenter X];
  v19 = v18;
  [(CIVector *)self->inputCenter Y];
  v21 = [CIVector vectorWithX:v19 Y:v20 Z:*&cosval W:v17];
  v22 = 2 * [(NSNumber *)self->inputCount intValue];
  if (v22 <= 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22;
  }

  [(CIKaleidoscope *)self _outputExtent];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  _kernel = [(CIKaleidoscope *)self _kernel];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __29__CIKaleidoscope_outputImage__block_invoke;
  v35[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v35[4] = __PAIR64__(LODWORD(v4), v23);
  v35[5] = __PAIR64__(LODWORD(v8), LODWORD(v6));
  inputImage = self->inputImage;
  v36[0] = v21;
  v36[1] = v12;
  v36[2] = v13;
  return [_kernel applyWithExtent:v35 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v36, 3, MEMORY[0x1E69E9820], 3221225472, __29__CIKaleidoscope_outputImage__block_invoke, &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, __PAIR64__(LODWORD(v4), v23), __PAIR64__(LODWORD(v8), LODWORD(v6))), v25, v27, v29, v31}];
}

double __29__CIKaleidoscope_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = *(a1 + 36);
  v10 = *(a1 + 40);
  v12 = *(a1 + 44);
  v13 = __sincosf_stret(v12);
  v14 = 6.28318531 / *(a1 + 32);
  v50 = v12;
  v15 = v12 + v14;
  v16 = __sincosf_stret(v15);
  v17 = a2 - v11;
  v18 = a3 + a5 - v10;
  v19 = v18 * v18;
  v20 = sqrtf(v19 + (v17 * v17));
  v21 = a2 + a4 - v11;
  v22 = sqrtf(v19 + (v21 * v21));
  if (v22 <= v20)
  {
    v22 = v20;
  }

  v23 = a3 - v10;
  v24 = v23 * v23;
  v25 = sqrtf(v24 + (v17 * v17));
  if (v25 > v22)
  {
    v22 = v25;
  }

  v26 = sqrtf(v24 + (v21 * v21));
  if (v26 <= v22)
  {
    v27 = v22;
  }

  else
  {
    v27 = v26;
  }

  v28 = v11 + (v13.__cosval * v27);
  v29 = v10 + (v13.__sinval * v27);
  v30 = v11;
  if (v28 >= v11)
  {
    v31 = v11;
    if (v28 > v11)
    {
      v30 = v11 + (v13.__cosval * v27);
      v31 = v11;
    }
  }

  else
  {
    v31 = v11 + (v13.__cosval * v27);
  }

  v32 = v10;
  if (v29 >= v10)
  {
    v33 = v10;
    if (v29 > v10)
    {
      v32 = v10 + (v13.__sinval * v27);
      v33 = v10;
    }
  }

  else
  {
    v33 = v10 + (v13.__sinval * v27);
  }

  v34 = v11 + (v16.__cosval * v27);
  v35 = v10 + (v16.__sinval * v27);
  if (v34 >= v31)
  {
    if (v34 > v30)
    {
      v30 = v11 + (v16.__cosval * v27);
    }
  }

  else
  {
    v31 = v11 + (v16.__cosval * v27);
  }

  if (v35 >= v33)
  {
    if (v35 > v32)
    {
      v32 = v10 + (v16.__sinval * v27);
    }
  }

  else
  {
    v33 = v10 + (v16.__sinval * v27);
  }

  v36 = vcvtmd_s64_f64(v50 / 1.57079633);
  v37 = vcvtmd_s64_f64(v15 / 1.57079633);
  v38 = __OFSUB__(v37, v36);
  v39 = v37 - v36;
  if (!((v39 < 0) ^ v38 | (v39 == 0)))
  {
    v40 = v10 - v27;
    v41 = v11 - v27;
    v42 = v10 + v27;
    v43 = v36 + 1;
    v44 = v11 + v27;
    do
    {
      if (v41 < v31)
      {
        v45 = v41;
      }

      else
      {
        v45 = v31;
      }

      if (v40 < v33)
      {
        v46 = v40;
      }

      else
      {
        v46 = v33;
      }

      if ((v43 & 3) == 2)
      {
        v46 = v33;
      }

      else
      {
        v45 = v31;
      }

      if (v44 > v30)
      {
        v47 = v44;
      }

      else
      {
        v47 = v30;
      }

      if (v42 > v32)
      {
        v48 = v42;
      }

      else
      {
        v48 = v32;
      }

      if ((v43 & 3) != 0)
      {
        v47 = v30;
      }

      else
      {
        v48 = v32;
      }

      if ((v43 & 3u) > 1)
      {
        v33 = v46;
        v31 = v45;
      }

      else
      {
        v30 = v47;
        v32 = v48;
      }

      ++v43;
      --v39;
    }

    while (v39);
  }

  return v31 + -1.0;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryTileEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputCount";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1083E38;
  v4[1] = &unk_1F1083E38;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083E48;
  v4[3] = &unk_1F1083E58;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end
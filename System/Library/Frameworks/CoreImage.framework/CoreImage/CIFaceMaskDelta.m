@interface CIFaceMaskDelta
- (BOOL)_isValidFace:(unsigned int)a3;
- (double)_landmarksToDist:(unsigned int)a3 minimumDistance:(float)a4 maximumDistance:(float)a5 scalingFactor:(float)a6 offset:(float)a7;
- (float)distanceToAdd;
- (id)outputImage;
- (unsigned)findMostProminentFace;
@end

@implementation CIFaceMaskDelta

- (double)_landmarksToDist:(unsigned int)a3 minimumDistance:(float)a4 maximumDistance:(float)a5 scalingFactor:(float)a6 offset:(float)a7
{
  v12 = a3;
  [(CIVector *)self->inputFacesLeftEyeX valueAtIndex:a3];
  v36 = v13;
  [(CIVector *)self->inputFacesLeftEyeY valueAtIndex:v12];
  v14.f64[0] = v36;
  v14.f64[1] = v15;
  v16 = vcvt_f32_f64(v14);
  [(CIVector *)self->inputFacesRightEyeX valueAtIndex:v12];
  v37 = v17;
  [(CIVector *)self->inputFacesRightEyeY valueAtIndex:v12];
  v18.f64[0] = v37;
  v18.f64[1] = v19;
  v20 = vcvt_f32_f64(v18);
  [(CIVector *)self->inputFacesCenterX valueAtIndex:v12];
  v38 = v21;
  [(CIVector *)self->inputFacesCenterY valueAtIndex:v12];
  v22.f64[0] = v38;
  v22.f64[1] = v23;
  v24 = vcvt_f32_f64(v22);
  [(CIVector *)self->inputFacesChinX valueAtIndex:v12];
  v39 = v25;
  [(CIVector *)self->inputFacesChinY valueAtIndex:v12];
  v26.f64[0] = v39;
  v26.f64[1] = v27;
  v28 = vcvt_f32_f64(v26);
  *&v26.f64[0] = vsub_f32(v16, v20);
  *&v26.f64[0] = vmul_f32(*&v26.f64[0], *&v26.f64[0]);
  v29 = vsub_f32(v16, v24);
  v30 = vsub_f32(v20, v24);
  v31 = vsub_f32(v24, v28);
  v32 = vmul_f32(v31, v31);
  *&v26.f64[0] = vmaxnm_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&v26.f64[0], v32), vzip2_s32(*&v26.f64[0], v32))), vdup_n_s32(0x3A83126Fu));
  v33 = vsub_f32(v16, v28);
  v34 = vsub_f32(v20, v28);
  result = a7 + (fmaxf(sqrtf(vaddv_f32(vmul_f32(v29, v29))), 0.001) * -3.3737 + *v26.f64 * -12.1925 + fmaxf(sqrtf(vaddv_f32(vmul_f32(v30, v30))), 0.001) * -3.025 + *(v26.f64 + 1) * -11.9485 + fmaxf(sqrtf(vaddv_f32(vmul_f32(v33, v33))), 0.001) * 1.6734 + fmaxf(sqrtf(vaddv_f32(vmul_f32(v34, v34))), 0.001) * 1.8423 + vmuls_lane_f32(*v26.f64, *&v26.f64[0], 1) * 47.7061 + 3.1214) * a6;
  if (result >= a5)
  {
    result = a5;
  }

  if (result <= a4)
  {
    return a4;
  }

  return result;
}

- (BOOL)_isValidFace:(unsigned int)a3
{
  inputFacesCenterX = self->inputFacesCenterX;
  if (inputFacesCenterX)
  {
    if ([(CIVector *)inputFacesCenterX count]<= a3)
    {
      goto LABEL_25;
    }

    inputFacesCenterX = self->inputFacesCenterY;
    if (inputFacesCenterX)
    {
      if ([(CIVector *)inputFacesCenterX count]<= a3)
      {
        goto LABEL_25;
      }

      inputFacesCenterX = self->inputFacesChinX;
      if (inputFacesCenterX)
      {
        if ([(CIVector *)inputFacesCenterX count]<= a3)
        {
          goto LABEL_25;
        }

        inputFacesCenterX = self->inputFacesChinY;
        if (inputFacesCenterX)
        {
          if ([(CIVector *)inputFacesCenterX count]<= a3)
          {
            goto LABEL_25;
          }

          inputFacesCenterX = self->inputFacesLeftEyeX;
          if (inputFacesCenterX)
          {
            if ([(CIVector *)inputFacesCenterX count]<= a3)
            {
              goto LABEL_25;
            }

            inputFacesCenterX = self->inputFacesLeftEyeY;
            if (inputFacesCenterX)
            {
              if ([(CIVector *)inputFacesCenterX count]<= a3)
              {
                goto LABEL_25;
              }

              inputFacesCenterX = self->inputFacesRightEyeX;
              if (inputFacesCenterX)
              {
                if ([(CIVector *)inputFacesCenterX count]<= a3)
                {
                  goto LABEL_25;
                }

                inputFacesCenterX = self->inputFacesRightEyeY;
                if (inputFacesCenterX)
                {
                  if ([(CIVector *)inputFacesCenterX count]> a3)
                  {
                    [(CIVector *)self->inputFacesCenterX valueAtIndex:a3];
                    if (v6 != -1.0)
                    {
                      [(CIVector *)self->inputFacesCenterY valueAtIndex:a3];
                      if (v7 != -1.0)
                      {
                        [(CIVector *)self->inputFacesChinX valueAtIndex:a3];
                        if (v8 != -1.0)
                        {
                          [(CIVector *)self->inputFacesChinY valueAtIndex:a3];
                          if (v9 != -1.0)
                          {
                            [(CIVector *)self->inputFacesLeftEyeX valueAtIndex:a3];
                            if (v10 != -1.0)
                            {
                              [(CIVector *)self->inputFacesLeftEyeY valueAtIndex:a3];
                              if (v11 != -1.0)
                              {
                                [(CIVector *)self->inputFacesRightEyeX valueAtIndex:a3];
                                if (v12 != -1.0)
                                {
                                  [(CIVector *)self->inputFacesRightEyeY valueAtIndex:a3];
                                  LOBYTE(inputFacesCenterX) = v13 != -1.0;
                                  return inputFacesCenterX;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_25:
                  LOBYTE(inputFacesCenterX) = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return inputFacesCenterX;
}

- (unsigned)findMostProminentFace
{
  [(CIVector *)self->inputFocusRect CGRectValue];
  r1.origin.x = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(CIFaceMaskDelta *)self _isValidFace:0];
  BYTE4(r1.origin.y) = v10;
  v11 = [(CIFaceMaskDelta *)self _isValidFace:1];
  BYTE5(r1.origin.y) = v11;
  v12 = [(CIFaceMaskDelta *)self _isValidFace:2];
  BYTE6(r1.origin.y) = v12;
  v13 = [(CIFaceMaskDelta *)self _isValidFace:3];
  v14 = 0;
  HIBYTE(r1.origin.y) = v13;
  while ((*(&r1.origin.y + v14 + 4) & 1) == 0)
  {
    if (++v14 == 4)
    {
      LODWORD(v14) = 0;
      break;
    }
  }

  if ((v11 + v10 + v12 + v13) >= 2)
  {
    v15 = 0;
    v16 = 0.0;
    do
    {
      if (*(&r1.origin.y + v15 + 4) == 1)
      {
        [(CIVector *)self->inputFacesChinX valueAtIndex:v15];
        [(CIVector *)self->inputFacesChinY valueAtIndex:v15];
        v18 = v17;
        [(CIVector *)self->inputFacesLeftEyeX valueAtIndex:v15];
        v20 = v19;
        [(CIVector *)self->inputFacesLeftEyeY valueAtIndex:v15];
        v22 = v21;
        [(CIVector *)self->inputFacesRightEyeX valueAtIndex:v15];
        v24 = v23;
        [(CIVector *)self->inputFacesRightEyeY valueAtIndex:v15];
        if (v25 <= v22)
        {
          v25 = v22;
        }

        v32.size.height = v25 - v18;
        v30.origin.x = r1.origin.x;
        v30.origin.y = v5;
        v30.size.width = v7;
        v30.size.height = v9;
        v32.origin.x = v20;
        v32.origin.y = v18;
        v32.size.width = v24 - v20;
        v31 = CGRectIntersection(v30, v32);
        width = v31.size.width;
        height = v31.size.height;
        if (!CGRectIsNull(v31) && width * height > v16)
        {
          v16 = width * height;
          LODWORD(v14) = v15;
        }
      }

      ++v15;
    }

    while (v15 != 4);
  }

  return v14;
}

- (float)distanceToAdd
{
  v3 = [(CIFaceMaskDelta *)self findMostProminentFace];
  [(NSNumber *)self->inputSubjectDistanceMinimumFocusDistance floatValue];
  v5 = v4;
  [(NSNumber *)self->inputSubjectDistanceMaximumFocusDistance floatValue];
  v7 = v6;
  [(NSNumber *)self->inputSubjectDistanceScalingFactor floatValue];
  v9 = v8;
  [(NSNumber *)self->inputSubjectDistanceOffset floatValue];
  LODWORD(v11) = v10;
  LODWORD(v12) = v5;
  LODWORD(v13) = v7;
  LODWORD(v14) = v9;
  [(CIFaceMaskDelta *)self _landmarksToDist:v3 minimumDistance:v12 maximumDistance:v13 scalingFactor:v14 offset:v11];
  v16 = v15;
  [(NSNumber *)self->inputDistanceAdd floatValue];
  v18 = v17;
  [(NSNumber *)self->inputSubjectDistanceMinimumFocusDistance floatValue];
  v20 = fmaxf(fmaxf(v19, v16), 0.00001);
  return (1.0 / v20) - (1.0 / (v18 + v20));
}

- (id)outputImage
{
  v54 = *MEMORY[0x1E69E9840];
  result = +[CIImage emptyImage];
  if (self->inputParameterImage)
  {
    [(CIVector *)self->inputImageSize X];
    v5 = v4;
    [(CIVector *)self->inputImageSize Y];
    v7 = v6;
    if ([CIFaceMaskDelta outputImage]::onceToken != -1)
    {
      [CIFaceMaskDelta outputImage];
    }

    v8 = [(CIVector *)self->inputFacesChinX count];
    if (v8 >= [(CIVector *)self->inputFacesCenterX count])
    {
      v9 = 96;
    }

    else
    {
      v9 = 112;
    }

    v10 = [*(&self->super.super.isa + v9) count];
    v11 = [(CIVector *)self->inputFacesChinY count];
    if (v11 >= [(CIVector *)self->inputFacesCenterY count])
    {
      v12 = 104;
    }

    else
    {
      v12 = 120;
    }

    v13 = [*(&self->super.super.isa + v12) count];
    v52 = xmmword_19CF266E0;
    v53 = xmmword_19CF266E0;
    if (v10 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v10;
    }

    if (v15)
    {
      v16 = v13;
      for (i = 0; i != v15; ++i)
      {
        if (i < v10)
        {
          [(CIVector *)self->inputFacesChinX valueAtIndex:i];
          v19 = v18;
          [(CIVector *)self->inputFacesCenterX valueAtIndex:i];
          *&v20 = v19 - v20;
          *(&v53 + i) = LODWORD(v20);
        }

        if (i < v16)
        {
          [(CIVector *)self->inputFacesChinY valueAtIndex:i];
          v22 = v21;
          [(CIVector *)self->inputFacesCenterY valueAtIndex:i];
          v14 = v7 / v5;
          *&v23 = (v22 - v23) * v14;
          *(&v52 + i) = LODWORD(v23);
        }
      }

      v24 = *&v53;
      v25 = *(&v53 + 1);
      v26 = *(&v53 + 2);
      v27 = *(&v53 + 3);
      v28 = *&v52;
      v29 = *(&v52 + 1);
      v30 = *(&v52 + 2);
      v31 = *(&v52 + 3);
    }

    else
    {
      v31 = -1.0;
      v30 = -1.0;
      v29 = -1.0;
      v28 = -1.0;
      v27 = -1.0;
      v26 = -1.0;
      v25 = -1.0;
      v24 = -1.0;
    }

    v32 = [CIVector vectorWithX:v24 Y:v25 Z:v26 W:v27];
    v33 = [CIVector vectorWithX:v28 Y:v29 Z:v30 W:v31];
    inputFacesCenterX = self->inputFacesCenterX;
    v51[0] = self->inputParameterImage;
    v51[1] = inputFacesCenterX;
    v51[2] = self->inputFacesCenterY;
    *&v35 = v7 / v5;
    v51[3] = [MEMORY[0x1E696AD98] numberWithFloat:v35];
    v51[4] = v32;
    v51[5] = v33;
    v36 = MEMORY[0x1E696AD98];
    SDOFFaceMaskValue(@"chinThetaLimit", self->inputTuningParameters);
    v51[6] = [v36 numberWithFloat:?];
    v37 = MEMORY[0x1E696AD98];
    SDOFFaceMaskValue(@"chinThetaMultip", self->inputTuningParameters);
    v51[7] = [v37 numberWithFloat:?];
    v38 = [CIVector vectorWithX:v5 Y:v7];
    inputSubtractiveMaxBlur = self->inputSubtractiveMaxBlur;
    v51[8] = v38;
    v51[9] = inputSubtractiveMaxBlur;
    inputDistanceAdd = self->inputDistanceAdd;
    v51[10] = self->inputAdditiveMaxBlur;
    v51[11] = inputDistanceAdd;
    inputMaxBlur = self->inputMaxBlur;
    v51[12] = self->inputApertureScaling;
    v51[13] = inputMaxBlur;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:14];
    [(CIImage *)self->inputParameterImage extent];
    v43 = [CIFaceMaskDelta outputImage]::ck;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __30__CIFaceMaskDelta_outputImage__block_invoke_2;
    v48[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v48[4] = v44;
    v48[5] = v45;
    v48[6] = v46;
    v48[7] = v47;
    v49[0] = @"kCIKernelOutputFormat";
    v49[1] = @"kCIImageAlphaOne";
    v50[0] = [MEMORY[0x1E696AD98] numberWithInt:2053];
    v50[1] = MEMORY[0x1E695E118];
    return [v43 applyWithExtent:v48 roiCallback:v42 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v50, v49, 2), 0.0, 0.0, v5, v7}];
  }

  return result;
}

id __30__CIFaceMaskDelta_outputImage__block_invoke()
{
  result = [CIKernel SDOFV2MetalKernelNamed:@"_modifyFaceMask"];
  [CIFaceMaskDelta outputImage]::ck = result;
  return result;
}

@end
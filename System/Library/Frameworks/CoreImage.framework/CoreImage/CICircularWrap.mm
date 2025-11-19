@interface CICircularWrap
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICircularWrap

- (id)outputImage
{
  v78[5] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius floatValue];
  if (fabsf(v3) >= 0.001 && self->inputCenter)
  {
    [(CIImage *)self->inputImage extent];
    v8 = v7;
    result = 0;
    if (v7 <= 20000.0)
    {
      v10 = v6;
      if (v6 <= 20000.0)
      {
        v74 = v5;
        v75 = v4;
        [(NSNumber *)self->inputRadius floatValue];
        if (v11 >= 0.01)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0.01;
        }

        v72 = v10;
        v13 = v10 + v12 + -1.0;
        v71 = -v12;
        [(NSNumber *)self->inputAngle floatValue];
        v73 = v8;
        v15 = (v8 + -1.0) / v12;
        v16 = v14 - v15;
        if (v14 >= v16)
        {
          v17 = v14;
        }

        else
        {
          v17 = v14 - v15;
        }

        v76 = v17;
        if (v14 >= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        v19 = v14 - v18;
        v20 = (v8 + -1.0) / ((v16 - v18) - v19);
        v69 = v20;
        v70 = -(v19 * v20);
        [(CIVector *)self->inputCenter X];
        v22 = v21;
        [(CIVector *)self->inputCenter Y];
        v24 = v23;
        v25 = __sincosf_stret(v18);
        v26 = v22 + (v12 * v25.__cosval);
        v27 = v24 + (v12 * v25.__sinval);
        v68 = v13;
        v28 = v22 + (v13 * v25.__cosval);
        v29 = v24 + (v13 * v25.__sinval);
        if (v28 > v26)
        {
          v30 = v22 + (v13 * v25.__cosval);
        }

        else
        {
          v30 = v22 + (v12 * v25.__cosval);
        }

        if (v28 >= v26)
        {
          v31 = v30;
        }

        else
        {
          v31 = v22 + (v12 * v25.__cosval);
        }

        if (v28 >= v26)
        {
          v32 = v22 + (v12 * v25.__cosval);
        }

        else
        {
          v32 = v28;
        }

        if (v29 > v27)
        {
          v33 = v29;
        }

        else
        {
          v33 = v24 + (v12 * v25.__sinval);
        }

        if (v29 >= v27)
        {
          v34 = v33;
        }

        else
        {
          v34 = v24 + (v12 * v25.__sinval);
        }

        if (v29 >= v27)
        {
          v35 = v24 + (v12 * v25.__sinval);
        }

        else
        {
          v35 = v29;
        }

        v36 = __sincosf_stret(v76);
        v37 = v68;
        v38 = v22 + (v12 * v36.__cosval);
        v39 = v24 + (v12 * v36.__sinval);
        if (v38 > v31)
        {
          v40 = v22 + (v12 * v36.__cosval);
        }

        else
        {
          v40 = v31;
        }

        if (v38 >= v32)
        {
          v38 = v32;
        }

        else
        {
          v40 = v31;
        }

        if (v39 > v34)
        {
          v41 = v24 + (v12 * v36.__sinval);
        }

        else
        {
          v41 = v34;
        }

        if (v39 >= v35)
        {
          v39 = v35;
        }

        else
        {
          v41 = v34;
        }

        v42 = v22 + (v68 * v36.__cosval);
        v43 = v24 + (v68 * v36.__sinval);
        if (v42 > v40)
        {
          v44 = v22 + (v68 * v36.__cosval);
        }

        else
        {
          v44 = v40;
        }

        if (v42 >= v38)
        {
          v42 = v38;
        }

        else
        {
          v44 = v40;
        }

        if (v43 > v41)
        {
          v45 = v24 + (v68 * v36.__sinval);
        }

        else
        {
          v45 = v41;
        }

        if (v43 < v39)
        {
          v45 = v41;
        }

        v46 = vcvtpd_s64_f64(v18 / 1.57079633);
        if (v43 < v39)
        {
          v39 = v24 + (v68 * v36.__sinval);
        }

        v47 = vcvtpd_s64_f64(v76 / 1.57079633);
        if (v46 >= v47)
        {
          v52 = v73;
        }

        else
        {
          if (v12 > v68)
          {
            v37 = v12;
          }

          v48 = v24 - v37;
          v49 = v22 - v37;
          v50 = v37 + v24;
          v51 = v37 + v22;
          v52 = v73;
          do
          {
            if ((v46 & 3) == 2)
            {
              v53 = v24;
            }

            else
            {
              v53 = v48;
            }

            if ((v46 & 3) == 2)
            {
              v54 = v49;
            }

            else
            {
              v54 = v22;
            }

            if ((v46 & 3) != 0)
            {
              v55 = v50;
            }

            else
            {
              v55 = v24;
            }

            if ((v46 & 3) != 0)
            {
              v56 = v22;
            }

            else
            {
              v56 = v51;
            }

            if ((v46 & 3u) <= 1)
            {
              v53 = v55;
              v54 = v56;
            }

            if (v54 > v44)
            {
              v57 = v54;
            }

            else
            {
              v57 = v44;
            }

            if (v54 < v42)
            {
              v42 = v54;
            }

            else
            {
              v44 = v57;
            }

            if (v53 > v45)
            {
              v58 = v53;
            }

            else
            {
              v58 = v45;
            }

            if (v53 < v39)
            {
              v39 = v53;
            }

            else
            {
              v45 = v58;
            }

            ++v46;
          }

          while (v47 != v46);
        }

        v60 = v42;
        v61 = v39;
        v62 = (v44 - v42);
        v63 = (v45 - v39);
        v64 = [(CICircularWrap *)self _kernel];
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __29__CICircularWrap_outputImage__block_invoke;
        v77[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v77[4] = v75;
        v77[5] = v74;
        *&v77[6] = v52;
        *&v77[7] = v72;
        inputImage = self->inputImage;
        v78[0] = self->inputCenter;
        v78[1] = [MEMORY[0x1E696AD98] numberWithDouble:v71 + 0.5];
        *&v66 = v69;
        v78[2] = [MEMORY[0x1E696AD98] numberWithFloat:v66];
        v78[3] = [MEMORY[0x1E696AD98] numberWithDouble:v70 + 0.5];
        *&v67 = v18;
        v78[4] = [MEMORY[0x1E696AD98] numberWithFloat:v67];
        return [v64 applyWithExtent:v77 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v78, 5), v60, v61, v62, v63}];
      }
    }
  }

  else
  {
    v59 = self->inputImage;

    return v59;
  }

  return result;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryDistortionEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.5";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F1082E68;
  v4[2] = &unk_1F1082E68;
  v4[3] = &unk_1F1082E78;
  v3[4] = @"CIAttributeDefault";
  v4[4] = &unk_1F1082E88;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end
@interface CIFaceMaskApply
- (id)outputImage;
@end

@implementation CIFaceMaskApply

- (id)outputImage
{
  v92 = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (self->inputParameterImage)
    {
      v4 = [objc_opt_class() _kernel];
      inputImage = self->inputImage;
      if (v4)
      {
        v85 = v4;
        [(CIImage *)inputImage extent];
        v6 = v5;
        [(CIImage *)self->inputImage extent];
        v8 = v7;
        v90 = xmmword_19CF266E0;
        v91 = xmmword_19CF266E0;
        v9 = v7 / v6;
        v10 = [(CIVector *)self->inputFacesChinX count];
        if (v10 >= [(CIVector *)self->inputFacesCenterX count])
        {
          v11 = 96;
        }

        else
        {
          v11 = 112;
        }

        v12 = [*(&self->super.super.isa + v11) count];
        v13 = [(CIVector *)self->inputFacesChinY count];
        if (v13 >= [(CIVector *)self->inputFacesCenterY count])
        {
          v14 = 104;
        }

        else
        {
          v14 = 120;
        }

        v15 = [*(&self->super.super.isa + v14) count];
        v16 = -1.0;
        v17 = -1.0;
        v18 = -1.0;
        if (v12 <= v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = v12;
        }

        v20 = -1.0;
        v21 = -1.0;
        v22 = -1.0;
        v23 = -1.0;
        v24 = -1.0;
        v25 = -1.0;
        if (v19)
        {
          v26 = v15;
          for (i = 0; i != v19; ++i)
          {
            if (i < v12)
            {
              [(CIVector *)self->inputFacesChinX valueAtIndex:i, v25, v24, v23, v22];
              v29 = v28;
              [(CIVector *)self->inputFacesCenterX valueAtIndex:i];
              v25 = v29 - v30;
              *&v25 = v25;
              *(&v91 + i) = LODWORD(v25);
            }

            if (i < v26)
            {
              [(CIVector *)self->inputFacesChinY valueAtIndex:i];
              v32 = v31;
              [(CIVector *)self->inputFacesCenterY valueAtIndex:i];
              v25 = v9 * (v32 - v33);
              *&v25 = v25;
              *(&v90 + i) = LODWORD(v25);
            }
          }

          v25 = *&v91;
          v24 = *(&v91 + 1);
          v23 = *(&v91 + 2);
          v22 = *(&v91 + 3);
          v21 = *&v90;
          v20 = *(&v90 + 1);
          v18 = *(&v90 + 2);
          v17 = *(&v90 + 3);
        }

        v34 = [CIVector vectorWithX:v25 / v6 Y:v24 / v6 Z:v23 / v6 W:v22 / v6];
        v35 = [CIVector vectorWithX:v21 / v8 Y:v20 / v8 Z:v18 / v8 W:v17 / v8];
        [(CIVector *)self->inputFacesCenterX X];
        if (v36 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterX X];
          v16 = v37 / v6;
        }

        [(CIVector *)self->inputFacesCenterX Y];
        v38 = -1.0;
        v39 = -1.0;
        if (v40 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterX Y];
          v39 = v41 / v6;
        }

        [(CIVector *)self->inputFacesCenterX Z];
        if (v42 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterX Z];
          v38 = v43 / v6;
        }

        [(CIVector *)self->inputFacesCenterX W];
        v44 = -1.0;
        v45 = -1.0;
        if (v46 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterX W];
          v45 = v47 / v6;
        }

        v48 = [CIVector vectorWithX:v16 Y:v39 Z:v38 W:v45];
        [(CIVector *)self->inputFacesCenterY X];
        if (v49 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterY X];
          v44 = v50 / v8;
        }

        [(CIVector *)self->inputFacesCenterY Y];
        v51 = -1.0;
        v52 = -1.0;
        if (v53 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterY Y];
          v52 = v54 / v8;
        }

        [(CIVector *)self->inputFacesCenterY Z];
        if (v55 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterY Z];
          v51 = v56 / v8;
        }

        [(CIVector *)self->inputFacesCenterY W];
        v57 = -1.0;
        if (v58 != -1.0)
        {
          [(CIVector *)self->inputFacesCenterY W];
          v57 = v59 / v8;
        }

        v60 = [CIVector vectorWithX:v44 Y:v52 Z:v51 W:v57];
        SDOFFaceMaskValue(@"chinThetaLimit", self->inputTuningParameters);
        v62 = v61;
        SDOFFaceMaskValue(@"chinThetaMultip", self->inputTuningParameters);
        v64 = [CIVector vectorWithX:v62 Y:v63];
        v89[0] = self->inputImage;
        v89[1] = v48;
        v89[2] = v60;
        v89[3] = v34;
        v89[4] = v35;
        v65 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
        inputParameterImage = self->inputParameterImage;
        v89[5] = v65;
        v89[6] = inputParameterImage;
        v89[7] = [CIVector vectorWithX:1.0 / v6 Y:1.0 / v8];
        v89[8] = v64;
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:9];
        [(CIImage *)self->inputParameterImage extent];
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;
        saveImage(self->inputImage, @"/tmp/inputFaceMask-CI.tiff", 0);
        [(CIImage *)self->inputImage extent];
        v77 = v76;
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = __30__CIFaceMaskApply_outputImage__block_invoke;
        v86[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v86[4] = v69;
        v86[5] = v71;
        v86[6] = v73;
        v86[7] = v75;
        v87[0] = @"kCIKernelOutputFormat";
        v87[1] = @"kCIImageAlphaOne";
        v88[0] = [MEMORY[0x1E696AD98] numberWithInt:2053];
        v88[1] = MEMORY[0x1E695E118];
        inputImage = [v85 applyWithExtent:v86 roiCallback:v67 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v88, v87, 2), v77, v79, v81, v83}];
        saveImage(inputImage, @"/tmp/outputFaceMask-CI.tiff", 0);
      }
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

double __30__CIFaceMaskApply_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return *(a1 + 32);
  }

  return result;
}

@end
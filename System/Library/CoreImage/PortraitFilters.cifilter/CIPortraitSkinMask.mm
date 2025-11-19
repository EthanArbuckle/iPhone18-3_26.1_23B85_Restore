@interface CIPortraitSkinMask
- (id)outputImage;
@end

@implementation CIPortraitSkinMask

- (id)outputImage
{
  inputImage = self->_inputImage;
  inputFaceLandmarks = self->_inputFaceLandmarks;
  if (inputFaceLandmarks)
  {
    _ZF = inputImage == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return 0;
  }

  result = [(NSDictionary *)inputFaceLandmarks count];
  if (result)
  {
    [(CIImage *)self->_inputImage extent];
    if (v7 != 0.0 || (v11 = v8, v8 != 0.0))
    {
      sub_4B718();
    }

    v12 = v7;
    v13 = v9;
    v14 = v10;
    v15 = [-[NSDictionary objectForKeyedSubscript:](self->_inputFaceLandmarks objectForKeyedSubscript:{@"orientation", "intValue"}];
    memset(&v64, 0, sizeof(v64));
    v16 = self->_inputImage;
    if (v16)
    {
      [(CIImage *)v16 imageTransformForOrientation:v15];
    }

    v62 = v64;
    memset(&v63, 0, sizeof(v63));
    CGAffineTransformInvert(&v63, &v62);
    v62 = v64;
    v70.origin.x = v12;
    v70.origin.y = v11;
    v70.size.width = v13;
    v70.size.height = v14;
    v71 = CGRectApplyAffineTransform(v70, &v62);
    x = v71.origin.x;
    y = v71.origin.y;
    height = v71.size.height;
    width = v71.size.width;
    sub_27994([(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"faceBoundingBox"], &v62);
    v19.f64[0] = width;
    v62.a = x + v62.a * width;
    v62.b = y + v62.b * height;
    v19.f64[1] = height;
    *&v62.c = vmulq_f64(v19, *&v62.c);
    v20 = [-[NSDictionary objectForKeyedSubscript:](self->_inputFaceLandmarks objectForKeyedSubscript:{@"noseCrest", "objectAtIndex:", 0}];
    sub_27A78(v20, v61.f64, v62.a, v62.b, v62.c, v62.d);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = vaddq_f64(*&v63.tx, vmlaq_n_f64(vmulq_n_f64(*&v63.c, v61.f64[1]), *&v63.a, v61.f64[0]));
    v21 = [(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"faceContour"];
    v22 = [v21 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v22)
    {
      v23 = v22;
      v53 = vdupq_n_s64(0x3810000000000000uLL);
      v55 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      v24 = *v58;
      __asm { FMOV            V0.2D, #2.0 }

      v51 = _Q0;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v58 != v24)
          {
            objc_enumerationMutation(v21);
          }

          sub_27A78(*(*(&v57 + 1) + 8 * i), v56, v62.a, v62.b, v62.c, v62.d);
          v30 = vaddq_f64(*&v63.tx, vmlaq_n_f64(vmulq_n_f64(*&v63.c, v56[1]), *&v63.a, v56[0]));
          v31 = vmlaq_f64(vnegq_f64(v30), v51, v61);
          v53 = vmaxnmq_f64(vmaxnmq_f64(v53, v30), v31);
          v55 = vminnmq_f64(vminnmq_f64(v55, v30), v31);
        }

        v23 = [v21 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v23);
      v32 = v53.f64[0];
      v33 = v55.f64[1];
      v34 = v55.f64[0];
      v35 = v53.f64[1];
    }

    else
    {
      v33 = 3.40282347e38;
      v35 = 1.17549435e-38;
      v32 = 1.17549435e-38;
      v34 = 3.40282347e38;
    }

    v36 = v32 - v34;
    v37 = v36 * 0.200000003;
    v38 = v35 - v33;
    v39 = v38 * 0.200000003;
    v40 = v37;
    v41 = floor(v34 + v40 * -0.5);
    v42 = v39;
    v43 = floor(v33 + v42 * -0.5);
    v44 = ceil(v36 + 1.0 + v40);
    v45 = ceil(v38 + 1.0 + v42);
    v46 = sub_3C4B0(self->_inputFaceLandmarks);
    v67[0] = @"faceROI";
    v68[0] = [CIVector vectorWithCGRect:v41, v43, v44, v45];
    v68[1] = v46;
    v67[1] = @"faceLandmarks";
    v67[2] = @"inputImageExtent";
    v68[2] = [CIVector vectorWithCGRect:v12, v11, v13, v14];
    v67[3] = @"inputImageTransformN1";
    v68[3] = [NSData dataWithBytes:&v64 length:48];
    v67[4] = @"inputImageTransform1N";
    v47 = [NSData dataWithBytes:&v63 length:48];
    v67[5] = @"useMetal";
    v68[4] = v47;
    v68[5] = &__kCFBooleanTrue;
    v48 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:6];
    v49 = [NSMutableDictionary dictionaryWithDictionary:v48];
    [(NSMutableDictionary *)v49 setObject:&__kCFBooleanFalse forKeyedSubscript:@"useMetal"];
    v56[0] = 0.0;
    v66 = inputImage;
    v50 = [CIPortraitSkinMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v66 count:1] inputs:v48 arguments:v56 error:v41, v43, v44, v45];
    v65 = inputImage;
    return [CIImage imageForRenderingWithMetal:v50 orNonMetal:[CIPortraitSkinMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v65 count:1] inputs:v49 arguments:v56 error:v41, v43, v44, v45]];
  }

  return result;
}

@end
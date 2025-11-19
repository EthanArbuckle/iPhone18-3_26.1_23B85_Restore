@interface CIPortraitToothMask
- (id)outputImage;
@end

@implementation CIPortraitToothMask

- (id)outputImage
{
  inputImage = self->_inputImage;
  inputFaceLandmarks = self->_inputFaceLandmarks;
  if (inputFaceLandmarks)
  {
    v5 = inputImage == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  result = [(NSDictionary *)inputFaceLandmarks count];
  if (result)
  {
    [(CIImage *)self->_inputImage extent];
    if (v7 != 0.0 || (v11 = v8, v8 != 0.0))
    {
      sub_4AA50();
    }

    v12 = v7;
    v13 = v9;
    v14 = v10;
    v15 = [-[NSDictionary objectForKeyedSubscript:](self->_inputFaceLandmarks objectForKeyedSubscript:{@"orientation", "intValue"}];
    memset(&v53, 0, sizeof(v53));
    v16 = self->_inputImage;
    if (v16)
    {
      [(CIImage *)v16 imageTransformForOrientation:v15];
    }

    v51 = v53;
    memset(&v52, 0, sizeof(v52));
    CGAffineTransformInvert(&v52, &v51);
    v51 = v53;
    v59.origin.x = v12;
    v59.origin.y = v11;
    v43 = v14;
    v44 = v13;
    v59.size.width = v13;
    v59.size.height = v14;
    v60 = CGRectApplyAffineTransform(v59, &v51);
    x = v60.origin.x;
    y = v60.origin.y;
    height = v60.size.height;
    width = v60.size.width;
    memset(&v51, 0, 32);
    sub_27994([(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"faceBoundingBox"], &v51);
    v19.f64[0] = width;
    v51.a = x + v51.a * width;
    v51.b = y + v51.b * height;
    v19.f64[1] = height;
    *&v51.c = vmulq_f64(v19, *&v51.c);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = [(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"outerLips"];
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v48;
      v24 = 1.17549435e-38;
      v25 = 3.40282347e38;
      v26 = 3.40282347e38;
      v27 = 1.17549435e-38;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v29 = *(*(&v47 + 1) + 8 * i);
          v45 = 0.0;
          v46 = 0.0;
          sub_27A78(v29, &v45, v51.a, v51.b, v51.c, v51.d);
          v30 = v52.tx + v46 * v52.c + v52.a * v45;
          v31 = v52.ty + v46 * v52.d + v52.b * v45;
          v25 = fmin(v25, v30);
          v26 = fmin(v26, v31);
          v24 = fmax(v24, v30);
          v27 = fmax(v27, v31);
        }

        v22 = [v20 countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = 1.17549435e-38;
      v25 = 3.40282347e38;
      v26 = 3.40282347e38;
      v27 = 1.17549435e-38;
    }

    v32 = floor(v25);
    v33 = floor(v26);
    v34 = ceil(v24 - v25 + 1.0);
    v35 = ceil(v27 - v26 + 1.0);
    v36 = sub_3C4B0(self->_inputFaceLandmarks);
    v56[0] = @"teethROI";
    v57[0] = [CIVector vectorWithCGRect:v32, v33, v34, v35];
    v57[1] = v36;
    v56[1] = @"faceLandmarks";
    v56[2] = @"inputImageExtent";
    v57[2] = [CIVector vectorWithCGRect:v12, v11, v44, v43];
    v56[3] = @"inputImageTransformN1";
    v57[3] = [NSData dataWithBytes:&v53 length:48];
    v56[4] = @"inputImageTransform1N";
    v37 = [NSData dataWithBytes:&v52 length:48];
    v56[5] = @"useMetal";
    v57[4] = v37;
    v57[5] = &__kCFBooleanTrue;
    v38 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:6];
    v39 = [NSMutableDictionary dictionaryWithDictionary:v38];
    [(NSMutableDictionary *)v39 setObject:&__kCFBooleanFalse forKeyedSubscript:@"useMetal"];
    v45 = 0.0;
    v55 = inputImage;
    v40 = [CIPortraitToothMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v55 count:1] inputs:v38 arguments:&v45 error:v32, v33, v34, v35];
    v54 = inputImage;
    return [CIImage imageForRenderingWithMetal:v40 orNonMetal:[CIPortraitToothMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v54 count:1] inputs:v39 arguments:&v45 error:v32, v33, v34, v35]];
  }

  return result;
}

@end
@interface CIPortraitFaceMask
- (id)outputImage;
@end

@implementation CIPortraitFaceMask

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
  if (!result)
  {
    return result;
  }

  if ([(NSDictionary *)self->_inputFaceLandmarks sanityCheckStatus]!= 1)
  {
    return 0;
  }

  v7 = [-[NSDictionary objectForKeyedSubscript:](self->_inputFaceLandmarks objectForKeyedSubscript:{@"orientation", "intValue"}];
  [(CIImage *)self->_inputImage extent];
  width = v78.size.width;
  height = v78.size.height;
  if (CGRectIsInfinite(v78))
  {
    v10 = *&CGAffineTransformIdentity.c;
    *&v40.a = *&CGAffineTransformIdentity.a;
    *&v40.c = v10;
    *&v40.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    v11 = v7 - 1;
    v44.a = 1.0;
    v44.b = 0.0;
    v44.c = 0.0;
    v44.d = 1.0;
    v44.tx = 0.0;
    v44.ty = 0.0;
    v45 = 0xBFF0000000000000;
    v46 = 0;
    v47 = 0;
    v48 = 0x3FF0000000000000;
    v49 = width;
    v50 = xmmword_54BD0;
    v51 = 0;
    v52 = 0;
    v53 = 0xBFF0000000000000;
    v54 = width;
    v55 = height;
    v57 = 0;
    v58 = 0;
    v56 = 0x3FF0000000000000;
    v59 = xmmword_54BE0;
    v61 = xmmword_54BD0;
    v62 = xmmword_54BE0;
    v60 = height;
    v63 = height;
    v64 = width;
    v65 = xmmword_54BD0;
    v67 = 0;
    v68 = 0;
    v66 = 0x3FF0000000000000;
    v69 = width;
    v70 = xmmword_54BF0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0x3FF0000000000000;
    v74 = 0x3FF0000000000000;
    v75 = xmmword_54BE0;
    v76 = height;
    v77 = 0;
    if (v7 - 9 < 0xFFFFFFF8)
    {
      v11 = 0;
    }

    v12 = &v44 + v11;
    v13 = *&v12->tx;
    *&v40.c = *&v12->c;
    *&v40.tx = v13;
    *&v40.a = *&v12->a;
  }

  memset(&v44, 0, sizeof(v44));
  v39 = v40;
  CGAffineTransformInvert(&v44, &v39);
  if (v7 != 1)
  {
    v39 = v40;
    inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v39];
  }

  [(CIImage *)inputImage extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(NSDictionary *)self->_inputFaceLandmarks coreImageROIrect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(NSDictionary *)self->_inputFaceLandmarks imageWidthScale];
  v31 = v19 / v30;
  CGAffineTransformMakeScale(&v39, v31, v31);
  v79.origin.x = v23;
  v79.origin.y = v25;
  v79.size.width = v27;
  v79.size.height = v29;
  v80 = CGRectApplyAffineTransform(v79, &v39);
  v81 = CGRectInset(v80, -1.0, -1.0);
  v82 = NSIntegralRectWithOptions(v81, 0xF00uLL);
  x = v82.origin.x;
  y = v82.origin.y;
  v34 = v82.size.width;
  v35 = v82.size.height;
  v36 = sub_3C4B0(self->_inputFaceLandmarks);
  v42[0] = @"faceROI";
  v43[0] = [CIVector vectorWithCGRect:x, y, v34, v35];
  v43[1] = v36;
  v42[1] = @"faceLandmarks";
  v42[2] = @"inputImageExtent";
  v43[2] = [CIVector vectorWithCGRect:v15, v17, v19, v21];
  v37 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
  v38 = 0;
  v41 = inputImage;
  result = [CIPortraitFaceMaskProcessorKernel applyWithExtent:[NSArray arrayWithObjects:&v41 count:1] inputs:v37 arguments:&v38 error:x, y, v34, v35];
  if (v7 != 1)
  {
    v39 = v44;
    return [result imageByApplyingTransform:&v39];
  }

  return result;
}

@end
@interface CRLCurvedShadowRenderHelper
- (CRLCurvedShadowRenderHelper)init;
- (id)p_alphaOnlyImageFromImage:(id)image;
- (id)p_blurredImage:(id)image edgeBlurRadius:(double)radius middleBlurRadius:(double)blurRadius padding:(double)padding edgeOpacity:(double)opacity middleOpacity:(double)middleOpacity;
- (id)p_curvedImageFromImage:(id)image curveAmount:(double)amount padding:(double)padding;
- (id)p_debugColorOverlayImageFromImage:(id)image;
- (id)p_tintedCIImageFromImage:(id)image withColor:(id)color;
- (void)drawCurvedShadow:(id)shadow forImage:(CGImage *)image inContext:(CGContext *)context forUnscaledSize:(CGSize)size withScaleFactor:(double)factor;
- (void)p_setupCIContext;
@end

@implementation CRLCurvedShadowRenderHelper

- (CRLCurvedShadowRenderHelper)init
{
  v3.receiver = self;
  v3.super_class = CRLCurvedShadowRenderHelper;
  result = [(CRLCurvedShadowRenderHelper *)&v3 init];
  if (result)
  {
    result->mCIContextCreationLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)drawCurvedShadow:(id)shadow forImage:(CGImage *)image inContext:(CGContext *)context forUnscaledSize:(CGSize)size withScaleFactor:(double)factor
{
  height = size.height;
  width = size.width;
  shadowCopy = shadow;
  if (factor <= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133E148();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133E15C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133E200();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLCurvedShadowRenderHelper drawCurvedShadow:forImage:inContext:forUnscaledSize:withScaleFactor:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadowRenderHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:87 isFatal:0 description:"scaleFactor (%f) should be greater than 0.", *&factor];
  }

  if (factor > 1.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133E228();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133E250();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133E2F4();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCurvedShadowRenderHelper drawCurvedShadow:forImage:inContext:forUnscaledSize:withScaleFactor:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadowRenderHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:88 isFatal:0 description:"scaleFactor (%f) should not be greater than 1.", *&factor];
  }

  context = objc_autoreleasePoolPush();
  ++dword_101A34910;
  [shadowCopy paddingForBlur];
  v21 = v20 * 0.5 * factor;
  [shadowCopy curve];
  v23 = v22;
  [shadowCopy offset];
  v25 = v24;
  objc_opt_class();
  objc_opt_class();
  CGContextSaveGState(context);
  [(CRLCurvedShadowRenderHelper *)self p_setupCIContext];
  v26 = [CIImage imageWithCGImage:image];
  v27 = [NSString stringWithFormat:@"%d-%d--%@", dword_101A34910, 0, @"sourceImage"];
  [(CRLCurvedShadowRenderHelper *)self p_debugLogImage:v26 name:v27];

  [v26 extent];
  v59 = CGRectInset(v58, v21, 0.0);
  v28 = [v26 imageByCroppingToRect:{v59.origin.x, v59.origin.y, v59.size.width, v59.size.height}];
  v29 = [NSString stringWithFormat:@"%d-%d--%@", dword_101A34910, 0, @"sourceCroppedImage"];
  [(CRLCurvedShadowRenderHelper *)self p_debugLogImage:v28 name:v29];

  v30 = [(CRLCurvedShadowRenderHelper *)self p_alphaOnlyImageFromImage:v28];
  v31 = [NSString stringWithFormat:@"%d-%d--%@", dword_101A34910, 0, @"alphaImage"];
  [(CRLCurvedShadowRenderHelper *)self p_debugLogImage:v30 name:v31];

  v57 = shadowCopy;
  color = [shadowCopy color];
  v33 = [(CRLCurvedShadowRenderHelper *)self p_tintedCIImageFromImage:v30 withColor:color];

  v34 = [NSString stringWithFormat:@"%d-%d--%@", dword_101A34910, 0, @"tintedResult"];
  [(CRLCurvedShadowRenderHelper *)self p_debugLogImage:v33 name:v34];

  v35 = [(CRLCurvedShadowRenderHelper *)self p_curvedImageFromImage:v33 curveAmount:v23 * -50.0 * factor padding:v21];
  v36 = [NSString stringWithFormat:@"%d-%d--%@", dword_101A34910, 0, @"curvedImage"];
  [(CRLCurvedShadowRenderHelper *)self p_debugLogImage:v35 name:v36];

  v37 = fmin(fabs(v25) * 0.25, 20.0) * factor;
  [(CRLCurvedShadowRenderHelper *)self p_baseBlurRadiusForCurve:v23 unscaledSize:width, height];
  v39 = v37 + v38 * factor;
  if (v23 <= 0.0)
  {
    v40 = 0.5;
  }

  else
  {
    v40 = 1.0;
  }

  if (v23 <= 0.0)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = 0.5;
  }

  if (v23 >= 0.0)
  {
    v42 = v37;
  }

  else
  {
    v42 = v37 + v38 * factor;
  }

  if (v23 < 0.0)
  {
    v39 = v37;
  }

  v43 = [(CRLCurvedShadowRenderHelper *)self p_blurredImage:v35 edgeBlurRadius:v42 middleBlurRadius:v39 padding:v21 edgeOpacity:v40 middleOpacity:v41];
  v44 = [NSString stringWithFormat:@"%d-%d--%@", dword_101A34910, 0, @"blurredImage"];
  [(CRLCurvedShadowRenderHelper *)self p_debugLogImage:v43 name:v44];

  v45 = v43;
  mCIContext = self->mCIContext;
  [v45 extent];
  v47 = [mCIContext createCGImage:v45 fromRect:?];
  if (v47)
  {
    v48 = v47;
    [v45 extent];
    v60.origin.x = sub_1001221E0(v49, v50, v51, v52);
    CGContextDrawImage(context, v60, v48);
    CGImageRelease(v48);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133E31C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133E344();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133E3E8();
    }

    v53 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v53);
    }

    v54 = [NSString stringWithUTF8String:"[CRLCurvedShadowRenderHelper drawCurvedShadow:forImage:inContext:forUnscaledSize:withScaleFactor:]"];
    v55 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadowRenderHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v54 file:v55 lineNumber:152 isFatal:0 description:"Cannot render curved shadow, the size is too large for the CIContext to convert back to a CGImage. Skipping render."];
  }

  CGContextRestoreGState(context);

  objc_autoreleasePoolPop(context);
}

- (void)p_setupCIContext
{
  if (!self->mCIContext)
  {
    os_unfair_lock_lock(&self->mCIContextCreationLock);
    if (!self->mCIContext)
    {
      v4 = [CIContext contextWithOptions:0];
      mCIContext = self->mCIContext;
      self->mCIContext = v4;
    }

    os_unfair_lock_unlock(&self->mCIContextCreationLock);
  }
}

- (id)p_tintedCIImageFromImage:(id)image withColor:(id)color
{
  v12 = xmmword_101463BD8;
  v13 = unk_101463BE8;
  imageCopy = image;
  [color getRGBAComponents:&v12];
  v6 = [CIFilter filterWithName:@"CIConstantColorGenerator"];
  v7 = [CIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:v12 blue:v13 alpha:?];
  [v6 setValue:v7 forKey:@"inputColor"];
  v8 = [v6 valueForKey:@"outputImage"];
  v9 = [CIFilter filterWithName:@"CIMultiplyCompositing"];
  [v9 setValue:v8 forKey:@"inputImage"];
  [v9 setValue:imageCopy forKey:@"inputBackgroundImage"];

  v10 = [v9 valueForKey:@"outputImage"];

  return v10;
}

- (id)p_debugColorOverlayImageFromImage:(id)image
{
  imageCopy = image;
  v4 = [CIFilter filterWithName:@"CIConstantColorGenerator"];
  v5 = [CIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
  [v4 setValue:v5 forKey:@"inputColor"];
  v6 = [v4 valueForKey:@"outputImage"];
  v7 = [imageCopy imageByCompositingOverImage:v6];
  [imageCopy extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v7 imageByCroppingToRect:{v9, v11, v13, v15}];

  return v16;
}

- (id)p_alphaOnlyImageFromImage:(id)image
{
  imageCopy = image;
  v4 = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v5 = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v6 = [CIFilter filterWithName:@"CIColorMatrix" keysAndValues:kCIInputImageKey, imageCopy, @"inputRVector", v4, @"inputGVector", v4, @"inputBVector", v4, @"inputAVector", v4, @"inputBiasVector", v5, 0];

  outputImage = [v6 outputImage];

  return outputImage;
}

- (id)p_curvedImageFromImage:(id)image curveAmount:(double)amount padding:(double)padding
{
  imageCopy = image;
  [imageCopy extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [CIVector vectorWithCGRect:?];
  v17 = +[CRLCurvedShadowCurveFilter curveKernel];
  v23[0] = imageCopy;
  v23[1] = v16;
  v18 = [NSNumber numberWithDouble:padding];
  v23[2] = v18;
  v19 = [NSNumber numberWithDouble:amount];
  v23[3] = v19;
  v20 = [NSArray arrayWithObjects:v23 count:4];

  v21 = [v17 applyWithExtent:&stru_10184D838 roiCallback:v20 arguments:{v9, v11, v13, v15}];

  return v21;
}

- (id)p_blurredImage:(id)image edgeBlurRadius:(double)radius middleBlurRadius:(double)blurRadius padding:(double)padding edgeOpacity:(double)opacity middleOpacity:(double)middleOpacity
{
  imageCopy = image;
  v14 = sub_1004C3260(radius, blurRadius, 0.5);
  v15 = [NSNumber numberWithDouble:radius];
  v48 = [CIFilter filterWithName:@"CIGaussianBlur" keysAndValues:kCIInputImageKey, imageCopy, kCIInputRadiusKey, v15, 0];

  outputImage = [v48 outputImage];
  v17 = [NSNumber numberWithDouble:blurRadius];
  v47 = [CIFilter filterWithName:@"CIGaussianBlur" keysAndValues:kCIInputImageKey, imageCopy, kCIInputRadiusKey, v17, 0];

  outputImage2 = [v47 outputImage];
  v19 = [NSNumber numberWithDouble:v14];
  v20 = [CIFilter filterWithName:@"CIGaussianBlur" keysAndValues:kCIInputImageKey, imageCopy, kCIInputRadiusKey, v19, 0];

  outputImage3 = [v20 outputImage];
  v46 = outputImage;
  [outputImage extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [outputImage2 extent];
  v53.origin.x = v30;
  v53.origin.y = v31;
  v53.size.width = v32;
  v53.size.height = v33;
  v51.origin.x = v23;
  v51.origin.y = v25;
  v51.size.width = v27;
  v51.size.height = v29;
  v52 = CGRectUnion(v51, v53);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v38 = [CIVector vectorWithCGRect:?];
  v39 = +[CRLCurvedShadowBlurBlendFilter blurBlendKernel];
  v49[0] = outputImage;
  v49[1] = outputImage3;
  v49[2] = outputImage2;
  v49[3] = v38;
  v40 = [NSNumber numberWithDouble:padding];
  v49[4] = v40;
  v41 = [NSNumber numberWithDouble:opacity];
  v49[5] = v41;
  v42 = [NSNumber numberWithDouble:middleOpacity];
  v49[6] = v42;
  v43 = [NSArray arrayWithObjects:v49 count:7];
  v44 = [v39 applyWithExtent:&stru_10184D858 roiCallback:v43 arguments:{x, y, width, height}];

  return v44;
}

@end
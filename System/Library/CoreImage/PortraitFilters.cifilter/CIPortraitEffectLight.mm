@interface CIPortraitEffectLight
- (id)_enrich;
- (id)_eyeBrightenSoftlight;
- (id)_mixKernel;
- (id)_textureAdd;
- (id)_textureDiff;
- (id)_whitenTeeth;
- (id)enrichImage:(id)a3;
- (id)eyeBlurForLandmarks:(id)a3;
- (id)imageForLandmarks:(id)a3;
- (id)maskForLandmarks:(id)a3 withFilterNamed:(id)a4;
- (id)outputImage;
- (id)processEyesIn:(id)a3 withEyeBlur:(id)a4 landmarks:(id)a5;
- (id)processSkinIn:(id)a3 withFaceMask:(id)a4;
- (id)processSkinIn:(id)a3 withSkinMask:(id)a4;
- (id)processTeethIn:(id)a3 withFaceMask:(id)a4;
- (id)processTeethIn:(id)a3 withTeethMask:(id)a4;
@end

@implementation CIPortraitEffectLight

- (id)_whitenTeeth
{
  if (qword_8CF70 != -1)
  {
    sub_4B458();
  }

  return qword_8CF68;
}

- (id)_enrich
{
  if (qword_8CF80 != -1)
  {
    sub_4B46C();
  }

  return qword_8CF78;
}

- (id)_eyeBrightenSoftlight
{
  if (qword_8CF90 != -1)
  {
    sub_4B480();
  }

  return qword_8CF88;
}

- (id)_mixKernel
{
  if (qword_8CFA0 != -1)
  {
    sub_4B494();
  }

  return qword_8CF98;
}

- (id)_textureDiff
{
  if (qword_8CFB0 != -1)
  {
    sub_4B4A8();
  }

  return qword_8CFA8;
}

- (id)_textureAdd
{
  if (qword_8CFC0 != -1)
  {
    sub_4B4BC();
  }

  return qword_8CFB8;
}

- (id)maskForLandmarks:(id)a3 withFilterNamed:(id)a4
{
  inputImage = self->super.inputImage;
  CGAffineTransformMakeScale(&v10, 0.25, 0.25);
  v7 = [(CIImage *)inputImage imageByApplyingTransform:&v10];
  v11 = @"inputFaceLandmarks";
  v12 = a3;
  result = [(CIImage *)v7 imageByApplyingFilter:a4 withInputParameters:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  if (result)
  {
    v9 = result;
    CGAffineTransformMakeScale(&v10, 0.25, 0.25);
    return [objc_msgSend(v9 imageByApplyingTransform:{&v10), "imageByApplyingFilter:withInputParameters:", @"CISoftCubicUpsample", &off_7DDD8}];
  }

  return result;
}

- (id)eyeBlurForLandmarks:(id)a3
{
  [(NSNumber *)self->super.inputEyes floatValue];
  if (a3)
  {
    if (fabsf(v5) >= 1.0e-10)
    {
      v6 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
      v7 = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
      v8 = [LightingFacePoints alloc];
      [(CIImage *)self->super.inputImage extent];
      v9 = [(LightingFacePoints *)v8 initWithFaceLandmarkDictionary:a3 forImageRect:?];
      v10 = [CIFilter filterWithName:@"CIGaussianGradient"];
      if ([a3 objectForKeyedSubscript:@"faceJunkinessIndex"])
      {
        [objc_msgSend(a3 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
        v12 = v11 < -0.2;
      }

      else
      {
        v12 = 0;
      }

      if ([a3 objectForKeyedSubscript:@"faceBoundingBox"])
      {
        [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
        v14 = v13 > 0.15;
      }

      else
      {
        v14 = 0;
      }

      if ([a3 objectForKeyedSubscript:@"roll"])
      {
        [objc_msgSend(a3 objectForKeyedSubscript:{@"roll", "floatValue"}];
        v16 = fabsf(v15) < 1.05;
      }

      else
      {
        v16 = 1;
      }

      a3 = 0;
      if (v12 && v14 && v16)
      {
        [(LightingFacePoints *)v9 leftEye];
        v18 = v17;
        v20 = v19;
        [(LightingFacePoints *)v9 rightEye];
        *&v21 = sqrt((v20 - v22) * (v20 - v22) + (v18 - v21) * (v18 - v21));
        *&v18 = *&v21 * 0.4035;
        [(LightingFacePoints *)v9 leftEye];
        [(CIFilter *)v10 setValue:[CIVector vectorWithCGPoint:?], @"inputCenter"];
        LODWORD(v23) = LODWORD(v18);
        [(CIFilter *)v10 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v23], @"inputRadius"];
        [(CIFilter *)v10 setValue:v7 forKey:@"inputColor0"];
        [(CIFilter *)v10 setValue:v6 forKey:@"inputColor1"];
        v24 = [(CIFilter *)v10 outputImage];
        [(LightingFacePoints *)v9 rightEye];
        [(CIFilter *)v10 setValue:[CIVector vectorWithCGPoint:?], @"inputCenter"];
        v26 = @"inputBackgroundImage";
        v27 = [(CIFilter *)v10 outputImage];
        a3 = [(CIImage *)v24 imageByApplyingFilter:@"CIAdditionCompositing" withInputParameters:[NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1]];
      }
    }

    else
    {
      return 0;
    }
  }

  return a3;
}

- (id)processSkinIn:(id)a3 withFaceMask:(id)a4
{
  [(NSNumber *)self->super.inputSmooth floatValue];
  v8 = v7;
  [(NSNumber *)self->super.inputLocalContrast floatValue];
  v10 = fabsf(v8);
  v11 = fabsf(v9);
  if (v10 >= 1.0e-10 || v11 >= 1.0e-10)
  {
    v31 = v9;
    v32 = v11;
    [a3 extent];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(NSNumber *)self->super.inputScale floatValue];
    v21 = v20;
    v22 = [objc_msgSend(objc_msgSend(a3 "imageByClampingToExtent")];
    v45[0] = a3;
    v45[1] = v22;
    v23 = [-[CIPortraitEffectLight _textureDiff](self "_textureDiff")];
    if (v10 >= 1.0e-10)
    {
      v24 = [v22 imageByClampingToExtent];
      v44[0] = &off_7A920;
      v43[0] = @"inputPointCount";
      v43[1] = @"inputRadius";
      v44[1] = [NSNumber numberWithDouble:v21 * 4.0];
      v22 = [objc_msgSend(v24 imageByApplyingFilter:@"CIRingBlur" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v44, v43, 2)), "imageByCroppingToRect:", v13, v15, v17, v19}];
      if (v8 < 1.0)
      {
        v25 = [(CIPortraitEffectLight *)self _mixKernel];
        v42[0] = a3;
        v42[1] = v22;
        *&v26 = v8;
        v42[2] = [NSNumber numberWithFloat:v26];
        v22 = [v25 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v42, 3), v13, v15, v17, v19}];
      }
    }

    if (v32 >= 1.0e-10)
    {
      v40[0] = @"inputScale";
      v40[1] = @"inputStrength";
      v41[0] = [CIVector vectorWithX:600.0 / v21 / v17 Y:600.0 / v21 / v19];
      *&v29 = v31;
      v41[1] = [NSNumber numberWithFloat:v29];
      v22 = [v22 imageByApplyingFilter:@"CIPortraitLocalContrast" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v41, v40, 2)}];
      v38[0] = @"inputAmount";
      v38[1] = @"inputISO";
      v39[0] = [NSNumber numberWithDouble:v21 * 0.5];
      v39[1] = &off_7A938;
      v27 = v39;
      v28 = v38;
    }

    else
    {
      v36[0] = @"inputAmount";
      v36[1] = @"inputISO";
      v37[0] = [NSNumber numberWithDouble:v21 * 0.2];
      v37[1] = &off_7A938;
      v27 = v37;
      v28 = v36;
    }

    v35[0] = [v22 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v27, v28, 2)}];
    v35[1] = v23;
    v35[2] = &off_7A5A0;
    v33[0] = kCIInputBackgroundImageKey;
    v33[1] = kCIInputMaskImageKey;
    v34[0] = a3;
    v34[1] = a4;
    return [objc_msgSend(-[CIPortraitEffectLight _textureAdd](self "_textureAdd")];
  }

  return a3;
}

- (id)processTeethIn:(id)a3 withFaceMask:(id)a4
{
  [(NSNumber *)self->super.inputTeeth floatValue];
  v8 = v7;
  [a3 extent];
  v12 = v11;
  v14 = v13;
  if (fabsf(v8) >= 1.0e-10)
  {
    v15 = v9;
    v16 = v10;
    v17 = [(CIPortraitEffectLight *)self _whitenTeeth];
    v19[0] = a3;
    v19[1] = a4;
    v19[2] = self->super.inputTeeth;
    return [v17 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v19, 3), v12, v14, v15, v16}];
  }

  return a3;
}

- (id)processSkinIn:(id)a3 withSkinMask:(id)a4
{
  [(NSNumber *)self->super.inputSmooth floatValue];
  v8 = v7;
  [(NSNumber *)self->super.inputLocalContrast floatValue];
  v10 = fabsf(v8);
  v11 = fabsf(v9);
  if (v10 >= 1.0e-10 || v11 >= 1.0e-10)
  {
    v31 = v9;
    v32 = v11;
    [a3 extent];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(NSNumber *)self->super.inputScale floatValue];
    v21 = v20;
    v22 = [objc_msgSend(objc_msgSend(a3 "imageByClampingToExtent")];
    v45[0] = a3;
    v45[1] = v22;
    v23 = [-[CIPortraitEffectLight _textureDiff](self "_textureDiff")];
    if (v10 >= 1.0e-10)
    {
      v24 = [v22 imageByClampingToExtent];
      v44[0] = &off_7A920;
      v43[0] = @"inputPointCount";
      v43[1] = @"inputRadius";
      v44[1] = [NSNumber numberWithDouble:v21 * 4.0];
      v22 = [objc_msgSend(v24 imageByApplyingFilter:@"CIRingBlur" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v44, v43, 2)), "imageByCroppingToRect:", v13, v15, v17, v19}];
      if (v8 < 1.0)
      {
        v25 = [(CIPortraitEffectLight *)self _mixKernel];
        v42[0] = a3;
        v42[1] = v22;
        *&v26 = v8;
        v42[2] = [NSNumber numberWithFloat:v26];
        v22 = [v25 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v42, 3), v13, v15, v17, v19}];
      }
    }

    if (v32 >= 1.0e-10)
    {
      v40[0] = @"inputScale";
      v40[1] = @"inputStrength";
      v41[0] = [CIVector vectorWithX:600.0 / v21 / v17 Y:600.0 / v21 / v19];
      *&v29 = v31;
      v41[1] = [NSNumber numberWithFloat:v29];
      v22 = [v22 imageByApplyingFilter:@"CIPortraitLocalContrast" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v41, v40, 2)}];
      v38[0] = @"inputAmount";
      v38[1] = @"inputISO";
      v39[0] = [NSNumber numberWithDouble:v21 * 0.5];
      v39[1] = &off_7A938;
      v27 = v39;
      v28 = v38;
    }

    else
    {
      v36[0] = @"inputAmount";
      v36[1] = @"inputISO";
      v37[0] = [NSNumber numberWithDouble:v21 * 0.2];
      v37[1] = &off_7A938;
      v27 = v37;
      v28 = v36;
    }

    v35[0] = [v22 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v27, v28, 2)}];
    v35[1] = v23;
    v35[2] = &off_7A5A0;
    v33[0] = kCIInputBackgroundImageKey;
    v33[1] = kCIInputMaskImageKey;
    v34[0] = a3;
    v34[1] = a4;
    return [objc_msgSend(-[CIPortraitEffectLight _textureAdd](self "_textureAdd")];
  }

  return a3;
}

- (id)processTeethIn:(id)a3 withTeethMask:(id)a4
{
  [(NSNumber *)self->super.inputTeeth floatValue];
  v8 = v7;
  [a3 extent];
  v12 = v11;
  v14 = v13;
  if (fabsf(v8) >= 1.0e-10)
  {
    v15 = v9;
    v16 = v10;
    v17 = [(CIPortraitEffectLight *)self _whitenTeeth];
    v19[0] = a3;
    v19[1] = a4;
    v19[2] = self->super.inputTeeth;
    return [v17 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v19, 3), v12, v14, v15, v16}];
  }

  return a3;
}

- (id)processEyesIn:(id)a3 withEyeBlur:(id)a4 landmarks:(id)a5
{
  if (!a4)
  {
    sub_4B4D0();
  }

  [(NSNumber *)self->super.inputEyes floatValue];
  v10 = v9;
  [a4 extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [objc_msgSend(a3 "imageByCroppingToRect:"_imageByRenderingToIntermediate"")];
  v20 = [(CIPortraitEffectLight *)self _eyeBrightenSoftlight];
  v31[0] = v19;
  v31[1] = a4;
  v31[2] = self->super.inputEyes;
  v21 = [v20 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v31, 3), v12, v14, v16, v18}];
  v22 = v10 * 1.2;
  *&v22 = v22;
  v23 = v10 * 2.19;
  v29[0] = @"inputSharpness";
  v29[1] = @"inputRadius";
  v30[0] = [NSNumber numberWithFloat:v22];
  *&v24 = v23;
  v30[1] = [NSNumber numberWithFloat:v24];
  v25 = [v21 imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v30, v29, 2)}];
  v27[0] = kCIInputBackgroundImageKey;
  v27[1] = kCIInputMaskImageKey;
  v28[0] = v19;
  v28[1] = [(CIPortraitEffectLight *)self eyeBlurForLandmarks:a5];
  return [objc_msgSend(v25 imageByApplyingFilter:@"CIBlendWithBlueMask" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v28, v27, 2)), "imageByCompositingOverImage:", a3}];
}

- (id)imageForLandmarks:(id)a3
{
  if (!self->super.inputImage)
  {
    return 0;
  }

  if (([a3 sanityCheckStatus] & 0x80000000) != 0)
  {
    return self->super.inputImage;
  }

  if (qword_8CFC8 != -1)
  {
    sub_4B4FC();
  }

  v5 = [(CIPortraitEffectLight *)self eyeBlurForLandmarks:a3];
  v6 = v5;
  if (v5)
  {
    [v5 extent];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  if (byte_8C878 == 1)
  {
    v16 = [(CIPortraitEffectLight *)self faceMaskForLandmarks:a3];
    v15 = v16;
    if (!v16)
    {
      return v15;
    }

    [v16 extent];
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v42 = CGRectUnion(v41, v46);
    v17 = v42.origin.x;
    v18 = v42.origin.y;
    v19 = v42.size.width;
    v20 = v42.size.height;
    v21 = [[(CIImage *)self->super.inputImage imageByCroppingToRect:?] _imageByRenderingToIntermediate];
    v22 = [(CIPortraitEffectLight *)self processTeethIn:[(CIPortraitEffectLight *)self processSkinIn:v21 withFaceMask:v15] withFaceMask:v15];
  }

  else
  {
    v23 = [(CIPortraitEffectLight *)self skinMaskForLandmarks:a3];
    v24 = [(CIPortraitEffectLight *)self teethMaskForLandmarks:a3];
    [v23 extent];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v24 extent];
    v47.origin.x = v33;
    v47.origin.y = v34;
    v47.size.width = v35;
    v47.size.height = v36;
    v43.origin.x = v26;
    v43.origin.y = v28;
    v43.size.width = v30;
    v43.size.height = v32;
    v44 = CGRectUnion(v43, v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v45 = CGRectUnion(v44, v48);
    v17 = v45.origin.x;
    v18 = v45.origin.y;
    v19 = v45.size.width;
    v20 = v45.size.height;
    v21 = [(CIImage *)self->super.inputImage imageByCroppingToRect:?];
    v22 = [(CIPortraitEffectLight *)self processTeethIn:[(CIPortraitEffectLight *)self processSkinIn:v21 withSkinMask:v23] withTeethMask:v24];
  }

  v15 = v22;
  if (v22)
  {
    if (v6)
    {
      v15 = [(CIPortraitEffectLight *)self processEyesIn:v22 withEyeBlur:v6 landmarks:a3];
    }

    [(NSNumber *)self->super.inputStrength floatValue];
    if (v37 < 1.0)
    {
      v38 = [(CIPortraitEffectLight *)self _mixKernel];
      v40[0] = v21;
      v40[1] = v15;
      v40[2] = self->super.inputStrength;
      return [v38 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v40, 3), v17, v18, v19, v20}];
    }
  }

  return v15;
}

- (id)enrichImage:(id)a3
{
  [(NSNumber *)self->super.inputEnrich floatValue];
  if (fabsf(v5) >= 1.0e-10)
  {
    v6 = [(CIPortraitEffectLight *)self _enrich];
    v7 = [CIVector vectorWithX:0.0799999982 Y:0.400249988 Z:0.0 W:0.548565447];
    [a3 extent];
    inputEnrich = self->super.inputEnrich;
    v14[0] = a3;
    v14[1] = inputEnrich;
    v14[2] = v7;
    return [v6 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v14, 3), v9, v10, v11, v12}];
  }

  return a3;
}

- (id)outputImage
{
  if (!self->super.inputImage)
  {
    return 0;
  }

  inputImage = self->super.inputImage;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->super.inputFaceLandmarkArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [objc_msgSend(v7 objectForKeyedSubscript:{@"orientation", inputImage), "intValue"}];
        if (![v7 sanityCheckStatus])
        {
          [(CIImage *)self->super.inputImage extent];
          if (v8 > 4)
          {
            *&v9 = v11;
            [v7 setImageWidthScale:v9];
            [(CIImage *)self->super.inputImage extent];
          }

          else
          {
            *&v9 = v10;
            [v7 setImageWidthScale:v9];
            [(CIImage *)self->super.inputImage extent];
            v14 = v13;
          }

          *&v12 = v14;
          [v7 setImageHeightScale:v12];
        }

        [CIPortraitEffect checkFeaturesDictionary:v7];
        if (([v7 sanityCheckStatus] & 0x80000000) == 0)
        {
          if ([v7 objectForKeyedSubscript:@"faceJunkinessIndex"])
          {
            [objc_msgSend(v7 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
            v16 = v15 < -0.2;
          }

          else
          {
            v16 = 0;
          }

          if ([v7 objectForKeyedSubscript:@"faceBoundingBox"])
          {
            [objc_msgSend(objc_msgSend(v7 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
            v18 = v17 > 0.15;
          }

          else
          {
            v18 = 0;
          }

          if ([v7 objectForKeyedSubscript:@"roll"])
          {
            [objc_msgSend(v7 objectForKeyedSubscript:{@"roll", "floatValue"}];
            v20 = fabsf(v19) < 1.05;
          }

          else
          {
            v20 = 1;
          }

          if (v16 && v18 && v20)
          {
            v21 = [(CIPortraitEffectLight *)self imageForLandmarks:v7];
            if (v21)
            {
              inputImage = [v21 imageByCompositingOverImage:inputImage];
            }
          }
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  return [(CIPortraitEffectLight *)self enrichImage:inputImage, inputImage];
}

@end
@interface PortraitEffetcPrewarm
- (id)getFaceFeatures:(float)features;
- (void)run:(id)run withContext:(id)context withFaceScales:(id)scales withProxyRendering:(BOOL)rendering;
@end

@implementation PortraitEffetcPrewarm

- (id)getFaceFeatures:(float)features
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [&off_7DFD8 objectAtIndexedSubscript:0];
  v23 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v5;
        v6 = *(*(&v29 + 1) + 8 * v5);
        [v4 setObject:objc_alloc_init(NSMutableArray) forKey:v6];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = [objc_msgSend(&off_7DFD8 objectAtIndexedSubscript:{0), "objectForKeyedSubscript:", v6}];
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v26;
          do
          {
            v11 = 0;
            do
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v25 + 1) + 8 * v11);
              v13 = [v4 objectForKeyedSubscript:v6];
              v36[0] = @"x";
              [objc_msgSend(v12 "objectForKeyedSubscript:"floatValue"")];
              *&v15 = v14 * features;
              v16 = [NSNumber numberWithFloat:v15];
              v36[1] = @"y";
              v37[0] = v16;
              [objc_msgSend(v12 "objectForKeyedSubscript:"floatValue"")];
              *&v18 = v17 * features;
              v37[1] = [NSNumber numberWithFloat:v18];
              [v13 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v37, v36, 2)}];
              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v25 objects:v38 count:16];
          }

          while (v9);
        }

        v5 = v24 + 1;
      }

      while ((v24 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v23);
  }

  [v4 setValue:&off_7A860 forKey:@"orientation"];
  [v4 setValue:&off_7A0C0 forKey:@"faceJunkinessIndex"];
  [v4 setValue:&off_7A0D0 forKey:@"faceOrientationIndex"];
  v34[0] = @"h";
  featuresCopy = features;
  v35[0] = [NSNumber numberWithDouble:featuresCopy * 0.36];
  v34[1] = @"w";
  v35[1] = [NSNumber numberWithDouble:featuresCopy * 0.48];
  v35[2] = &off_7A0E0;
  v34[2] = @"x";
  v34[3] = @"y";
  v35[3] = &off_7A0E0;
  [v4 setValue:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKey:{"dictionaryWithObjects:forKeys:count:", v35, v34, 4), @"faceBoundingBox"}];
  v33 = v4;
  return [NSArray arrayWithObjects:&v33 count:1];
}

- (void)run:(id)run withContext:(id)context withFaceScales:(id)scales withProxyRendering:(BOOL)rendering
{
  if (context)
  {
    renderingCopy = rendering;
    context = objc_autoreleasePoolPush();
    pixelBufferOut = 0;
    v9 = kCVPixelBufferIOSurfacePropertiesKey;
    v84 = kCVPixelBufferIOSurfacePropertiesKey;
    v85 = &__NSDictionary0__struct;
    CVPixelBufferCreate(0, 0x7E0uLL, 0x5E8uLL, 0x34323066u, [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1], &pixelBufferOut);
    name = kCGColorSpaceDisplayP3;
    v10 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    v82 = kCIImageColorSpace;
    v83 = v10;
    v49 = v10;
    v11 = [CIImage imageWithCVPixelBuffer:pixelBufferOut options:[NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1]];
    texture = 0;
    v80 = v9;
    v81 = &__NSDictionary0__struct;
    CVPixelBufferCreate(0, 0x300uLL, 0x240uLL, 0x4C303068u, [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1], &texture);
    v12 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearGray);
    v78 = kCIImageColorSpace;
    v79 = v12;
    v13 = v12;
    v14 = [CIImage imageWithCVPixelBuffer:texture options:[NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1]];
    v15 = [CIFilter filterWithName:run];
    inputKeys = [(CIFilter *)v15 inputKeys];
    [(CIFilter *)v15 setValue:v11 forKey:kCIInputImageKey];
    if (renderingCopy)
    {
      [(CIFilter *)v15 setValue:&off_7A878 forKey:@"inputRenderProxy", kCGColorSpaceDisplayP3];
    }

    [(CIFilter *)v15 setValue:&off_79E50 forKey:@"inputStrength", name];
    if (v14)
    {
      v17 = v9;
      if ([(NSArray *)inputKeys containsObject:@"inputDisparity"])
      {
        [(CIFilter *)v15 setValue:v14 forKey:@"inputDisparity"];
      }

      v61 = 0;
      if ([(NSArray *)inputKeys containsObject:@"inputDepthMap"])
      {
        v76 = v9;
        v77 = &__NSDictionary0__struct;
        CVPixelBufferCreate(0, 0x3F0uLL, 0x2F4uLL, 0x4C303038u, [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1], &v61);
        v18 = [CIImage imageWithCVPixelBuffer:v61];
        if (v18)
        {
          [(CIFilter *)v15 setValue:v18 forKey:@"inputDepthMap"];
        }
      }

      v60 = 0;
      if ([(NSArray *)inputKeys containsObject:@"inputBlurMap"])
      {
        v74 = v9;
        v75 = &__NSDictionary0__struct;
        CVPixelBufferCreate(0, 0x3F0uLL, 0x2F4uLL, 0x4C303038u, [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1], &v60);
        v19 = [CIImage imageWithCVPixelBuffer:v60];
        if (v19)
        {
          [(CIFilter *)v15 setValue:v19 forKey:@"inputBlurMap"];
        }
      }
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v17 = v9;
    }

    v59 = 0;
    if ([(NSArray *)inputKeys containsObject:@"inputMatte"])
    {
      v72 = v17;
      v73 = &__NSDictionary0__struct;
      CVPixelBufferCreate(0, 0x3F0uLL, 0x2F4uLL, 0x4C303038u, [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1], &v59);
      v20 = [CIImage imageWithCVPixelBuffer:v59];
      if (v20)
      {
        [(CIFilter *)v15 setValue:v20 forKey:@"inputMatte"];
      }
    }

    v58 = 0;
    if ([(NSArray *)inputKeys containsObject:@"inputFaceMask"])
    {
      v70 = v17;
      v71 = &__NSDictionary0__struct;
      CVPixelBufferCreate(0, 0x3F0uLL, 0x2F4uLL, 0x4C303038u, [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1], &v58);
      v21 = [CIImage imageWithCVPixelBuffer:v58];
      if (v21)
      {
        [(CIFilter *)v15 setValue:v21 forKey:@"inputFaceMask"];
      }
    }

    v57 = 0;
    if ([(NSArray *)inputKeys containsObject:@"inputTeethMask"])
    {
      v68 = v17;
      v69 = &__NSDictionary0__struct;
      CVPixelBufferCreate(0, 0x3F0uLL, 0x2F4uLL, 0x4C303038u, [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1], &v57);
      v22 = [CIImage imageWithCVPixelBuffer:v57];
      if (v22)
      {
        [(CIFilter *)v15 setValue:v22 forKey:@"inputTeethMask"];
      }
    }

    v56 = 0;
    if ([(NSArray *)inputKeys containsObject:@"inputHairMask"])
    {
      v66 = v17;
      v67 = &__NSDictionary0__struct;
      CVPixelBufferCreate(0, 0x3F0uLL, 0x2F4uLL, 0x4C303038u, [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1], &v56);
      v23 = [CIImage imageWithCVPixelBuffer:v56];
      if (v23)
      {
        [(CIFilter *)v15 setValue:v23 forKey:@"inputHairMask"];
      }
    }

    outputImage = [(CIFilter *)v15 outputImage];

    if (outputImage)
    {
      space = CGColorSpaceCreateWithName(namea);
      [(CIImage *)outputImage extent];
      v25 = v17;
      v27 = v26;
      [(CIImage *)outputImage extent];
      v29 = v28;
      v64 = 0;
      v86[0] = kCVPixelBufferWidthKey;
      v87[0] = [NSNumber numberWithUnsignedLong:v27];
      v86[1] = kCVPixelBufferHeightKey;
      v30 = [NSNumber numberWithUnsignedLong:v29];
      v86[2] = v25;
      v87[1] = v30;
      v87[2] = &__NSDictionary0__struct;
      CVPixelBufferCreate(0, v27, v29, 0x34323066u, [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:3], &v64);
      v31 = v64;
      v32 = [[CIRenderDestination alloc] initWithPixelBuffer:v64];
      [v32 setColorSpace:space];
      [(CIImage *)outputImage extent];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v41 = [scales countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v53;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v53 != v43)
            {
              objc_enumerationMutation(scales);
            }

            [*(*(&v52 + 1) + 8 * i) floatValue];
            [(CIFilter *)v15 setValue:[(PortraitEffetcPrewarm *)self getFaceFeatures:?] forKey:@"inputFaceLandmarkArray"];
            [context prepareRender:-[CIFilter outputImage](v15 fromRect:"outputImage") toDestination:v32 atPoint:0 error:{v34, v36, v38, v40, 0.0, 0.0}];
          }

          v42 = [scales countByEnumeratingWithState:&v52 objects:v65 count:16];
        }

        while (v42);
      }

      CGColorSpaceRelease(space);
      CFRelease(v31);
      CVPixelBufferRelease(pixelBufferOut);
      CVPixelBufferRelease(texture);
      CVPixelBufferRelease(v61);
      CVPixelBufferRelease(v60);
      CVPixelBufferRelease(v59);
      CVPixelBufferRelease(v58);
      CVPixelBufferRelease(v57);
      CVPixelBufferRelease(v56);
    }

    objc_autoreleasePoolPop(context);
  }
}

@end
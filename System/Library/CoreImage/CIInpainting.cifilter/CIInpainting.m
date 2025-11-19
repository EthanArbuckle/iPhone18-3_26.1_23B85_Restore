id sub_1678(void *a1)
{
  v1 = a1;
  v2 = [v1 metalTexture];
  v12[0] = kCIImageFlipped;
  v12[1] = kCIImageColorSpace;
  v13[0] = &__kCFBooleanTrue;
  v3 = +[NSNull null];
  v13[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v5 = [CIImage imageWithMTLTexture:v2 options:v4];

  [v1 region];
  v7 = v6;
  [v1 region];
  CGAffineTransformMakeTranslation(&v11, v7, v8);
  v9 = [v5 imageByApplyingTransform:&v11];

  return v9;
}

id sub_1820(void *a1)
{
  v1 = a1;
  v2 = [CIKernel cachedKernelWithString:@"kernel vec4 interleavedToPlanar(sampler s, float tileSize) __attribute__((outputFormat(kCIFormatRh))) \n { \n vec2 dc = destCoord() \n float y = dc.y; \n y = (y<tileSize) ? y : \n (y<tileSize*2.0) ? (y - tileSize) : \n (y - 2.0*tileSize); \n vec4 c = sample(s, samplerTransform(s, vec2(dc.x, y))); \n if (dc.y < tileSize) \n return vec4(c.x, 0.0, 0.0, 1.0); \n if (dc.y < tileSize*2.0) \n return vec4(c.y, 0.0, 0.0, 1.0); \n return vec4(c.z, 0.0, 0.0, 1.0); \n }"];;
  if (v1 && ([v1 extent], !CGRectIsInfinite(v26)))
  {
    [v1 extent];
    v5 = v4;
    [v1 extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    CGAffineTransformMakeScale(&v23, 1.0, 3.0);
    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    v28 = CGRectApplyAffineTransform(v27, &v23);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    v24[0] = v1;
    v18 = [NSNumber numberWithDouble:v5, _NSConcreteStackBlock, 3221225472, sub_9B7C, &unk_14500, *&v5];
    v24[1] = v18;
    v19 = [NSArray arrayWithObjects:v24 count:2];
    v20 = [v2 applyWithExtent:&v22 roiCallback:v19 arguments:{x, y, width, height}];

    v1 = v20;
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

CVPixelBufferRef sub_1A5C(size_t a1, size_t a2)
{
  v8 = 0;
  v10[0] = &__NSDictionary0__struct;
  v9[0] = kCVPixelBufferIOSurfacePropertiesKey;
  v9[1] = kCVPixelBufferPixelFormatTypeKey;
  v4 = [NSNumber numberWithUnsignedInt:1278226536];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  CVPixelBufferCreate(0, a1, a2, 0x4C303068u, v5, &v8);
  v6 = v8;

  return v6;
}

id sub_1B80(void *a1, __CVBuffer *a2)
{
  v3 = a1;
  IOSurface = CVPixelBufferGetIOSurface(a2);
  PixelFormat = IOSurfaceGetPixelFormat(IOSurface);
  v6 = 25;
  if (PixelFormat != 1278226536)
  {
    v6 = 0;
  }

  v7 = 10;
  if (PixelFormat != 1278226488)
  {
    v7 = v6;
  }

  if (PixelFormat == 1111970369)
  {
    v8 = 80;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    __assert_rtn("CreateTextureFromBufferSurface", "CIInpaintFilter.mm", 121, "mtlFormat != MTLPixelFormatInvalid");
  }

  Width = IOSurfaceGetWidth(IOSurface);
  v10 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:v8 width:Width height:IOSurfaceGetHeight(IOSurface) mipmapped:0];
  [v10 setUsage:{objc_msgSend(v10, "usage") | 3}];
  v11 = [v3 newTextureWithDescriptor:v10 iosurface:IOSurface plane:0];

  return v11;
}

void sub_1CD4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v19[0] = @"inputRVector";
  v11 = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
  v20[0] = v11;
  v19[1] = @"inputGVector";
  v12 = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
  v20[1] = v12;
  v19[2] = @"inputBVector";
  v13 = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
  v20[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v15 = [v8 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v14];

  v16 = [CIRenderDestination alloc];
  v17 = [v16 initWithMTLTexture:v9 commandBuffer:v10];

  [v17 setFlipped:1];
  [v17 setColorSpace:0];
  v18 = [v7 startTaskToRender:v15 toDestination:v17 error:0];
}

void sub_1F40(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = NSSelectorFromString(@"setError:");
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) performSelector:v3 withObject:v4];
  }
}

id sub_1FC8(void *a1)
{
  v1 = a1;
  v2 = [CIKernel cachedKernelWithString:@"kernel vec4 planarToInterleaved(sampler s, float tileSize) { vec2 dc = destCoord() dc.y = clamp(dc.y, 0.0, tileSize); vec4 rgba = vec4(1.0); vec2 delta = vec2(0.0, tileSize); rgba.r = sample(s, samplerTransform(s, dc + delta*0.0)).x; rgba.g = sample(s, samplerTransform(s, dc + delta*1.0)).x; rgba.b = sample(s, samplerTransform(s, dc + delta*2.0)).x; return rgba; }"];;
  if (v1 && ([v1 extent], !CGRectIsInfinite(v26)))
  {
    [v1 extent];
    v5 = v4;
    [v1 extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    CGAffineTransformMakeScale(&v23, 1.0, 0.333333333);
    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    v28 = CGRectApplyAffineTransform(v27, &v23);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    v24[0] = v1;
    v18 = [NSNumber numberWithDouble:v28.size.height, _NSConcreteStackBlock, 3221225472, sub_9B88, &unk_14500, v5];
    v24[1] = v18;
    v19 = [NSArray arrayWithObjects:v24 count:2];
    v20 = [v2 applyWithExtent:&v22 roiCallback:v19 arguments:{x, y, width, height}];

    v1 = v20;
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_21C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2A18(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2C0C(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2E00(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2FF4(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_31E8(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_33DC(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_3FCC(uint64_t a1)
{
  v2 = objc_alloc_init(MLModelConfiguration);
  v3 = qword_18D90;
  qword_18D90 = v2;

  [qword_18D90 setComputeUnits:1];
  v4 = [*(a1 + 32) userDefaults];
  v6 = [v4 dictionaryRepresentation];

  v5 = [v6 objectForKeyedSubscript:@"inpaintModelPrecomp"];
  if (([v5 isEqual:&__kCFBooleanTrue] & 1) != 0 || (objc_msgSend(v5, "isEqual:", &off_152D8) & 1) != 0 || objc_msgSend(v5, "isEqual:", @"1"))
  {
    [qword_18D90 setUsePrecompiledE5Bundle:1];
  }
}

void sub_4450(uint64_t a1)
{
  v2 = [*(a1 + 32) userDefaults];
  v3 = [v2 dictionaryRepresentation];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"inpaintModelPath"];
    if (v4)
    {
      v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v6 URLForResource:@"inpaint" withExtension:@"mlmodelc"];

  if (v5)
  {
LABEL_7:
    v7 = [*(a1 + 32) loadModelConfig];
    v16 = 0;
    v8 = [MLModel modelWithContentsOfURL:v5 configuration:v7 error:&v16];
    v9 = v16;
    v10 = qword_18D98;
    qword_18D98 = v8;

    v11 = [qword_18D98 valueForKeyPath:@"modelDescription.metadata.MLModelDescriptionKey"];
    if (qword_18D98)
    {
      v12 = sub_A028();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [objc_opt_class() description];
        v14 = [v5 path];
        *buf = 138543874;
        v18 = v13;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: using model %{public}@ at path: %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v12 = sub_A028();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        sub_B734();
      }
    }

    goto LABEL_16;
  }

  v5 = sub_A028();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    *buf = 138543362;
    v18 = v15;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: The inpaint.mlmodelc is no longer part of the filter bundle. It needs to be passed to the filter using the inputModel argument.\n", buf, 0xCu);
  }

  v9 = 0;
LABEL_16:
}

void sub_4738(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_4904(uint64_t a1)
{
  v1 = [*(a1 + 32) userDefaults];
  v2 = [v1 dictionaryRepresentation];

  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"refinementModelPath"];
    if (v3)
    {
      v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
      if (v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v5 URLForResource:@"deep_transfer" withExtension:@"mlmodelc"];

  if (v4)
  {
LABEL_7:
    v6 = objc_alloc_init(MLModelConfiguration);
    [v6 setComputeUnits:3];
    v15 = 0;
    v7 = [MLModel modelWithContentsOfURL:v4 configuration:v6 error:&v15];
    v8 = v15;
    v9 = qword_18DA8;
    qword_18DA8 = v7;

    v10 = [qword_18DA8 valueForKeyPath:@"modelDescription.metadata.MLModelDescriptionKey"];
    if (qword_18DA8)
    {
      v11 = sub_A028();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [objc_opt_class() description];
        v13 = [v4 path];
        *buf = 138543874;
        v17 = v12;
        v18 = 2114;
        v19 = v10;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: using model %{public}@ at path: %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v11 = sub_A028();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        sub_B778();
      }
    }

    goto LABEL_16;
  }

  v4 = sub_A028();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    *buf = 138543362;
    v17 = v14;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: The deep_transfer.mlmodelc is no longer part of the filter bundle. It needs to be passed to the filter using the inputRefinementModel argument.\n", buf, 0xCu);
  }

  v8 = 0;
LABEL_16:
}

void sub_4BF0(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

id sub_4E4C(void *a1)
{
  v1 = a1;
  v2 = [v1 valueForKeyPath:@"modelDescription.outputDescriptionsByName"];
  v3 = [v2 allValues];
  v4 = [v3 objectAtIndexedSubscript:0];

  if ([v4 type] == &dword_4)
  {
    v5 = [v4 imageConstraint];
    v6 = [v5 pixelsHigh];
    if (v6 != [v5 pixelsHigh])
    {
      v7 = "pw == ph";
      v8 = 77;
LABEL_11:
      __assert_rtn("modelDimension", "CIInpaintFilter.mm", v8, v7);
    }

    if (v6 <= 511)
    {
      v7 = "pw >= 512";
      v8 = 78;
      goto LABEL_11;
    }
  }

  else
  {
    if ([v4 type] != &dword_4 + 1)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = [v4 multiArrayConstraint];
    v9 = [v5 shape];
    v10 = [v9 lastObject];
    v6 = [v10 intValue];

    if (v6 <= 255)
    {
      __assert_rtn("modelDimension", "CIInpaintFilter.mm", 85, "pw >= 256");
    }
  }

LABEL_9:
  return v6;
}

id sub_58F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_9B94();
  v7 = [NSString stringWithFormat:@"%@/%d_%04d_%s", v6, getpid(), a1, a3];

  if (a2)
  {
    v8 = sub_9B94();
    v9 = [NSString stringWithFormat:@"%@/%d_%04d.%d_%s", v8, getpid(), a1, a2, a3];

    v7 = v9;
  }

  return v7;
}

id sub_59F8(void *a1)
{
  v1 = a1;
  v2 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_invertMaskR (__sample s) __attribute__((outputFormat(kCIFormatRh))) { return vec4(1.0-s.x, 0, 0, 1); }"];;
  y = CGRectInfinite.origin.y;
  width = CGRectInfinite.size.width;
  height = CGRectInfinite.size.height;
  v9 = v1;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [v2 applyWithExtent:v6 arguments:{CGRectInfinite.origin.x, y, width, height}];

  return v7;
}

void sub_5B28(void *a1, CGColorSpaceRef a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (v7)
  {
    [v7 extent];
    if (!CGRectIsEmpty(v25))
    {
      v9 = [NSURL fileURLWithPath:v8];
      if (([v9 checkResourceIsReachableAndReturnError:0] & 1) == 0)
      {
        v10 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
        v11 = v10;
        if (!a2)
        {
          a2 = v10;
        }

        [v7 extent];
        v13 = v12;
        v15 = v14;
        v16 = sub_A028();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20[0] = 67109634;
          v20[1] = v13;
          v21 = 1024;
          v22 = v15;
          v23 = 2082;
          v24 = [v8 UTF8String];
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "CIInpaintFilter: saving: %dx%d %{public}s\n", v20, 0x18u);
        }

        v17 = sub_9CBC();
        v18 = [v7 imageBySettingProperties:&__NSDictionary0__struct];
        v19 = [v18 imageByApplyingOrientation:a4];
        [v17 writePNGRepresentationOfImage:v19 toURL:v9 format:kCIFormatRGBA8 colorSpace:a2 options:&__NSDictionary0__struct error:0];

        CGColorSpaceRelease(v11);
      }
    }
  }
}

void sub_5D84(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    [v5 extent];
    if (CGRectIsEmpty(v23))
    {
      v7 = v5;
    }

    else
    {
      v8 = [NSURL fileURLWithPath:v6];
      if ([v8 checkResourceIsReachableAndReturnError:0])
      {
        v7 = v5;
      }

      else
      {
        v7 = sub_9200(v5);

        [v7 extent];
        v10 = v9;
        v12 = v11;
        v13 = sub_A028();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18[0] = 67109634;
          v18[1] = v10;
          v19 = 1024;
          v20 = v12;
          v21 = 2082;
          v22 = [v6 UTF8String];
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "CIInpaintFilter: saving: %dx%d %{public}s\n", v18, 0x18u);
        }

        v14 = sub_9CBC();
        v15 = CGColorSpaceCreateWithName(kCGColorSpaceLinearGray);
        v16 = [v7 imageBySettingProperties:&__NSDictionary0__struct];
        v17 = [v16 imageByApplyingOrientation:a3];
        [v14 writePNGRepresentationOfImage:v17 toURL:v8 format:kCIFormatL8 colorSpace:v15 options:&__NSDictionary0__struct error:0];

        CGColorSpaceRelease(v15);
      }
    }
  }

  else
  {
    v7 = 0;
  }
}

id sub_7148(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 imageByColorMatchingWorkingSpaceToColorSpace:a2];

    v4 = v5;
  }

  return v4;
}

id sub_71B4(void *a1)
{
  v1 = a1;
  v2 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_ycc_01_to_neg1pos1 (__sample s) __attribute__((preserves_opacity)) { s.rgb = clamp(s.rgb, 0.0, 1.0) s.rgb = s.rgb * 2.0 -1.0; return s; }"];;
  [v1 extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v14 = v1;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v2 applyWithExtent:v11 arguments:{v4, v6, v8, v10}];

  return v12;
}

void sub_72BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_72F0(void *a1)
{
  v1 = a1;
  v2 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_redOnly (__sample s) __attribute__((outputFormat(kCIFormatRh))) { return vec4(s.r, 0, 0, 1) }"];;
  [v1 extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v14 = v1;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v2 applyWithExtent:v11 arguments:{v4, v6, v8, v10}];

  return v12;
}

void sub_73F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_742C(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a2, -a3);
  v10 = [v9 imageByCroppingToRect:{a2, a3, a4, a5}];

  v13 = v14;
  v11 = [v10 imageByApplyingTransform:&v13];

  return v11;
}

id sub_7510(void *a1, CGFloat a2)
{
  v3 = a1;
  if (fabs(a2 + -1.0) > 0.000001)
  {
    CGAffineTransformMakeScale(&v6, a2, a2);
    v4 = [v3 imageByApplyingTransform:&v6];

    v3 = v4;
  }

  return v3;
}

id sub_75B4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 imageByColorMatchingColorSpaceToWorkingSpace:a2];

    v4 = v5;
  }

  return v4;
}

double sub_7CEC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, double a9@<D6>, double a10@<D7>, double a11, double a12)
{
  v18 = fmax(a5, a6);
  v19 = fmax(a9, a10);
  v20 = fmin(a9, a10);
  v21 = sqrt(a5 * a6 * a12 / a11);
  +[CIInpaintFilter getMaskMarginFactor];
  v59 = a1;
  v23 = fmin(fmax(ceil(fmax(v21, v18 * v22)), a1), v19);
  if (v18 > v20 || v23 <= v20)
  {
    v25 = v23;
  }

  else
  {
    v25 = v20;
  }

  v26 = sub_9DF8(a3, a4, a5, a6, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v61.origin.x = a7;
  v61.origin.y = a8;
  v61.size.width = a9;
  v61.size.height = a10;
  v72.origin.x = v26;
  v72.origin.y = v28;
  v72.size.width = v30;
  v72.size.height = v32;
  if (!CGRectContainsRect(v61, v72))
  {
    v54 = v25;
    v62.origin.x = v26;
    v62.origin.y = v28;
    v62.size.width = v30;
    v62.size.height = v32;
    v63 = CGRectStandardize(v62);
    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
    v63.origin.x = a7;
    v63.origin.y = a8;
    v63.size.width = a9;
    v63.size.height = a10;
    v64 = CGRectStandardize(v63);
    v36 = v64.origin.x;
    v37 = v64.origin.y;
    v38 = v64.size.width;
    v39 = v64.size.height;
    MinX = CGRectGetMinX(v64);
    v52 = v36;
    v65.origin.x = v36;
    v65.origin.y = v37;
    v65.size.width = v38;
    v56 = v39;
    v65.size.height = v39;
    MaxX = CGRectGetMaxX(v65);
    v66.origin.x = x;
    v41 = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v26 = CGRectGetMinX(v66);
    v67.origin.x = v41;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v42 = CGRectGetMaxX(v67);
    if (v26 < MinX || v42 > MaxX)
    {
      v44 = v42 - v26;
      if (v44 >= MaxX - MinX)
      {
        v26 = MinX - floor((v44 - (MaxX - MinX)) * 0.5);
        v42 = v44 + v26;
      }

      else if (v26 <= MinX)
      {
        v42 = MinX + v44;
        v26 = MinX;
      }

      else
      {
        v26 = MaxX - v44;
        v42 = MaxX;
      }
    }

    v30 = v42 - v26;
    v68.origin.x = v52;
    v68.origin.y = v37;
    v68.size.width = v38;
    v68.size.height = v56;
    MinY = CGRectGetMinY(v68);
    v69.origin.x = v52;
    v69.origin.y = v37;
    v69.size.width = v38;
    v69.size.height = v56;
    MaxY = CGRectGetMaxY(v69);
    v70.origin.x = v26;
    v70.origin.y = y;
    v70.size.width = v30;
    v70.size.height = height;
    v28 = CGRectGetMinY(v70);
    v71.origin.x = v26;
    v71.origin.y = y;
    v71.size.width = v30;
    v71.size.height = height;
    v47 = CGRectGetMaxY(v71);
    if (v28 < MinY || v47 > MaxY)
    {
      v49 = v47 - v28;
      if (v49 >= MaxY - MinY)
      {
        v28 = MinY - floor((v49 - (MaxY - MinY)) * 0.5);
        v47 = v49 + v28;
      }

      else if (v28 <= MinY)
      {
        v47 = MinY + v49;
        v28 = MinY;
      }

      else
      {
        v28 = MaxY - v49;
        v47 = MaxY;
      }
    }

    v32 = v47 - v28;
    v25 = v54;
  }

  result = v59 / v25;
  *a2 = v59 / v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v28;
  *(a2 + 24) = v30;
  *(a2 + 32) = v32;
  *(a2 + 40) = a1;
  return result;
}

id sub_9200(void *a1)
{
  v1 = a1;
  v8[0] = @"inputRVector";
  v2 = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0];
  v9[0] = v2;
  v8[1] = @"inputGVector";
  v3 = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0];
  v9[1] = v3;
  v8[2] = @"inputBVector";
  v4 = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0];
  v9[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = [v1 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v5];

  return v6;
}

id sub_939C(void *a1, unint64_t a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v15 = a1;
  [v15 extent];
  v25.origin.x = a4;
  v25.origin.y = a5;
  v25.size.width = a6;
  v25.size.height = a7;
  v16 = v15;
  if (!CGRectContainsRect(v24, v25))
  {
    v16 = [v15 imageByApplyingFilter:@"CIWrapMirror"];
  }

  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&v22, -a4, -a5);
  v21 = v22;
  v17 = [v16 imageByApplyingTransform:&v21];

  if (a3)
  {
    sub_9E84(v17, a8);
  }

  else
  {
    sub_7510(v17, a8);
  }
  v18 = ;

  v19 = [v18 imageByCroppingToRect:{0.0, 0.0, a2, a2}];

  return v19;
}

id sub_951C(void *a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = [v11 imageByClampingToExtent];

  v13 = sub_9E84(v12, a6);

  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, a2, a3);
  v17 = v18;
  v14 = [v13 imageByApplyingTransform:&v17];

  v15 = [v14 imageByCroppingToRect:{a2, a3, a4, a5}];

  return v15;
}

id sub_9644(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  [v9 extent];
  v21.origin.x = v10;
  v21.origin.y = v11;
  v21.size.width = v12;
  v21.size.height = v13;
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  if (CGRectContainsRect(v20, v21))
  {
    v14 = +[CIImage blackImage];
    v15 = [v9 imageByCompositingOverImage:v14];

    v16 = [v15 imageByCroppingToRect:{a2, a3, a4, a5}];

    v9 = v16;
  }

  v17 = [v9 imageByApplyingFilter:@"CIWrapMirror"];

  return v17;
}

id sub_9B94()
{
  if ((atomic_load_explicit(&qword_18DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18DC0))
  {
    qword_18DB8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18DC0);
  }

  v0 = [qword_18DB8 dictionaryRepresentation];
  v1 = [v0 objectForKeyedSubscript:@"dumpInpaintImages"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 hasPrefix:@"/"])
  {
    v2 = v1;
  }

  else
  {
    v2 = NSTemporaryDirectory();
  }

  v3 = v2;

  return v3;
}

id sub_9CBC()
{
  v0 = &ApplyOldInpaintModel__metaData;
  if ((atomic_load_explicit(&qword_18DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18DD0))
  {
    v4[0] = kCIContextCacheIntermediates;
    v4[1] = kCIContextName;
    v5[0] = &__kCFBooleanFalse;
    v5[1] = @"CIInpaintFilter";
    v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
    qword_18DC8 = [CIContext contextWithOptions:v3];

    __cxa_guard_release(&qword_18DD0);
    v0 = &ApplyOldInpaintModel__metaData;
  }

  v1 = *&v0[49].flags;

  return v1;
}

double sub_9DF8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = floor(CGRectGetMidX(*&a1) - a5 * 0.5);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v9;
}

id sub_9E84(void *a1, double a2)
{
  v3 = a1;
  if (fabs(a2 + -1.0) > 0.000001)
  {
    v8[0] = @"inputScale";
    v4 = [NSNumber numberWithDouble:a2];
    v8[1] = @"inputAspectRatio";
    v9[0] = v4;
    v9[1] = &off_152D8;
    v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
    v6 = [v3 imageByApplyingFilter:@"CILanczosScaleTransform" withInputParameters:v5];

    v3 = v6;
  }

  return v3;
}

void sub_9FA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_9FDC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_9FF8(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t sub_A004(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_A028()
{
  if (qword_18DE8 != -1)
  {
    sub_B89C();
  }

  return qword_18DE0;
}

void sub_A0D4(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_18DF0;
  qword_18DF0 = v1;

  [qword_18DF0 setName:@"com.apple.CIIF_EspressoWrapper.nscache"];
  [qword_18DF0 setCountLimit:8];
  v3 = qword_18DF0;

  [v3 setEvictsObjectsWhenApplicationEntersBackground:1];
}

void sub_A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A564(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 48))
  {
    *(v1 + 48) = 78;
    Current = CFAbsoluteTimeGetCurrent();
    v4 = sub_A7F4(10007);
    if (v4 || (v4 = sub_A7F4(5)) != 0)
    {
      v5 = v4;
      v15 = 0;
      v16 = 0;
      v6 = [*(a1 + 32) path];
      v7 = [v6 UTF8String];
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v8 = off_18E20;
      v25 = off_18E20;
      if (!off_18E20)
      {
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_B460;
        v20 = &unk_14638;
        v21 = &v22;
        v9 = sub_B254();
        v23[3] = dlsym(v9, "espresso_create_plan_and_load_network");
        off_18E20 = *(v21[1] + 24);
        v8 = v23[3];
      }

      _Block_object_dispose(&v22, 8);
      if (!v8)
      {
        sub_BA58();
      }

      v10 = v8(v5, 0, v7, &v15);

      if (v10)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v11 = off_18E28;
        v25 = off_18E28;
        if (!off_18E28)
        {
          v17 = _NSConcreteStackBlock;
          v18 = 3221225472;
          v19 = sub_B4B0;
          v20 = &unk_14638;
          v21 = &v22;
          v12 = sub_B254();
          v13 = dlsym(v12, "espresso_plan_submit_set_multiple_buffering");
          *(v21[1] + 24) = v13;
          off_18E28 = *(v21[1] + 24);
          v11 = v23[3];
        }

        _Block_object_dispose(&v22, 8);
        if (!v11)
        {
          sub_B9E0();
        }

        if (!v11(v10, 8))
        {
          v14 = CFAbsoluteTimeGetCurrent();
          printf("load time: %g\n", v14 - Current);
          [*(a1 + 32) setPlanIdx:v16];
          [*(a1 + 32) setPlan:v10];
          [*(a1 + 32) setCtx:v5];
          *(*(a1 + 32) + 48) = 89;
        }
      }
    }
  }
}

void sub_A7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A7F4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_18E18;
  v8 = off_18E18;
  if (!off_18E18)
  {
    v3 = sub_B254();
    v6[3] = dlsym(v3, "espresso_create_context");
    off_18E18 = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    sub_BAD0();
  }

  return v2(a1, 0xFFFFFFFFLL);
}

void sub_A8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A9C0(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 49))
  {
    v2 = result;
    *(v1 + 49) = 78;
    Current = CFAbsoluteTimeGetCurrent();
    v4 = [*(v2 + 32) plan];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v5 = off_18E30;
    v11 = off_18E30;
    if (!off_18E30)
    {
      v6 = sub_B254();
      v9[3] = dlsym(v6, "espresso_plan_build");
      off_18E30 = v9[3];
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v5)
    {
      sub_BB48();
    }

    result = v5(v4);
    if (!result)
    {
      v7 = CFAbsoluteTimeGetCurrent();
      result = printf("build time: %g\n", v7 - Current);
      *(*(v2 + 32) + 49) = 89;
    }
  }

  return result;
}

void sub_AB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_AC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_AE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_AF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_B11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_B134(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 4);
    if (v2)
    {
      v4 = [NSError errorWithDomain:@"com.apple.rawexpose.espressowrapper" code:v2 userInfo:0];
      (*(*(a1 + 32) + 16))();
    }
  }
}

void *sub_B204(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_plan_destroy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_B254()
{
  v2[0] = 0;
  if (!qword_18E08)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_B34C;
    v2[4] = &unk_144E0;
    v2[5] = v2;
    v3 = off_14658;
    v4 = 0;
    qword_18E08 = _sl_dlopen();
  }

  v0 = qword_18E08;
  if (!qword_18E08)
  {
    sub_BDA0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_B34C()
{
  result = _sl_dlopen();
  qword_18E08 = result;
  return result;
}

void *sub_B3C0(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_context_destroy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B410(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_create_context");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B460(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_create_plan_and_load_network");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B4B0(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_plan_submit_set_multiple_buffering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B500(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_plan_build");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B550(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_network_bind_direct_cvpixelbuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B5A0(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_network_query_blob_shape");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B5F0(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_plan_execute_sync");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_B640(uint64_t a1)
{
  v2 = sub_B254();
  result = dlsym(v2, "espresso_plan_submit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_18E50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_B690()
{
  sub_A01C();
  sub_9FF8(v1, v2, 5.8381e-34);
  sub_9FDC(&dword_0, v3, v4, "%{public}@: CIInpaintFilter inputModel value should be a MLModel object.", v5);
}

void sub_B6D4(void *a1, void *a2, uint64_t a3)
{
  sub_A004(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@: could not load the inpaint model specified by the inputModel argument path: %{public}@\n", v5, 0x16u);
}

void sub_B734()
{
  sub_A01C();
  sub_9FF8(v1, v2, 5.8381e-34);
  sub_9FDC(&dword_0, v3, v4, "%{public}@: could not load the default inpaint model.\n", v5);
}

void sub_B778()
{
  sub_A01C();
  sub_9FF8(v1, v2, 5.8381e-34);
  sub_9FDC(&dword_0, v3, v4, "%{public}@: could not load the default refinement model.\n", v5);
}

void sub_B7BC()
{
  sub_A01C();
  sub_9FF8(v1, v2, 5.8381e-34);
  sub_9FDC(&dword_0, v3, v4, "%{public}@: CIInpaintFilter inputModel value should be a NSString object when inputVersion is 0.", v5);
}

void sub_B800(void *a1, uint64_t a2, uint64_t a3)
{
  sub_A004(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: could not load the v0 inpaint model specified by the inputModel argument path: %{public}@\n", v4, 0x16u);
}

void sub_B858()
{
  sub_A01C();
  sub_9FF8(v1, v2, 5.8381e-34);
  sub_9FDC(&dword_0, v3, v4, "%{public}@: could not determine the size of the inpaint model.\n", v5);
}

void sub_B8F0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_context_destroy(espresso_context_ref_t)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:49 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_B968()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_plan_destroy(espresso_plan_ref_t)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_B9E0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_plan_submit_set_multiple_buffering(espresso_plan_ref_t, size_t)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:70 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BA58()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_plan_ref_t soft_espresso_create_plan_and_load_network(espresso_context_ref_t, int, const char *, espresso_network_t *)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:77 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BAD0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_context_ref_t soft_espresso_create_context(espresso_engine_t, int)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BB48()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_plan_build(espresso_plan_ref_t)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BBC0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_network_bind_direct_cvpixelbuffer(espresso_network_t, const char *, void *)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:84 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BC38()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_network_query_blob_shape(espresso_network_t, const char *, size_t *, size_t *)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:56 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BCB0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_plan_execute_sync(espresso_plan_ref_t)"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BD28()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"espresso_return_status_t soft_espresso_plan_submit(espresso_plan_ref_t, __strong dispatch_queue_t, void (^__strong)(espresso_error_info_t *))"];
  [v0 handleFailureInFunction:v1 file:@"EspressoWrapper.m" lineNumber:63 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_BDA0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *EspressoLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EspressoWrapper.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
  CFAbsoluteTimeGetCurrent();
}
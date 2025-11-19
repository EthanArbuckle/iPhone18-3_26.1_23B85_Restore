@interface LKCGImageCodingProxy
- (LKCGImageCodingProxy)initWithCoder:(id)a3;
- (LKCGImageCodingProxy)initWithObject:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LKCGImageCodingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = LKCGImageCodingProxy;
  [(LKCGImageCodingProxy *)&v3 dealloc];
}

- (LKCGImageCodingProxy)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([LKCGImageCodingProxy initWithCoder:]::onceToken != -1)
  {
    dispatch_once(&[LKCGImageCodingProxy initWithCoder:]::onceToken, &__block_literal_global_845);
  }

  v16.receiver = self;
  v16.super_class = LKCGImageCodingProxy;
  v5 = [(LKCGImageCodingProxy *)&v16 init];
  if (v5)
  {
    if ([a3 containsValueForKey:@"loadAsHDR"])
    {
      v6 = [a3 decodeBoolForKey:@"loadAsHDR"];
      v7 = &[LKCGImageCodingProxy initWithCoder:]::dictHDR;
      if ((v6 & 1) == 0)
      {
        v7 = &[LKCGImageCodingProxy initWithCoder:]::dictSDR;
      }

      v8 = *v7;
    }

    else
    {
      v8 = [LKCGImageCodingProxy initWithCoder:]::dictSDR;
    }

    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    if (v9 && (v10 = v9, (v11 = CGImageSourceCreateWithData(v9, v8)) != 0) && (v12 = v11, v5->_image = CGImageSourceCreateImageAtIndex(v11, 0, v8), CFRelease(v12), v5->_image))
    {
      if ([a3 containsValueForKey:@"A8asL8"] && objc_msgSend(a3, "decodeBoolForKey:", @"A8asL8"))
      {
        v13 = CA_copyL8CGImageAsA8(v5->_image);
        CGImageRelease(v5->_image);
        v5->_image = v13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [a3 delegate];
        if (objc_opt_respondsToSelector())
        {
          [v14 unarchiver:a3 didReadData:v10 forImage:v5->_image];
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

id __38__LKCGImageCodingProxy_initWithCoder___block_invoke()
{
  [LKCGImageCodingProxy initWithCoder:]::dictSDR = image_properties_dictionary(0);
  result = image_properties_dictionary(1);
  [LKCGImageCodingProxy initWithCoder:]::dictHDR = result;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = CACodingImageFormat;
  image = self->_image;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a3 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [v6 archiver:a3 dataForImage:image];
      if (v8)
      {
        v15 = v8;
        v9 = v8;
        objc_autoreleasePoolPop(v7);
        [a3 encodeObject:v15 forKey:@"data"];
        if (!image)
        {

          return;
        }

        goto LABEL_21;
      }

      objc_autoreleasePoolPop(v7);
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v6 archiver:a3 formatForImage:image];
      if (v10)
      {
        v4 = v10;
      }
    }
  }

  v11 = CA_CGImageIsA8(image);
  if (v11)
  {
    image = CA_copyA8CGImageAsL8(image);
    if (!image)
    {
LABEL_25:

      CGImageRelease(image);
      return;
    }
  }

  else if (!image)
  {
    return;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v12 = CGImageDestinationCreateWithData(v15, v4, 1uLL, 0);
  if (v12)
  {
    v13 = v12;
    CGImageDestinationAddImage(v12, image, 0);
    CGImageDestinationFinalize(v13);
    CFRelease(v13);
  }

  if (!v15)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_25;
  }

  [a3 encodeObject:v15 forKey:@"data"];
  if (v11)
  {
    v14 = 1;
    [a3 encodeBool:1 forKey:@"A8asL8"];
    goto LABEL_22;
  }

LABEL_21:
  v14 = 0;
LABEL_22:
  CGImageGetColorSpace(image);
  if (CGColorSpaceContainsFlexGTCInfo())
  {
    [a3 encodeBool:1 forKey:@"loadAsHDR"];
  }

  if (v14)
  {
    goto LABEL_25;
  }
}

- (LKCGImageCodingProxy)initWithObject:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = LKCGImageCodingProxy;
  v4 = [(LKCGImageCodingProxy *)&v16 init];
  if (!v4)
  {
    return v4;
  }

  v5 = CFGetTypeID(a3);
  if (CAMachPortGetTypeID::once[0] != -1)
  {
    dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
  }

  if (v5 == CAMachPortGetTypeID::type)
  {
    if (a3)
    {
      v6 = *(a3 + 4);
      if (v6)
      {
        v7 = IOSurfaceLookupFromMachPort(v6);
        if (v7)
        {
          v8 = v7;
LABEL_9:
          v4->_image = create_cgimage_from_iosurface(v8);
          CFRelease(v8);
          return v4;
        }
      }
    }

    return v4;
  }

  if (v5 == CVPixelBufferGetTypeID())
  {
    IOSurface = CVPixelBufferGetIOSurface(a3);
    if (!IOSurface)
    {
      return v4;
    }

    goto LABEL_15;
  }

  if (v5 == IOSurfaceGetTypeID())
  {
    IOSurface = a3;
LABEL_15:
    cgimage_from_iosurface = create_cgimage_from_iosurface(IOSurface);
LABEL_16:
    v4->_image = cgimage_from_iosurface;
    return v4;
  }

  if (CAImageQueueGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageQueueGetTypeID::once, &__block_literal_global_44_15357);
  }

  if (v5 == CAImageQueueGetTypeID::type)
  {
    v12 = CAImageQueueCopyLastIOSurface(a3);
    if (v12)
    {
      v13 = v12;
      v14 = create_cgimage_from_iosurface(v12);
      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    v4->_image = v14;
    return v4;
  }

  if (CAIOSurfaceGetTypeID::once != -1)
  {
    dispatch_once(&CAIOSurfaceGetTypeID::once, &__block_literal_global_2576);
  }

  if (v5 != CAIOSurfaceGetTypeID::type)
  {
    cgimage_from_iosurface = CGImageRetain(a3);
    goto LABEL_16;
  }

  if (a3)
  {
    v15 = *(a3 + 2);
    v8 = *(v15 + 128);
    if (v8)
    {
      CFRetain(*(v15 + 128));
      goto LABEL_9;
    }
  }

  return v4;
}

@end
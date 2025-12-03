@interface NSObject(CAMLWriter)
- (__CFString)CAMLType;
- (void)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSObject(CAMLWriter)

- (void)encodeWithCAMLWriter:()CAMLWriter
{
  selfCopy = self;
  v24 = *MEMORY[0x1E69E9840];
  v5 = CFGetTypeID(self);
  if (v5 == CGColorGetTypeID())
  {
    v22 = 0u;
    v23 = 0u;
    memset(&v21, 0, sizeof(v21));
    if (CGColorGetPattern(selfCopy))
    {
      Image = CGPatternGetImage();
      if (Image)
      {
        v7 = [a3 URLStringForResource:Image];
        if (v7)
        {
          [a3 setElementAttribute:v7 forKey:@"src"];
        }
      }

      CGPatternGetMatrix();
      v20 = v21;
      if (!CGAffineTransformIsIdentity(&v20))
      {
        v8 = CACreateStringWithDoubleArray(&v21, 6uLL, 1.0e-12);
        if (v8)
        {
          v9 = v8;
          v10 = CFStringCreateWithFormat(0, 0, @"matrix(%@)", v8);
          [a3 setElementAttribute:v10 forKey:@"matrix"];
          CFRelease(v10);
LABEL_33:
          CFRelease(v9);
        }
      }
    }

    else
    {
      v14 = CAGetColorSpace(35);
      CA_CGColorGetRGBComponents(selfCopy, v14, &v22);
      if (*(&v23 + 1) != 1.0)
      {
        v15 = CACreateStringWithDoubleArray(&v23 + 8, 1uLL, 0.001);
        if (v15)
        {
          v16 = v15;
          [a3 setElementAttribute:v15 forKey:@"opacity"];
          CFRelease(v16);
        }
      }

      v17 = CACreateStringWithDoubleArray(&v22, 3uLL, 0.001);
      if (v17)
      {
        v9 = v17;
        [a3 setElementContent:v17];
        goto LABEL_33;
      }
    }
  }

  else if (v5 == CGImageGetTypeID())
  {
    if (selfCopy)
    {
      v11 = CA_CGImageIsA8(selfCopy);
      if (v11)
      {
        selfCopy = CA_copyA8CGImageAsL8(selfCopy);
      }

      v12 = [a3 URLStringForResource:selfCopy];
      if (v12)
      {
        [a3 setElementAttribute:v12 forKey:@"src"];
        if (v11)
        {
          [a3 setElementAttribute:@"1" forKey:@"A8asL8"];
        }

        CGImageGetColorSpace(selfCopy);
        if (CGColorSpaceContainsFlexGTCInfo())
        {
          [a3 setElementAttribute:@"1" forKey:@"loadAsHDR"];
        }
      }

      if (v11)
      {

        CGImageRelease(selfCopy);
      }
    }
  }

  else if (v5 == CGImageSourceGetTypeID() || v5 == CGPDFDocumentGetTypeID())
  {
    v13 = [a3 URLStringForResource:selfCopy];
    if (v13)
    {

      [a3 setElementAttribute:v13 forKey:@"src"];
    }
  }

  else if (v5 == CGPathGetTypeID())
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
    CGPathApply(selfCopy, v19, path_callback);
    [a3 setElementContent:v19];
  }

  else
  {
    if (CABackingStoreGetTypeID::once[0] != -1)
    {
      dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
    }

    if (v5 == CABackingStoreGetTypeID::type)
    {
      v18 = [CATintedImage tintedImageWithCABackingStore:selfCopy];
      if ([(CATintedImage *)v18 image])
      {

        [(CATintedImage *)v18 encodeWithCAMLWriter:a3];
      }
    }
  }
}

- (__CFString)CAMLType
{
  v1 = CFGetTypeID(self);
  if (v1 == CGColorGetTypeID())
  {
    return @"CGColor";
  }

  if (v1 == CGImageGetTypeID())
  {
    return @"CGImage";
  }

  if (v1 == CGImageSourceGetTypeID())
  {
    return @"CGImageSource";
  }

  if (v1 == CGPDFDocumentGetTypeID())
  {
    return @"CGPDFDocument";
  }

  if (v1 == CGPathGetTypeID())
  {
    return @"CGPath";
  }

  if (CABackingStoreGetTypeID::once[0] != -1)
  {
    dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
  }

  if (v1 == CABackingStoreGetTypeID::type)
  {
    return @"CATintedImage";
  }

  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

@end
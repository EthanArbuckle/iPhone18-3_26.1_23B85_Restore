@interface CIImageRowReader
+ (id)forImage:(id)a3 downscaleToMax:(unsigned int)a4 colorspace:(CGColorSpace *)a5 usingContext:(id)a6;
+ (id)forImage:(id)a3 usingContext:(id)a4;
+ (id)forImage:(id)a3 usingContext:(id)a4 colorspace:(CGColorSpace *)a5;
+ (id)fromImage:(CGImage *)a3;
+ (id)fromImageFile:(id)a3;
+ (id)withDictionary:(id)a3;
- (CIImageRowReader)init;
- (const)rowAtIndex:(unsigned int)a3;
- (void)_dumpImage:(id)a3 colorspace:(CGColorSpace *)a4;
- (void)dealloc;
- (void)dumpImage:(id)a3;
- (void)dumpImageAsDeviceRGB:(id)a3;
- (void)dumpImageAsDict:(id)a3;
@end

@implementation CIImageRowReader

+ (id)fromImageFile:(id)a3
{
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  if (!v4)
  {
    return 0;
  }

  v5 = CGImageSourceCreateWithURL(v4, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    v9 = [CIImageRowReader fromImage:ImageAtIndex];
    CGImageRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v6);
  return v9;
}

+ (id)fromImage:(CGImage *)a3
{
  if (!a3)
  {
    return 0;
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  v8 = 0;
  if (!Width || !Height || !BitsPerComponent)
  {
    return v8;
  }

  v9 = ColorSpace;
  v10 = malloc_type_calloc(Height, 4 * Width, 0x6CDB6449uLL);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = CGBitmapContextCreate(v10, Width, Height, BitsPerComponent, 4 * Width, v9, 5u);
  v15.size.width = Width;
  v15.size.height = Height;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  CGContextDrawImage(v12, v15, a3);
  CGContextFlush(v12);
  CGContextRelease(v12);
  v8 = objc_alloc_init(CIImageRowReader);
  v8->bpr = 4 * Width;
  v8->data = v11;
  v8->height = Height;
  v8->width = Width;
  if (v9)
  {
    v13 = CFRetain(v9);
  }

  else
  {
    v13 = 0;
  }

  v8->cs = v13;
  *&v8->red = 0x3000200010000;
  return v8;
}

- (void)_dumpImage:(id)a3 colorspace:(CGColorSpace *)a4
{
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:self->data length:self->height * self->bpr];
  height = self->height;
  width = self->width;
  v11 = CGDataProviderCreateWithCFData(v8);
  if (v11)
  {
    v12 = v11;
    if (self->alpha && self->alpha != 3)
    {
      abort();
    }

    if (self->alpha)
    {
      v13 = 5;
    }

    else
    {
      v13 = 6;
    }

    v14 = CGImageCreate(width, height, 8uLL, 0x20uLL, self->bpr, a4, v13, v11, 0, 0, kCGRenderingIntentDefault);
    CGDataProviderRelease(v12);
    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a3];
      v16 = CGImageDestinationCreateWithURL(v15, @"public.tiff", 1uLL, 0);
      CGImageDestinationAddImage(v16, v14, 0);
      CGImageDestinationFinalize(v16);
      CGImageRelease(v14);
      CFRelease(v16);
    }
  }

  [v7 drain];
}

- (void)dumpImage:(id)a3
{
  if (self->cs)
  {

    [CIImageRowReader _dumpImage:"_dumpImage:colorspace:" colorspace:?];
  }

  else
  {
    v5 = +[CIContext defaultRGBColorSpace];
    [(CIImageRowReader *)self _dumpImage:a3 colorspace:v5];
    if (v5)
    {

      CGColorSpaceRelease(v5);
    }
  }
}

- (void)dumpImageAsDeviceRGB:(id)a3
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [(CIImageRowReader *)self _dumpImage:a3 colorspace:DeviceRGB];

  CGColorSpaceRelease(DeviceRGB);
}

+ (id)forImage:(id)a3 downscaleToMax:(unsigned int)a4 colorspace:(CGColorSpace *)a5 usingContext:(id)a6
{
  v9 = a3;
  [a3 extent];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectIsNull(v19))
  {
    return 0;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectIsInfinite(v20))
  {
    return 0;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsEmpty(v21))
  {
    return 0;
  }

  v15 = a4;
  if (width > a4 || height > v15)
  {
    v17 = fmin(fmin(v15 / width, v15 / height), 1.0);
    CGAffineTransformMakeScale(&v18, v17, v17);
    v9 = [v9 imageByApplyingTransform:&v18];
  }

  return [CIImageRowReader forImage:v9 usingContext:a6 colorspace:a5];
}

- (void)dumpImageAsDict:(id)a3
{
  v6[8] = *MEMORY[0x1E69E9840];
  v5[0] = @"bytes";
  v6[0] = [MEMORY[0x1E695DEF0] dataWithBytes:self->data length:self->bpr * self->height];
  v5[1] = @"width";
  v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->width];
  v5[2] = @"height";
  v6[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->height];
  v5[3] = @"bpr";
  v6[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->bpr];
  v5[4] = @"red";
  v6[4] = [MEMORY[0x1E696AD98] numberWithShort:self->red];
  v5[5] = @"green";
  v6[5] = [MEMORY[0x1E696AD98] numberWithShort:self->green];
  v5[6] = @"blue";
  v6[6] = [MEMORY[0x1E696AD98] numberWithShort:self->blue];
  v5[7] = @"alpha";
  v6[7] = [MEMORY[0x1E696AD98] numberWithShort:self->alpha];
  [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:{8), "writeToFile:atomically:", a3, 1}];
}

+ (id)withDictionary:(id)a3
{
  v4 = objc_alloc_init(CIImageRowReader);
  v5 = [a3 valueForKey:@"bytes"];
  v6 = malloc_type_malloc([v5 length], 0xE01A4A35uLL);
  v4->data = v6;
  memcpy(v6, [v5 bytes], objc_msgSend(v5, "length"));
  v4->bpr = [objc_msgSend(a3 valueForKey:{@"bpr", "unsignedLongValue"}];
  v4->width = [objc_msgSend(a3 valueForKey:{@"width", "unsignedLongValue"}];
  v4->height = [objc_msgSend(a3 valueForKey:{@"height", "unsignedLongValue"}];
  v4->red = [objc_msgSend(a3 valueForKey:{@"red", "shortValue"}];
  v4->green = [objc_msgSend(a3 valueForKey:{@"green", "shortValue"}];
  v4->blue = [objc_msgSend(a3 valueForKey:{@"blue", "shortValue"}];
  v4->alpha = [objc_msgSend(a3 valueForKey:{@"alpha", "shortValue"}];
  return v4;
}

+ (id)forImage:(id)a3 usingContext:(id)a4
{
  v6 = +[CIContext defaultRGBColorSpace];
  v7 = [CIImageRowReader forImage:a3 usingContext:a4 colorspace:v6];
  CGColorSpaceRelease(v6);
  return v7;
}

+ (id)forImage:(id)a3 usingContext:(id)a4 colorspace:(CGColorSpace *)a5
{
  v8 = objc_alloc_init(CIImageRowReader);
  [a3 extent];
  v10 = v9;
  v12 = v11;
  *&v9 = v13;
  v14 = vcvtms_s32_f32(*&v9);
  *&v9 = v15;
  v16 = vcvtms_s32_f32(*&v9);
  v17 = malloc_type_calloc(4 * v14, v16, 0x475B2B7BuLL);
  if (v17)
  {
    v18 = v17;
    [a4 render:a3 toBitmap:v17 rowBytes:4 * v14 bounds:264 format:a5 colorSpace:{v10, v12, v14, v16}];
    v8->bpr = 4 * v14;
    v8->data = v18;
    v8->height = v16;
    v8->width = v14;
    *&v8->red = 0x3000200010000;
    if (a5)
    {
      v19 = CFRetain(a5);
    }

    else
    {
      v19 = 0;
    }

    v8->cs = v19;
  }

  return v8;
}

- (CIImageRowReader)init
{
  v3.receiver = self;
  v3.super_class = CIImageRowReader;
  result = [(CIImageRowReader *)&v3 init];
  if (result)
  {
    *&result->bpr = 0u;
    *&result->height = 0u;
  }

  return result;
}

- (void)dealloc
{
  data = self->data;
  if (data)
  {
    free(data);
  }

  cs = self->cs;
  if (cs)
  {
    CGColorSpaceRelease(cs);
  }

  v5.receiver = self;
  v5.super_class = CIImageRowReader;
  [(CIImageRowReader *)&v5 dealloc];
}

- (const)rowAtIndex:(unsigned int)a3
{
  data = self->data;
  if (data)
  {
    return &data[self->bpr * a3];
  }

  else
  {
    return 0;
  }
}

@end
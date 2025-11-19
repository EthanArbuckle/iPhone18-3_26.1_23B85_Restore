@interface CIImage(AXMExtras)
- (id)addBorderWithBorderSize:()AXMExtras;
- (id)mergeWithImage:()AXMExtras withSize:withMetrics:;
- (uint64_t)_imageOrientationForInterfaceOrientation:()AXMExtras displayOrientation:;
- (uint64_t)_imageOrientationForInterfaceOrientation:()AXMExtras isMirrored:;
- (uint64_t)rotatedImageWithInterfaceOrientation:()AXMExtras displayOrientation:appliedImageOrientation:;
- (uint64_t)rotatedImageWithInterfaceOrientation:()AXMExtras isMirrored:appliedImageOrientation:;
- (void)saveToURL:()AXMExtras withOrientation:metrics:;
- (void)writeImageInAllOrientationsToDirectoryAtURL:()AXMExtras metrics:;
@end

@implementation CIImage(AXMExtras)

- (uint64_t)_imageOrientationForInterfaceOrientation:()AXMExtras displayOrientation:
{
  if (a4 <= 2)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v5 = AXMediaLogCommon();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          [CIImage(AXMExtras) _imageOrientationForInterfaceOrientation:displayOrientation:];
        }

        result = 0;
        if (a3 <= 1)
        {
          if (a3)
          {
            if (a3 != 1)
            {
              return result;
            }
          }

          else
          {
            v14 = AXMediaLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              [CIImage(AXMExtras) _imageOrientationForInterfaceOrientation:displayOrientation:];
            }
          }

          return 3;
        }

        if (a3 == 2)
        {
          return 1;
        }

        if (a3 != 3)
        {
          if (a3 == 4)
          {
            return 8;
          }

          return result;
        }

        return 6;
      }

      goto LABEL_15;
    }

    if (a3 > 1)
    {
      v7 = 3;
      v8 = 8;
      v9 = a3 == 4;
      v10 = 6;
      goto LABEL_22;
    }

    if (a3)
    {
      v12 = a3 == 1;
      v13 = 1;
      goto LABEL_38;
    }

    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (a4 == 3)
  {
    if (a3 > 1)
    {
      v7 = 8;
      v8 = 1;
      v9 = a3 == 4;
      v10 = 3;
      goto LABEL_22;
    }

    if (a3)
    {
      v12 = a3 == 1;
      v13 = 6;
LABEL_38:
      if (v12)
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (a4 != 4)
  {
LABEL_15:
    v11 = AXMediaLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CIImage(AXMExtras) _imageOrientationForInterfaceOrientation:displayOrientation:];
    }

    return 0;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      v12 = a3 == 1;
      v13 = 8;
      goto LABEL_38;
    }

    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
LABEL_51:
      [CIImage(AXMExtras) _imageOrientationForInterfaceOrientation:displayOrientation:];
    }

LABEL_52:

    return 6;
  }

  v7 = 6;
  v8 = 3;
  v9 = a3 == 4;
  v10 = 1;
LABEL_22:
  if (!v9)
  {
    v10 = 0;
  }

  if (a3 != 3)
  {
    v8 = v10;
  }

  if (a3 == 2)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (uint64_t)_imageOrientationForInterfaceOrientation:()AXMExtras isMirrored:
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
LABEL_13:
      v6 = a4 == 0;
      v7 = 6;
      goto LABEL_15;
    }

    if (a3 == 2)
    {
      if (a4)
      {
        return 5;
      }

      else
      {
        return 8;
      }
    }

LABEL_10:
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CIImage(AXMExtras) _imageOrientationForInterfaceOrientation:isMirrored:];
    }

    goto LABEL_13;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v6 = a4 == 0;
      v7 = 3;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = a4 == 0;
  v7 = 1;
LABEL_15:
  if (v6)
  {
    return v7;
  }

  else
  {
    return v7 + 1;
  }
}

- (uint64_t)rotatedImageWithInterfaceOrientation:()AXMExtras displayOrientation:appliedImageOrientation:
{
  v7 = [a1 _imageOrientationForInterfaceOrientation:? displayOrientation:?];
  result = [a1 imageByApplyingOrientation:v7];
  if (a5)
  {
    *a5 = v7;
  }

  return result;
}

- (uint64_t)rotatedImageWithInterfaceOrientation:()AXMExtras isMirrored:appliedImageOrientation:
{
  v7 = [a1 _imageOrientationForInterfaceOrientation:? isMirrored:?];
  result = [a1 imageByApplyingOrientation:v7];
  if (a5)
  {
    *a5 = v7;
  }

  return result;
}

- (id)mergeWithImage:()AXMExtras withSize:withMetrics:
{
  v8 = MEMORY[0x1E695F620];
  v9 = a5;
  v10 = [[v8 alloc] initWithOptions:0];
  [v9 extent];
  v11 = [v10 createCGImage:v9 fromRect:?];

  v12 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
  [a1 extent];
  v13 = [v12 createCGImage:a1 fromRect:?];

  BitsPerComponent = CGImageGetBitsPerComponent(v11);
  BytesPerRow = CGImageGetBytesPerRow(v11);
  ColorSpace = CGImageGetColorSpace(v11);
  BitmapInfo = CGImageGetBitmapInfo(v11);
  v18 = CGBitmapContextCreate(0, a2, a3, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  CGContextSetInterpolationQuality(v18, kCGInterpolationHigh);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = a2;
  v23.size.height = a3;
  CGContextDrawImage(v18, v23, v13);
  CGContextSetAlpha(v18, 0.5);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = a2;
  v24.size.height = a3;
  CGContextDrawImage(v18, v24, v11);
  Image = CGBitmapContextCreateImage(v18);
  v20 = [MEMORY[0x1E695F658] imageWithCGImage:Image];
  if (Image)
  {
    CFRelease(Image);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v20;
}

- (id)addBorderWithBorderSize:()AXMExtras
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
  [a1 extent];
  v5 = [v4 createCGImage:a1 fromRect:?];

  [a1 extent];
  v7 = v6;
  v9 = v8;
  v10 = v6;
  v11 = v8;
  BitsPerComponent = CGImageGetBitsPerComponent(v5);
  BytesPerRow = CGImageGetBytesPerRow(v5);
  ColorSpace = CGImageGetColorSpace(v5);
  BitmapInfo = CGImageGetBitmapInfo(v5);
  v16 = CGBitmapContextCreate(0, v10, v11, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  v20 = xmmword_1AE451DD0;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v7;
  v23.size.height = v9;
  CGContextDrawImage(v16, v23, v5);
  CGContextSetStrokeColor(v16, &v20);
  CGContextSetLineWidth(v16, a2);
  v24.origin.x = a2 * 0.5;
  v24.origin.y = a2 * 0.5;
  v24.size.width = v7 - a2;
  v24.size.height = v9 - a2;
  CGContextAddRect(v16, v24);
  CGContextDrawPath(v16, kCGPathStroke);
  Image = CGBitmapContextCreateImage(v16);
  v18 = [MEMORY[0x1E695F658] imageWithCGImage:{Image, v20}];
  if (Image)
  {
    CFRelease(Image);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v18;
}

- (void)writeImageInAllOrientationsToDirectoryAtURL:()AXMExtras metrics:
{
  v9 = a3;
  v6 = a4;
  v7 = 1;
  do
  {
    v8 = [a1 imageByApplyingOrientation:v7];
    [v8 saveToURL:v9 withOrientation:v7 metrics:v6];

    v7 = (v7 + 1);
  }

  while (v7 != 9);
}

- (void)saveToURL:()AXMExtras withOrientation:metrics:
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v8 path];
  v12 = [v10 fileExistsAtPath:v11];

  if ((v12 & 1) != 0 || (v23 = 0, [v10 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v23], (v13 = v23) == 0))
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v14 setDateFormat:@"MM-dd-HH-mm-ss"];
    v16 = [MEMORY[0x1E695DF00] date];
    v15 = [v14 stringFromDate:v16];

    v17 = MEMORY[0x1E696AEC0];
    [a1 extent];
    v19 = v18;
    [a1 extent];
    v21 = [v17 stringWithFormat:@"image_%dx%d_%ld_%@.jpg", v19, v20, a4, v15];
    v22 = [v8 URLByAppendingPathComponent:v21];
    AXMWriteImageToURL(a1, v22, v9);
  }

  else
  {
    v14 = v13;
    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AXMModelDetectorNode evaluate:v14 metrics:v15];
    }
  }
}

@end
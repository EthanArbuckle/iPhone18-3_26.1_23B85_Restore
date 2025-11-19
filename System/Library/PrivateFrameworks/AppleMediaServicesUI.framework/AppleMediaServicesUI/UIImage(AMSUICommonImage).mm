@interface UIImage(AMSUICommonImage)
- (id)ams_imageCroppedTo:()AMSUICommonImage;
- (id)ams_imageWithRenderingMode:()AMSUICommonImage;
- (uint64_t)ams_aspectRatio;
- (uint64_t)ams_imageScaledTo:()AMSUICommonImage;
@end

@implementation UIImage(AMSUICommonImage)

- (uint64_t)ams_aspectRatio
{
  result = [a1 size];
  if (v3 != 0.0)
  {
    [a1 size];
    return [a1 size];
  }

  return result;
}

- (id)ams_imageCroppedTo:()AMSUICommonImage
{
  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  [a1 size];
  v27.size.width = v12;
  v27.size.height = v13;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  v27.origin.x = v10;
  v27.origin.y = v11;
  if (CGRectEqualToRect(v25, v27))
  {
    v14 = a1;
  }

  else
  {
    [a1 scale];
    v16 = a2 * v15;
    v17 = a3 * v15;
    v18 = a4 * v15;
    v19 = a5 * v15;
    v20 = [a1 CGImage];
    v26.origin.x = v16;
    v26.origin.y = v17;
    v26.size.width = v18;
    v26.size.height = v19;
    v21 = CGImageCreateWithImageInRect(v20, v26);
    if (v21)
    {
      v22 = v21;
      v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v21];
      CGImageRelease(v22);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (uint64_t)ams_imageScaledTo:()AMSUICommonImage
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [a1 CGImage];

  return [v3 imageWithCGImage:v4 scale:0 orientation:a2];
}

- (id)ams_imageWithRenderingMode:()AMSUICommonImage
{
  if ([a1 isSymbolImage])
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 imageWithRenderingMode:a3];
  }

  return v5;
}

@end
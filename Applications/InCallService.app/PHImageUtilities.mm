@interface PHImageUtilities
+ (UIEdgeInsets)transparencyInsetsForImage:(id)image requiringFullOpacity:(BOOL)opacity;
+ (id)croppedAndCenteredAvatarImageForImage:(id)image usingTransparencyInsets:(UIEdgeInsets)insets widthMultiplier:(double)multiplier;
+ (id)croppedAndCenteredAvatarImageForImage:(id)image widthMultiplier:(double)multiplier;
+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)image requiringFullOpacity:(BOOL)opacity;
@end

@implementation PHImageUtilities

+ (UIEdgeInsets)transparencyInsetsForImage:(id)image requiringFullOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  imageCopy = image;
  Width = CGImageGetWidth([imageCopy CGImage]);
  Height = CGImageGetHeight([imageCopy CGImage]);
  v8 = malloc_type_calloc(Height * Width, 1uLL, 0x100004077774924uLL);
  v9 = CGBitmapContextCreate(v8, Width, Height, 8uLL, Width, 0, 7u);
  cGImage = [imageCopy CGImage];
  v35.size.width = Width;
  v35.size.height = Height;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  CGContextDrawImage(v9, v35, cGImage);
  v11 = malloc_type_calloc(Height, 2uLL, 0x1000040BDFB0063uLL);
  v12 = malloc_type_calloc(Width, 2uLL, 0x1000040BDFB0063uLL);
  v13 = v12;
  if (Height <= 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v14 = 0;
    v15 = v8;
    do
    {
      v16 = v15;
      v17 = Width;
      v18 = v12;
      if (Width >= 1)
      {
        while (1)
        {
          v20 = *v16++;
          v19 = v20;
          if (opacityCopy)
          {
            break;
          }

          if (v19)
          {
            goto LABEL_8;
          }

LABEL_9:
          ++v18;
          if (!--v17)
          {
            goto LABEL_10;
          }
        }

        if (v19 != 255)
        {
          goto LABEL_9;
        }

LABEL_8:
        ++v11[v14];
        ++*v18;
        goto LABEL_9;
      }

LABEL_10:
      ++v14;
      v15 += Width;
    }

    while (v14 != Height);
    v21 = 0;
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    while (!v11[v21])
    {
      if (Height == ++v21)
      {
        goto LABEL_17;
      }
    }

    top = v21;
  }

LABEL_17:
  v26 = -1;
  while (Height >= 1)
  {
    v27 = v11[Height - 1];
    ++v26;
    --Height;
    if (v27)
    {
      bottom = v26;
      break;
    }
  }

  if (Width >= 1)
  {
    v28 = 0;
    while (!v12[v28])
    {
      if (Width == ++v28)
      {
        goto LABEL_27;
      }
    }

    left = v28;
  }

LABEL_27:
  v29 = -1;
  while (Width >= 1)
  {
    v30 = v12[Width - 1];
    ++v29;
    --Width;
    if (v30)
    {
      right = v29;
      break;
    }
  }

  free(v8);
  free(v13);
  free(v11);
  CGContextRelease(v9);

  v31 = top;
  v32 = left;
  v33 = bottom;
  v34 = right;
  result.right = v34;
  result.bottom = v33;
  result.left = v32;
  result.top = v31;
  return result;
}

+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)image requiringFullOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  imageCopy = image;
  [imageCopy size];
  if (v7 >= 2.0 && ([imageCopy size], v8 >= 2.0))
  {
    [imageCopy size];
    v12 = v11;
    [imageCopy size];
    v14 = v13;
    pbui_CGImageBackedImage = [imageCopy pbui_CGImageBackedImage];
    [self transparencyInsetsForImage:pbui_CGImageBackedImage requiringFullOpacity:opacityCopy];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = imageCopy;
    v9 = v24;
    if (v17 != 0.0 || v21 != 0.0 || v19 != 0.0 || v23 != 0.0)
    {
      [v24 scale];
      v26 = v19 / v25 + 0.0;
      [v9 scale];
      v28 = v17 / v27 + 0.0;
      [v9 scale];
      v30 = v12 - (v19 + v23) / v29;
      [v9 scale];
      v32 = [v9 pbui_cropImageWithRect:v26 outputSize:{v28, v30, v14 - (v17 + v21) / v31, v30, v14 - (v17 + v21) / v31}];

      v9 = v32;
    }
  }

  else
  {
    v9 = imageCopy;
  }

  return v9;
}

+ (id)croppedAndCenteredAvatarImageForImage:(id)image widthMultiplier:(double)multiplier
{
  imageCopy = image;
  [self transparencyInsetsForImage:imageCopy requiringFullOpacity:0];
  v6 = [self croppedAndCenteredAvatarImageForImage:imageCopy usingTransparencyInsets:? widthMultiplier:?];

  return v6;
}

+ (id)croppedAndCenteredAvatarImageForImage:(id)image usingTransparencyInsets:(UIEdgeInsets)insets widthMultiplier:(double)multiplier
{
  bottom = insets.bottom;
  top = insets.top;
  imageCopy = image;
  [imageCopy size];
  v11 = v10 * multiplier;
  [imageCopy size];
  v13 = v12;
  [imageCopy scale];
  v15 = v14;
  v26.width = v11;
  v26.height = v13;
  UIGraphicsBeginImageContextWithOptions(v26, 0, v15);
  if (bottom == 0.0 || top == 0.0)
  {
    v16 = imageCopy;
  }

  else
  {
    v16 = [self trimmedImageByTrimmingTransparentPixelsFromImage:imageCopy];
  }

  v17 = v16;
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v11;
  v27.size.height = v13;
  MidX = CGRectGetMidX(v27);
  [v17 size];
  v20 = MidX - v19 * 0.5;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v11;
  v28.size.height = v13;
  MidY = CGRectGetMidY(v28);
  [v17 size];
  [v17 drawAtPoint:{v20, MidY - v22 * 0.5}];
  v23 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v23;
}

@end
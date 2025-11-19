@interface PHImageUtilities
+ (UIEdgeInsets)transparencyInsetsForImage:(id)a3 requiringFullOpacity:(BOOL)a4;
+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 usingTransparencyInsets:(UIEdgeInsets)a4 widthMultiplier:(double)a5;
+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 widthMultiplier:(double)a4;
+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)a3 requiringFullOpacity:(BOOL)a4;
@end

@implementation PHImageUtilities

+ (UIEdgeInsets)transparencyInsetsForImage:(id)a3 requiringFullOpacity:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  Width = CGImageGetWidth([v5 CGImage]);
  Height = CGImageGetHeight([v5 CGImage]);
  v8 = malloc_type_calloc(Height * Width, 1uLL, 0x100004077774924uLL);
  v9 = CGBitmapContextCreate(v8, Width, Height, 8uLL, Width, 0, 7u);
  v10 = [v5 CGImage];
  v35.size.width = Width;
  v35.size.height = Height;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  CGContextDrawImage(v9, v35, v10);
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
          if (v4)
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

+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)a3 requiringFullOpacity:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 size];
  if (v7 >= 2.0 && ([v6 size], v8 >= 2.0))
  {
    [v6 size];
    v12 = v11;
    [v6 size];
    v14 = v13;
    v15 = [v6 pbui_CGImageBackedImage];
    [a1 transparencyInsetsForImage:v15 requiringFullOpacity:v4];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = v6;
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
    v9 = v6;
  }

  return v9;
}

+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 widthMultiplier:(double)a4
{
  v5 = a3;
  [a1 transparencyInsetsForImage:v5 requiringFullOpacity:0];
  v6 = [a1 croppedAndCenteredAvatarImageForImage:v5 usingTransparencyInsets:? widthMultiplier:?];

  return v6;
}

+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 usingTransparencyInsets:(UIEdgeInsets)a4 widthMultiplier:(double)a5
{
  bottom = a4.bottom;
  top = a4.top;
  v9 = a3;
  [v9 size];
  v11 = v10 * a5;
  [v9 size];
  v13 = v12;
  [v9 scale];
  v15 = v14;
  v26.width = v11;
  v26.height = v13;
  UIGraphicsBeginImageContextWithOptions(v26, 0, v15);
  if (bottom == 0.0 || top == 0.0)
  {
    v16 = v9;
  }

  else
  {
    v16 = [a1 trimmedImageByTrimmingTransparentPixelsFromImage:v9];
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
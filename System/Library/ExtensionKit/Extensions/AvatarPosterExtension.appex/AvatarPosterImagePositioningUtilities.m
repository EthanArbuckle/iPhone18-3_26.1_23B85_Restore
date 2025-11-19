@interface AvatarPosterImagePositioningUtilities
+ (UIEdgeInsets)transparencyInsetsForImage:(id)a3 requiringFullOpacity:(BOOL)a4;
+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 scaleMultiplier:(double)a4;
+ (id)stickerGeneraterPosterOptionsWithSize:(CGSize)a3 minimumHorizontalMargin:(double)a4;
+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)a3 requiringFullOpacity:(BOOL)a4;
@end

@implementation AvatarPosterImagePositioningUtilities

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
    [v6 scale];
    v14 = v13;
    [v6 size];
    v16 = v15;
    [v6 scale];
    v18 = v17;
    [a1 transparencyInsetsForImage:v6 requiringFullOpacity:v4];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = v6;
    v9 = v27;
    if (v20 != 0.0 || v24 != 0.0 || v22 != 0.0 || v26 != 0.0)
    {
      v28 = [v27 CGImage];
      v33.origin.x = v22 + 0.0;
      v33.origin.y = v20 + 0.0;
      v33.size.width = v12 * v14 - (v22 + v26);
      v33.size.height = v16 * v18 - (v20 + v24);
      v29 = CGImageCreateWithImageInRect(v28, v33);
      [v9 scale];
      v31 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", v29, [v9 imageOrientation], v30);

      CGImageRelease(v29);
      v9 = v31;
    }
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 scaleMultiplier:(double)a4
{
  v6 = a3;
  v7 = [a1 trimmedImageByTrimmingTransparentPixelsFromImage:v6];
  [v7 size];
  v9 = v8 / a4;
  [v7 size];
  v11 = v10 / a4;
  [v6 scale];
  v13 = v12;

  v22.width = v9;
  v22.height = v11;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v13);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v9;
  v23.size.height = v11;
  MidX = CGRectGetMidX(v23);
  [v7 size];
  v16 = MidX - v15 * 0.5;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v9;
  v24.size.height = v11;
  MidY = CGRectGetMidY(v24);
  [v7 size];
  [v7 drawAtPoint:{v16, MidY - v18 * 0.5}];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

+ (id)stickerGeneraterPosterOptionsWithSize:(CGSize)a3 minimumHorizontalMargin:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = objc_alloc_init(AVTStickerGeneratorPosterOptions);
  [v7 setSize:{width, height}];
  if (objc_opt_respondsToSelector())
  {
    [v7 setMinimumHorizontalMargin:a4];
  }

  return v7;
}

@end
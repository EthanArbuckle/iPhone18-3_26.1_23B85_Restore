@interface AVTImageUtilities
+ (UIEdgeInsets)_transparencyInsetsForUInt8AlphaContext:(CGContext *)a3 requiringFullOpacity:(BOOL)a4;
+ (void)cropImageWhitespace:(CGImage *)a3 outsideRect:(CGRect)a4 insideRect:(CGRect)a5 resultBlock:(id)a6;
+ (void)posterWithStickerImage:(CGImage *)a3 posterSize:(CGSize)a4 minimumHorizontalMargin:(float)a5 thumbnailRect:(CGRect)a6 allowsExtraTallContent:(BOOL)a7 expectsExtraTallContent:(BOOL)a8 resultBlock:(id)a9;
@end

@implementation AVTImageUtilities

+ (void)cropImageWhitespace:(CGImage *)a3 outsideRect:(CGRect)a4 insideRect:(CGRect)a5 resultBlock:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.size.height;
  v11 = a4.size.width;
  v12 = a4.origin.y;
  v13 = a4.origin.x;
  v15 = a6;
  v16 = CGImageGetWidth(a3);
  v17 = CGImageGetHeight(a3);
  [AVTImageUtilities transparencyInsetsForImage:a3 requiringFullOpacity:0];
  v19 = v18;
  v30.origin.x = v20;
  v22 = v16 - v20 - v21;
  v30.size.height = v17 - v19 - v23;
  v30.origin.y = v19;
  v30.size.width = v22;
  v33.origin.x = v13;
  v33.origin.y = v12;
  v33.size.width = v11;
  v33.size.height = v10;
  v31 = CGRectUnion(v30, v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v32 = CGRectIntersection(v31, v34);
  v24 = v32.origin.x;
  v25 = v32.origin.y;
  v26 = v32.size.width;
  v27 = v32.size.height;
  v28 = CGImageCreateWithImageInRect(a3, v32);
  v15[2](v15, v28, v24, v25, v26, v27);

  CGImageRelease(v28);
}

+ (void)posterWithStickerImage:(CGImage *)a3 posterSize:(CGSize)a4 minimumHorizontalMargin:(float)a5 thumbnailRect:(CGRect)a6 allowsExtraTallContent:(BOOL)a7 expectsExtraTallContent:(BOOL)a8 resultBlock:(id)a9
{
  v9 = a8;
  v10 = a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a4.height;
  v55 = a4.width;
  v17 = a9;
  v18 = CGImageGetWidth(a3);
  v19 = CGImageGetHeight(a3);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v20 = v19 - CGRectGetMaxY(v57);
  [AVTImageUtilities transparencyInsetsForImage:a3 requiringFullOpacity:0];
  v24 = v23;
  v26 = v25;
  v27 = v20 > v21;
  if (v10)
  {
    v28 = v21;
  }

  else
  {
    v28 = v20;
  }

  v29 = v27 && v9;
  if (v27 && v9)
  {
    v30 = v28;
  }

  else
  {
    v30 = v21;
  }

  if (v27 && v9)
  {
    v31 = v20;
  }

  else
  {
    v31 = v21;
  }

  [AVTImageUtilities transparencyInsetsForImage:a3 imageRect:0 requiringFullOpacity:v26, v24, v18 - v26 - v22, v19 - v24 - v31];
  v33 = v32;
  v35 = v18 - v32 - v34;
  v36 = v19 - v24 - v30;
  v37 = v15;
  if (v29)
  {
    v38 = !v10;
  }

  else
  {
    v38 = 1;
  }

  v54 = v35;
  if (v38)
  {
    v45 = v55;
    v39 = (v55 - (a5 + a5)) / v35;
    v40 = v15 / v36;
    v41 = v37 - v36 * v39;
    if (v15 / v36 <= v39)
    {
      v41 = 0.0;
      v39 = v15 / v36;
    }

    if (v9)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v41;
    }

    if (v9)
    {
      v43 = v40;
    }

    else
    {
      v43 = v39;
    }
  }

  else
  {
    v42 = v36 / (v19 - v24 - v20);
    v37 = (v37 * v42);
    v43 = v15 / v36 * v42;
    v44 = 0.0;
    v45 = v55;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  v47 = (CGImageGetBitsPerPixel(a3) >> 3) * v45;
  v48 = malloc_type_calloc(v37, v47, 0xF53F3A29uLL);
  ColorSpace = CGImageGetColorSpace(a3);
  BitmapInfo = CGImageGetBitmapInfo(a3);
  v51 = CGBitmapContextCreate(v48, v45, v37, BitsPerComponent, v47, ColorSpace, BitmapInfo);
  v58.size.width = v43 * v18;
  v58.size.height = v43 * v19;
  v58.origin.x = (v45 - v54 * v43) * 0.5 - v33 * v43;
  v58.origin.y = v44 - (v19 - (v24 + v36)) * v43;
  CGContextDrawImage(v51, v58, a3);
  Image = CGBitmapContextCreateImage(v51);
  v17[2](v17, Image, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));

  CGImageRelease(Image);
  CGContextRelease(v51);

  free(v48);
}

+ (UIEdgeInsets)_transparencyInsetsForUInt8AlphaContext:(CGContext *)a3 requiringFullOpacity:(BOOL)a4
{
  v4 = a4;
  Width = CGBitmapContextGetWidth(a3);
  Height = CGBitmapContextGetHeight(a3);
  Data = CGBitmapContextGetData(a3);
  v9 = malloc_type_calloc(Height, 2uLL, 0x1000040BDFB0063uLL);
  v10 = malloc_type_calloc(Width, 2uLL, 0x1000040BDFB0063uLL);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v12 = Data;
      v13 = Width;
      v14 = v10;
      if (Width)
      {
        while (1)
        {
          v16 = *v12++;
          v15 = v16;
          if (v4)
          {
            break;
          }

          if (v15)
          {
            goto LABEL_8;
          }

LABEL_9:
          ++v14;
          if (!--v13)
          {
            goto LABEL_10;
          }
        }

        if (v15 != 255)
        {
          goto LABEL_9;
        }

LABEL_8:
        ++v9[i];
        ++*v14;
        goto LABEL_9;
      }

LABEL_10:
      Data += Width;
    }

    v17 = 0;
    v18 = *MEMORY[0x1E69DDCE0];
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    v21 = *(MEMORY[0x1E69DDCE0] + 24);
    while (!v9[v17])
    {
      if (Height == ++v17)
      {
        goto LABEL_18;
      }
    }

    v18 = v17;
LABEL_18:
    v22 = 0;
    while (!v9[Height - 1 + v22])
    {
      if (-Height == --v22)
      {
        if (Width)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }
    }

    v20 = -v22;
    if (!Width)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v18 = *MEMORY[0x1E69DDCE0];
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    v21 = *(MEMORY[0x1E69DDCE0] + 24);
    if (!Width)
    {
      goto LABEL_34;
    }
  }

LABEL_24:
  v23 = 0;
  while (!v10[v23])
  {
    if (Width == ++v23)
    {
      goto LABEL_29;
    }
  }

  v19 = v23;
LABEL_29:
  v24 = 0;
  while (!v10[Width - 1 + v24])
  {
    if (-Width == --v24)
    {
      goto LABEL_34;
    }
  }

  v21 = -v24;
LABEL_34:
  free(v10);
  free(v9);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

@end
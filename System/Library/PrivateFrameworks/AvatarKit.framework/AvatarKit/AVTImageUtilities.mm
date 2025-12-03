@interface AVTImageUtilities
+ (UIEdgeInsets)_transparencyInsetsForUInt8AlphaContext:(CGContext *)context requiringFullOpacity:(BOOL)opacity;
+ (void)cropImageWhitespace:(CGImage *)whitespace outsideRect:(CGRect)rect insideRect:(CGRect)insideRect resultBlock:(id)block;
+ (void)posterWithStickerImage:(CGImage *)image posterSize:(CGSize)size minimumHorizontalMargin:(float)margin thumbnailRect:(CGRect)rect allowsExtraTallContent:(BOOL)content expectsExtraTallContent:(BOOL)tallContent resultBlock:(id)block;
@end

@implementation AVTImageUtilities

+ (void)cropImageWhitespace:(CGImage *)whitespace outsideRect:(CGRect)rect insideRect:(CGRect)insideRect resultBlock:(id)block
{
  height = insideRect.size.height;
  width = insideRect.size.width;
  y = insideRect.origin.y;
  x = insideRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  blockCopy = block;
  v16 = CGImageGetWidth(whitespace);
  v17 = CGImageGetHeight(whitespace);
  [AVTImageUtilities transparencyInsetsForImage:whitespace requiringFullOpacity:0];
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
  v28 = CGImageCreateWithImageInRect(whitespace, v32);
  blockCopy[2](blockCopy, v28, v24, v25, v26, v27);

  CGImageRelease(v28);
}

+ (void)posterWithStickerImage:(CGImage *)image posterSize:(CGSize)size minimumHorizontalMargin:(float)margin thumbnailRect:(CGRect)rect allowsExtraTallContent:(BOOL)content expectsExtraTallContent:(BOOL)tallContent resultBlock:(id)block
{
  tallContentCopy = tallContent;
  contentCopy = content;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = size.height;
  v55 = size.width;
  blockCopy = block;
  v18 = CGImageGetWidth(image);
  v19 = CGImageGetHeight(image);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v20 = v19 - CGRectGetMaxY(v57);
  [AVTImageUtilities transparencyInsetsForImage:image requiringFullOpacity:0];
  v24 = v23;
  v26 = v25;
  v27 = v20 > v21;
  if (contentCopy)
  {
    v28 = v21;
  }

  else
  {
    v28 = v20;
  }

  v29 = v27 && tallContentCopy;
  if (v27 && tallContentCopy)
  {
    v30 = v28;
  }

  else
  {
    v30 = v21;
  }

  if (v27 && tallContentCopy)
  {
    v31 = v20;
  }

  else
  {
    v31 = v21;
  }

  [AVTImageUtilities transparencyInsetsForImage:image imageRect:0 requiringFullOpacity:v26, v24, v18 - v26 - v22, v19 - v24 - v31];
  v33 = v32;
  v35 = v18 - v32 - v34;
  v36 = v19 - v24 - v30;
  v37 = v15;
  if (v29)
  {
    v38 = !contentCopy;
  }

  else
  {
    v38 = 1;
  }

  v54 = v35;
  if (v38)
  {
    v45 = v55;
    v39 = (v55 - (margin + margin)) / v35;
    v40 = v15 / v36;
    v41 = v37 - v36 * v39;
    if (v15 / v36 <= v39)
    {
      v41 = 0.0;
      v39 = v15 / v36;
    }

    if (tallContentCopy)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v41;
    }

    if (tallContentCopy)
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

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v47 = (CGImageGetBitsPerPixel(image) >> 3) * v45;
  v48 = malloc_type_calloc(v37, v47, 0xF53F3A29uLL);
  ColorSpace = CGImageGetColorSpace(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  v51 = CGBitmapContextCreate(v48, v45, v37, BitsPerComponent, v47, ColorSpace, BitmapInfo);
  v58.size.width = v43 * v18;
  v58.size.height = v43 * v19;
  v58.origin.x = (v45 - v54 * v43) * 0.5 - v33 * v43;
  v58.origin.y = v44 - (v19 - (v24 + v36)) * v43;
  CGContextDrawImage(v51, v58, image);
  Image = CGBitmapContextCreateImage(v51);
  blockCopy[2](blockCopy, Image, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));

  CGImageRelease(Image);
  CGContextRelease(v51);

  free(v48);
}

+ (UIEdgeInsets)_transparencyInsetsForUInt8AlphaContext:(CGContext *)context requiringFullOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  Data = CGBitmapContextGetData(context);
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
          if (opacityCopy)
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
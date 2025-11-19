@interface CNAvatarImageUtilities
+ (UIEdgeInsets)transparencyInsetsForImage:(id)a3 requiringFullOpacity:(BOOL)a4;
+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 usingTransparencyInsets:(UIEdgeInsets)a4 widthMultiplier:(double)a5;
+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 widthMultiplier:(double)a4;
+ (id)paddedImage:(id)a3 withPadding:(double)a4;
+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)a3 requiringFullOpacity:(BOOL)a4;
@end

@implementation CNAvatarImageUtilities

+ (id)paddedImage:(id)a3 withPadding:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v6 setOpaque:0];
  [v5 scale];
  [v6 setScale:?];
  [v5 size];
  v8 = v7 + a4 * 2.0;
  [v5 size];
  v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v6 format:{v8, v9 + a4 * 2.0}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__CNAvatarImageUtilities_paddedImage_withPadding___block_invoke;
  v14[3] = &unk_1E74E2660;
  v15 = v5;
  v11 = v5;
  v12 = [v10 imageWithActions:v14];

  return v12;
}

void __50__CNAvatarImageUtilities_paddedImage_withPadding___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = [v4 format];
  [v11 bounds];
  MidX = CGRectGetMidX(v13);
  [*(a1 + 32) size];
  v7 = MidX - v6 * 0.5;
  v8 = [v4 format];

  [v8 bounds];
  MidY = CGRectGetMidY(v14);
  [*(a1 + 32) size];
  [v3 drawAtPoint:{v7, MidY - v10 * 0.5}];
}

+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 usingTransparencyInsets:(UIEdgeInsets)a4 widthMultiplier:(double)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v11 = a3;
  [v11 size];
  v13 = v12 * a5;
  [v11 size];
  v15 = v14;
  v16 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v16 setOpaque:0];
  [v11 scale];
  [v16 setScale:?];
  v17 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v16 format:{v13, v15}];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __104__CNAvatarImageUtilities_croppedAndCenteredAvatarImageForImage_usingTransparencyInsets_widthMultiplier___block_invoke;
  v21[3] = &unk_1E74E1F68;
  v23 = top;
  v24 = left;
  v25 = bottom;
  v26 = right;
  v22 = v11;
  v28 = 0;
  v29 = 0;
  v27 = a1;
  v30 = v13;
  v31 = v15;
  v18 = v11;
  v19 = [v17 imageWithActions:v21];

  return v19;
}

void __104__CNAvatarImageUtilities_croppedAndCenteredAvatarImageForImage_usingTransparencyInsets_widthMultiplier___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 0.0)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = [*(a1 + 72) trimmedImageByTrimmingTransparentPixelsFromImage:*(a1 + 32)];
  }

  v8 = v2;
  MidX = CGRectGetMidX(*(a1 + 80));
  [v8 size];
  v5 = MidX - v4 * 0.5;
  MidY = CGRectGetMidY(*(a1 + 80));
  [v8 size];
  [v8 drawAtPoint:{v5, MidY - v7 * 0.5}];
}

+ (id)croppedAndCenteredAvatarImageForImage:(id)a3 widthMultiplier:(double)a4
{
  v5 = a3;
  [a1 transparencyInsetsForImage:v5 requiringFullOpacity:0];
  v6 = [a1 croppedAndCenteredAvatarImageForImage:v5 usingTransparencyInsets:? widthMultiplier:?];

  return v6;
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
      v34.origin.x = v22 + 0.0;
      v34.origin.y = v20 + 0.0;
      v34.size.width = v12 * v14 - (v22 + v26);
      v34.size.height = v16 * v18 - (v20 + v24);
      v29 = CGImageCreateWithImageInRect(v28, v34);
      v30 = MEMORY[0x1E69DCAB8];
      [v9 scale];
      v32 = [v30 imageWithCGImage:v29 scale:objc_msgSend(v9 orientation:{"imageOrientation"), v31}];

      CGImageRelease(v29);
      v9 = v32;
    }
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

+ (UIEdgeInsets)transparencyInsetsForImage:(id)a3 requiringFullOpacity:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  Width = CGImageGetWidth([v5 CGImage]);
  v7 = Width;
  Height = CGImageGetHeight([v5 CGImage]);
  v9 = malloc_type_calloc(Height * Width, 1uLL, 0x100004077774924uLL);
  v10 = CGBitmapContextCreate(v9, Width, Height, 8uLL, Width, 0, 7u);
  v11 = [v5 CGImage];
  v36.size.width = Width;
  v36.size.height = Height;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  CGContextDrawImage(v10, v36, v11);
  v12 = malloc_type_calloc(Height, 2uLL, 0x1000040BDFB0063uLL);
  v13 = malloc_type_calloc(Width, 2uLL, 0x1000040BDFB0063uLL);
  v14 = v13;
  if (Height <= 0)
  {
    v23 = *MEMORY[0x1E69DDCE0];
    v24 = *(MEMORY[0x1E69DDCE0] + 8);
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v26 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v15 = 0;
    v16 = v9;
    do
    {
      v17 = v16;
      v18 = v13;
      v19 = Width;
      if (Width >= 1)
      {
        while (1)
        {
          v21 = *v17++;
          v20 = v21;
          if (v4)
          {
            break;
          }

          if (v20)
          {
            goto LABEL_8;
          }

LABEL_9:
          ++v18;
          if (!--v19)
          {
            goto LABEL_10;
          }
        }

        if (v20 != 255)
        {
          goto LABEL_9;
        }

LABEL_8:
        ++v12[v15];
        ++*v18;
        goto LABEL_9;
      }

LABEL_10:
      ++v15;
      v16 += Width;
    }

    while (v15 != Height);
    v22 = 0;
    v23 = *MEMORY[0x1E69DDCE0];
    v24 = *(MEMORY[0x1E69DDCE0] + 8);
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v26 = *(MEMORY[0x1E69DDCE0] + 24);
    while (!v12[v22])
    {
      if (Height == ++v22)
      {
        goto LABEL_17;
      }
    }

    v23 = v22;
  }

LABEL_17:
  v27 = Height;
  while (1)
  {
    v28 = v27;
    v29 = v27-- < 1;
    if (v29)
    {
      break;
    }

    if (v12[v28 - 1])
    {
      v25 = ((Height - v28) & ~((Height - v28) >> 63));
      break;
    }
  }

  if (Width < 1)
  {
    goto LABEL_27;
  }

  for (i = 0; i != Width; ++i)
  {
    if (*(v13 + i))
    {
      v24 = i;
      break;
    }
  }

LABEL_27:
  while (1)
  {
    v31 = v7;
    v29 = v7-- < 1;
    if (v29)
    {
      break;
    }

    if (*(v13 + v31 - 1))
    {
      v26 = ((Width - v31) & ~((Width - v31) >> 63));
      break;
    }
  }

  free(v9);
  free(v14);
  free(v12);
  CGContextRelease(v10);

  v32 = v23;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  result.right = v35;
  result.bottom = v34;
  result.left = v33;
  result.top = v32;
  return result;
}

@end
@interface UIImage
@end

@implementation UIImage

uint64_t __56__UIImage_MPUtilities__imageWithRoundedCornersOfRadius___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [*(a1 + 32) size];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v2 cornerRadius:{v3, v4, v6, *(a1 + 40)}];
  [v8 addClip];

  v9 = *(a1 + 32);

  return [v9 drawInRect:{v2, v3, v5, v7}];
}

void __40__UIImage_MPUtilities__imageWithShadow___block_invoke(uint64_t a1, CGContext *a2)
{
  v4 = [*(a1 + 32) shadowColor];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 48) * v7;
      CGAffineTransformMakeScale(&v19, v7, v7);
      CGContextSetShadowWithColor(a2, vmlaq_n_f64(vmulq_n_f64(*&v19.c, *(a1 + 72)), *&v19.a, *(a1 + 64)), v8, [v4 CGColor]);
    }
  }

  v9 = [*(a1 + 40) CGImage];
  CGImageGetWidth(v9);
  CGImageGetHeight(v9);
  UIRectCenteredIntegralRect();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [*(a1 + 40) CGImage];
  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  CGContextDrawImage(a2, v20, v18);
}

void __60__UIImage_MPUtilities__imageWithEtchedBorderOfColor_radius___block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [*(a1 + 32) CGImage];
  CGImageGetWidth(v12);
  CGImageGetHeight(v12);
  UIRectCenteredIntegralRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  CGContextSaveGState(a2);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  CGContextDrawImage(a2, v23, v12);
  v24.origin.x = v14;
  v24.origin.y = v16;
  v24.size.width = v18;
  v24.size.height = v20;
  CGContextClipToMask(a2, v24, v12);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  CGContextClearRect(a2, v25);
  CGContextRestoreGState(a2);
  Image = CGBitmapContextCreateImage(a2);
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  CGContextClearRect(a2, v26);
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  CGContextDrawImage(a2, v27, v12);
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  CGContextClipToMask(a2, v28, Image);
  CGContextSetFillColorWithColor(a2, [*(a1 + 40) CGColor]);
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  CGContextFillRect(a2, v29);

  CGImageRelease(Image);
}

uint64_t __56__UIImage_MPUtilities__initWithContentsOfExactFilePath___block_invoke()
{
  result = [MEMORY[0x1E69B34E0] deviceSupportsASTC];
  initWithContentsOfExactFilePath__deviceSupportsASTC = result;
  return result;
}

@end
@interface UIImage
@end

@implementation UIImage

void __63__UIImage_AppleAccountUI__circularImageFromCGImage_size_scale___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{*MEMORY[0x1E695EFF8], v5, v6, v7}];
  v8 = v9;
  CGContextAddPath(v3, [v9 CGPath]);
  CGContextClip(v3);
  [*(a1 + 32) drawInRect:{v4, v5, v6, v7}];
}

uint64_t __76__UIImage_AppleAccountUI__addBackgroundForImage_withBackgroundColor_yShift___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  [*(a1 + 32) setFill];
  [v3 fillRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

  v5 = *(a1 + 80);
  v7.b = 0.0;
  v7.c = 0.0;
  v7.a = 1.0;
  *&v7.d = xmmword_1C55AD690;
  v7.ty = v5;
  CGContextConcatCTM(v4, &v7);
  return [*(a1 + 40) drawInRect:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
}

void __76__UIImage_AppleAccountUI__addBackgroundForImage_withBackgroundColor_yShift___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  v4 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 40) cornerRadius:{*(a1 + 48), *(a1 + 56), *(a1 + 64), 5.0}];
  v5 = [v4 CGPath];

  CGContextAddPath(v3, v5);
  CGContextClip(v3);
  [*(a1 + 32) drawInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  CGContextRestoreGState(v3);
}

@end
@interface UIImage
@end

@implementation UIImage

void __57__UIImage_PDFMarkupMenuUtilities__largeColorPotForColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  [*(a1 + 32) setFill];
  v5 = [v3 format];

  [v5 bounds];
  CGContextAddEllipseInRect(v4, v7);

  CGContextFillPath(v4);
}

uint64_t __65__UIImage_PDFMarkupMenuUtilities___largePotWithSystemImageNamed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  v5 = [v3 format];

  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [v14 setFill];

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  CGContextAddEllipseInRect(v4, v22);
  CGContextFillPath(v4);
  [*(a1 + 32) size];
  v16 = (v11 - v15) * 0.5;
  v18 = (v13 - v17) * 0.5;
  v19 = *(a1 + 32);

  return [v19 drawAtPoint:{v16, v18}];
}

@end
@interface PKCheckerGridView
@end

@implementation PKCheckerGridView

void __42___PKCheckerGridView__createGridTileImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = [*(a1 + 32) colorB];
  CGContextSetFillColorWithColor(v3, [v4 CGColor]);

  v13.size.width = *(a1 + 40);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.height = v13.size.width;
  CGContextFillRect(v3, v13);
  v5 = [*(a1 + 32) colorA];
  CGContextSetFillColorWithColor(v3, [v5 CGColor]);

  v14.origin.x = *(a1 + 40);
  v14.origin.y = 0.0;
  v14.size.width = v14.origin.x;
  v14.size.height = v14.origin.x;
  CGContextFillRect(v3, v14);
  v6 = [*(a1 + 32) colorB];
  CGContextSetFillColorWithColor(v3, [v6 CGColor]);

  v15.origin.x = *(a1 + 40);
  v15.origin.y = v15.origin.x;
  v15.size.width = v15.origin.x;
  v15.size.height = v15.origin.x;
  CGContextFillRect(v3, v15);
  v7 = [*(a1 + 32) colorA];
  CGContextSetFillColorWithColor(v3, [v7 CGColor]);

  v8 = *(a1 + 40);
  v9 = 0;
  v10 = v8;
  v11 = v8;

  CGContextFillRect(v3, *&v9);
}

@end
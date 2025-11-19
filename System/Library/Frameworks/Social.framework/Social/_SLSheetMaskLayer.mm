@interface _SLSheetMaskLayer
- (void)drawInContext:(CGContext *)a3;
@end

@implementation _SLSheetMaskLayer

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  [(_SLSheetMaskLayer *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  CGContextAddRect(a3, v14);
  v9 = MEMORY[0x1E69DC728];
  [(_SLSheetMaskLayer *)self clipCornerRadius];
  v11 = [v9 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v10}];
  CGContextAddPath(a3, [v11 CGPath]);

  CGContextEOClip(a3);
  v12 = [(_SLSheetMaskLayer *)self clipBackgroundColor];
  CGContextSetFillColorWithColor(a3, [v12 CGColor]);

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextFillRect(a3, v15);

  CGContextRestoreGState(a3);
}

@end
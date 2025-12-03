@interface _SLSheetMaskLayer
- (void)drawInContext:(CGContext *)context;
@end

@implementation _SLSheetMaskLayer

- (void)drawInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  [(_SLSheetMaskLayer *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  CGContextAddRect(context, v14);
  v9 = MEMORY[0x1E69DC728];
  [(_SLSheetMaskLayer *)self clipCornerRadius];
  v11 = [v9 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v10}];
  CGContextAddPath(context, [v11 CGPath]);

  CGContextEOClip(context);
  clipBackgroundColor = [(_SLSheetMaskLayer *)self clipBackgroundColor];
  CGContextSetFillColorWithColor(context, [clipBackgroundColor CGColor]);

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextFillRect(context, v15);

  CGContextRestoreGState(context);
}

@end
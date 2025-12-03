@interface _RAPAnnotationTitleLabel
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation _RAPAnnotationTitleLabel

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(_RAPAnnotationTitleLabel *)self shadowOffset];
  v9 = v8;
  v11 = v10;
  textColor = [(_RAPAnnotationTitleLabel *)self textColor];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 3.0);
  CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
  CGContextSetTextDrawingMode(CurrentContext, kCGTextStroke);
  v14 = +[UIColor systemBackgroundColor];
  [(_RAPAnnotationTitleLabel *)self setTextColor:v14];

  v16.receiver = self;
  v16.super_class = _RAPAnnotationTitleLabel;
  [(_RAPAnnotationTitleLabel *)&v16 drawTextInRect:x, y, width, height];
  CGContextSetTextDrawingMode(CurrentContext, kCGTextFill);
  [(_RAPAnnotationTitleLabel *)self setTextColor:textColor];
  [(_RAPAnnotationTitleLabel *)self setShadowOffset:0.0, 0.0];
  v15.receiver = self;
  v15.super_class = _RAPAnnotationTitleLabel;
  [(_RAPAnnotationTitleLabel *)&v15 drawTextInRect:x, y, width, height];
  [(_RAPAnnotationTitleLabel *)self setShadowOffset:v9, v11];
}

@end
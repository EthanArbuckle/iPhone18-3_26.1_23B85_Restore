@interface _RAPAnnotationTitleLabel
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation _RAPAnnotationTitleLabel

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_RAPAnnotationTitleLabel *)self shadowOffset];
  v9 = v8;
  v11 = v10;
  v12 = [(_RAPAnnotationTitleLabel *)self textColor];
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
  [(_RAPAnnotationTitleLabel *)self setTextColor:v12];
  [(_RAPAnnotationTitleLabel *)self setShadowOffset:0.0, 0.0];
  v15.receiver = self;
  v15.super_class = _RAPAnnotationTitleLabel;
  [(_RAPAnnotationTitleLabel *)&v15 drawTextInRect:x, y, width, height];
  [(_RAPAnnotationTitleLabel *)self setShadowOffset:v9, v11];
}

@end
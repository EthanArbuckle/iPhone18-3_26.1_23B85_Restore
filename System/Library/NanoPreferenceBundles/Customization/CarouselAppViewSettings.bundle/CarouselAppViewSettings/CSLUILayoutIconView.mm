@interface CSLUILayoutIconView
+ (id)circleMaskImage:(id)image;
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributes;
- (void)applyLayoutAttributes:(id)attributes;
- (void)beginDraggingAtPoint:(CGPoint)point;
- (void)endDraggingToLayoutAttributes:(id)attributes;
- (void)setLayoutAttributes:(id)attributes;
@end

@implementation CSLUILayoutIconView

- (void)applyLayoutAttributes:(id)attributes
{
  v4 = v3;
  if (![(CSLUILayoutIconView *)self isDragging])
  {
    v6 = *(v4 + 1);
    *&v14.a = *v4;
    *&v14.c = v6;
    [(CSLUILayoutIconView *)self setLayoutAttributes:&v14];
    v7 = v4[2];
    +[CSLUILayoutIconView defaultDiameter];
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7 / v8, v7 / v8);
    v13 = v14;
    [(CSLUILayoutIconView *)self setTransform:&v13];
    v12 = *v4;
    v9 = +[UIScreen mainScreen];
    [v9 scale];
    v11 = v10;

    [(CSLUILayoutIconView *)self setCenter:vdivq_f64(vrndaq_f64(vmulq_n_f64(vcvtq_f64_f32(*&v12), *&v11)), vdupq_lane_s64(v11, 0))];
  }
}

- (void)beginDraggingAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CSLUILayoutIconView *)self setDragging:1];
  memset(&v10, 0, sizeof(v10));
  [(CSLUILayoutIconView *)self transform];
  v8 = v10;
  CGAffineTransformScale(&v9, &v8, 1.6, 1.6);
  v10 = v9;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_23C0;
  v6[3] = &unk_3C9E0;
  v6[4] = self;
  *&v6[5] = x;
  *&v6[6] = y;
  v7 = v9;
  [UIView animateWithDuration:0 delay:v6 options:0 animations:0.1 completion:0.0];
}

- (void)endDraggingToLayoutAttributes:(id)attributes
{
  v4 = v3;
  [(CSLUILayoutIconView *)self setDragging:0, attributes.var0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_24D0;
  v7[3] = &unk_3C990;
  selfCopy = self;
  v6 = v4[1];
  v8 = *v4;
  v9 = v6;
  [UIView animateWithDuration:0 delay:v7 options:0 animations:0.1 completion:0.0];
}

+ (id)circleMaskImage:(id)image
{
  imageCopy = image;
  +[CSLUILayoutIconView defaultDiameter];
  v5 = v4;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v5;
  v19.size.height = v5;
  v20 = CGRectIntegral(v19);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  cGImage = [imageCopy CGImage];

  v18.width = v5;
  v18.height = v5;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
  height = [UIBezierPath bezierPathWithOvalInRect:x, y, width, height];
  CGContextAddPath(CurrentContext, [height CGPath]);

  CGContextClip(CurrentContext);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_2BCA0;
  v16.ty = v5;
  CGContextConcatCTM(CurrentContext, &v16);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGContextDrawImage(CurrentContext, v21, cGImage);
  Image = CGBitmapContextCreateImage(CurrentContext);
  v14 = [UIImage imageWithCGImage:Image];
  CGImageRelease(Image);
  UIGraphicsEndImageContext();

  return v14;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributes
{
  v3 = *&self[1].super.super.super.isa;
  v4 = *&self[1]._node;
  *v2 = v3;
  v2[1] = v4;
  return v3;
}

- (void)setLayoutAttributes:(id)attributes
{
  v4 = v3[1];
  *&self[1].super.super.super.isa = *v3;
  *&self[1]._node = v4;
}

@end
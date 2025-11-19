@interface TUIRadialProgressLayer
- (TUIRadialProgressLayer)init;
- (void)setupWithMode:(unint64_t)a3 rect:(CGRect)a4;
@end

@implementation TUIRadialProgressLayer

- (TUIRadialProgressLayer)init
{
  v5.receiver = self;
  v5.super_class = TUIRadialProgressLayer;
  v2 = [(TUIRadialProgressLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUIRadialProgressLayer *)v2 setFillColor:0];
    [(TUIRadialProgressLayer *)v3 setLineWidth:3.5];
    [(TUIRadialProgressLayer *)v3 setLineCap:kCALineCapButt];
    [(TUIRadialProgressLayer *)v3 setStrokeStart:0.0];
    [(TUIRadialProgressLayer *)v3 setStrokeEnd:0.0];
    v3->_mode = 0;
  }

  return v3;
}

- (void)setupWithMode:(unint64_t)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = 1.5;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v10 = 3.5;
  }

  v11 = v10 * (a4.size.width / 27.0);
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 0.5;
  }

  [(TUIRadialProgressLayer *)self setLineWidth:v11];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20 = CGRectInset(v19, v12 + v11 * 0.5, v12 + v11 * 0.5);
  v13 = CGPathCreateWithEllipseInRect(v20, 0);
  [(TUIRadialProgressLayer *)self setPath:v13];
  CGPathRelease(v13);
  if (self->_mode != a3)
  {
    self->_mode = a3;
    if (a3 == 1)
    {
      [(TUIRadialProgressLayer *)self setValue:0.85];
      v17 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
      LODWORD(v14) = 1086918619;
      v15 = [NSNumber numberWithFloat:v14];
      [v17 setToValue:v15];

      [v17 setDuration:1.0];
      [v17 setCumulative:0];
      LODWORD(v16) = 2139095040;
      [v17 setRepeatCount:v16];
      [(TUIRadialProgressLayer *)self addAnimation:v17 forKey:@"rotationAnimation"];
    }

    else
    {

      [(TUIRadialProgressLayer *)self removeAnimationForKey:@"rotationAnimation"];
    }
  }
}

@end
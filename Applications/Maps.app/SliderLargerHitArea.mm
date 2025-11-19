@interface SliderLargerHitArea
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SliderLargerHitArea

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(SliderLargerHitArea *)self pointInside:v7 withEvent:x, y])
  {
    v8 = self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SliderLargerHitArea;
    v8 = [(SliderLargerHitArea *)&v11 hitTest:v7 withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SliderLargerHitArea *)self bounds];
  v7 = v6 + -22.0;
  v9 = v8 + -22.0;
  v11 = v10 + 44.0;
  v13 = v12 + 22.0;
  v14 = x;
  v15 = y;

  return CGRectContainsPoint(*&v7, *&v14);
}

@end
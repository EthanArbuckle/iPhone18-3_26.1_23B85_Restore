@interface CSLUIJiggleView
+ (id)makePositionAnimation;
+ (id)makeTransformAnimation;
- (CSLUIJiggleView)initWithFrame:(CGRect)a3;
- (void)endJiggling;
- (void)setFrame:(CGRect)a3;
- (void)setJiggling:(BOOL)a3;
- (void)startJiggling;
@end

@implementation CSLUIJiggleView

- (CSLUIJiggleView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CSLUIJiggleView;
  result = [(CSLUIJiggleView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_isJiggling = 0;
  }

  return result;
}

- (void)setJiggling:(BOOL)a3
{
  if (self->_isJiggling != a3)
  {
    if (a3)
    {
      [(CSLUIJiggleView *)self startJiggling];
    }

    else
    {
      [(CSLUIJiggleView *)self endJiggling];
    }
  }

  self->_isJiggling = a3;
}

- (void)startJiggling
{
  v4 = [(CSLUIJiggleView *)self layer];
  v2 = +[CSLUIJiggleView makePositionAnimation];
  [v4 addAnimation:v2 forKey:@"CSLUIJigglePosition"];

  v3 = +[CSLUIJiggleView makeTransformAnimation];
  [v4 addAnimation:v3 forKey:@"CSLUIJiggleTransform"];
}

- (void)endJiggling
{
  v3 = [(CSLUIJiggleView *)self layer];
  [v3 removeAnimationForKey:@"CSLUIJigglePosition"];
  [v3 removeAnimationForKey:@"CSLUIJiggleTransform"];
  [v3 setPosition:{self->_unjitterPoint.x, self->_unjitterPoint.y}];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(CSLUIJiggleView *)self transform];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_47F0;
  v16[3] = &unk_3CA08;
  v16[4] = self;
  [UIView performWithoutAnimation:v16];
  v15.receiver = self;
  v15.super_class = CSLUIJiggleView;
  [(CSLUIJiggleView *)&v15 setFrame:x, y, width, height];
  v8 = [(CSLUIJiggleView *)self layer];
  [v8 position];
  self->_unjitterPoint.x = v9;
  self->_unjitterPoint.y = v10;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = v17;
  v11[2] = sub_4830;
  v11[3] = &unk_3CA30;
  v11[4] = self;
  v13 = v18;
  v14 = v19;
  [UIView performWithoutAnimation:v11];
}

+ (id)makePositionAnimation
{
  v2 = +[CAKeyframeAnimation animation];
  [v2 setKeyPath:@"position"];
  [v2 setDuration:0.25];
  [v2 setAdditive:1];
  LODWORD(v3) = 2139095039;
  [v2 setRepeatCount:v3];
  [v2 setRemovedOnCompletion:0];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = arc4random();
  v6 = ((v5 % 0x3E8) / 1000.0 + (v5 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v7 = floorf(v6);
  v8 = arc4random();
  v9 = ((v8 % 0x3E8) / 1000.0 + (v8 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v10 = [NSValue valueWithCGPoint:v7, floorf(v9)];
  [v4 addObject:v10];
  v11 = arc4random();
  v12 = ((v11 % 0x3E8) / 1000.0 + (v11 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v13 = floorf(v12);
  v14 = arc4random();
  v15 = ((v14 % 0x3E8) / 1000.0 + (v14 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v16 = [NSValue valueWithCGPoint:v13, floorf(v15)];
  [v4 addObject:v16];

  v17 = arc4random();
  v18 = ((v17 % 0x3E8) / 1000.0 + (v17 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v19 = floorf(v18);
  v20 = arc4random();
  v21 = ((v20 % 0x3E8) / 1000.0 + (v20 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v22 = [NSValue valueWithCGPoint:v19, floorf(v21)];
  [v4 addObject:v22];

  v23 = arc4random();
  v24 = ((v23 % 0x3E8) / 1000.0 + (v23 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v25 = floorf(v24);
  v26 = arc4random();
  v27 = ((v26 % 0x3E8) / 1000.0 + (v26 % 0x3E8) / 1000.0) * 0.25 + -0.25;
  v28 = [NSValue valueWithCGPoint:v25, floorf(v27)];
  [v4 addObject:v28];

  [v4 addObject:v10];
  [v2 setBeginTime:ceilf((arc4random() % 0x3E8 + 1) * 0.2) * 0.0500000007];
  [v2 setValues:v4];
  [v2 setFrameInterval:0.0500000007];

  return v2;
}

+ (id)makeTransformAnimation
{
  v2 = +[CAKeyframeAnimation animation];
  [v2 setKeyPath:@"transform"];
  [v2 setDuration:0.25];
  v3 = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
  [v2 setValueFunction:v3];

  [v2 setAdditive:1];
  LODWORD(v4) = 2139095039;
  [v2 setRepeatCount:v4];
  [v2 setRemovedOnCompletion:0];
  v5 = objc_alloc_init(NSMutableArray);
  LODWORD(v6) = -1122998213;
  v7 = [NSNumber numberWithFloat:v6];
  [v5 addObject:v7];

  LODWORD(v8) = 1024485435;
  v9 = [NSNumber numberWithFloat:v8];
  [v5 addObject:v9];

  LODWORD(v10) = -1122998213;
  v11 = [NSNumber numberWithFloat:v10];
  [v5 addObject:v11];

  [v2 setBeginTime:(ceilf((arc4random() % 0x3E8 + 1) * 0.2) * 0.05)];
  [v2 setValues:v5];
  [v2 setFrameInterval:0.0500000007];

  return v2;
}

@end
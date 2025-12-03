@interface SSSShadowView
+ (CGSize)shadowOffset;
+ (id)shadowColor;
- (BOOL)_arrayOfRectValues:(id)values isEqualToArrayOfRectValues:(id)rectValues;
- (SSSShadowView)initWithFrame:(CGRect)frame;
- (void)_enumerateAllShadowRectsWithBlock:(id)block;
- (void)layoutSubviews;
- (void)setRectsForShadow:(id)shadow;
@end

@implementation SSSShadowView

+ (id)shadowColor
{
  v2 = +[UIColor blackColor];
  v3 = [v2 colorWithAlphaComponent:0.48];

  return v3;
}

+ (CGSize)shadowOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (SSSShadowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SSSShadowView;
  v3 = [(SSSShadowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SSSShadowView *)v3 setClipsToBounds:0];
  v4 = objc_alloc_init(_SSSShadowViewInnerViewWithShadow);
  innerView = v3->_innerView;
  v3->_innerView = v4;

  [(SSSShadowView *)v3 addSubview:v3->_innerView];
  return v3;
}

- (void)layoutSubviews
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100034A74;
  v2[3] = &unk_1000BA068;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (BOOL)_arrayOfRectValues:(id)values isEqualToArrayOfRectValues:(id)rectValues
{
  valuesCopy = values;
  rectValuesCopy = rectValues;
  v7 = [valuesCopy count];
  if (v7 == [rectValuesCopy count])
  {
    if ([valuesCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [valuesCopy objectAtIndex:v8];
        v10 = [rectValuesCopy objectAtIndex:v8];
        [v9 CGRectValue];
        [v10 CGRectValue];
        v11 = SSRectEqualToRect();

        if ((v11 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [valuesCopy count]);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setRectsForShadow:(id)shadow
{
  shadowCopy = shadow;
  if (![(SSSShadowView *)self _arrayOfRectValues:self->_rectsForShadow isEqualToArrayOfRectValues:shadowCopy])
  {
    objc_storeStrong(&self->_rectsForShadow, shadow);
    +[UIBezierPath bezierPath];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100034DF0;
    v12 = v11[3] = &unk_1000BAD20;
    v6 = v12;
    [(SSSShadowView *)self _enumerateAllShadowRectsWithBlock:v11];
    traitCollection = [(SSSShadowView *)self traitCollection];
    v8 = sub_10000F530();

    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v8, v8);
    v9 = v10;
    [v6 applyTransform:&v9];
    [(_SSSShadowViewInnerViewWithShadow *)self->_innerView setShadowPath:v6];
    [(SSSShadowView *)self setNeedsLayout];
  }
}

- (void)_enumerateAllShadowRectsWithBlock:(id)block
{
  blockCopy = block;
  rectsForShadow = [(SSSShadowView *)self rectsForShadow];
  v5 = [rectsForShadow count];

  if (v5)
  {
    v6 = 0;
    do
    {
      rectsForShadow2 = [(SSSShadowView *)self rectsForShadow];
      v8 = [rectsForShadow2 objectAtIndex:v6];

      [v8 CGRectValue];
      blockCopy[2](blockCopy, v6);

      ++v6;
      rectsForShadow3 = [(SSSShadowView *)self rectsForShadow];
      v10 = [rectsForShadow3 count];
    }

    while (v6 < v10);
  }
}

@end
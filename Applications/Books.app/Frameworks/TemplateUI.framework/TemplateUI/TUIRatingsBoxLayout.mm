@interface TUIRatingsBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (TUIRatingsBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (double)computeIntrinsicAspectRatio;
- (void)_computeIntrinsicContentSize;
- (void)computeLayout;
- (void)invalidateIntrinsicSize;
@end

@implementation TUIRatingsBoxLayout

- (TUIRatingsBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v6.receiver = self;
  v6.super_class = TUIRatingsBoxLayout;
  result = [(TUILayout *)&v6 initWithModel:model parent:parent controller:controller];
  if (result)
  {
    result->_intrinsicContentSize = CGSizeZero;
  }

  return result;
}

- (void)_computeIntrinsicContentSize
{
  height = CGSizeZero.height;
  p_intrinsicContentSize = &self->_intrinsicContentSize;
  if (CGSizeZero.width == self->_intrinsicContentSize.width && height == self->_intrinsicContentSize.height)
  {
    v7 = [(TUILayout *)self box:CGSizeZero.width];
    +[TUIRatingsBox imageSizeForSize:](TUIRatingsBox, "imageSizeForSize:", [v7 size]);
    p_intrinsicContentSize->width = v5;
    p_intrinsicContentSize->height = v6;
  }
}

- (void)invalidateIntrinsicSize
{
  v2.receiver = self;
  v2.super_class = TUIRatingsBoxLayout;
  [(TUILayout *)&v2 invalidateIntrinsicSize];
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  [(TUIRatingsBoxLayout *)self _computeIntrinsicContentSize];
  width = self->_intrinsicContentSize.width;
  if (width <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (width < 3.40282347e38)
    {
      *&v5 = width;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  [(TUIRatingsBoxLayout *)self _computeIntrinsicContentSize];
  height = self->_intrinsicContentSize.height;
  if (height <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (height < 3.40282347e38)
    {
      *&v5 = height;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- (double)computeIntrinsicAspectRatio
{
  [(TUIRatingsBoxLayout *)self _computeIntrinsicContentSize];
  width = self->_intrinsicContentSize.width;
  result = 1.0;
  if (width > 0.0)
  {
    return self->_intrinsicContentSize.height / width;
  }

  return result;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  [(TUILayout *)self computeHeight];
  v6 = fmax(v5, 1.0);
  v7 = fmax(v4, 1.0);

  [(TUILayout *)self setComputedNaturalSize:v7, v6];
}

@end
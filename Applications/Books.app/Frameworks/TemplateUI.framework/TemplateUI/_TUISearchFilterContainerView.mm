@interface _TUISearchFilterContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TUISearchFilterContainerView)initWithCoder:(id)a3;
- (_TUISearchFilterContainerView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
@end

@implementation _TUISearchFilterContainerView

- (_TUISearchFilterContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TUISearchFilterContainerView;
  v3 = [(_TUISearchFilterContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TUISearchFilterContainerView *)v3 _commonInit];
  }

  return v4;
}

- (_TUISearchFilterContainerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TUISearchFilterContainerView;
  v3 = [(_TUISearchFilterContainerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_TUISearchFilterContainerView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = [[_UIScrollPocketInteraction alloc] initWithStyle:0];
  [(_TUISearchFilterContainerView *)self addInteraction:v3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  IsAlmostEqualFloat = TUICGFloatIsAlmostEqualFloat(a3.width, 0.0);
  if (width == 1.79769313e308 || IsAlmostEqualFloat)
  {
    width = self->_intrinsicContentSize.width;
  }

  if (TUICGFloatIsAlmostEqualFloat(height, 0.0) || height == 1.79769313e308)
  {
    height = self->_intrinsicContentSize.height;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
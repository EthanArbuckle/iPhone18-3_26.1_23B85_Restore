@interface _TUISearchFilterContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TUISearchFilterContainerView)initWithCoder:(id)coder;
- (_TUISearchFilterContainerView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
@end

@implementation _TUISearchFilterContainerView

- (_TUISearchFilterContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TUISearchFilterContainerView;
  v3 = [(_TUISearchFilterContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TUISearchFilterContainerView *)v3 _commonInit];
  }

  return v4;
}

- (_TUISearchFilterContainerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _TUISearchFilterContainerView;
  v3 = [(_TUISearchFilterContainerView *)&v6 initWithCoder:coder];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  IsAlmostEqualFloat = TUICGFloatIsAlmostEqualFloat(fits.width, 0.0);
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
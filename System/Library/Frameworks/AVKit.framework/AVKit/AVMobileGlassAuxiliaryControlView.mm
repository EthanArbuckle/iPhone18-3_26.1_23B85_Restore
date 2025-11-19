@interface AVMobileGlassAuxiliaryControlView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation AVMobileGlassAuxiliaryControlView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassAuxiliaryControlView;
  [(AVView *)&v5 layoutSubviews];
  [(AVMobileGlassAuxiliaryControlView *)self bounds];
  [(UIView *)self->_wrappedView sizeThatFits:v3, v4];
  UIRectCenteredRect();
  [(UIView *)self->_wrappedView setFrame:?];
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_wrappedView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end
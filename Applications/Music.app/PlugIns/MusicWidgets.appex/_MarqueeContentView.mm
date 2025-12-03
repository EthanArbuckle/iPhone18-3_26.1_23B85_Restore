@interface _MarqueeContentView
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
@end

@implementation _MarqueeContentView

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  superview = [(_MarqueeContentView *)self superview];
  viewForContentSize = [superview viewForContentSize];

  if (viewForContentSize == viewCopy)
  {
    [superview invalidateIntrinsicContentSize];
  }
}

@end
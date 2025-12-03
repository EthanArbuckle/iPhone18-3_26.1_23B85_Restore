@interface SiriTipUIView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didMoveToWindow;
- (void)setIsPresented:(BOOL)presented;
@end

@implementation SiriTipUIView

- (void)setIsPresented:(BOOL)presented
{
  selfCopy = self;
  SiriTipUIView.isPresented.setter(presented);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  SiriTipUIView.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = SiriTipUIView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  SiriTipUIView.didMoveToWindow()();
}

@end
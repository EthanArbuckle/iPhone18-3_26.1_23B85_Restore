@interface SiriTipUIView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didMoveToWindow;
- (void)setIsPresented:(BOOL)a3;
@end

@implementation SiriTipUIView

- (void)setIsPresented:(BOOL)a3
{
  v4 = self;
  SiriTipUIView.isPresented.setter(a3);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  SiriTipUIView.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = SiriTipUIView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didMoveToWindow
{
  v2 = self;
  SiriTipUIView.didMoveToWindow()();
}

@end
@interface CheckoutPlatter.CheckoutBackgroundView
- (_TtCC11AssetViewer15CheckoutPlatterP33_F468E41BE5B62EA82788C6057D60C24D22CheckoutBackgroundView)initWithFrame:(CGRect)frame backgroundStyle:(int64_t)style controlStyle:(int64_t)controlStyle;
- (void)layoutSubviews;
@end

@implementation CheckoutPlatter.CheckoutBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24133E80C();
}

- (_TtCC11AssetViewer15CheckoutPlatterP33_F468E41BE5B62EA82788C6057D60C24D22CheckoutBackgroundView)initWithFrame:(CGRect)frame backgroundStyle:(int64_t)style controlStyle:(int64_t)controlStyle
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CheckoutPlatter.CheckoutBackgroundView();
  return [(ASVBlurredBackgroundView *)&v12 initWithFrame:style backgroundStyle:controlStyle controlStyle:x, y, width, height];
}

@end
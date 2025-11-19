@interface CheckoutPlatter.CheckoutBackgroundView
- (_TtCC11AssetViewer15CheckoutPlatterP33_F468E41BE5B62EA82788C6057D60C24D22CheckoutBackgroundView)initWithFrame:(CGRect)a3 backgroundStyle:(int64_t)a4 controlStyle:(int64_t)a5;
- (void)layoutSubviews;
@end

@implementation CheckoutPlatter.CheckoutBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_24133E80C();
}

- (_TtCC11AssetViewer15CheckoutPlatterP33_F468E41BE5B62EA82788C6057D60C24D22CheckoutBackgroundView)initWithFrame:(CGRect)a3 backgroundStyle:(int64_t)a4 controlStyle:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CheckoutPlatter.CheckoutBackgroundView();
  return [(ASVBlurredBackgroundView *)&v12 initWithFrame:a4 backgroundStyle:a5 controlStyle:x, y, width, height];
}

@end
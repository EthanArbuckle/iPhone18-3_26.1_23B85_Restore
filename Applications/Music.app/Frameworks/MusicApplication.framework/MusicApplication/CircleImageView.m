@interface CircleImageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation CircleImageView

- (void)layoutSubviews
{
  v2 = self;
  CircleImageView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind))
  {
    v5 = 160.0;
  }

  else
  {
    v5 = 116.0;
  }

  [*(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView) sizeThatFits:{fmin(a3.width, 290.0), a3.height}];
  if (height >= v5 + v6)
  {
    v7 = v5 + v6;
  }

  else
  {
    v7 = height;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

@end
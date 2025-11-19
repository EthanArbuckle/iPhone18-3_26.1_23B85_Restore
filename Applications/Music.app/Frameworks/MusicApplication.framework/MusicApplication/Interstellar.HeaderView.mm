@interface Interstellar.HeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation Interstellar.HeaderView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_contentView) sizeThatFits:{a3.width, a3.height}];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_287EC4();
}

@end
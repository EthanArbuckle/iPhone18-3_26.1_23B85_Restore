@interface SocialProfileFollowRequestConfirmationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplication42SocialProfileFollowRequestConfirmationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SocialProfileFollowRequestConfirmationView

- (void)layoutSubviews
{
  v2 = self;
  sub_320B8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_32474(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_32698(a3);
}

- (_TtC16MusicApplication42SocialProfileFollowRequestConfirmationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
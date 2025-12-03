@interface SocialProfileFollowRequestConfirmationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC16MusicApplication42SocialProfileFollowRequestConfirmationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SocialProfileFollowRequestConfirmationView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_320B8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_32474(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_32698(change);
}

- (_TtC16MusicApplication42SocialProfileFollowRequestConfirmationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
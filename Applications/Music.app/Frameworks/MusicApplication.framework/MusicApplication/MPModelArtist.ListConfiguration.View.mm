@interface MPModelArtist.ListConfiguration.View
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithCoder:(id)coder;
- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MPModelArtist.ListConfiguration.View

- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator;
  *(&self->super.super.super.isa + v4) = sub_123568();
  v5 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UILabel) init];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_123D98();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_124128();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
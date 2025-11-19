@interface MPModelArtist.ListConfiguration.View
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithCoder:(id)a3;
- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MPModelArtist.ListConfiguration.View

- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithCoder:(id)a3
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
  v2 = self;
  sub_123D98();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_124128();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
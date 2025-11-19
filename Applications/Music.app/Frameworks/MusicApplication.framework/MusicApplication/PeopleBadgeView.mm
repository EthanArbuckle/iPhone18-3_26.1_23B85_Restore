@interface PeopleBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView)initWithCoder:(id)a3;
- (_TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView)initWithFrame:(CGRect)a3;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
@end

@implementation PeopleBadgeView

- (_TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents) = _swiftEmptyArrayStorage;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_3ADA40();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_3AE50C();
}

- (void)clearArtworkCatalogs
{
  v2 = self;
  sub_3AE7E8();
}

- (_TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
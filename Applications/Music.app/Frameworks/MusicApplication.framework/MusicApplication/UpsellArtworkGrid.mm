@interface UpsellArtworkGrid
- (_TtC16MusicApplication17UpsellArtworkGrid)initWithCoder:(id)coder;
- (_TtC16MusicApplication17UpsellArtworkGrid)initWithFrame:(CGRect)frame;
@end

@implementation UpsellArtworkGrid

- (_TtC16MusicApplication17UpsellArtworkGrid)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication17UpsellArtworkGrid_artworks) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC16MusicApplication17UpsellArtworkGrid_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(&self->super.super.super.isa + v4) = swift_allocObject();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (_TtC16MusicApplication17UpsellArtworkGrid)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
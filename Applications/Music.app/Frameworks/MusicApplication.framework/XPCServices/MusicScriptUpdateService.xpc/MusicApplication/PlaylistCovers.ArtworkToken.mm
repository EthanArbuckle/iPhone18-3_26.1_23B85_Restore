@interface PlaylistCovers.ArtworkToken
- (_TtCO9MusicCore14PlaylistCovers12ArtworkToken)init;
- (id)copyWithZone:(void *)a3;
- (id)stringRepresentation;
@end

@implementation PlaylistCovers.ArtworkToken

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  PlaylistCovers.ArtworkToken.copy(with:)(v6);

  sub_100009178(v6, v6[3]);
  v4 = sub_1004BD9A4();
  sub_100004C6C(v6);
  return v4;
}

- (id)stringRepresentation
{
  v2 = self;
  object = PlaylistCovers.ArtworkToken.stringRepresentation()().value._object;

  if (object)
  {
    v4 = sub_1004BBE24();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtCO9MusicCore14PlaylistCovers12ArtworkToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
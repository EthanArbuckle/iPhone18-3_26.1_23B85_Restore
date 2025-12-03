@interface PlaylistCovers.ArtworkToken
- (_TtCO9MusicCore14PlaylistCovers12ArtworkToken)init;
- (id)copyWithZone:(void *)zone;
- (id)stringRepresentation;
@end

@implementation PlaylistCovers.ArtworkToken

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  PlaylistCovers.ArtworkToken.copy(with:)(v6);

  sub_100008C70(v6, v6[3]);
  v4 = sub_1004DF06C();
  sub_100008D24(v6);
  return v4;
}

- (id)stringRepresentation
{
  selfCopy = self;
  object = PlaylistCovers.ArtworkToken.stringRepresentation()().value._object;

  if (object)
  {
    v4 = sub_1004DD3FC();
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
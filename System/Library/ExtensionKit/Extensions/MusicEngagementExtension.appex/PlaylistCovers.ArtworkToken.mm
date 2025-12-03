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

  __swift_project_boxed_opaque_existential_0Tm(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v4;
}

- (id)stringRepresentation
{
  selfCopy = self;
  object = PlaylistCovers.ArtworkToken.stringRepresentation()().value._object;

  if (object)
  {
    v4 = String._bridgeToObjectiveC()();
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
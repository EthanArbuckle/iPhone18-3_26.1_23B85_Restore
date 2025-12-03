@interface MOSuggestionLinkShareView
- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithFrame:(CGRect)frame;
- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithMetadata:(id)metadata;
- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithPresentationProperties:(id)properties;
- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithPresentationProperties:(id)properties URL:(id)l;
@end

@implementation MOSuggestionLinkShareView

- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithMetadata:(id)metadata
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithPresentationProperties:(id)properties
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService25MOSuggestionLinkShareView)initWithPresentationProperties:(id)properties URL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    v10 = 0;
    v9 = (*(v8 - 8) + 56);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = (*(v8 - 8) + 56);
    v10 = 1;
  }

  (*v9)(v7, v10, 1, v8);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
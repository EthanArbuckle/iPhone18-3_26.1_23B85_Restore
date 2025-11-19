@interface UIKitSearchSuggestion
- (NSString)localizedSuggestion;
- (UIImage)iconImage;
- (_TtC7SwiftUI21UIKitSearchSuggestion)init;
- (void)setRepresentedObject:(id)a3;
@end

@implementation UIKitSearchSuggestion

- (NSString)localizedSuggestion
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI21UIKitSearchSuggestion_platformItem);
  if (v2)
  {
    v3 = self;
    v4 = [v2 string];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v2 = MEMORY[0x18D00C850](v5, v7);
  }

  return v2;
}

- (void)setRepresentedObject:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  outlined destroy of ToolbarStorage.SearchItem?(v3, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
}

- (UIImage)iconImage
{
  v2 = self;
  v3 = UIKitSearchSuggestion.iconImage.getter();

  return v3;
}

- (_TtC7SwiftUI21UIKitSearchSuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
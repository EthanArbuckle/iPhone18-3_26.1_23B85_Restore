@interface LibraryFilterOptionsController
+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)a3 legacyStorageKey:(id)a4;
+ (void)updateFavoriteFilter:(BOOL)a3 storageKey:(id)a4;
- (_TtC5Music30LibraryFilterOptionsController)init;
@end

@implementation LibraryFilterOptionsController

+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)a3 legacyStorageKey:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_100482A64();

  return v4 & 1;
}

+ (void)updateFavoriteFilter:(BOOL)a3 storageKey:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100482D8C(a3, v5, v6);
}

- (_TtC5Music30LibraryFilterOptionsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface LibraryFilterOptionsController
+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)key legacyStorageKey:(id)storageKey;
+ (void)updateFavoriteFilter:(BOOL)filter storageKey:(id)key;
- (_TtC5Music30LibraryFilterOptionsController)init;
@end

@implementation LibraryFilterOptionsController

+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)key legacyStorageKey:(id)storageKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_100482A64();

  return v4 & 1;
}

+ (void)updateFavoriteFilter:(BOOL)filter storageKey:(id)key
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100482D8C(filter, v5, v6);
}

- (_TtC5Music30LibraryFilterOptionsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
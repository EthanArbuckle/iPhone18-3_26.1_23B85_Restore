@interface LibraryFilterOptionsController
+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)key legacyStorageKey:(id)storageKey;
+ (void)updateFavoriteFilter:(BOOL)filter storageKey:(id)key;
- (_TtC16MusicApplication30LibraryFilterOptionsController)init;
@end

@implementation LibraryFilterOptionsController

+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)key legacyStorageKey:(id)storageKey
{
  sub_AB92A0();
  sub_AB92A0();
  keyCopy = key;
  storageKeyCopy = storageKey;
  v8 = sub_4F675C();

  return v8 & 1;
}

+ (void)updateFavoriteFilter:(BOOL)filter storageKey:(id)key
{
  v6 = sub_AB92A0();
  v8 = v7;
  keyCopy = key;
  sub_4F6A84(filter, v6, v8);
}

- (_TtC16MusicApplication30LibraryFilterOptionsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
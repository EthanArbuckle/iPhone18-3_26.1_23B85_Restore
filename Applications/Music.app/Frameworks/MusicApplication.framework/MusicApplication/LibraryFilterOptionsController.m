@interface LibraryFilterOptionsController
+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)a3 legacyStorageKey:(id)a4;
+ (void)updateFavoriteFilter:(BOOL)a3 storageKey:(id)a4;
- (_TtC16MusicApplication30LibraryFilterOptionsController)init;
@end

@implementation LibraryFilterOptionsController

+ (BOOL)isFilteringToFavoritesWithStorageKey:(id)a3 legacyStorageKey:(id)a4
{
  sub_AB92A0();
  sub_AB92A0();
  v6 = a3;
  v7 = a4;
  v8 = sub_4F675C();

  return v8 & 1;
}

+ (void)updateFavoriteFilter:(BOOL)a3 storageKey:(id)a4
{
  v6 = sub_AB92A0();
  v8 = v7;
  v9 = a4;
  sub_4F6A84(a3, v6, v8);
}

- (_TtC16MusicApplication30LibraryFilterOptionsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
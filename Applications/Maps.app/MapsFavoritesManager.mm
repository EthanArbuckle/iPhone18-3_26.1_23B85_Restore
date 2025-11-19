@interface MapsFavoritesManager
+ (_TtC4Maps20MapsFavoritesManager)sharedManager;
- (BOOL)hasInitialData;
- (BOOL)hasShortcutForNearbyTransit;
- (NSArray)storeSubscriptionTypes;
- (id)observers;
- (id)shortcutForMapItem:(id)a3;
- (void)getShortcutsCountWithIncludeNearbyTransit:(BOOL)a3 completionHandler:(id)a4;
- (void)loadAllShortcutsWithCompletionHandler:(id)a3;
- (void)migrateFavoritesIfNeededWithCompletionHandler:(id)a3;
- (void)proposePlacesForTypeWithType:(int64_t)a3 completionHandler:(id)a4;
- (void)setHasInitialData:(BOOL)a3;
- (void)setMapViewMode:(int64_t)a3;
- (void)setObservers:(id)a3;
- (void)setShortcuts:(id)a3;
- (void)setSortedShortcuts:(id)a3;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)storeDidChange:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation MapsFavoritesManager

+ (_TtC4Maps20MapsFavoritesManager)sharedManager
{
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v3 = qword_10195FEF8;

  return v3;
}

- (BOOL)hasInitialData
{
  v3 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__hasInitialData;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = self;

  os_unfair_lock_lock((v4 + 20));
  v6 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));

  return v6;
}

- (BOOL)hasShortcutForNearbyTransit
{
  v2 = self;
  v3 = sub_10003F238();

  return v3 & 1;
}

- (id)observers
{
  v2 = self;
  v3 = sub_1002E2C5C();

  return v3;
}

- (void)setObservers:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___observers);
  *(self + OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___observers) = a3;
  v3 = a3;
}

- (NSArray)storeSubscriptionTypes
{

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  sub_1000CE6B8(&qword_1019083F0);
  *(self + OBJC_IVAR____TtC4Maps20MapsFavoritesManager_storeSubscriptionTypes) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)setShortcuts:(id)a3
{
  type metadata accessor for MapsFavoriteItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v5 = *(self + v4);
  v6 = self;
  os_unfair_lock_lock((v5 + 24));
  sub_1002F1E04((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  swift_endAccess();
}

- (void)setSortedShortcuts:(id)a3
{
  type metadata accessor for MapsFavoriteItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__sortedShortcuts;
  swift_beginAccess();
  v5 = *(self + v4);
  v6 = self;
  os_unfair_lock_lock((v5 + 24));
  sub_1002F1E04((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  swift_endAccess();
}

- (void)setSuggestions:(id)a3
{
  type metadata accessor for MapsFavoriteItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__suggestions;
  swift_beginAccess();
  v5 = *(self + v4);
  v6 = self;
  os_unfair_lock_lock((v5 + 24));
  sub_1002F1E04((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  swift_endAccess();
}

- (void)setHasInitialData:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__hasInitialData;
  swift_beginAccess();
  v6 = *(self + v5);
  v7 = self;
  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = a3;
  os_unfair_lock_unlock((v6 + 20));
  swift_endAccess();
}

- (void)setMapViewMode:(int64_t)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode);
  *(self + OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode) = a3;
  v4 = self;
  sub_1002E3378(v3);
}

- (void)proposePlacesForTypeWithType:(int64_t)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1011F9488;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1011F9490;
  v14[5] = v13;
  v15 = self;
  sub_10054DB08(0, 0, v9, &unk_1011F9498, v14);
}

- (id)shortcutForMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1002E4D7C(v4);

  return v6;
}

- (void)getShortcutsCountWithIncludeNearbyTransit:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1011F9460;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1011F9468;
  v14[5] = v13;
  v15 = self;
  sub_10054DB08(0, 0, v9, &unk_1011F9470, v14);
}

- (void)loadAllShortcutsWithCompletionHandler:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1011F9440;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1011F9448;
  v12[5] = v11;
  v13 = self;
  sub_10054DB08(0, 0, v7, &unk_1011F9450, v12);
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = self;
  sub_1002E9430(var0, var1);
}

- (void)storeDidChange:(id)a3
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_10020AAE4(0, 0, v6, &unk_1011F9430, v8);
}

- (void)migrateFavoritesIfNeededWithCompletionHandler:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1011F9358;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1011F9360;
  v12[5] = v11;
  v13 = self;
  sub_10054DB08(0, 0, v7, &unk_1011F66B0, v12);
}

@end
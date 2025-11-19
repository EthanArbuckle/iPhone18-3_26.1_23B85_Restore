@interface GCOverlaySettingsStore
+ (_TtC14GameController22GCOverlaySettingsStore)shared;
- (GCSGame)defaultGame;
- (GCSProfile)defaultProfile;
- (NSArray)connectedControllerIdentifiers;
- (id)getSettingsControllerFor:(id)a3;
- (void)refresh;
- (void)setConnectedControllerIdentifiers:(id)a3;
- (void)setCurentController:(id)a3;
- (void)setSelectedProfileTo:(id)a3 controller:(id)a4 game:(id)a5;
- (void)updateControllers;
- (void)updateCurrentController;
- (void)updateGameFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5;
@end

@implementation GCOverlaySettingsStore

+ (_TtC14GameController22GCOverlaySettingsStore)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static GCOverlaySettingsStore.shared;

  return v3;
}

- (NSArray)connectedControllerIdentifiers
{
  v2 = *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setConnectedControllerIdentifiers:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers);
  *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers) = v4;
}

- (void)setCurentController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController);
  *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController) = a3;
  v3 = a3;
}

- (GCSGame)defaultGame
{
  v2 = self;
  v3 = GCOverlaySettingsStore.defaultGame.getter();

  return v3;
}

- (GCSProfile)defaultProfile
{
  v2 = self;
  v3 = GCOverlaySettingsStore.defaultProfile.getter();

  return v3;
}

- (id)getSettingsControllerFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = GCOverlaySettingsStore.getSettingsController(for:)(v4);

  return v6;
}

- (void)updateCurrentController
{
  v2 = self;
  GCOverlaySettingsStore.updateCurrentController()();
}

- (void)updateControllers
{
  v2 = self;
  GCOverlaySettingsStore.updateControllers()();
}

- (void)updateGameFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  GCOverlaySettingsStore.updateGame(from:to:saveToDisk:)(v8, v9, a5);
}

- (void)refresh
{
  v2 = self;
  GCOverlaySettingsStore.refresh()();
}

- (void)setSelectedProfileTo:(id)a3 controller:(id)a4 game:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  GCOverlaySettingsStore.setSelectedProfile(to:controller:game:)(v8, v9, v10);
}

@end
@interface GCOverlaySettingsStore
+ (_TtC14GameController22GCOverlaySettingsStore)shared;
- (GCSGame)defaultGame;
- (GCSProfile)defaultProfile;
- (NSArray)connectedControllerIdentifiers;
- (id)getSettingsControllerFor:(id)for;
- (void)refresh;
- (void)setConnectedControllerIdentifiers:(id)identifiers;
- (void)setCurentController:(id)controller;
- (void)setSelectedProfileTo:(id)to controller:(id)controller game:(id)game;
- (void)updateControllers;
- (void)updateCurrentController;
- (void)updateGameFrom:(id)from to:(id)to saveToDisk:(BOOL)disk;
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

- (void)setConnectedControllerIdentifiers:(id)identifiers
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers);
  *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers) = v4;
}

- (void)setCurentController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController);
  *(self + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController) = controller;
  controllerCopy = controller;
}

- (GCSGame)defaultGame
{
  selfCopy = self;
  v3 = GCOverlaySettingsStore.defaultGame.getter();

  return v3;
}

- (GCSProfile)defaultProfile
{
  selfCopy = self;
  v3 = GCOverlaySettingsStore.defaultProfile.getter();

  return v3;
}

- (id)getSettingsControllerFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = GCOverlaySettingsStore.getSettingsController(for:)(forCopy);

  return v6;
}

- (void)updateCurrentController
{
  selfCopy = self;
  GCOverlaySettingsStore.updateCurrentController()();
}

- (void)updateControllers
{
  selfCopy = self;
  GCOverlaySettingsStore.updateControllers()();
}

- (void)updateGameFrom:(id)from to:(id)to saveToDisk:(BOOL)disk
{
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  GCOverlaySettingsStore.updateGame(from:to:saveToDisk:)(fromCopy, toCopy, disk);
}

- (void)refresh
{
  selfCopy = self;
  GCOverlaySettingsStore.refresh()();
}

- (void)setSelectedProfileTo:(id)to controller:(id)controller game:(id)game
{
  toCopy = to;
  controllerCopy = controller;
  gameCopy = game;
  selfCopy = self;
  GCOverlaySettingsStore.setSelectedProfile(to:controller:game:)(toCopy, controllerCopy, gameCopy);
}

@end
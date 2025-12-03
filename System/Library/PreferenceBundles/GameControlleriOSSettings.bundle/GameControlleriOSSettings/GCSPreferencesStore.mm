@interface GCSPreferencesStore
- (BOOL)controllerIsConnected:(id)connected;
- (BOOL)controllerIsFusedController:(id)controller;
- (BOOL)fusedControllerIsConnectedWithPilotOrCopilotController:(id)controller;
- (GCSGame)defaultGame;
- (GCSProfile)defaultProfile;
- (NSArray)connectedControllerIdentifiers;
- (NSDictionary)profileUsageStats;
- (NSDictionary)tombstones;
- (NSString)systemButtonLongPressAction;
- (double)thumbstickScrollingSpeed;
- (id)controllerConnectionFor:(id)for;
- (id)copilotFusedControllerWithController:(id)controller;
- (id)copilotFusedControllerWithFusedController:(id)controller;
- (id)copilotFusedControllerWithPilotOrCopilotController:(id)controller;
- (id)gameWithBundleIdentifier:(id)identifier controller:(id)controller;
- (void)addController:(id)controller saveToDisk:(BOOL)disk;
- (void)addCopilotFusedController:(id)controller saveToDisk:(BOOL)disk;
- (void)addGame:(id)game saveToDisk:(BOOL)disk;
- (void)addMouseProfile:(id)profile saveToDisk:(BOOL)disk;
- (void)addProfile:(id)profile saveToDisk:(BOOL)disk;
- (void)calculateProfileUsageStats;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeController:(id)controller saveToDisk:(BOOL)disk;
- (void)removeControllers:(id)controllers saveToDisk:(BOOL)disk;
- (void)removeGame:(id)game saveToDisk:(BOOL)disk;
- (void)removeMouseProfile:(id)profile saveToDisk:(BOOL)disk;
- (void)removeProfile:(id)profile saveToDisk:(BOOL)disk;
- (void)setConnectedControllerIdentifiers:(id)identifiers;
- (void)setNaturalThumbstickScrollDirection:(BOOL)direction;
- (void)setProfileUsageStats:(id)stats;
- (void)setSystemButtonActionsEnabled:(BOOL)enabled;
- (void)setSystemButtonLongPressAction:(id)action;
- (void)setThumbstickScrollingSpeed:(double)speed;
- (void)setTombstones:(id)tombstones;
- (void)updateControllerFrom:(id)from to:(id)to saveToDisk:(BOOL)disk;
- (void)updateControllers;
- (void)updateGameFrom:(id)from to:(id)to saveToDisk:(BOOL)disk;
- (void)updateMouseProfileFrom:(id)from to:(id)to saveToDisk:(BOOL)disk;
- (void)updateProfileFrom:(id)from to:(id)to saveToDisk:(BOOL)disk;
@end

@implementation GCSPreferencesStore

- (NSArray)connectedControllerIdentifiers
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AC8();

  v4.super.isa = sub_D7D18().super.isa;

  return v4.super.isa;
}

- (void)setConnectedControllerIdentifiers:(id)identifiers
{
  sub_D7D28();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AD8();
}

- (NSDictionary)tombstones
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AC8();

  sub_DC40(&qword_119050);
  v4.super.isa = sub_D7B38().super.isa;

  return v4.super.isa;
}

- (void)setTombstones:(id)tombstones
{
  sub_DC40(&qword_119050);
  sub_D7B48();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AD8();
}

- (NSDictionary)profileUsageStats
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AC8();

  sub_D6998();
  type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  v4.super.isa = sub_D7B38().super.isa;

  return v4.super.isa;
}

- (void)setProfileUsageStats:(id)stats
{
  sub_D6998();
  type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  sub_D7B48();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AD8();
}

- (void)setSystemButtonActionsEnabled:(BOOL)enabled
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AD8();
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults);
  [v5 setBool:-[GCSPreferencesStore systemButtonActionsEnabled](selfCopy forKey:{"systemButtonActionsEnabled"), @"bluetoothPrefsMenuLongPressAction"}];
}

- (NSString)systemButtonLongPressAction
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AC8();

  if (v6)
  {
    v4 = sub_D7BD8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSystemButtonLongPressAction:(id)action
{
  if (action)
  {
    sub_D7C18();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AD8();
  sub_904E8();
}

- (void)setNaturalThumbstickScrollDirection:(BOOL)direction
{
  selfCopy = self;
  sub_90A1C();
}

- (double)thumbstickScrollingSpeed
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_D6AC8();

  return v5;
}

- (void)setThumbstickScrollingSpeed:(double)speed
{
  selfCopy = self;
  sub_90F80();
}

- (GCSGame)defaultGame
{
  selfCopy = self;
  v3 = sub_92734();

  return v3;
}

- (GCSProfile)defaultProfile
{
  selfCopy = self;
  v3 = sub_92A08();

  return v3;
}

- (BOOL)controllerIsConnected:(id)connected
{
  connectedCopy = connected;
  selfCopy = self;
  LOBYTE(self) = sub_93AB4(connectedCopy);

  return self & 1;
}

- (BOOL)fusedControllerIsConnectedWithPilotOrCopilotController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(self) = sub_93D24();

  return self & 1;
}

- (BOOL)controllerIsFusedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  fusedControllers = [(GCSPreferencesStore *)selfCopy fusedControllers];
  sub_450A0(0, &qword_117060);
  v7 = sub_D7D28();

  v10 = controllerCopy;
  v9[2] = &v10;
  LOBYTE(fusedControllers) = sub_91AB8(sub_A69CC, v9, v7);

  return fusedControllers & 1;
}

- (id)copilotFusedControllerWithController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_94044(controllerCopy);

  return v6;
}

- (id)copilotFusedControllerWithPilotOrCopilotController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_943C8(controllerCopy);

  return v6;
}

- (id)copilotFusedControllerWithFusedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_946AC(controllerCopy);

  return v6;
}

- (id)controllerConnectionFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_A47D8(forCopy);

  return v6;
}

- (void)calculateProfileUsageStats
{
  selfCopy = self;
  sub_94960();
}

- (id)gameWithBundleIdentifier:(id)identifier controller:(id)controller
{
  v6 = sub_D7C18();
  v8 = v7;
  controllerCopy = controller;
  selfCopy = self;
  v11 = sub_95C60(v6, v8, controllerCopy);

  return v11;
}

- (void)updateGameFrom:(id)from to:(id)to saveToDisk:(BOOL)disk
{
  diskCopy = disk;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_95EC0(fromCopy, toCopy, diskCopy);
}

- (void)addGame:(id)game saveToDisk:(BOOL)disk
{
  gameCopy = game;
  selfCopy = self;
  sub_95F78(gameCopy, disk);
}

- (void)removeGame:(id)game saveToDisk:(BOOL)disk
{
  gameCopy = game;
  selfCopy = self;
  sub_96010(gameCopy, disk);
}

- (void)updateProfileFrom:(id)from to:(id)to saveToDisk:(BOOL)disk
{
  diskCopy = disk;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_966E8(fromCopy, toCopy, diskCopy);
}

- (void)addCopilotFusedController:(id)controller saveToDisk:(BOOL)disk
{
  controllerCopy = controller;
  selfCopy = self;
  sub_96B30(controllerCopy, disk);
}

- (void)addProfile:(id)profile saveToDisk:(BOOL)disk
{
  profileCopy = profile;
  selfCopy = self;
  sub_97098(profileCopy, disk);
}

- (void)removeProfile:(id)profile saveToDisk:(BOOL)disk
{
  profileCopy = profile;
  selfCopy = self;
  sub_97130(profileCopy, disk);
}

- (void)addMouseProfile:(id)profile saveToDisk:(BOOL)disk
{
  profileCopy = profile;
  selfCopy = self;
  sub_97BD8(profileCopy, disk);
}

- (void)removeMouseProfile:(id)profile saveToDisk:(BOOL)disk
{
  profileCopy = profile;
  selfCopy = self;
  sub_97C70(profileCopy, disk);
}

- (void)updateMouseProfileFrom:(id)from to:(id)to saveToDisk:(BOOL)disk
{
  diskCopy = disk;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_97FC8(fromCopy, toCopy, diskCopy);
}

- (void)addController:(id)controller saveToDisk:(BOOL)disk
{
  controllerCopy = controller;
  selfCopy = self;
  sub_9807C(controllerCopy, disk);
}

- (void)updateControllerFrom:(id)from to:(id)to saveToDisk:(BOOL)disk
{
  diskCopy = disk;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_9892C(fromCopy, toCopy, diskCopy);
}

- (void)removeController:(id)controller saveToDisk:(BOOL)disk
{
  controllerCopy = controller;
  selfCopy = self;
  sub_98CE8(controllerCopy, disk);
}

- (void)removeControllers:(id)controllers saveToDisk:(BOOL)disk
{
  sub_450A0(0, &qword_117060);
  v6 = sub_D7D28();
  selfCopy = self;
  sub_98F7C(v6, disk);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_D7C18();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_D7F58();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_A4DE8(&qword_118F70, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_D7B48();

LABEL_8:
  sub_9B540(v10, v12, v18, v15, context);

  sub_160BC(v18, &qword_119330);
}

- (void)updateControllers
{
  selfCopy = self;
  sub_9BDB4();
}

@end
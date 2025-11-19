@interface GCSPreferencesStore
- (BOOL)controllerIsConnected:(id)a3;
- (BOOL)controllerIsFusedController:(id)a3;
- (BOOL)fusedControllerIsConnectedWithPilotOrCopilotController:(id)a3;
- (GCSGame)defaultGame;
- (GCSProfile)defaultProfile;
- (NSArray)connectedControllerIdentifiers;
- (NSDictionary)profileUsageStats;
- (NSDictionary)tombstones;
- (NSString)systemButtonLongPressAction;
- (double)thumbstickScrollingSpeed;
- (id)controllerConnectionFor:(id)a3;
- (id)copilotFusedControllerWithController:(id)a3;
- (id)copilotFusedControllerWithFusedController:(id)a3;
- (id)copilotFusedControllerWithPilotOrCopilotController:(id)a3;
- (id)gameWithBundleIdentifier:(id)a3 controller:(id)a4;
- (void)addController:(id)a3 saveToDisk:(BOOL)a4;
- (void)addCopilotFusedController:(id)a3 saveToDisk:(BOOL)a4;
- (void)addGame:(id)a3 saveToDisk:(BOOL)a4;
- (void)addMouseProfile:(id)a3 saveToDisk:(BOOL)a4;
- (void)addProfile:(id)a3 saveToDisk:(BOOL)a4;
- (void)calculateProfileUsageStats;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeController:(id)a3 saveToDisk:(BOOL)a4;
- (void)removeControllers:(id)a3 saveToDisk:(BOOL)a4;
- (void)removeGame:(id)a3 saveToDisk:(BOOL)a4;
- (void)removeMouseProfile:(id)a3 saveToDisk:(BOOL)a4;
- (void)removeProfile:(id)a3 saveToDisk:(BOOL)a4;
- (void)setConnectedControllerIdentifiers:(id)a3;
- (void)setNaturalThumbstickScrollDirection:(BOOL)a3;
- (void)setProfileUsageStats:(id)a3;
- (void)setSystemButtonActionsEnabled:(BOOL)a3;
- (void)setSystemButtonLongPressAction:(id)a3;
- (void)setThumbstickScrollingSpeed:(double)a3;
- (void)setTombstones:(id)a3;
- (void)updateControllerFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5;
- (void)updateControllers;
- (void)updateGameFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5;
- (void)updateMouseProfileFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5;
- (void)updateProfileFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5;
@end

@implementation GCSPreferencesStore

- (NSArray)connectedControllerIdentifiers
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_D6AC8();

  v4.super.isa = sub_D7D18().super.isa;

  return v4.super.isa;
}

- (void)setConnectedControllerIdentifiers:(id)a3
{
  sub_D7D28();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_D6AD8();
}

- (NSDictionary)tombstones
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_D6AC8();

  sub_DC40(&qword_119050);
  v4.super.isa = sub_D7B38().super.isa;

  return v4.super.isa;
}

- (void)setTombstones:(id)a3
{
  sub_DC40(&qword_119050);
  sub_D7B48();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_D6AD8();
}

- (NSDictionary)profileUsageStats
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_D6AC8();

  sub_D6998();
  type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  v4.super.isa = sub_D7B38().super.isa;

  return v4.super.isa;
}

- (void)setProfileUsageStats:(id)a3
{
  sub_D6998();
  type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  sub_D7B48();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_D6AD8();
}

- (void)setSystemButtonActionsEnabled:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_D6AD8();
  v5 = *(&v4->super.isa + OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults);
  [v5 setBool:-[GCSPreferencesStore systemButtonActionsEnabled](v4 forKey:{"systemButtonActionsEnabled"), @"bluetoothPrefsMenuLongPressAction"}];
}

- (NSString)systemButtonLongPressAction
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
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

- (void)setSystemButtonLongPressAction:(id)a3
{
  if (a3)
  {
    sub_D7C18();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_D6AD8();
  sub_904E8();
}

- (void)setNaturalThumbstickScrollDirection:(BOOL)a3
{
  v3 = self;
  sub_90A1C();
}

- (double)thumbstickScrollingSpeed
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_D6AC8();

  return v5;
}

- (void)setThumbstickScrollingSpeed:(double)a3
{
  v3 = self;
  sub_90F80();
}

- (GCSGame)defaultGame
{
  v2 = self;
  v3 = sub_92734();

  return v3;
}

- (GCSProfile)defaultProfile
{
  v2 = self;
  v3 = sub_92A08();

  return v3;
}

- (BOOL)controllerIsConnected:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_93AB4(v4);

  return self & 1;
}

- (BOOL)fusedControllerIsConnectedWithPilotOrCopilotController:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_93D24();

  return self & 1;
}

- (BOOL)controllerIsFusedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(GCSPreferencesStore *)v5 fusedControllers];
  sub_450A0(0, &qword_117060);
  v7 = sub_D7D28();

  v10 = v4;
  v9[2] = &v10;
  LOBYTE(v6) = sub_91AB8(sub_A69CC, v9, v7);

  return v6 & 1;
}

- (id)copilotFusedControllerWithController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_94044(v4);

  return v6;
}

- (id)copilotFusedControllerWithPilotOrCopilotController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_943C8(v4);

  return v6;
}

- (id)copilotFusedControllerWithFusedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_946AC(v4);

  return v6;
}

- (id)controllerConnectionFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_A47D8(v4);

  return v6;
}

- (void)calculateProfileUsageStats
{
  v2 = self;
  sub_94960();
}

- (id)gameWithBundleIdentifier:(id)a3 controller:(id)a4
{
  v6 = sub_D7C18();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_95C60(v6, v8, v9);

  return v11;
}

- (void)updateGameFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_95EC0(v8, v9, v5);
}

- (void)addGame:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_95F78(v6, a4);
}

- (void)removeGame:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_96010(v6, a4);
}

- (void)updateProfileFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_966E8(v8, v9, v5);
}

- (void)addCopilotFusedController:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_96B30(v6, a4);
}

- (void)addProfile:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_97098(v6, a4);
}

- (void)removeProfile:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_97130(v6, a4);
}

- (void)addMouseProfile:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_97BD8(v6, a4);
}

- (void)removeMouseProfile:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_97C70(v6, a4);
}

- (void)updateMouseProfileFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_97FC8(v8, v9, v5);
}

- (void)addController:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_9807C(v6, a4);
}

- (void)updateControllerFrom:(id)a3 to:(id)a4 saveToDisk:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_9892C(v8, v9, v5);
}

- (void)removeController:(id)a3 saveToDisk:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_98CE8(v6, a4);
}

- (void)removeControllers:(id)a3 saveToDisk:(BOOL)a4
{
  sub_450A0(0, &qword_117060);
  v6 = sub_D7D28();
  v7 = self;
  sub_98F7C(v6, a4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_D7C18();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_D7F58();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_A4DE8(&qword_118F70, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_D7B48();

LABEL_8:
  sub_9B540(v10, v12, v18, v15, a6);

  sub_160BC(v18, &qword_119330);
}

- (void)updateControllers
{
  v2 = self;
  sub_9BDB4();
}

@end
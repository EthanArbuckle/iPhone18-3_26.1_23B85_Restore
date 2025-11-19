@interface COSContextualVolumeController
+ (NSString)prefsDidChangeNotification;
+ (NSString)propertyKey;
- (BOOL)enabled;
- (COSContextualVolumeController)init;
- (COSContextualVolumeControllerDelegate)delegate;
- (NSNumber)ringtoneUserVolume;
- (NSString)profileValue;
- (void)setEnabled:(BOOL)a3;
- (void)setRingtoneUserVolume:(float)a3;
@end

@implementation COSContextualVolumeController

+ (NSString)propertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)prefsDidChangeNotification
{
  if (qword_1002BE270 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (COSContextualVolumeControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)enabled
{
  v2 = self;
  v3 = ConsiderateVolumeSettingsController.isEnabled(for:)();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = self;
  ConsiderateVolumeSettingsController.setEnabled(_:for:)();
}

- (NSString)profileValue
{
  v2 = self;
  sub_1001544AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSNumber)ringtoneUserVolume
{
  v2 = self;
  v3 = ConsiderateVolumeSettingsController.ringtoneUserVolume.getter();
  if ((v3 & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = v3;
    v5 = objc_allocWithZone(NSNumber);
    LODWORD(v6) = v4;
    v7 = [v5 initWithFloat:v6];
  }

  return v7;
}

- (void)setRingtoneUserVolume:(float)a3
{
  v3 = self;
  ConsiderateVolumeSettingsController.ringtoneUserVolume.setter();
}

- (COSContextualVolumeController)init
{
  v3 = OBJC_IVAR___COSContextualVolumeController_settingsController;
  type metadata accessor for ConsiderateVolumeSettingsController();
  *(self + v3) = ConsiderateVolumeSettingsController.__allocating_init()();
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ContextualVolumeController();
  return [(COSContextualVolumeController *)&v5 init];
}

@end
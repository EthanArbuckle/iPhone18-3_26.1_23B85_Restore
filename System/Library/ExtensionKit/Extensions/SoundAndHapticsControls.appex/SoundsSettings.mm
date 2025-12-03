@interface SoundsSettings
+ (_TtC23SoundAndHapticsControls14SoundsSettings)defaultState;
- (BOOL)showInStatusBar;
- (BOOL)silentMode;
- (_TtC23SoundAndHapticsControls14SoundsSettings)init;
- (int64_t)hapticsOption;
- (void)setHapticsOption:(int64_t)option;
- (void)setShowInStatusBar:(BOOL)bar;
- (void)setSilentMode:(BOOL)mode;
@end

@implementation SoundsSettings

+ (_TtC23SoundAndHapticsControls14SoundsSettings)defaultState
{
  if (qword_100020320 != -1)
  {
    swift_once();
  }

  v3 = qword_100020B80;

  return v3;
}

- (BOOL)silentMode
{
  swift_getKeyPath();
  sub_100007DD0();
  selfCopy = self;
  sub_100012418();

  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v5 = sharedInstance;
    getSilentMode = [sharedInstance getSilentMode];

    LOBYTE(sharedInstance) = getSilentMode;
  }

  else
  {
    __break(1u);
  }

  return sharedInstance;
}

- (void)setSilentMode:(BOOL)mode
{
  swift_getKeyPath();
  sub_100007DD0();
  selfCopy = self;
  sub_100012408();
}

- (BOOL)showInStatusBar
{
  selfCopy = self;
  v3 = sub_100010F78();

  return v3;
}

- (void)setShowInStatusBar:(BOOL)bar
{
  swift_getObjectType();
  swift_getKeyPath();
  sub_100007DD0();
  selfCopy = self;
  sub_100012408();
}

- (int64_t)hapticsOption
{
  selfCopy = self;
  v3 = sub_100010D9C();

  return v3;
}

- (void)setHapticsOption:(int64_t)option
{
  swift_getObjectType();
  swift_getKeyPath();
  sub_100007DD0();
  selfCopy = self;
  sub_100012408();
}

- (_TtC23SoundAndHapticsControls14SoundsSettings)init
{
  ObjectType = swift_getObjectType();
  sub_100012428();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SoundsSettings *)&v5 init];
}

@end
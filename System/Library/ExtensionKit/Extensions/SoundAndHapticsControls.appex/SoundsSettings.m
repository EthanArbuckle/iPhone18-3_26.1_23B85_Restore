@interface SoundsSettings
+ (_TtC23SoundAndHapticsControls14SoundsSettings)defaultState;
- (BOOL)showInStatusBar;
- (BOOL)silentMode;
- (_TtC23SoundAndHapticsControls14SoundsSettings)init;
- (int64_t)hapticsOption;
- (void)setHapticsOption:(int64_t)a3;
- (void)setShowInStatusBar:(BOOL)a3;
- (void)setSilentMode:(BOOL)a3;
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
  v3 = self;
  sub_100012418();

  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 getSilentMode];

    LOBYTE(v4) = v6;
  }

  else
  {
    __break(1u);
  }

  return v4;
}

- (void)setSilentMode:(BOOL)a3
{
  swift_getKeyPath();
  sub_100007DD0();
  v4 = self;
  sub_100012408();
}

- (BOOL)showInStatusBar
{
  v2 = self;
  v3 = sub_100010F78();

  return v3;
}

- (void)setShowInStatusBar:(BOOL)a3
{
  swift_getObjectType();
  swift_getKeyPath();
  sub_100007DD0();
  v4 = self;
  sub_100012408();
}

- (int64_t)hapticsOption
{
  v2 = self;
  v3 = sub_100010D9C();

  return v3;
}

- (void)setHapticsOption:(int64_t)a3
{
  swift_getObjectType();
  swift_getKeyPath();
  sub_100007DD0();
  v4 = self;
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
@interface MusicSongTransitionsSettingsController
- (MusicSongTransitionsSettingsController)init;
- (MusicSongTransitionsSettingsController)initWithCoder:(id)a3;
@end

@implementation MusicSongTransitionsSettingsController

- (MusicSongTransitionsSettingsController)init
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = [(MusicSettingsViewController *)&v7 init];
  sub_13750(v6);
  v3 = objc_allocWithZone(sub_10434(&qword_2AFB8, &qword_1B228));
  v4 = sub_16A14();
  [(MusicSongTransitionsSettingsController *)v2 setView:v4];

  return v2;
}

- (MusicSongTransitionsSettingsController)initWithCoder:(id)a3
{
  result = sub_16E24();
  __break(1u);
  return result;
}

@end
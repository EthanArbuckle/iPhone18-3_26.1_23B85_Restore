@interface SettingsViewController
- (_TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (uint64_t)openHealthAppOnboarding;
- (uint64_t)openHealthAppSettings;
- (uint64_t)openHeartRateLearnMore;
- (uint64_t)openWristTemperatureLearnMore;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SettingsViewController

- (_TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8A3C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_51A4(a4, v6, a4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_5474(a3);
}

- (id)specifiers
{
  v2 = self;
  sub_5950();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_8ACC().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (uint64_t)openHeartRateLearnMore
{
  v0 = *(*(sub_883C() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_89DC() - 8) + 64);
  __chkstk_darwin();
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v16 - v4;
  sub_89EC();
  type metadata accessor for SettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_882C();
  sub_8A4C();
  sub_880C();

  v8 = sub_881C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = [objc_opt_self() sharedApplication];
    sub_87FC(v12);
    v14 = v13;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = sub_899C().super.isa;

    [v11 openURL:v14 options:isa completionHandler:0];

    return (*(v9 + 8))(v5, v8);
  }

  return result;
}

- (uint64_t)openWristTemperatureLearnMore
{
  v0 = *(*(sub_883C() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_89DC() - 8) + 64);
  __chkstk_darwin();
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v16 - v4;
  sub_89EC();
  type metadata accessor for SettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_882C();
  sub_8A4C();
  sub_880C();

  v8 = sub_881C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = [objc_opt_self() sharedApplication];
    sub_87FC(v12);
    v14 = v13;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = sub_899C().super.isa;

    [v11 openURL:v14 options:isa completionHandler:0];

    return (*(v9 + 8))(v5, v8);
  }

  return result;
}

- (uint64_t)openHealthAppOnboarding
{
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v12 - v2;
  sub_880C();
  v4 = sub_881C();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_opt_self() sharedApplication];
    sub_87FC(v8);
    v10 = v9;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = sub_899C().super.isa;

    [v7 openURL:v10 options:isa completionHandler:0];

    return (*(v5 + 8))(v3, v4);
  }

  return result;
}

- (uint64_t)openHealthAppSettings
{
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v12 - v2;
  sub_880C();
  v4 = sub_881C();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_opt_self() sharedApplication];
    sub_87FC(v8);
    v10 = v9;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = sub_899C().super.isa;

    [v7 openURL:v10 options:isa completionHandler:0];

    return (*(v5 + 8))(v3, v4);
  }

  return result;
}

@end
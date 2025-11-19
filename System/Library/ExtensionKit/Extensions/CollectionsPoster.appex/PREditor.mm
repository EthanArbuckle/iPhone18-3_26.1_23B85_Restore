@interface PREditor
- (WKWallpaperPosterEditingLook)wk_currentLook;
- (void)wk_setAdaptiveTimeMode:(unint64_t)a3;
- (void)wk_setMaximumAdaptiveTimeHeight:(double)a3;
@end

@implementation PREditor

- (WKWallpaperPosterEditingLook)wk_currentLook
{
  v2 = [(PREditor *)self currentLook];

  return v2;
}

- (void)wk_setAdaptiveTimeMode:(unint64_t)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100010344;
  *(v6 + 24) = v5;
  v9[4] = sub_100010300;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001033C;
  v9[3] = &unk_100018F30;
  v7 = _Block_copy(v9);
  v8 = self;

  [(PREditor *)v8 updatePreferences:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

- (void)wk_setMaximumAdaptiveTimeHeight:(double)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100010340;
  *(v6 + 24) = v5;
  v9[4] = sub_100010300;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001033C;
  v9[3] = &unk_100018EB8;
  v7 = _Block_copy(v9);
  v8 = self;

  [(PREditor *)v8 updatePreferences:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

@end
@interface PREditor
- (WKWallpaperPosterEditingLook)wk_currentLook;
- (void)wk_setAdaptiveTimeMode:(unint64_t)mode;
- (void)wk_setMaximumAdaptiveTimeHeight:(double)height;
@end

@implementation PREditor

- (WKWallpaperPosterEditingLook)wk_currentLook
{
  currentLook = [(PREditor *)self currentLook];

  return currentLook;
}

- (void)wk_setAdaptiveTimeMode:(unint64_t)mode
{
  v5 = swift_allocObject();
  *(v5 + 16) = mode;
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
  selfCopy = self;

  [(PREditor *)selfCopy updatePreferences:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

- (void)wk_setMaximumAdaptiveTimeHeight:(double)height
{
  v5 = swift_allocObject();
  *(v5 + 16) = height;
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
  selfCopy = self;

  [(PREditor *)selfCopy updatePreferences:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

@end
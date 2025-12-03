@interface BKFrontmostAssetTracker
- (BKFrontmostAssetTracker)init;
- (BKFrontmostAssetTracker)initWithAssetID:(id)d window:(id)window onFrontmostChanged:(id)changed;
- (UIWindow)window;
- (id)onFrontmostChanged;
- (void)dealloc;
- (void)setOnFrontmostChanged:(id)changed;
- (void)setWindow:(id)window;
@end

@implementation BKFrontmostAssetTracker

- (id)onFrontmostChanged
{
  v2 = (self + OBJC_IVAR___BKFrontmostAssetTracker_onFrontmostChanged);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021B6B0;
    aBlock[3] = &unk_100A0EF30;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnFrontmostChanged:(id)changed
{
  v4 = _Block_copy(changed);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_10021C23C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKFrontmostAssetTracker_onFrontmostChanged);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_100007020(v7);
}

- (BKFrontmostAssetTracker)initWithAssetID:(id)d window:(id)window onFrontmostChanged:(id)changed
{
  v6 = _Block_copy(changed);
  v7 = sub_1007A2254();
  v9 = v8;
  if (v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v6 = sub_10021C1E0;
  }

  else
  {
    v10 = 0;
  }

  windowCopy = window;
  return FrontmostAssetTracker.init(assetID:window:onFrontmostChanged:)(v7, v9, window, v6, v10);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker);
  selfCopy = self;
  if (v4)
  {
    v6 = v4;
    sub_10079E8A4();
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(BKFrontmostAssetTracker *)&v7 dealloc];
}

- (UIWindow)window
{
  v2 = *(self + OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker);
  if (v2)
  {
    selfCopy = self;
    v4 = v2;
    v2 = sub_10079E8C4();
  }

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  FrontmostAssetTracker.window.setter(window);
}

- (BKFrontmostAssetTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
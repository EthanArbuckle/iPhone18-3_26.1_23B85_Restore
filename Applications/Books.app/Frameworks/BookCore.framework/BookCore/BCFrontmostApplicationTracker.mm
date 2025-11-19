@interface BCFrontmostApplicationTracker
- (BCFrontmostApplicationTracker)init;
- (id)onFrontmostChanged;
- (void)setOnFrontmostChanged:(id)a3;
@end

@implementation BCFrontmostApplicationTracker

- (id)onFrontmostChanged
{
  v2 = (self + OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D894C;
    aBlock[3] = &unk_2D1F68;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnFrontmostChanged:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1DA874;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_19C408(v7);
}

- (BCFrontmostApplicationTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
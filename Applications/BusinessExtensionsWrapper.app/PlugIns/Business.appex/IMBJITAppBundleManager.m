@interface IMBJITAppBundleManager
+ (void)setSharedBundleManager:(id)a3;
- (int64_t)bundleState;
- (void)setBundleState:(int64_t)a3;
@end

@implementation IMBJITAppBundleManager

+ (void)setSharedBundleManager:(id)a3
{
  v3 = qword_1000EEEA8;
  v4 = a3;
  if (v3 != -1)
  {
    v5 = v4;
    swift_once();
    v4 = v5;
  }

  qword_1000F3AE0 = v4;

  _objc_release_x1();
}

- (int64_t)bundleState
{
  v3 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBundleState:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = self;
    sub_10006A938();
    swift_unknownObjectRelease();
  }
}

@end
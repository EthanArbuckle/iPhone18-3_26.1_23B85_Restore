@interface IMBJITAppBundleManager
+ (void)setSharedBundleManager:(id)manager;
- (int64_t)bundleState;
- (void)setBundleState:(int64_t)state;
@end

@implementation IMBJITAppBundleManager

+ (void)setSharedBundleManager:(id)manager
{
  v3 = qword_1000EEEA8;
  managerCopy = manager;
  if (v3 != -1)
  {
    v5 = managerCopy;
    swift_once();
    managerCopy = v5;
  }

  qword_1000F3AE0 = managerCopy;

  _objc_release_x1();
}

- (int64_t)bundleState
{
  v3 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBundleState:(int64_t)state
{
  v5 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  *(&self->super.isa + v5) = state;
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_10006A938();
    swift_unknownObjectRelease();
  }
}

@end
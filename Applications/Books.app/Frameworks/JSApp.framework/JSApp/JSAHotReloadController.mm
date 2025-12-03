@interface JSAHotReloadController
+ (JSAHotReloadController)sharedController;
- (BOOL)isHotReloading;
- (void)startWithCompletion:(id)completion;
- (void)stopWithCompletion:(id)completion;
@end

@implementation JSAHotReloadController

+ (JSAHotReloadController)sharedController
{
  if (qword_CA3C0 != -1)
  {
    swift_once();
  }

  v3 = qword_CA3C8;

  return v3;
}

- (BOOL)isHotReloading
{
  v2 = *(&self->super.isa + OBJC_IVAR___JSAHotReloadController_hotReloadCount);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16) > 0;
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (void)startWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_2CF2C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_28180(v7, v6);
  sub_2C0EC(v7);
}

- (void)stopWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_2C134;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_28580(v7, v6);
  sub_2C0EC(v7);
}

@end
@interface SecureUIManager
+ (SecureUIManager)sharedInstance;
- (BOOL)isRecording;
- (SecureUIManager)init;
- (id)controllerWithConfiguration:(id)a3 containerView:(id)a4 owner:(id)a5;
- (void)setControllers:(id)a3;
- (void)setIsRecording:(BOOL)a3;
@end

@implementation SecureUIManager

- (void)setControllers:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SecureUIManager_controllers);
  *(&self->super.isa + OBJC_IVAR___SecureUIManager_controllers) = a3;
  v3 = a3;
}

+ (SecureUIManager)sharedInstance
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v3 = static SecureUIManager.sharedInstance;

  return v3;
}

- (BOOL)isRecording
{
  v3 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRecording:(BOOL)a3
{
  v5 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  v6 = self;
  SecureUIManager.configureControllersForRecording()();
}

- (SecureUIManager)init
{
  v3 = OBJC_IVAR___SecureUIManager_controllers;
  *(&self->super.isa + v3) = [objc_opt_self() weakObjectsHashTable];
  *(&self->super.isa + OBJC_IVAR___SecureUIManager_isRecording) = 0;
  v5.receiver = self;
  v5.super_class = SecureUIManager;
  return [(SecureUIManager *)&v5 init];
}

- (id)controllerWithConfiguration:(id)a3 containerView:(id)a4 owner:(id)a5
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = SecureUIManager.controller(with:containerView:owner:)(a3, v9, v10);
  swift_unknownObjectRelease();

  return v12;
}

@end
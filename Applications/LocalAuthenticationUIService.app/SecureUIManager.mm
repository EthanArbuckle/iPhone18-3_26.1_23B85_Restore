@interface SecureUIManager
+ (SecureUIManager)sharedInstance;
- (BOOL)isRecording;
- (SecureUIManager)init;
- (id)controllerWithConfiguration:(id)configuration containerView:(id)view owner:(id)owner;
- (void)setControllers:(id)controllers;
- (void)setIsRecording:(BOOL)recording;
@end

@implementation SecureUIManager

- (void)setControllers:(id)controllers
{
  v4 = *(&self->super.isa + OBJC_IVAR___SecureUIManager_controllers);
  *(&self->super.isa + OBJC_IVAR___SecureUIManager_controllers) = controllers;
  controllersCopy = controllers;
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

- (void)setIsRecording:(BOOL)recording
{
  v5 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  *(&self->super.isa + v5) = recording;
  selfCopy = self;
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

- (id)controllerWithConfiguration:(id)configuration containerView:(id)view owner:(id)owner
{
  swift_unknownObjectRetain();
  viewCopy = view;
  ownerCopy = owner;
  selfCopy = self;
  v12 = SecureUIManager.controller(with:containerView:owner:)(configuration, viewCopy, ownerCopy);
  swift_unknownObjectRelease();

  return v12;
}

@end
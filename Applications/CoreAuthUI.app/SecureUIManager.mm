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
  if (qword_1000B1020 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B1028;

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
  sub_1000526E0();
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
  v12 = sub_1000528A8(configuration, viewCopy, ownerCopy);
  swift_unknownObjectRelease();

  return v12;
}

@end
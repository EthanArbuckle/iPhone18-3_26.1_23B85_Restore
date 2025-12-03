@interface CLUIServer
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)identifier;
+ (id)sharedInstance;
- (CLUIServer)init;
- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)controller;
- (void)handleRestrictionsPINNotification:(id)notification;
- (void)passcodeViewController:(id)controller isPasscode:(id)passcode correctWithCompletionHandler:(id)handler;
- (void)passcodeViewController:(id)controller passcodeViewIsVisible:(BOOL)visible;
- (void)passcodeViewController:(id)controller wasDismissedWithReason:(int64_t)reason;
- (void)processMessageAsynchronously:(id)asynchronously withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier completion:(id)completion;
@end

@implementation CLUIServer

+ (id)sharedInstance
{
  if (qword_18908 != -1)
  {
    swift_once();
  }

  v3 = qword_198D8;

  return v3;
}

- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  if (AXTripleClickAttemptToEnterClarityBoardMessageIdentifier == identifier)
  {
    selfCopy = self;
    sub_A358();
    sub_6C4C(&_swiftEmptyArrayStorage);

    isa = sub_E6BC().super.isa;

    v8 = isa;
  }

  else
  {
    sub_E144();
    swift_allocError();
    swift_willThrow();
    if (error)
    {
      v10 = sub_E4BC();

      v11 = v10;
      v8 = 0;
      *error = v10;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)processMessageAsynchronously:(id)asynchronously withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = v8;
  if (CLFUpdateAppIconsMessageIdentifier == identifier)
  {
    _Block_copy(v8);
    selfCopy = self;
    sub_7748(selfCopy, v9);
    _Block_release(v9);

    _Block_release(v9);
  }

  else
  {
    sub_E144();
    swift_allocError();
    _Block_copy(v9);
    _Block_copy(v9);
    selfCopy2 = self;
    v12 = sub_E4BC();
    (v9)[2](v9, 0, v12);

    _Block_release(v9);
    _Block_release(v9);
    _Block_release(v9);
  }
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)identifier
{
  if (sub_D898(identifier))
  {
    v3.super.isa = sub_E80C().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)handleRestrictionsPINNotification:(id)notification
{
  v4 = sub_E46C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E44C();
  selfCopy = self;
  sub_B510();

  (*(v5 + 8))(v8, v4);
}

- (void)passcodeViewController:(id)controller passcodeViewIsVisible:(BOOL)visible
{
  controllerCopy = controller;
  selfCopy = self;
  sub_DBB8(visible);
}

- (void)passcodeViewController:(id)controller wasDismissedWithReason:(int64_t)reason
{
  controllerCopy = controller;
  selfCopy = self;
  sub_DDE4(reason);
}

- (void)passcodeViewController:(id)controller isPasscode:(id)passcode correctWithCompletionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_E72C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  controllerCopy = controller;
  selfCopy = self;
  sub_DF04(v8, v10, sub_CFE8, v11);
}

- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)controller
{
  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = result;
    activeInterfaceOrientation = [result activeInterfaceOrientation];

    return activeInterfaceOrientation;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CLUIServer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CLUIServer_presentingViewController) = 0;
  *(&self->super.isa + OBJC_IVAR___CLUIServer_isShowingLoadingView) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(CLUIServer *)&v5 init];
}

@end
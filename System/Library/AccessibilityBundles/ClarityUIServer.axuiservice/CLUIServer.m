@interface CLUIServer
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)a3;
+ (id)sharedInstance;
- (CLUIServer)init;
- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)a3;
- (void)handleRestrictionsPINNotification:(id)a3;
- (void)passcodeViewController:(id)a3 isPasscode:(id)a4 correctWithCompletionHandler:(id)a5;
- (void)passcodeViewController:(id)a3 passcodeViewIsVisible:(BOOL)a4;
- (void)passcodeViewController:(id)a3 wasDismissedWithReason:(int64_t)a4;
- (void)processMessageAsynchronously:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 completion:(id)a6;
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

- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  if (AXTripleClickAttemptToEnterClarityBoardMessageIdentifier == a4)
  {
    v6 = self;
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
    if (a6)
    {
      v10 = sub_E4BC();

      v11 = v10;
      v8 = 0;
      *a6 = v10;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)processMessageAsynchronously:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = v8;
  if (CLFUpdateAppIconsMessageIdentifier == a4)
  {
    _Block_copy(v8);
    v10 = self;
    sub_7748(v10, v9);
    _Block_release(v9);

    _Block_release(v9);
  }

  else
  {
    sub_E144();
    swift_allocError();
    _Block_copy(v9);
    _Block_copy(v9);
    v11 = self;
    v12 = sub_E4BC();
    (v9)[2](v9, 0, v12);

    _Block_release(v9);
    _Block_release(v9);
    _Block_release(v9);
  }
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)a3
{
  if (sub_D898(a3))
  {
    v3.super.isa = sub_E80C().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)handleRestrictionsPINNotification:(id)a3
{
  v4 = sub_E46C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E44C();
  v9 = self;
  sub_B510();

  (*(v5 + 8))(v8, v4);
}

- (void)passcodeViewController:(id)a3 passcodeViewIsVisible:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_DBB8(a4);
}

- (void)passcodeViewController:(id)a3 wasDismissedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_DDE4(a4);
}

- (void)passcodeViewController:(id)a3 isPasscode:(id)a4 correctWithCompletionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_E72C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  sub_DF04(v8, v10, sub_CFE8, v11);
}

- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)a3
{
  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = result;
    v5 = [result activeInterfaceOrientation];

    return v5;
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
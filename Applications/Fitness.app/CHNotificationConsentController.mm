@interface CHNotificationConsentController
+ (id)makeNotificationConsentViewController:(BOOL)controller buttonHandler:(id)handler;
+ (void)updateAuthorization;
- (CHNotificationConsentController)init;
@end

@implementation CHNotificationConsentController

+ (id)makeNotificationConsentViewController:(BOOL)controller buttonHandler:(id)handler
{
  controllerCopy = controller;
  v6 = type metadata accessor for ContentAvailability();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_10016B148;
  }

  else
  {
    v14 = 0;
  }

  v15 = &enum case for ContentAvailability.available(_:);
  if (!controllerCopy)
  {
    v15 = &enum case for ContentAvailability.unavailableStoreFront(_:);
  }

  (*(v7 + 104))(v12, *v15, v6);
  type metadata accessor for NotificationConsentViewController();
  (*(v7 + 16))(v9, v12, v6);
  v16 = NotificationConsentViewController.__allocating_init(contentAvailability:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  sub_10000B210(v13);
  NotificationConsentViewController.continueButtonHandler.setter();
  sub_1000245E0(v13);
  (*(v7 + 8))(v12, v6);

  return v16;
}

+ (void)updateAuthorization
{
  if (([objc_opt_self() isRunningInStoreDemoMode] & 1) == 0)
  {
    currentNotificationCenter = [objc_opt_self() currentNotificationCenter];
    v4[4] = sub_1004DD284;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1004DCFFC;
    v4[3] = &unk_10085D390;
    v3 = _Block_copy(v4);
    [currentNotificationCenter requestAuthorizationWithOptions:39 completionHandler:v3];

    _Block_release(v3);
  }
}

- (CHNotificationConsentController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NotificationConsentController();
  return [(CHNotificationConsentController *)&v3 init];
}

@end
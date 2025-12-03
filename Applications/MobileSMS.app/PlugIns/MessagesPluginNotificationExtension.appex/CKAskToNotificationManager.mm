@interface CKAskToNotificationManager
+ (CKAskToNotificationManager)sharedManager;
- (CKAskToNotificationManager)init;
- (id)notificationActionsFromNotification:(id)notification;
- (void)handleResponse:(id)response completion:(id)completion;
@end

@implementation CKAskToNotificationManager

+ (CKAskToNotificationManager)sharedManager
{
  if (qword_100010868 != -1)
  {
    swift_once();
  }

  v3 = qword_100010870;

  return v3;
}

- (id)notificationActionsFromNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  v6 = sub_1000028C0(notificationCopy);

  if (v6)
  {
    sub_1000065C0(0, &qword_1000107D0, UNNotificationAction_ptr);
    v7.super.isa = sub_100006864().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (void)handleResponse:(id)response completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  responseCopy = response;
  selfCopy = self;
  sub_10000552C(responseCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (CKAskToNotificationManager)init
{
  v3 = OBJC_IVAR___CKAskToNotificationManager_actionIdentifierToResponsePayloadMap;
  *(&self->super.isa + v3) = sub_100005428(&_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for AskToNotificationManager();
  return [(CKAskToNotificationManager *)&v5 init];
}

@end
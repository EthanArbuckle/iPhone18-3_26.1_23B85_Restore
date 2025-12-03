@interface ExceptionRequestLocalApprovalManager
+ (_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager)shared;
+ (void)updateAskToBubblesWithUniqueIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager)init;
- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification;
- (void)handleTimeout;
- (void)presentLocalApprovalWithUniqueIdentifier:(id)identifier completion:(id)completion;
@end

@implementation ExceptionRequestLocalApprovalManager

+ (_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager)shared
{
  if (qword_100063E20 != -1)
  {
    swift_once();
  }

  v3 = qword_100063E68;

  return v3;
}

- (void)presentLocalApprovalWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0x98);
  selfCopy = self;
  v7();
  v9 = [objc_opt_self() timerWithTimeInterval:selfCopy target:"handleTimeout" selector:0 userInfo:0 repeats:90.0];
  (*((swift_isaMask & selfCopy->super.isa) + 0x80))(v9);
  v10 = *((swift_isaMask & selfCopy->super.isa) + 0x68);

  v10(sub_100032958, v6);
  [objc_opt_self() activateRemotePINUI];
}

- (void)handleTimeout
{
  selfCopy = self;
  sub_1000312C0();
}

- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100031534(notificationCopy);
}

+ (void)updateAskToBubblesWithUniqueIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_10002D464(&qword_100063AD8, &qword_100042A90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100042AA0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100042AB0;
  v15[5] = v14;
  identifierCopy = identifier;
  sub_10002C91C(0, 0, v10, &unk_100042AC0, v15);
}

- (_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_completionHandler);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_timer) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ExceptionRequestLocalApprovalManager();
  return [(ExceptionRequestLocalApprovalManager *)&v4 init];
}

@end
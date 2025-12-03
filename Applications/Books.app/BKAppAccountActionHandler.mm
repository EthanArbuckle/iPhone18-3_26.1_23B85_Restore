@interface BKAppAccountActionHandler
- (BKAppAccountActionHandler)init;
- (BKAppAccountActionHandler)initWithSceneManager:(id)manager;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)books_toggleSignedIn:(id)in;
- (void)books_viewMyAccount:(id)account;
- (void)dealloc;
- (void)validateCommand:(id)command;
@end

@implementation BKAppAccountActionHandler

- (BKAppAccountActionHandler)initWithSceneManager:(id)manager
{
  ObjectType = swift_getObjectType();
  sub_10079AE34();
  managerCopy = manager;
  v6 = sub_10079AE04();
  sharedProvider = [objc_opt_self() sharedProvider];
  v8 = objc_allocWithZone(ObjectType);
  v9 = sub_1005427A0(managerCopy, v6, sharedProvider);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.isa + OBJC_IVAR___BKAppAccountActionHandler_accountsProvider);
  selfCopy = self;
  [v4 removeObserver:selfCopy accountTypes:1];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(BKAppAccountActionHandler *)&v6 dealloc];
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1007A26F4();
  selfCopy = self;
  v10 = sub_1007A26E4();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = selfCopy;
  sub_1003457A0(0, 0, v7, &unk_10082F798, v11);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100542C28(action, v10);

  sub_100007840(v10, &unk_100AD5B40);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_100542E70(commandCopy);
}

- (void)books_toggleSignedIn:(id)in
{
  if (in)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100543678();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_viewMyAccount:(id)account
{
  if (account)
  {
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  [objc_opt_self() openAccountSummaryPage];
  sub_100007840(v3, &unk_100AD5B40);
}

- (BKAppAccountActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
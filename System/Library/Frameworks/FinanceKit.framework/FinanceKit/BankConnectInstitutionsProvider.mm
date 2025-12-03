@interface BankConnectInstitutionsProvider
+ (id)makeProviderAndReturnError:(id *)error;
- (FKBankConnectInstitutionsProviderDelegate)delegate;
- (_TtC10FinanceKit31BankConnectInstitutionsProvider)init;
- (void)dealloc;
- (void)fetchConnectedInstitutionsWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation BankConnectInstitutionsProvider

- (FKBankConnectInstitutionsProviderDelegate)delegate
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask))
  {
    selfCopy = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    sub_1B7800E68();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectInstitutionsProvider();
  [(BankConnectInstitutionsProvider *)&v5 dealloc];
}

+ (id)makeProviderAndReturnError:(id *)error
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v3 = *(off_1EDAF9E38 + 2);
  v4 = type metadata accessor for BankConnectInstitutionsProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

- (void)fetchConnectedInstitutionsWithCompletion:(id)completion
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(completion);
  _Block_copy(v5);
  selfCopy = self;
  sub_1B7706D2C(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (_TtC10FinanceKit31BankConnectInstitutionsProvider)init
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
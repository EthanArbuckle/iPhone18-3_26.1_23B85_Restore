@interface FKBankConnectProvisioningFlowManager
- (BOOL)hasErrorAlertToDisplay;
- (FKBankConnectProvisioningFlowDelegate)delegate;
- (FKBankConnectProvisioningFlowManager)initWithPaymentPass:(id)a3 institution:(id)a4;
- (_TtC12FinanceKitUI34BankConnectProvisioningFlowManager)manager;
- (id)errorAlertWithCompletion:(id)a3;
- (id)viewControllerForStep:(int64_t)a3;
- (int64_t)nextStepAfterStep:(int64_t)a3;
- (int64_t)rootStep;
- (void)setDelegate:(id)a3;
@end

@implementation FKBankConnectProvisioningFlowManager

- (_TtC12FinanceKitUI34BankConnectProvisioningFlowManager)manager
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(self + OBJC_IVAR___FKBankConnectProvisioningFlowManager_manager);

  return v3;
}

- (FKBankConnectProvisioningFlowDelegate)delegate
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  v5 = [(FKBankConnectProvisioningFlowManager *)v4 manager];
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_23846F7D4();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (FKBankConnectProvisioningFlowManager)initWithPaymentPass:(id)a3 institution:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(type metadata accessor for BankConnectProvisioningFlowManager());
  v8 = a3;
  v9 = a4;
  *(self + OBJC_IVAR___FKBankConnectProvisioningFlowManager_manager) = sub_238471E64(v8);
  v12.receiver = self;
  v12.super_class = FKBankConnectProvisioningFlowManager;
  v10 = [(FKBankConnectProvisioningFlowManager *)&v12 init];

  return v10;
}

- (int64_t)rootStep
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = [(FKBankConnectProvisioningFlowManager *)v3 manager];
  v5 = sub_23846F954();

  return v5;
}

- (BOOL)hasErrorAlertToDisplay
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = FKBankConnectProvisioningFlowManager.hasErrorAlertToDisplay.getter();

  return v4;
}

- (int64_t)nextStepAfterStep:(int64_t)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  v6 = [(FKBankConnectProvisioningFlowManager *)v5 manager];
  v7 = sub_23846FABC(a3);

  return v7;
}

- (id)viewControllerForStep:(int64_t)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  v6 = [(FKBankConnectProvisioningFlowManager *)v5 manager];
  v7 = sub_23846FE78(a3);

  return v7;
}

- (id)errorAlertWithCompletion:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  v8 = [(FKBankConnectProvisioningFlowManager *)v7 manager];
  v9 = sub_23847056C(sub_238472318, v6);

  return v9;
}

@end
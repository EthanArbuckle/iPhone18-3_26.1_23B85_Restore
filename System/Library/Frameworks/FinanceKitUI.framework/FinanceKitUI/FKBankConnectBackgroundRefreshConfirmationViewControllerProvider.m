@interface FKBankConnectBackgroundRefreshConfirmationViewControllerProvider
+ (id)makeViewController;
- (FKBankConnectBackgroundRefreshConfirmationViewControllerProvider)init;
@end

@implementation FKBankConnectBackgroundRefreshConfirmationViewControllerProvider

+ (id)makeViewController
{
  v2 = type metadata accessor for BankConnectReconfirmationView(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  BankConnectReconfirmationView.init(showDeniedAccounts:)(0, v5);
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C318, &qword_23876A258));
  v7 = sub_23875D080();

  return v7;
}

- (FKBankConnectBackgroundRefreshConfirmationViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = FKBankConnectBackgroundRefreshConfirmationViewControllerProvider;
  v3 = [(FKBankConnectBackgroundRefreshConfirmationViewControllerProvider *)&v5 init];

  return v3;
}

@end
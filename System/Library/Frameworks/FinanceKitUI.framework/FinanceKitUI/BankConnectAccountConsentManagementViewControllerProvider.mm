@interface BankConnectAccountConsentManagementViewControllerProvider
+ (id)makeViewControllerWithAccountIdentifier:(id)identifier institutionIdentifier:(id)institutionIdentifier;
- (_TtC12FinanceKitUI57BankConnectAccountConsentManagementViewControllerProvider)init;
@end

@implementation BankConnectAccountConsentManagementViewControllerProvider

+ (id)makeViewControllerWithAccountIdentifier:(id)identifier institutionIdentifier:(id)institutionIdentifier
{
  v4 = type metadata accessor for ConsentManagementView(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875A9F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875EA80();
  sub_23875EA80();
  sub_23875A9D0();
  v13 = objc_allocWithZone(type metadata accessor for BankConnectAccountConsentManagementViewController(0));
  (*(v9 + 16))(v7, v12, v8);
  v14 = sub_23875D080();
  (*(v9 + 8))(v12, v8);

  return v14;
}

- (_TtC12FinanceKitUI57BankConnectAccountConsentManagementViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectAccountConsentManagementViewControllerProvider();
  v3 = [(BankConnectAccountConsentManagementViewControllerProvider *)&v5 init];

  return v3;
}

@end
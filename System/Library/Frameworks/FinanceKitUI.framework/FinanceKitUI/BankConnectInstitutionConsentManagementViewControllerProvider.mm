@interface BankConnectInstitutionConsentManagementViewControllerProvider
+ (id)makeViewControllerWithInstitutionIdentifier:(id)identifier;
- (_TtC12FinanceKitUI61BankConnectInstitutionConsentManagementViewControllerProvider)init;
@end

@implementation BankConnectInstitutionConsentManagementViewControllerProvider

+ (id)makeViewControllerWithInstitutionIdentifier:(id)identifier
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_23875EA80();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for BankConnectInstitutionConsentManagementViewController());
  v7 = sub_2385B8D10(v3, v5);

  return v7;
}

- (_TtC12FinanceKitUI61BankConnectInstitutionConsentManagementViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectInstitutionConsentManagementViewControllerProvider();
  v3 = [(BankConnectInstitutionConsentManagementViewControllerProvider *)&v5 init];

  return v3;
}

@end
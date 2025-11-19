@interface BankConnectAuthorizationViewControllerProvider
+ (id)makeAuthorizationViewControllerFor:(id)a3 completion:(id)a4;
+ (id)makeConsentViewControllerWithPaymentPass:(id)a3 fkInstitution:(id)a4 completion:(id)a5;
+ (id)makeMismatchedAccountViewControllerWithPaymentPass:(id)a3 fkInstitution:(id)a4 previousConsentUUID:(id)a5 completion:(id)a6;
+ (id)makeReconsentViewControllerWithPaymentPass:(id)a3 fkInstitution:(id)a4 previousConsentUUID:(id)a5 completion:(id)a6;
- (_TtC12FinanceKitUI46BankConnectAuthorizationViewControllerProvider)init;
@end

@implementation BankConnectAuthorizationViewControllerProvider

+ (id)makeConsentViewControllerWithPaymentPass:(id)a3 fkInstitution:(id)a4 completion:(id)a5
{
  v8 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = _Block_copy(a5);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a3;
  v18 = a4;
  sub_23875EFB0();
  v19 = v8[6];
  v20 = sub_23875A9A0();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = v8[7];
  v22 = *MEMORY[0x277CC8260];
  v23 = sub_23875AB40();
  (*(*(v23 - 8) + 104))(&v14[v21], v22, v23);
  *&v14[v8[5]] = v17;
  v14[v8[8]] = 0;
  sub_2384AD678(v14, v12, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v24 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v25 = v17;
  v26 = sub_2384AC768(v12, sub_2384AD740, v16);

  sub_2384AD6E0(v14, type metadata accessor for BankConnectAuthorizationFlowConfig);

  return v26;
}

+ (id)makeReconsentViewControllerWithPaymentPass:(id)a3 fkInstitution:(id)a4 previousConsentUUID:(id)a5 completion:(id)a6
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = sub_2384ACCD0(a3, v13, v14, sub_2384AD740, v11);

  return v15;
}

+ (id)makeMismatchedAccountViewControllerWithPaymentPass:(id)a3 fkInstitution:(id)a4 previousConsentUUID:(id)a5 completion:(id)a6
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = sub_2384ACEAC(v12, v13, v14, sub_2384AD740, v11);

  return v15;
}

+ (id)makeAuthorizationViewControllerFor:(id)a3 completion:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = sub_2384AD088(v8, sub_2384AD5EC, v7);

  return v9;
}

- (_TtC12FinanceKitUI46BankConnectAuthorizationViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectAuthorizationViewControllerProvider();
  v3 = [(BankConnectAuthorizationViewControllerProvider *)&v5 init];

  return v3;
}

@end
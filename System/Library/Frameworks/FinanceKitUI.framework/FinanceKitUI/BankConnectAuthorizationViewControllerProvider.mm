@interface BankConnectAuthorizationViewControllerProvider
+ (id)makeAuthorizationViewControllerFor:(id)for completion:(id)completion;
+ (id)makeConsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution completion:(id)completion;
+ (id)makeMismatchedAccountViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion;
+ (id)makeReconsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion;
- (_TtC12FinanceKitUI46BankConnectAuthorizationViewControllerProvider)init;
@end

@implementation BankConnectAuthorizationViewControllerProvider

+ (id)makeConsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution completion:(id)completion
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

  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  passCopy = pass;
  institutionCopy = institution;
  sub_23875EFB0();
  v19 = v8[6];
  v20 = sub_23875A9A0();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = v8[7];
  v22 = *MEMORY[0x277CC8260];
  v23 = sub_23875AB40();
  (*(*(v23 - 8) + 104))(&v14[v21], v22, v23);
  *&v14[v8[5]] = passCopy;
  v14[v8[8]] = 0;
  sub_2384AD678(v14, v12, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v24 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v25 = passCopy;
  v26 = sub_2384AC768(v12, sub_2384AD740, v16);

  sub_2384AD6E0(v14, type metadata accessor for BankConnectAuthorizationFlowConfig);

  return v26;
}

+ (id)makeReconsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  passCopy = pass;
  institutionCopy = institution;
  dCopy = d;
  v15 = sub_2384ACCD0(pass, institutionCopy, dCopy, sub_2384AD740, v11);

  return v15;
}

+ (id)makeMismatchedAccountViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  passCopy = pass;
  institutionCopy = institution;
  dCopy = d;
  v15 = sub_2384ACEAC(passCopy, institutionCopy, dCopy, sub_2384AD740, v11);

  return v15;
}

+ (id)makeAuthorizationViewControllerFor:(id)for completion:(id)completion
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  forCopy = for;
  v9 = sub_2384AD088(forCopy, sub_2384AD5EC, v7);

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
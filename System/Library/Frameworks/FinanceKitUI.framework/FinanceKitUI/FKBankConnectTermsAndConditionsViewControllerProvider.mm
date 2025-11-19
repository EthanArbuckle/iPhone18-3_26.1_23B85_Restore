@interface FKBankConnectTermsAndConditionsViewControllerProvider
+ (id)makeViewControllerWithTermsAndConditionsID:(id)a3;
+ (id)makeViewControllerWithTermsAndConditionsID:(id)a3 completion:(id)a4;
- (FKBankConnectTermsAndConditionsViewControllerProvider)init;
@end

@implementation FKBankConnectTermsAndConditionsViewControllerProvider

+ (id)makeViewControllerWithTermsAndConditionsID:(id)a3
{
  v3 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875EA80();
  v12 = v11;
  objc_allocWithZone(type metadata accessor for BankConnectTermsAndConditionsViewController());
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = 0;
  v13[5] = 0;
  *v9 = sub_2386A86E4;
  *(v9 + 1) = v13;
  v9[16] = 0;
  v14 = *(v3 + 20);
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  sub_2386A8504(v9, v6);

  v15 = sub_23875D080();
  sub_2386A8568(v9);

  return v15;
}

+ (id)makeViewControllerWithTermsAndConditionsID:(id)a3 completion:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(a4);
  v6 = sub_23875EA80();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = sub_2386A8394(v6, v8, sub_2386A8384, v9);

  return v10;
}

- (FKBankConnectTermsAndConditionsViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = FKBankConnectTermsAndConditionsViewControllerProvider;
  v3 = [(FKBankConnectTermsAndConditionsViewControllerProvider *)&v5 init];

  return v3;
}

@end
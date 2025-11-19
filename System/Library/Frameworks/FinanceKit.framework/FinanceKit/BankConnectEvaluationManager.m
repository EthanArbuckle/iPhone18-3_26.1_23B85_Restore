@interface BankConnectEvaluationManager
+ (id)makeManager;
- (_TtC10FinanceKit28BankConnectEvaluationManager)init;
- (void)reevaluateEligibilityWithCompletionHandler:(id)a3;
@end

@implementation BankConnectEvaluationManager

+ (id)makeManager
{
  v2 = _s10FinanceKit28BankConnectEvaluationManagerC04makeF0ACyFZ_0();

  return v2;
}

- (void)reevaluateEligibilityWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B7800DF8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B78431A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B780BB50;
  v12[5] = v11;
  v13 = self;
  sub_1B77E494C(0, 0, v7, &unk_1B780D8F0, v12);
}

- (_TtC10FinanceKit28BankConnectEvaluationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
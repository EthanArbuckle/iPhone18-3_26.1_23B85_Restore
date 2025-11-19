@interface ApplePayOrderFetchController
+ (id)makeFetchController;
- (_TtC12FinanceKitUI28ApplePayOrderFetchController)init;
- (void)fetchAllRowViewModelsForTransactionWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation ApplePayOrderFetchController

- (_TtC12FinanceKitUI28ApplePayOrderFetchController)init
{
  result = sub_23875F520();
  __break(1u);
  return result;
}

+ (id)makeFetchController
{
  sub_238758890();
  sub_238758880();
  v2 = sub_238758870();

  Controller = type metadata accessor for ApplePayOrderFetchController();
  v4 = objc_allocWithZone(Controller);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI28ApplePayOrderFetchController_store] = v2;
  v7.receiver = v4;
  v7.super_class = Controller;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (void)fetchAllRowViewModelsForTransactionWithIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23875ED80();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_238764D90;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2387735A0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2386E65D8(0, 0, v10, &unk_238764DA0, v15);
}

@end
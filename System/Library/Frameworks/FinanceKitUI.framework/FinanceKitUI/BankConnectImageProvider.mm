@interface BankConnectImageProvider
- (_TtC12FinanceKitUI24BankConnectImageProvider)init;
- (void)logoFor:(NSString *)a3 size:(CGSize)a4 scale:(double)a5 completionHandler:(id)a6;
@end

@implementation BankConnectImageProvider

- (_TtC12FinanceKitUI24BankConnectImageProvider)init
{
  ObjectType = swift_getObjectType();
  sub_238758CC0();
  *(&self->super.isa + OBJC_IVAR____TtC12FinanceKitUI24BankConnectImageProvider_bankConnectService) = sub_238758CB0();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(BankConnectImageProvider *)&v5 init];
}

- (void)logoFor:(NSString *)a3 size:(CGSize)a4 scale:(double)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(a6);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = width;
  *(v17 + 32) = height;
  *(v17 + 40) = a5;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_23875ED80();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_238781130;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_2387735A0;
  v20[5] = v19;
  v21 = a3;
  v22 = self;
  sub_2386E65D8(0, 0, v15, &unk_238764DA0, v20);
}

@end
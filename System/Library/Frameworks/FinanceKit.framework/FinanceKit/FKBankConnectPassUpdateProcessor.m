@interface FKBankConnectPassUpdateProcessor
+ (id)makeProcessor;
- (FKBankConnectPassUpdateProcessor)init;
- (void)didDeletePassWithPrimaryAccountIdentifier:(NSString *)a3 completion:(id)a4;
- (void)didProvisionPassWithPrimaryAccountIdentifier:(NSString *)a3 completion:(id)a4;
@end

@implementation FKBankConnectPassUpdateProcessor

+ (id)makeProcessor
{
  v2 = [objc_allocWithZone(FKBankConnectPassUpdateProcessor) init];

  return v2;
}

- (void)didDeletePassWithPrimaryAccountIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B780D938;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B780D940;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1B77E494C(0, 0, v9, &unk_1B780D948, v14);
}

- (void)didProvisionPassWithPrimaryAccountIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B780D8E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B780BB50;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1B77E494C(0, 0, v9, &unk_1B780D8F0, v14);
}

- (FKBankConnectPassUpdateProcessor)init
{
  *(&self->super.isa + OBJC_IVAR___FKBankConnectPassUpdateProcessor____lazy_storage___processor) = 1;
  v3.receiver = self;
  v3.super_class = FKBankConnectPassUpdateProcessor;
  return [(FKBankConnectPassUpdateProcessor *)&v3 init];
}

@end
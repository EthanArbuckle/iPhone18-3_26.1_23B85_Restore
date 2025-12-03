@interface BankConnectAttributeLoaderWrapper
+ (void)refreshAttributes:(NSSet *)attributes forFullyQualifiedAccountIdentifier:(FKFullyQualifiedAccountIdentifier *)identifier completionHandler:(id)handler;
+ (void)refreshAttributes:(NSSet *)attributes forPrimaryAccountIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (_TtC10FinanceKit33BankConnectAttributeLoaderWrapper)init;
@end

@implementation BankConnectAttributeLoaderWrapper

+ (void)refreshAttributes:(NSSet *)attributes forPrimaryAccountIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = attributes;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B7800DF8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B7870FF0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B7870FF8;
  v16[5] = v15;
  attributesCopy = attributes;
  identifierCopy = identifier;
  sub_1B77E494C(0, 0, v11, &unk_1B7871000, v16);
}

+ (void)refreshAttributes:(NSSet *)attributes forFullyQualifiedAccountIdentifier:(FKFullyQualifiedAccountIdentifier *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = attributes;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B7800DF8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B7870FA8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B780BB50;
  v16[5] = v15;
  attributesCopy = attributes;
  identifierCopy = identifier;
  sub_1B77E494C(0, 0, v11, &unk_1B780D8F0, v16);
}

- (_TtC10FinanceKit33BankConnectAttributeLoaderWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BankConnectAttributeLoaderWrapper *)&v3 init];
}

@end
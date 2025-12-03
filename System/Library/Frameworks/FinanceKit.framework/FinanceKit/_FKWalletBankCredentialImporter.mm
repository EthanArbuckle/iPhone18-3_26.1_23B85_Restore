@interface _FKWalletBankCredentialImporter
+ (id)makeImporter;
- (_FKWalletBankCredentialImporter)init;
- (void)insertCredentialFrom:(FKAccountPaymentInformationACH *)from bankName:(NSString *)name completionHandler:(id)handler;
@end

@implementation _FKWalletBankCredentialImporter

+ (id)makeImporter
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = qword_1EDAFB7C8;
  v4 = objc_allocWithZone(ObjCClassMetadata);
  *&v4[OBJC_IVAR____FKWalletBankCredentialImporter_financeStore] = v3;
  v7.receiver = v4;
  v7.super_class = ObjCClassMetadata;

  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (void)insertCredentialFrom:(FKAccountPaymentInformationACH *)from bankName:(NSString *)name completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = from;
  v13[3] = name;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B7800DF8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B785E0A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B780BB50;
  v16[5] = v15;
  fromCopy = from;
  nameCopy = name;
  selfCopy = self;
  sub_1B77E494C(0, 0, v11, &unk_1B780D8F0, v16);
}

- (_FKWalletBankCredentialImporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
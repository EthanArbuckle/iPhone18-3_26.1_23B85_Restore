@interface BankConnectInstitutionMatcher
- (_TtC10FinanceKit29BankConnectInstitutionMatcher)init;
- (void)institutionForPaymentPass:(id)a3 withCompletion:(id)a4;
- (void)institutionForPrimaryAccountIdentifier:(NSString *)a3 withCompletion:(id)a4;
@end

@implementation BankConnectInstitutionMatcher

- (void)institutionForPaymentPass:(id)a3 withCompletion:(id)a4
{
  v6 = sub_1B78000B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(a4);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = [v15 primaryAccountIdentifier];
  v17 = sub_1B7800868();
  v19 = v18;

  v20 = sub_1B7800DF8();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v6, qword_1EDAF65B0);
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v6);
  v22 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v17;
  *(v23 + 5) = v19;
  *(v23 + 6) = sub_1B72A6290;
  *(v23 + 7) = v14;
  (*(v7 + 32))(&v23[v22], v9, v6);
  sub_1B759B5D0(0, 0, v12, &unk_1B7842D98, v23);
}

- (void)institutionForPrimaryAccountIdentifier:(NSString *)a3 withCompletion:(id)a4
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
  v13[4] = &unk_1B7842D90;
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

- (_TtC10FinanceKit29BankConnectInstitutionMatcher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BankConnectInstitutionMatcher();
  return [(BankConnectInstitutionMatcher *)&v3 init];
}

@end
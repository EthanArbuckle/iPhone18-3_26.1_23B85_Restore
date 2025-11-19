@interface BankConnectInstitutionProvider
+ (id)makeProviderAndReturnError:(id *)a3;
- (FKBankConnectInstitutionsProviderDelegate)delegate;
- (_TtC10FinanceKit30BankConnectInstitutionProvider)init;
- (void)institutionFor:(id)a3 completion:(id)a4;
@end

@implementation BankConnectInstitutionProvider

- (FKBankConnectInstitutionsProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (id)makeProviderAndReturnError:(id *)a3
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v3 = *(off_1EDAF9E38 + 2);
  v4 = type metadata accessor for BankConnectInstitutionProvider();
  v5 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC10FinanceKit30BankConnectInstitutionProvider_store] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

- (void)institutionFor:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1B7800868();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_1B77564C8(v6, v8, sub_1B7756AFC, v9);
}

- (_TtC10FinanceKit30BankConnectInstitutionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
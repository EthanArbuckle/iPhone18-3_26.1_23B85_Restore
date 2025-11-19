@interface BankConnectAuthorizationSessionProvider
+ (id)makeProviderAndReturnError:(id *)a3;
- (_TtC10FinanceKit39BankConnectAuthorizationSessionProvider)init;
- (void)authorizationSessionWithCompletion:(id)a3;
@end

@implementation BankConnectAuthorizationSessionProvider

+ (id)makeProviderAndReturnError:(id *)a3
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v3 = *(off_1EDAF9E38 + 2);
  v4 = type metadata accessor for BankConnectAuthorizationSessionProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_store] = v3;
  v6 = *(v3 + 16);
  swift_retain_n();
  v7 = [v6 newBackgroundContext];
  *&v5[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_context] = v7;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

- (void)authorizationSessionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_context);
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = sub_1B72A6290;
  v7[4] = v5;
  v10[4] = sub_1B72A6338;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B72A58C8;
  v10[3] = &block_descriptor_12;
  v8 = _Block_copy(v10);
  v9 = self;

  [v6 performBlock_];

  _Block_release(v8);
}

- (_TtC10FinanceKit39BankConnectAuthorizationSessionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
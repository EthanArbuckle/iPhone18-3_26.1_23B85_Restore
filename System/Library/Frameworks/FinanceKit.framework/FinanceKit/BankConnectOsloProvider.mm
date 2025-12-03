@interface BankConnectOsloProvider
+ (id)makeProviderAndReturnError:(id *)error;
- (_TtC10FinanceKit23BankConnectOsloProvider)init;
- (void)dealloc;
- (void)listenForAccountsWithPrimaryAccountIdentifiers:(id)identifiers callback:(id)callback;
@end

@implementation BankConnectOsloProvider

+ (id)makeProviderAndReturnError:(id *)error
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDAFB7C8;
  v4 = type metadata accessor for BankConnectOsloProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask] = 0;
  *&v5[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_financeStore] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

- (void)listenForAccountsWithPrimaryAccountIdentifiers:(id)identifiers callback:(id)callback
{
  v5 = _Block_copy(callback);
  v6 = sub_1B7800FA8();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_1B72FAFC0(v6, sub_1B72A6290, v7);
}

- (void)dealloc
{
  selfCopy = self;
  sub_1B72FCD74();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for BankConnectOsloProvider();
  [(BankConnectOsloProvider *)&v3 dealloc];
}

- (_TtC10FinanceKit23BankConnectOsloProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
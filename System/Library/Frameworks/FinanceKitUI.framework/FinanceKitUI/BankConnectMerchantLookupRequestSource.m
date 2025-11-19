@interface BankConnectMerchantLookupRequestSource
- (BOOL)isSettlement;
- (_TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource)init;
- (id)identifier;
- (id)mapsMerchantLookupRequest;
@end

@implementation BankConnectMerchantLookupRequestSource

- (id)mapsMerchantLookupRequest
{
  v2 = self;
  v3 = sub_2384991D4();

  return v3;
}

- (BOOL)isSettlement
{
  v3 = sub_238758AD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = sub_238758F50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = self;
  sub_23875A300();
  sub_238758F30();

  (*(v12 + 8))(v15, v11);
  (*(v4 + 32))(v8, v10, v3);
  v17 = (*(v4 + 88))(v8, v3);
  if (v17 == *MEMORY[0x277CC71F8] || v17 == *MEMORY[0x277CC7200] || v17 == *MEMORY[0x277CC7210])
  {
    return 0;
  }

  if (v17 != *MEMORY[0x277CC7208])
  {
    if (v17 != *MEMORY[0x277CC7218])
    {
      (*(v4 + 8))(v8, v3);
    }

    return 0;
  }

  return 1;
}

- (id)identifier
{
  v3 = sub_23875BCB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758F50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = self;
  sub_23875A300();
  sub_238758F10();
  (*(v9 + 8))(v12, v8);
  sub_23875BC50();

  (*(v4 + 8))(v7, v3);
  v14 = sub_23875EA50();

  return v14;
}

- (_TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
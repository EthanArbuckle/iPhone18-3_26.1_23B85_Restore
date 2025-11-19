@interface OfflineLabSessionTaskDelegate#1inBankConnectWebServiceClient.uploadOfflineLabData(for:)
- (_TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate)init;
- (void)URLSession:()for: task:didCompleteWithError:;
- (void)URLSession:()for: task:needNewBodyStream:;
@end

@implementation OfflineLabSessionTaskDelegate#1inBankConnectWebServiceClient.uploadOfflineLabData(for:)

- (void)URLSession:()for: task:didCompleteWithError:
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1B779EA5C(v9, a5);
}

- (void)URLSession:()for: task:needNewBodyStream:
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B7800DF8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B786BAD8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B780BB50;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1B77E494C(0, 0, v11, &unk_1B780D8F0, v16);
}

- (_TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
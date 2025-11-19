@interface AMSMescalFairplaySession
- (AMSMescalFairplaySession)initWithMescalType:(int64_t)a3 cachedCertificateProvider:(id)a4 certificateCacher:(id)a5;
- (void)primeSignatureForData:(NSData *)a3 bag:(AMSBagProtocol *)a4 logKey:(NSString *)a5 completionHandler:(id)a6;
- (void)signData:(NSData *)a3 bag:(AMSBagProtocol *)a4 logKey:(NSString *)a5 completionHandler:(id)a6;
- (void)verifyData:(NSMutableData *)a3 signature:(NSData *)a4 bag:(AMSBagProtocol *)a5 logKey:(NSString *)a6 completionHandler:(id)a7;
- (void)verifyPrimeSignature:(NSData *)a3 completionHandler:(id)a4;
@end

@implementation AMSMescalFairplaySession

- (AMSMescalFairplaySession)initWithMescalType:(int64_t)a3 cachedCertificateProvider:(id)a4 certificateCacher:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  return MescalFairplaySession.init(mescalType:cachedCertificateProvider:certificateCacher:)(a3, sub_192908FE4, v9, sub_192CCB874, v10);
}

- (void)signData:(NSData *)a3 bag:(AMSBagProtocol *)a4 logKey:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;

  sub_1928FB3BC(&unk_192FCD020, v11);
}

- (void)primeSignatureForData:(NSData *)a3 bag:(AMSBagProtocol *)a4 logKey:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;

  sub_1928FB3BC(&unk_192FCD010, v11);
}

- (void)verifyData:(NSMutableData *)a3 signature:(NSData *)a4 bag:(AMSBagProtocol *)a5 logKey:(NSString *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = a6;
  v17 = self;

  sub_1928FB3BC(&unk_192FCD000, v13);
}

- (void)verifyPrimeSignature:(NSData *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1928FB3BC(&unk_192FCCFE8, v7);
}

@end
@interface AMSMescalFairplaySession
- (AMSMescalFairplaySession)initWithMescalType:(int64_t)type cachedCertificateProvider:(id)provider certificateCacher:(id)cacher;
- (void)primeSignatureForData:(NSData *)data bag:(AMSBagProtocol *)bag logKey:(NSString *)key completionHandler:(id)handler;
- (void)signData:(NSData *)data bag:(AMSBagProtocol *)bag logKey:(NSString *)key completionHandler:(id)handler;
- (void)verifyData:(NSMutableData *)data signature:(NSData *)signature bag:(AMSBagProtocol *)bag logKey:(NSString *)key completionHandler:(id)handler;
- (void)verifyPrimeSignature:(NSData *)signature completionHandler:(id)handler;
@end

@implementation AMSMescalFairplaySession

- (AMSMescalFairplaySession)initWithMescalType:(int64_t)type cachedCertificateProvider:(id)provider certificateCacher:(id)cacher
{
  v7 = _Block_copy(provider);
  v8 = _Block_copy(cacher);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  return MescalFairplaySession.init(mescalType:cachedCertificateProvider:certificateCacher:)(type, sub_192908FE4, v9, sub_192CCB874, v10);
}

- (void)signData:(NSData *)data bag:(AMSBagProtocol *)bag logKey:(NSString *)key completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = bag;
  v11[4] = key;
  v11[5] = v10;
  v11[6] = self;
  dataCopy = data;
  swift_unknownObjectRetain();
  keyCopy = key;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCD020, v11);
}

- (void)primeSignatureForData:(NSData *)data bag:(AMSBagProtocol *)bag logKey:(NSString *)key completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = bag;
  v11[4] = key;
  v11[5] = v10;
  v11[6] = self;
  dataCopy = data;
  swift_unknownObjectRetain();
  keyCopy = key;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCD010, v11);
}

- (void)verifyData:(NSMutableData *)data signature:(NSData *)signature bag:(AMSBagProtocol *)bag logKey:(NSString *)key completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = signature;
  v13[4] = bag;
  v13[5] = key;
  v13[6] = v12;
  v13[7] = self;
  dataCopy = data;
  signatureCopy = signature;
  swift_unknownObjectRetain();
  keyCopy = key;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCD000, v13);
}

- (void)verifyPrimeSignature:(NSData *)signature completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = signature;
  v7[3] = v6;
  v7[4] = self;
  signatureCopy = signature;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCCFE8, v7);
}

@end
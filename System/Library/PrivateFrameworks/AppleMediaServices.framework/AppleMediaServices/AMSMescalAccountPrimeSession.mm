@interface AMSMescalAccountPrimeSession
- (AMSMescalAccountPrimeSession)initWithBag:(id)bag;
- (id)primeSignatureForData:(id)data;
- (id)signData:(id)data;
- (id)verifyPrimeSignature:(id)signature;
@end

@implementation AMSMescalAccountPrimeSession

- (AMSMescalAccountPrimeSession)initWithBag:(id)bag
{
  bagCopy = bag;
  v11.receiver = self;
  v11.super_class = AMSMescalAccountPrimeSession;
  v6 = [(AMSMescalAccountPrimeSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, bag);
    v8 = [[AMSMescalSession alloc] initWithType:2];
    session = v7->_session;
    v7->_session = v8;
  }

  return v7;
}

- (id)primeSignatureForData:(id)data
{
  dataCopy = data;
  session = [(AMSMescalAccountPrimeSession *)self session];
  v6 = [(AMSMescalAccountPrimeSession *)self bag];
  v7 = [session primeSignatureForData:dataCopy bag:v6];

  return v7;
}

- (id)signData:(id)data
{
  dataCopy = data;
  session = [(AMSMescalAccountPrimeSession *)self session];
  v6 = [(AMSMescalAccountPrimeSession *)self bag];
  v7 = [session signData:dataCopy bag:v6];

  return v7;
}

- (id)verifyPrimeSignature:(id)signature
{
  signatureCopy = signature;
  session = [(AMSMescalAccountPrimeSession *)self session];
  v6 = [session verifyPrimeSignature:signatureCopy];

  promiseAdapter = [v6 promiseAdapter];

  return promiseAdapter;
}

@end
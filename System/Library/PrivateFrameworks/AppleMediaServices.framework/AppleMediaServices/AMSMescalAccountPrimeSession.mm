@interface AMSMescalAccountPrimeSession
- (AMSMescalAccountPrimeSession)initWithBag:(id)a3;
- (id)primeSignatureForData:(id)a3;
- (id)signData:(id)a3;
- (id)verifyPrimeSignature:(id)a3;
@end

@implementation AMSMescalAccountPrimeSession

- (AMSMescalAccountPrimeSession)initWithBag:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AMSMescalAccountPrimeSession;
  v6 = [(AMSMescalAccountPrimeSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
    v8 = [[AMSMescalSession alloc] initWithType:2];
    session = v7->_session;
    v7->_session = v8;
  }

  return v7;
}

- (id)primeSignatureForData:(id)a3
{
  v4 = a3;
  v5 = [(AMSMescalAccountPrimeSession *)self session];
  v6 = [(AMSMescalAccountPrimeSession *)self bag];
  v7 = [v5 primeSignatureForData:v4 bag:v6];

  return v7;
}

- (id)signData:(id)a3
{
  v4 = a3;
  v5 = [(AMSMescalAccountPrimeSession *)self session];
  v6 = [(AMSMescalAccountPrimeSession *)self bag];
  v7 = [v5 signData:v4 bag:v6];

  return v7;
}

- (id)verifyPrimeSignature:(id)a3
{
  v4 = a3;
  v5 = [(AMSMescalAccountPrimeSession *)self session];
  v6 = [v5 verifyPrimeSignature:v4];

  v7 = [v6 promiseAdapter];

  return v7;
}

@end
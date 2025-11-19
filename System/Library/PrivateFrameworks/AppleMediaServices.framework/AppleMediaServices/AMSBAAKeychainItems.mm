@interface AMSBAAKeychainItems
- (AMSBAAKeychainItems)initWithBAACert:(id)a3 BIKKey:(__SecKey *)a4 intermediateRootCert:(id)a5;
@end

@implementation AMSBAAKeychainItems

- (AMSBAAKeychainItems)initWithBAACert:(id)a3 BIKKey:(__SecKey *)a4 intermediateRootCert:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = AMSBAAKeychainItems;
  v10 = [(AMSBAAKeychainItems *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    BAACert = v10->_BAACert;
    v10->_BAACert = v11;

    BIKKey = v10->_BIKKey;
    v10->_BIKKey = a4;

    v14 = [v9 copy];
    IntermediateRootCert = v10->_IntermediateRootCert;
    v10->_IntermediateRootCert = v14;
  }

  return v10;
}

@end
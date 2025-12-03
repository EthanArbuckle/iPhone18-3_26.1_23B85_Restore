@interface AMSBAAKeychainItems
- (AMSBAAKeychainItems)initWithBAACert:(id)cert BIKKey:(__SecKey *)key intermediateRootCert:(id)rootCert;
@end

@implementation AMSBAAKeychainItems

- (AMSBAAKeychainItems)initWithBAACert:(id)cert BIKKey:(__SecKey *)key intermediateRootCert:(id)rootCert
{
  certCopy = cert;
  rootCertCopy = rootCert;
  v17.receiver = self;
  v17.super_class = AMSBAAKeychainItems;
  v10 = [(AMSBAAKeychainItems *)&v17 init];
  if (v10)
  {
    v11 = [certCopy copy];
    BAACert = v10->_BAACert;
    v10->_BAACert = v11;

    BIKKey = v10->_BIKKey;
    v10->_BIKKey = key;

    v14 = [rootCertCopy copy];
    IntermediateRootCert = v10->_IntermediateRootCert;
    v10->_IntermediateRootCert = v14;
  }

  return v10;
}

@end
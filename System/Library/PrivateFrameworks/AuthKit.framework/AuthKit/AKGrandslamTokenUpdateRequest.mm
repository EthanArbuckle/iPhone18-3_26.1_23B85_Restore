@interface AKGrandslamTokenUpdateRequest
- (AKGrandslamTokenUpdateRequest)initWithTokens:(id)tokens accountManager:(id)manager context:(id)context altDSID:(id)d;
@end

@implementation AKGrandslamTokenUpdateRequest

- (AKGrandslamTokenUpdateRequest)initWithTokens:(id)tokens accountManager:(id)manager context:(id)context altDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tokens);
  v18 = 0;
  objc_storeStrong(&v18, manager);
  v17 = 0;
  objc_storeStrong(&v17, context);
  v16 = 0;
  objc_storeStrong(&v16, d);
  v6 = selfCopy;
  selfCopy = 0;
  v15.receiver = v6;
  v15.super_class = AKGrandslamTokenUpdateRequest;
  v14 = [(AKGrandslamTokenUpdateRequest *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    objc_storeStrong(&selfCopy->_tokensById, location[0]);
    objc_storeStrong(&selfCopy->_accountManager, v18);
    objc_storeStrong(&selfCopy->_context, v17);
    objc_storeStrong(&selfCopy->_altDSID, v16);
    v7 = [(AKAccountManager *)selfCopy->_accountManager appleIDAccountWithAltDSID:v16];
    aidaAccount = selfCopy->_aidaAccount;
    selfCopy->_aidaAccount = v7;
    _objc_release(aidaAccount);
  }

  v10 = _objc_retain(selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

@end
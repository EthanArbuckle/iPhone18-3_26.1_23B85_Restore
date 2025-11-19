@interface AKGrandslamTokenUpdateRequest
- (AKGrandslamTokenUpdateRequest)initWithTokens:(id)a3 accountManager:(id)a4 context:(id)a5 altDSID:(id)a6;
@end

@implementation AKGrandslamTokenUpdateRequest

- (AKGrandslamTokenUpdateRequest)initWithTokens:(id)a3 accountManager:(id)a4 context:(id)a5 altDSID:(id)a6
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v6 = v20;
  v20 = 0;
  v15.receiver = v6;
  v15.super_class = AKGrandslamTokenUpdateRequest;
  v14 = [(AKGrandslamTokenUpdateRequest *)&v15 init];
  v20 = v14;
  objc_storeStrong(&v20, v14);
  if (v14)
  {
    objc_storeStrong(&v20->_tokensById, location[0]);
    objc_storeStrong(&v20->_accountManager, v18);
    objc_storeStrong(&v20->_context, v17);
    objc_storeStrong(&v20->_altDSID, v16);
    v7 = [(AKAccountManager *)v20->_accountManager appleIDAccountWithAltDSID:v16];
    aidaAccount = v20->_aidaAccount;
    v20->_aidaAccount = v7;
    _objc_release(aidaAccount);
  }

  v10 = _objc_retain(v20);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v10;
}

@end
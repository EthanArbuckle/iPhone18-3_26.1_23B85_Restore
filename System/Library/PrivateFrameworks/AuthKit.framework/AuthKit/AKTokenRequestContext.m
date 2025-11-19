@interface AKTokenRequestContext
- (AKTokenRequestContext)initWithIdentifier:(id)a3 altDSID:(id)a4;
@end

@implementation AKTokenRequestContext

- (AKTokenRequestContext)initWithIdentifier:(id)a3 altDSID:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKTokenRequestContext;
  v8 = [(AKTokenRequestContext *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_tokenIdentifier, location[0]);
    objc_storeStrong(&v12->_altDSID, v10);
  }

  v6 = _objc_retain(v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

@end
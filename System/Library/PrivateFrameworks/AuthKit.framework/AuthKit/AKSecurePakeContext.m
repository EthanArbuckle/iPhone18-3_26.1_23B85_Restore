@interface AKSecurePakeContext
- ($2FE3C3292E52C4A5B67D27538456EAD9)sessionEntropy;
- (AKSecurePakeContext)initWithAltDSID:(id)a3 sessionID:(id)a4 devicePushToken:(id)a5 sessionEntropy:(id)a6;
@end

@implementation AKSecurePakeContext

- (AKSecurePakeContext)initWithAltDSID:(id)a3 sessionID:(id)a4 devicePushToken:(id)a5 sessionEntropy:(id)a6
{
  v24 = a6;
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v6 = v23;
  v23 = 0;
  v19.receiver = v6;
  v19.super_class = AKSecurePakeContext;
  v23 = [(AKSecurePakeContext *)&v19 init];
  objc_storeStrong(&v23, v23);
  if (v23)
  {
    v15 = [location[0] copy];
    v7 = *(v23 + 1);
    *(v23 + 1) = v15;
    _objc_release(v7);
    v14 = [v21 copy];
    v8 = *(v23 + 2);
    *(v23 + 2) = v14;
    _objc_release(v8);
    v13 = [v20 copy];
    v9 = *(v23 + 3);
    *(v23 + 3) = v13;
    _objc_release(v9);
    v12 = (v23 + 48);
    v18[0] = [v24.var0 copy];
    v18[1] = [v24.var1 copy];
    sub_100085024(v12, v18);
    sub_100069A94(v18);
  }

  v11 = _objc_retain(v23);
  sub_100069A94(&v24.var0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v23, 0);
  return v11;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)sessionEntropy
{
  sub_100069A2C(v4, &self->_sessionEntropy.salt);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end
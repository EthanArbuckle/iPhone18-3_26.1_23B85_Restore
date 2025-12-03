@interface AKSecurePakeContext
- ($2FE3C3292E52C4A5B67D27538456EAD9)sessionEntropy;
- (AKSecurePakeContext)initWithAltDSID:(id)d sessionID:(id)iD devicePushToken:(id)token sessionEntropy:(id)entropy;
@end

@implementation AKSecurePakeContext

- (AKSecurePakeContext)initWithAltDSID:(id)d sessionID:(id)iD devicePushToken:(id)token sessionEntropy:(id)entropy
{
  entropyCopy = entropy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v21 = 0;
  objc_storeStrong(&v21, iD);
  v20 = 0;
  objc_storeStrong(&v20, token);
  v6 = selfCopy;
  selfCopy = 0;
  v19.receiver = v6;
  v19.super_class = AKSecurePakeContext;
  selfCopy = [(AKSecurePakeContext *)&v19 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v15 = [location[0] copy];
    v7 = *(selfCopy + 1);
    *(selfCopy + 1) = v15;
    _objc_release(v7);
    v14 = [v21 copy];
    v8 = *(selfCopy + 2);
    *(selfCopy + 2) = v14;
    _objc_release(v8);
    v13 = [v20 copy];
    v9 = *(selfCopy + 3);
    *(selfCopy + 3) = v13;
    _objc_release(v9);
    v12 = (selfCopy + 48);
    v18[0] = [entropyCopy.var0 copy];
    v18[1] = [entropyCopy.var1 copy];
    sub_100085024(v12, v18);
    sub_100069A94(v18);
  }

  v11 = _objc_retain(selfCopy);
  sub_100069A94(&entropyCopy.var0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
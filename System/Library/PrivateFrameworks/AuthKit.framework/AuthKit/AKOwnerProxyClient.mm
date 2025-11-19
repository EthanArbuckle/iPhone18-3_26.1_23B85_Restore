@interface AKOwnerProxyClient
- (AKOwnerProxyClient)initWithCredentialRequest:(id)a3;
- (AKOwnerProxyClient)initWithCredentialRequest:(id)a3 connection:(id)a4;
- (id)description;
- (id)name;
@end

@implementation AKOwnerProxyClient

- (AKOwnerProxyClient)initWithCredentialRequest:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKOwnerProxyClient;
  v8 = [(AKClient *)&v6 initWithConnection:0];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_credentialRequest, location[0]);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKOwnerProxyClient)initWithCredentialRequest:(id)a3 connection:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKOwnerProxyClient;
  v11 = [(AKClient *)&v8 initWithConnection:v9];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_credentialRequest, location[0]);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (id)description
{
  v3 = [(AKOwnerProxyClient *)self name];
  v4 = [NSString stringWithFormat:@"AKOwnerProxyClient: %@", v3];
  _objc_release(v3);

  return v4;
}

- (id)name
{
  v7 = self;
  v6 = a2;
  if (([(AKCredentialRequestContext *)self->_credentialRequest _clientShouldAuthenticateExternally]& 1) != 0 || ([(AKCredentialRequestContext *)v7->_credentialRequest _shouldUseProxiedClientBundleIDForSRP]& 1) != 0)
  {
    v5.receiver = v7;
    v5.super_class = AKOwnerProxyClient;
    v8 = [(AKClient *)&v5 name];
  }

  else
  {
    v4 = [(AKOwnerProxyClient *)v7 localizedAppName];
    v8 = [NSString stringWithFormat:@"akd [on behalf of %@]", v4];
    _objc_release(v4);
  }

  v2 = v8;

  return v2;
}

@end
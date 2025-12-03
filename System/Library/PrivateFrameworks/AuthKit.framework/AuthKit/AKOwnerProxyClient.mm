@interface AKOwnerProxyClient
- (AKOwnerProxyClient)initWithCredentialRequest:(id)request;
- (AKOwnerProxyClient)initWithCredentialRequest:(id)request connection:(id)connection;
- (id)description;
- (id)name;
@end

@implementation AKOwnerProxyClient

- (AKOwnerProxyClient)initWithCredentialRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKOwnerProxyClient;
  selfCopy = [(AKClient *)&v6 initWithConnection:0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_credentialRequest, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKOwnerProxyClient)initWithCredentialRequest:(id)request connection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v9 = 0;
  objc_storeStrong(&v9, connection);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKOwnerProxyClient;
  selfCopy = [(AKClient *)&v8 initWithConnection:v9];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_credentialRequest, location[0]);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)description
{
  name = [(AKOwnerProxyClient *)self name];
  v4 = [NSString stringWithFormat:@"AKOwnerProxyClient: %@", name];
  _objc_release(name);

  return v4;
}

- (id)name
{
  selfCopy = self;
  v6 = a2;
  if (([(AKCredentialRequestContext *)self->_credentialRequest _clientShouldAuthenticateExternally]& 1) != 0 || ([(AKCredentialRequestContext *)selfCopy->_credentialRequest _shouldUseProxiedClientBundleIDForSRP]& 1) != 0)
  {
    v5.receiver = selfCopy;
    v5.super_class = AKOwnerProxyClient;
    name = [(AKClient *)&v5 name];
  }

  else
  {
    localizedAppName = [(AKOwnerProxyClient *)selfCopy localizedAppName];
    name = [NSString stringWithFormat:@"akd [on behalf of %@]", localizedAppName];
    _objc_release(localizedAppName);
  }

  v2 = name;

  return v2;
}

@end
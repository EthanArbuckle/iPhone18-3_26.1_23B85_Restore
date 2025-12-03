@interface AKSigningTrafficClearanceRequest
- (AKSigningTrafficClearanceRequest)initWithClient:(id)client signingBlock:(id)block;
- (AKSigningTrafficClearanceRequest)initWithRequestData:(id)data signingBlock:(id)block;
- (id)description;
@end

@implementation AKSigningTrafficClearanceRequest

- (id)description
{
  v2 = objc_opt_class();
  v11 = NSStringFromClass(v2);
  name = [(AKClient *)self->_client name];
  requestDate = self->_requestDate;
  v3 = @"YES";
  if (self->_attestationRequestData)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v7 = v4;
  if (!self->_shouldProvisionIfNeccessary)
  {
    v3 = @"NO";
  }

  v8 = v3;
  v9 = [NSNumber numberWithUnsignedInt:self->_requestQosClass];
  v12 = [NSString stringWithFormat:@"<%@: %p : %@ : %@> attestation: %@, provisioning desired: %@, request qos: %@", v11, self, name, requestDate, v7, v8, v9];
  _objc_release(v9);
  _objc_release(name);
  _objc_release(v11);

  return v12;
}

- (AKSigningTrafficClearanceRequest)initWithClient:(id)client signingBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v14 = 0;
  objc_storeStrong(&v14, block);
  v4 = selfCopy;
  selfCopy = 0;
  v13.receiver = v4;
  v13.super_class = AKSigningTrafficClearanceRequest;
  v12 = [(AKSigningTrafficClearanceRequest *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    v5 = +[NSDate now];
    requestDate = selfCopy->_requestDate;
    selfCopy->_requestDate = v5;
    _objc_release(requestDate);
    selfCopy->_requestQosClass = qos_class_self();
    v7 = objc_retainBlock(v14);
    signingBlock = selfCopy->_signingBlock;
    selfCopy->_signingBlock = v7;
    _objc_release(signingBlock);
    objc_storeStrong(&selfCopy->_client, location[0]);
  }

  v10 = _objc_retain(selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (AKSigningTrafficClearanceRequest)initWithRequestData:(id)data signingBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v16 = 0;
  objc_storeStrong(&v16, block);
  v4 = selfCopy;
  selfCopy = 0;
  v15.receiver = v4;
  v15.super_class = AKSigningTrafficClearanceRequest;
  v14 = [(AKSigningTrafficClearanceRequest *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    v5 = +[NSDate now];
    requestDate = selfCopy->_requestDate;
    selfCopy->_requestDate = v5;
    _objc_release(requestDate);
    selfCopy->_requestQosClass = qos_class_self();
    v7 = objc_retainBlock(v16);
    signingBlock = selfCopy->_signingBlock;
    selfCopy->_signingBlock = v7;
    _objc_release(signingBlock);
    client = [location[0] client];
    client = selfCopy->_client;
    selfCopy->_client = client;
    _objc_release(client);
    objc_storeStrong(&selfCopy->_attestationRequestData, location[0]);
  }

  v12 = _objc_retain(selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

@end
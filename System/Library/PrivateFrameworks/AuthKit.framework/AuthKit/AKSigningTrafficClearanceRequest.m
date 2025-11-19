@interface AKSigningTrafficClearanceRequest
- (AKSigningTrafficClearanceRequest)initWithClient:(id)a3 signingBlock:(id)a4;
- (AKSigningTrafficClearanceRequest)initWithRequestData:(id)a3 signingBlock:(id)a4;
- (id)description;
@end

@implementation AKSigningTrafficClearanceRequest

- (id)description
{
  v2 = objc_opt_class();
  v11 = NSStringFromClass(v2);
  v10 = [(AKClient *)self->_client name];
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
  v12 = [NSString stringWithFormat:@"<%@: %p : %@ : %@> attestation: %@, provisioning desired: %@, request qos: %@", v11, self, v10, requestDate, v7, v8, v9];
  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v11);

  return v12;
}

- (AKSigningTrafficClearanceRequest)initWithClient:(id)a3 signingBlock:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v4 = v16;
  v16 = 0;
  v13.receiver = v4;
  v13.super_class = AKSigningTrafficClearanceRequest;
  v12 = [(AKSigningTrafficClearanceRequest *)&v13 init];
  v16 = v12;
  objc_storeStrong(&v16, v12);
  if (v12)
  {
    v5 = +[NSDate now];
    requestDate = v16->_requestDate;
    v16->_requestDate = v5;
    _objc_release(requestDate);
    v16->_requestQosClass = qos_class_self();
    v7 = objc_retainBlock(v14);
    signingBlock = v16->_signingBlock;
    v16->_signingBlock = v7;
    _objc_release(signingBlock);
    objc_storeStrong(&v16->_client, location[0]);
  }

  v10 = _objc_retain(v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v10;
}

- (AKSigningTrafficClearanceRequest)initWithRequestData:(id)a3 signingBlock:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v4 = v18;
  v18 = 0;
  v15.receiver = v4;
  v15.super_class = AKSigningTrafficClearanceRequest;
  v14 = [(AKSigningTrafficClearanceRequest *)&v15 init];
  v18 = v14;
  objc_storeStrong(&v18, v14);
  if (v14)
  {
    v5 = +[NSDate now];
    requestDate = v18->_requestDate;
    v18->_requestDate = v5;
    _objc_release(requestDate);
    v18->_requestQosClass = qos_class_self();
    v7 = objc_retainBlock(v16);
    signingBlock = v18->_signingBlock;
    v18->_signingBlock = v7;
    _objc_release(signingBlock);
    v9 = [location[0] client];
    client = v18->_client;
    v18->_client = v9;
    _objc_release(client);
    objc_storeStrong(&v18->_attestationRequestData, location[0]);
  }

  v12 = _objc_retain(v18);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v12;
}

@end
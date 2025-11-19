@interface AKTrafficClearenceRequest
- (AKTrafficClearenceRequest)init;
- (id)description;
@end

@implementation AKTrafficClearenceRequest

- (AKTrafficClearenceRequest)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKTrafficClearenceRequest;
  v6 = [(AKTrafficClearenceRequest *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = +[NSDate now];
    requestDate = v9->_requestDate;
    v9->_requestDate = v2;
    _objc_release(requestDate);
    v9->_requestQosClass = qos_class_self();
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)description
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  requestDate = self->_requestDate;
  context = self->_context;
  clientBundleID = self->_clientBundleID;
  v7 = [NSNumber numberWithUnsignedInt:self->_requestQosClass];
  v9 = [NSString stringWithFormat:@"<%@: %p : %@> context %@, requested by %@, qos: %@", v8, self, requestDate, context, clientBundleID, v7];
  _objc_release(v7);
  _objc_release(v8);

  return v9;
}

@end
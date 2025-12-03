@interface AKBagTrafficClearanceRequest
- (AKBagTrafficClearanceRequest)init;
- (id)description;
@end

@implementation AKBagTrafficClearanceRequest

- (AKBagTrafficClearanceRequest)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKBagTrafficClearanceRequest;
  v6 = [(AKBagTrafficClearanceRequest *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = +[NSDate now];
    requestDate = v9->_requestDate;
    v9->_requestDate = v2;
    _objc_release(requestDate);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)description
{
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  requestDate = self->_requestDate;
  altDSID = [(AKURLBagFetchContext *)self->_context altDSID];
  v8 = altDSID;
  v4 = @"YES";
  if (self->_fromURLCache)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (!self->_ignoreMemoryCache)
  {
    v4 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"<%@: %p : %@> altDSID %@, require HTTP cache: %@, ignore memory cache: %@", v9, self, requestDate, altDSID, v5, v4];
  _objc_release(v8);
  _objc_release(v9);

  return v10;
}

@end
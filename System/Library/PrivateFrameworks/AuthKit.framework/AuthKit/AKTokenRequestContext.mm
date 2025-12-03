@interface AKTokenRequestContext
- (AKTokenRequestContext)initWithIdentifier:(id)identifier altDSID:(id)d;
@end

@implementation AKTokenRequestContext

- (AKTokenRequestContext)initWithIdentifier:(id)identifier altDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v10 = 0;
  objc_storeStrong(&v10, d);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKTokenRequestContext;
  v8 = [(AKTokenRequestContext *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_tokenIdentifier, location[0]);
    objc_storeStrong(&selfCopy->_altDSID, v10);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end
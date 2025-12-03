@interface ASOServiceLockupDefinition
- (ASOServiceLockupDefinition)initWithLockup:(id)lockup;
- (ASOServiceLockupDefinition)initWithRequest:(id)request;
@end

@implementation ASOServiceLockupDefinition

- (ASOServiceLockupDefinition)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = ASOServiceLockupDefinition;
  v6 = [(ASOServiceLockupDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (ASOServiceLockupDefinition)initWithLockup:(id)lockup
{
  lockupCopy = lockup;
  v9.receiver = self;
  v9.super_class = ASOServiceLockupDefinition;
  v6 = [(ASOServiceLockupDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockup, lockup);
  }

  return v7;
}

@end
@interface ASOServiceLockupDefinition
- (ASOServiceLockupDefinition)initWithLockup:(id)a3;
- (ASOServiceLockupDefinition)initWithRequest:(id)a3;
@end

@implementation ASOServiceLockupDefinition

- (ASOServiceLockupDefinition)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASOServiceLockupDefinition;
  v6 = [(ASOServiceLockupDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (ASOServiceLockupDefinition)initWithLockup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASOServiceLockupDefinition;
  v6 = [(ASOServiceLockupDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockup, a3);
  }

  return v7;
}

@end
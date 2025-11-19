@interface LAContextProvider
- (LAContextProvider)initWithTargetUIDRef:(id)a3;
- (id)createContext;
@end

@implementation LAContextProvider

- (LAContextProvider)initWithTargetUIDRef:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAContextProvider;
  v6 = [(LAContextProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uidRef, a3);
  }

  return v7;
}

- (id)createContext
{
  uidRef = self->_uidRef;
  if (uidRef)
  {
    v5 = [(NSNumber *)uidRef intValue];
    v3 = [[LAContext alloc] initWithExternalizedContext:0 userSession:&v5];
  }

  else
  {
    v3 = objc_alloc_init(LAContext);
  }

  return v3;
}

@end
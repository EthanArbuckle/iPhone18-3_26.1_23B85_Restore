@interface CXServiceDomain
+ (id)callKitServiceDomain;
- (CXServiceDomain)initWithName:(id)a3 machName:(id)a4;
@end

@implementation CXServiceDomain

- (CXServiceDomain)initWithName:(id)a3 machName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CXServiceDomain;
  v8 = [(CXServiceDomain *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    machName = v8->_machName;
    v8->_machName = v11;
  }

  return v8;
}

+ (id)callKitServiceDomain
{
  if (callKitServiceDomain_onceToken != -1)
  {
    +[CXServiceDomain callKitServiceDomain];
  }

  v3 = callKitServiceDomain_sServiceDomain;

  return v3;
}

uint64_t __39__CXServiceDomain_callKitServiceDomain__block_invoke()
{
  callKitServiceDomain_sServiceDomain = [[CXServiceDomain alloc] initWithName:@"com.apple.callkit" machName:@"com.apple.callkit.service"];

  return MEMORY[0x1EEE66BB8]();
}

@end
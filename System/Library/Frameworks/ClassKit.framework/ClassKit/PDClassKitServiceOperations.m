@interface PDClassKitServiceOperations
- (PDClassKitServiceOperations)init;
@end

@implementation PDClassKitServiceOperations

- (PDClassKitServiceOperations)init
{
  v6.receiver = self;
  v6.super_class = PDClassKitServiceOperations;
  v2 = [(PDClassKitServiceOperations *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PDClassKitServiceOperationsObjC);
    objcClient = v2->_objcClient;
    v2->_objcClient = v3;
  }

  return v2;
}

@end
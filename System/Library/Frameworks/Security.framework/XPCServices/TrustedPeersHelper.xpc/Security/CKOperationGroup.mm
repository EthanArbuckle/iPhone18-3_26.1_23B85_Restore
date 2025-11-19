@interface CKOperationGroup
+ (id)CKKSGroupWithName:(id)a3;
@end

@implementation CKOperationGroup

+ (id)CKKSGroupWithName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKOperationGroup);
  [v4 setExpectedSendSize:1];
  [v4 setExpectedReceiveSize:1];
  [v4 setName:v3];

  return v4;
}

@end
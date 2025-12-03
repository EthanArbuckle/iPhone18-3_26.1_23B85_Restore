@interface CKThrottlingCriteriaImpl
- (CKThrottlingCriteriaImpl)initWithContainerID:(id)d databaseScope:(int64_t)scope;
@end

@implementation CKThrottlingCriteriaImpl

- (CKThrottlingCriteriaImpl)initWithContainerID:(id)d databaseScope:(int64_t)scope
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CKThrottlingCriteriaImpl;
  v8 = [(CKThrottlingCriteriaImpl *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_containerID, d);
    v9->_databaseScope = scope;
  }

  return v9;
}

@end
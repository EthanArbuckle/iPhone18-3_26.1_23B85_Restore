@interface ADStatusConditionRateLimitedObject
- (id)init:(id)a3 at:(id)a4 kind:(int64_t)a5;
@end

@implementation ADStatusConditionRateLimitedObject

- (id)init:(id)a3 at:(id)a4 kind:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ADStatusConditionRateLimitedObject;
  v11 = [(ADStatusConditionRateLimitedObject *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statusCondition, a3);
    objc_storeStrong(&v12->_setTime, a4);
    v12->_operation = a5;
  }

  return v12;
}

@end
@interface CKOperationGroup
+ (id)safari_operationGroupWithName:(id)name qualityOfService:(int64_t)service xpcActivity:(id)activity;
@end

@implementation CKOperationGroup

+ (id)safari_operationGroupWithName:(id)name qualityOfService:(int64_t)service xpcActivity:(id)activity
{
  activityCopy = activity;
  nameCopy = name;
  v9 = objc_alloc_init(self);
  [v9 setName:nameCopy];

  [v9 setExpectedSendSize:1];
  [v9 setExpectedReceiveSize:1];
  v10 = objc_alloc_init(CKOperationConfiguration);
  if (objc_opt_respondsToSelector())
  {
    [v10 setXPCActivity:activityCopy];
  }

  else
  {
    [v10 setXpcActivity:activityCopy];
  }

  [v9 setDefaultConfiguration:v10];

  return v9;
}

@end
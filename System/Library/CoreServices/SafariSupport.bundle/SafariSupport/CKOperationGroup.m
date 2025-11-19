@interface CKOperationGroup
+ (id)safari_operationGroupWithName:(id)a3 qualityOfService:(int64_t)a4 xpcActivity:(id)a5;
@end

@implementation CKOperationGroup

+ (id)safari_operationGroupWithName:(id)a3 qualityOfService:(int64_t)a4 xpcActivity:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(a1);
  [v9 setName:v8];

  [v9 setExpectedSendSize:1];
  [v9 setExpectedReceiveSize:1];
  v10 = objc_alloc_init(CKOperationConfiguration);
  if (objc_opt_respondsToSelector())
  {
    [v10 setXPCActivity:v7];
  }

  else
  {
    [v10 setXpcActivity:v7];
  }

  [v9 setDefaultConfiguration:v10];

  return v9;
}

@end
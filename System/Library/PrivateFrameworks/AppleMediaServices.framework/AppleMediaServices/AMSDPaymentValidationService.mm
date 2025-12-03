@interface AMSDPaymentValidationService
+ (BOOL)isConnectionEntitled:(id)entitled;
+ (OS_dispatch_queue)sharedQueue;
+ (id)sharedService;
- (void)paymentHardwareStatusHeaderWithCompletion:(id)completion;
@end

@implementation AMSDPaymentValidationService

+ (id)sharedService
{
  if (qword_1002E32D8 != -1)
  {
    sub_10021B33C();
  }

  v3 = qword_1002E32E0;

  return v3;
}

+ (OS_dispatch_queue)sharedQueue
{
  if (qword_1002E32E8 != -1)
  {
    sub_10021B350();
  }

  v3 = qword_1002E32F0;

  return v3;
}

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)paymentHardwareStatusHeaderWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedQueue = [objc_opt_class() sharedQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076E0C;
  v7[3] = &unk_1002B05B8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.paymentvalidation" withQueue:sharedQueue whilePerformingBlock:v7];
}

@end
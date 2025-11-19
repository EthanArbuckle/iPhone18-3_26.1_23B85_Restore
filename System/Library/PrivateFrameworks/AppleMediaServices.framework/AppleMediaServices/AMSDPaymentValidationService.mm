@interface AMSDPaymentValidationService
+ (BOOL)isConnectionEntitled:(id)a3;
+ (OS_dispatch_queue)sharedQueue;
+ (id)sharedService;
- (void)paymentHardwareStatusHeaderWithCompletion:(id)a3;
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

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)paymentHardwareStatusHeaderWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() sharedQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076E0C;
  v7[3] = &unk_1002B05B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.paymentvalidation" withQueue:v5 whilePerformingBlock:v7];
}

@end
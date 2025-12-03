@interface AMSDPaymentViewService
+ (BOOL)isConnectionEntitled:(id)entitled;
+ (id)sharedService;
@end

@implementation AMSDPaymentViewService

+ (id)sharedService
{
  if (qword_1002E3308 != -1)
  {
    sub_10021B38C();
  }

  v3 = qword_1002E3310;

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

@end
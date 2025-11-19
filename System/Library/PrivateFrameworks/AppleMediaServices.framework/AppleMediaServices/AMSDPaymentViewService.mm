@interface AMSDPaymentViewService
+ (BOOL)isConnectionEntitled:(id)a3;
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

@end
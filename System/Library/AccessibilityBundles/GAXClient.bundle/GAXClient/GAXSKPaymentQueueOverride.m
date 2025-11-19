@interface GAXSKPaymentQueueOverride
+ (BOOL)canMakePayments;
@end

@implementation GAXSKPaymentQueueOverride

+ (BOOL)canMakePayments
{
  v3 = +[GAXClient sharedInstance];
  if ([v3 serverMode] == 2)
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___GAXSKPaymentQueueOverride;
    v4 = objc_msgSendSuper2(&v6, "canMakePayments");
  }

  return v4;
}

@end
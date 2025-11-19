@interface ANTransactionInfo
+ (id)infoWithTransaction:(id)a3;
@end

@implementation ANTransactionInfo

+ (id)infoWithTransaction:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setTransaction:v3];

  return v4;
}

@end
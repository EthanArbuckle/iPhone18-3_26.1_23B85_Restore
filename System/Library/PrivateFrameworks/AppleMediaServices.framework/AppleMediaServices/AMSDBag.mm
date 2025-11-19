@interface AMSDBag
+ (id)bagForMediaType:(id)a3;
@end

@implementation AMSDBag

+ (id)bagForMediaType:(id)a3
{
  v3 = a3;
  v4 = +[AMSProcessInfo currentProcess];
  [v4 setAccountMediaType:v3];

  v5 = [AMSBag bagForProfile:@"Accounts" profileVersion:@"1" processInfo:v4];

  return v5;
}

@end
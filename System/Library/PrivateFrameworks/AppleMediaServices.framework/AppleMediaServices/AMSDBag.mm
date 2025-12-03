@interface AMSDBag
+ (id)bagForMediaType:(id)type;
@end

@implementation AMSDBag

+ (id)bagForMediaType:(id)type
{
  typeCopy = type;
  v4 = +[AMSProcessInfo currentProcess];
  [v4 setAccountMediaType:typeCopy];

  v5 = [AMSBag bagForProfile:@"Accounts" profileVersion:@"1" processInfo:v4];

  return v5;
}

@end
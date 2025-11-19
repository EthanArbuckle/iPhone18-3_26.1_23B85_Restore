@interface ANDefaultsItem
+ (id)itemWithValue:(id)a3 userInfo:(id)a4;
@end

@implementation ANDefaultsItem

+ (id)itemWithValue:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setDefaultValue:v6];

  [v7 setUserInfo:v5];

  return v7;
}

@end
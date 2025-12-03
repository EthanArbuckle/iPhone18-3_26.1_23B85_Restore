@interface ANDefaultsItem
+ (id)itemWithValue:(id)value userInfo:(id)info;
@end

@implementation ANDefaultsItem

+ (id)itemWithValue:(id)value userInfo:(id)info
{
  infoCopy = info;
  valueCopy = value;
  v7 = objc_opt_new();
  [v7 setDefaultValue:valueCopy];

  [v7 setUserInfo:infoCopy];

  return v7;
}

@end
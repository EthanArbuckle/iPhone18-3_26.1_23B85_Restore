@interface CARColorFilterSetting
+ (id)filterPreference:(int64_t)preference name:(id)name;
- (id)description;
@end

@implementation CARColorFilterSetting

+ (id)filterPreference:(int64_t)preference name:(id)name
{
  nameCopy = name;
  v6 = objc_opt_new();
  [v6 setPreference:preference];
  [v6 setName:nameCopy];

  return v6;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CARColorFilterSetting;
  v3 = [(CARColorFilterSetting *)&v8 description];
  preference = [(CARColorFilterSetting *)self preference];
  name = [(CARColorFilterSetting *)self name];
  v6 = [NSString stringWithFormat:@"%@ [preference: %ld, name: %@]", v3, preference, name];

  return v6;
}

@end
@interface CARColorFilterSetting
+ (id)filterPreference:(int64_t)a3 name:(id)a4;
- (id)description;
@end

@implementation CARColorFilterSetting

+ (id)filterPreference:(int64_t)a3 name:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  [v6 setPreference:a3];
  [v6 setName:v5];

  return v6;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CARColorFilterSetting;
  v3 = [(CARColorFilterSetting *)&v8 description];
  v4 = [(CARColorFilterSetting *)self preference];
  v5 = [(CARColorFilterSetting *)self name];
  v6 = [NSString stringWithFormat:@"%@ [preference: %ld, name: %@]", v3, v4, v5];

  return v6;
}

@end
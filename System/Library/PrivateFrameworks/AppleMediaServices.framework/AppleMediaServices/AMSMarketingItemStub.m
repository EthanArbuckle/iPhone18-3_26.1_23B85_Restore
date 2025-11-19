@interface AMSMarketingItemStub
+ (id)stubForServiceType:(id)a3 placement:(id)a4;
@end

@implementation AMSMarketingItemStub

+ (id)stubForServiceType:(id)a3 placement:(id)a4
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, a4];
  v5 = +[AMSDefaults marketingItemOverrides];
  v6 = [v5 valueForKeyPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = v8;

  return v8;
}

@end
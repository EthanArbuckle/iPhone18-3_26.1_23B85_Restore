@interface AMSUIWebAppearance
+ (AMSUIWebAppearance)defaultAppearance;
+ (AMSUIWebAppearance)tableViewAppearance;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateBackgroundColorWithJSString:(id)a3;
@end

@implementation AMSUIWebAppearance

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AMSUIWebAppearance allocWithZone:?]];
  objc_storeStrong(&v4->_backgroundColor, self->_backgroundColor);
  v4->_clientHandlesDismissability = self->_clientHandlesDismissability;
  return v4;
}

+ (AMSUIWebAppearance)defaultAppearance
{
  v2 = objc_alloc_init(AMSUIWebAppearance);
  v3 = [objc_opt_class() defaultPlatformBackgroundColor];
  [(AMSUIWebAppearance *)v2 setBackgroundColor:v3];

  return v2;
}

+ (AMSUIWebAppearance)tableViewAppearance
{
  v2 = objc_alloc_init(AMSUIWebAppearance);
  v3 = [objc_opt_class() systemGroupedBackgroundColor];
  [(AMSUIWebAppearance *)v2 setBackgroundColor:v3];

  return v2;
}

- (void)updateBackgroundColorWithJSString:(id)a3
{
  v17[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16[0] = @"-apple-system-background";
    v5 = [objc_opt_class() systemBackgroundColor];
    v17[0] = v5;
    v16[1] = @"-apple-system-clear";
    v6 = [objc_opt_class() systemClearColor];
    v17[1] = v6;
    v16[2] = @"-apple-system-secondary-background";
    v7 = [objc_opt_class() secondarySystemBackgroundColor];
    v17[2] = v7;
    v16[3] = @"-apple-system-tertiary-background";
    v8 = [objc_opt_class() tertiarySystemBackgroundColor];
    v17[3] = v8;
    v16[4] = @"-apple-system-grouped-background";
    v9 = [objc_opt_class() systemGroupedBackgroundColor];
    v17[4] = v9;
    v16[5] = @"-apple-system-secondary-grouped-background";
    v10 = [objc_opt_class() secondarySystemGroupedBackgroundColor];
    v17[5] = v10;
    v16[6] = @"-apple-system-tertiary-grouped-background";
    v11 = [objc_opt_class() tertiarySystemGroupedBackgroundColor];
    v17[6] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:7];

    v13 = [v12 objectForKeyedSubscript:v4];
    if (v13 || ([MEMORY[0x1E69DC888] ams_colorFromHexString:v4], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13;
      [(AMSUIWebAppearance *)self setBackgroundColor:v13];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end
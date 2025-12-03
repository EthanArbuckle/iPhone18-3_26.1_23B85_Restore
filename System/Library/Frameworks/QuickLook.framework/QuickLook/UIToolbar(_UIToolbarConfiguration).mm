@interface UIToolbar(_UIToolbarConfiguration)
- (id)configuration;
- (void)configureTransparent;
- (void)configureWithConfiguration:()_UIToolbarConfiguration;
@end

@implementation UIToolbar(_UIToolbarConfiguration)

- (void)configureWithConfiguration:()_UIToolbarConfiguration
{
  v11 = a3;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      [self setTranslucent:1];
      [self setBarStyle:0];
      labelColor = [MEMORY[0x277D75348] labelColor];
      [self setTintColor:labelColor];

      v5 = objc_opt_new();
      [self setBackgroundImage:v5 forToolbarPosition:0 barMetrics:0];

      shadowImage = objc_opt_new();
    }

    else
    {
      [self setBarStyle:{objc_msgSend(v11, "barStyle")}];
      [self setTranslucent:{objc_msgSend(v11, "isTranslucent")}];
      barTintColor = [v11 barTintColor];
      [self setBarTintColor:barTintColor];

      backgroundColor = [v11 backgroundColor];
      [self setBackgroundColor:backgroundColor];

      backgroundImage = [v11 backgroundImage];
      [self setBackgroundImage:backgroundImage forToolbarPosition:0 barMetrics:0];

      shadowImage = [v11 shadowImage];
    }

    v10 = shadowImage;
    [self setShadowImage:shadowImage forToolbarPosition:0];
  }
}

- (id)configuration
{
  v2 = objc_opt_new();
  [v2 setBarStyle:{objc_msgSend(self, "barStyle")}];
  [v2 setTranslucent:{objc_msgSend(self, "isTranslucent")}];
  v3 = [self shadowImageForToolbarPosition:0];
  [v2 setShadowImage:v3];

  barTintColor = [self barTintColor];
  [v2 setBarTintColor:barTintColor];

  backgroundColor = [self backgroundColor];
  [v2 setBackgroundColor:backgroundColor];

  v6 = [self backgroundImageForToolbarPosition:0 barMetrics:0];
  [v2 setBackgroundImage:v6];

  return v2;
}

- (void)configureTransparent
{
  v6 = objc_opt_new();
  [v6 setBarStyle:0];
  [v6 setTranslucent:1];
  v2 = objc_opt_new();
  [v6 setShadowImage:v2];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v6 setBarTintColor:clearColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:clearColor2];

  v5 = objc_opt_new();
  [v6 setBackgroundImage:v5];

  [self configureWithConfiguration:v6];
}

@end
@interface DDParsecNoDataViewControllerGuidedAccessDictionaryLookup
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)loadView;
@end

@implementation DDParsecNoDataViewControllerGuidedAccessDictionaryLookup

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DDParsecNoDataViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"DDParsecNoDataViewController" hasInstanceVariable:@"_container" withType:"UIView"];
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = DDParsecNoDataViewControllerGuidedAccessDictionaryLookup;
  [(DDParsecNoDataViewControllerGuidedAccessDictionaryLookup *)&v14 loadView];
  if (UIAccessibilityIsGuidedAccessEnabled())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(DDParsecNoDataViewControllerGuidedAccessDictionaryLookup *)self safeUIViewForKey:@"_container", 0];
    v4 = [v3 subviews];

    v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 setEnabled:0];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

@end
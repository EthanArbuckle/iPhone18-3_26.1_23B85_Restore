@interface DDParsecServiceCollectionViewControllerGuidedAccessDictionaryLookup
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setSections:(id)sections;
@end

@implementation DDParsecServiceCollectionViewControllerGuidedAccessDictionaryLookup

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DDParsecServiceCollectionViewController" hasInstanceMethod:@"setSections:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFResultSection" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
}

- (void)setSections:(id)sections
{
  sectionsCopy = sections;
  if (UIAccessibilityIsGuidedAccessEnabled())
  {
    v5 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = sectionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 safeStringForKey:@"bundleIdentifier"];
          if ([v12 isEqualToString:@"com.apple.lookup.dictionary"])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = sectionsCopy;
  }

  v13.receiver = self;
  v13.super_class = DDParsecServiceCollectionViewControllerGuidedAccessDictionaryLookup;
  [(DDParsecServiceCollectionViewControllerGuidedAccessDictionaryLookup *)&v13 setSections:v5];
}

@end
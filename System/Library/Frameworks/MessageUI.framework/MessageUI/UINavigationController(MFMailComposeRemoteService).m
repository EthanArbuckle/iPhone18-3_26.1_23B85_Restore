@interface UINavigationController(MFMailComposeRemoteService)
- (id)mf_keyPathsMapForUICustomization;
- (uint64_t)mf_classesForUICustomization;
@end

@implementation UINavigationController(MFMailComposeRemoteService)

- (uint64_t)mf_classesForUICustomization
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

- (id)mf_keyPathsMapForUICustomization
{
  if (mf_keyPathsMapForUICustomization_onceToken != -1)
  {
    [UINavigationController(MFMailComposeRemoteService) mf_keyPathsMapForUICustomization];
  }

  v1 = mf_keyPathsMapForUICustomization_keyPathsMap;

  return v1;
}

@end
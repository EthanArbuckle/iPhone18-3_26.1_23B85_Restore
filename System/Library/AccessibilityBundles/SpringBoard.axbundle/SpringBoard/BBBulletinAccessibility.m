@interface BBBulletinAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySectionNameForIcon;
@end

@implementation BBBulletinAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBApplicationController"];
  [v3 validateClass:@"SBApplicationController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySectionNameForIcon
{
  v2 = [(BBBulletinAccessibility *)self sectionID];
  [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstance"];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v5 = v12 = 0;
  v6 = v2;
  AXPerformSafeBlock();
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __59__BBBulletinAccessibility__accessibilitySectionNameForIcon__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) applicationWithBundleIdentifier:*(a1 + 40)];
  v2 = [v7 safeValueForKey:@"displayName"];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = &stru_2A22F9D20;
  }
}

@end
@interface MPLegacyRecentsTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
@end

@implementation MPLegacyRecentsTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MPLegacyRecentsTableViewCell" hasInstanceMethod:@"callButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPLegacyRecentsTableViewCell" hasInstanceMethod:@"callButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityCustomActions
{
  v14[1] = *MEMORY[0x29EDCA608];
  v13 = 0;
  objc_opt_class();
  v3 = [(MPLegacyRecentsTableViewCellAccessibility *)self safeUIViewForKey:@"callButton"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && ([v4 isHidden] & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"call.text");
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __71__MPLegacyRecentsTableViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v11[3] = &unk_29F2BE450;
    v11[4] = self;
    v12 = v4;
    v8 = [v6 initWithName:v7 actionHandler:v11];

    v14[0] = v8;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
  }

  else
  {
    v5 = MEMORY[0x29EDB8E90];
  }

  v9 = *MEMORY[0x29EDCA608];

  return v5;
}

uint64_t __71__MPLegacyRecentsTableViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

@end
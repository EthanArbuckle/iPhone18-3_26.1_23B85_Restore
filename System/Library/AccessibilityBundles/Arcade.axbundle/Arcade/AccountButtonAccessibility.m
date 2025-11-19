@interface AccountButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AccountButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AccountButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AccountButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v2 = [(AccountButtonAccessibility *)self safeStringForKey:@"accessibilityBadgeCount"];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityAppStoreLocalizedString(@"account.updates");
    v6 = [v4 localizedStringWithFormat:v5, objc_msgSend(v3, "intValue")];

    v7 = accessibilityAppStoreLocalizedString(@"account.button");
    v8 = __UIAXStringForVariables();
  }

  else
  {
    v8 = accessibilityAppStoreLocalizedString(@"account.button");
  }

  return v8;
}

@end
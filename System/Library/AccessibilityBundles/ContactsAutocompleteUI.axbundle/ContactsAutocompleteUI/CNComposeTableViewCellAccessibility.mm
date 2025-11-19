@interface CNComposeTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CNComposeTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNComposeTableViewCell" hasProperty:@"titleLabel" withType:"@"];
  [v3 validateClass:@"CNComposeTableViewCell" hasProperty:@"detailLabel" withType:"@"];
  [v3 validateClass:@"CNComposeTableViewCell" hasProperty:@"labelColor" withType:"@"];
  [v3 validateClass:@"CNComposeTableViewCell" hasInstanceMethod:@"recipient" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNComposeRecipient" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNComposeRecipient" hasInstanceMethod:@"isGroup" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CNComposeRecipientTableViewCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
  [v3 validateClass:@"UIDynamicCatalogColor" hasInstanceMethod:@"_debugName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CNComposeTableViewCellAccessibility *)self safeValueForKey:@"labelColor"];
  v4 = __UIAccessibilityCastAsClass();

  NSClassFromString(&cfstr_Uidynamiccatal.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = [v4 safeStringForKey:@"_debugName"];
  if ([v5 isEqualToString:@"CKBlueBalloonColor1"])
  {
    v6 = @"address.kind.imessage";
  }

  else
  {
    if (![v5 isEqualToString:@"CKGreenBalloonColor1"])
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6 = @"address.kind.sms";
  }

  v7 = accessibilityLocalizedString(v6);
LABEL_9:

LABEL_10:
  v8 = [MEMORY[0x29EDC7A00] tintColor];
  if ([v4 isEqual:v8])
  {
    v9 = AXApplicationGetMainBundleIdentifier();
    v10 = [v9 isEqualToString:*MEMORY[0x29EDBD658]];

    if (!v10)
    {
      goto LABEL_14;
    }

    accessibilityLocalizedString(@"contact.kind.eligible");
    v7 = v8 = v7;
  }

LABEL_14:
  v11 = [(CNComposeTableViewCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
  v12 = [v11 accessibilityLabel];

  v13 = [(CNComposeTableViewCellAccessibility *)self safeUIViewForKey:@"detailLabel"];
  v14 = [v13 accessibilityLabel];

  v15 = [(CNComposeTableViewCellAccessibility *)self safeValueForKey:@"recipient"];
  if ([v15 safeBoolForKey:@"isGroup"])
  {
    v16 = 0;
  }

  else
  {
    v16 = [v15 safeStringForKey:@"label"];
  }

  v17 = __UIAXStringForVariables();

  return v17;
}

@end
@interface VMMessageMetadataViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsVoiceMailUnread;
- (id)accessibilityLabel;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation VMMessageMetadataViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"shortDateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"shortDurationLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"currentViewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell"];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" hasInstanceMethod:@"unreadIndicatorImageView" withFullSignature:{"@", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  v2 = [(VMMessageMetadataViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Phvoicemailmes_1.isa)];
  if ([v2 safeBoolForKey:@"isExpanded"])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)accessibilityLabel
{
  if ([(VMMessageMetadataViewAccessibility *)self _axIsVoiceMailUnread])
  {
    v3 = accessibilityLocalizedString(@"voicemail.unread");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(VMMessageMetadataViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = [v4 accessibilityLabel];

  v6 = [(VMMessageMetadataViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v7 = [v6 accessibilityLabel];

  objc_opt_class();
  v8 = [(VMMessageMetadataViewAccessibility *)self safeValueForKey:@"shortDateLabel"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 date];

  v11 = [MEMORY[0x29EDB9F78] localizedStringFromDate:v10 dateStyle:3 timeStyle:{-[VMMessageMetadataViewAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"isExpanded"}];
  if (([(VMMessageMetadataViewAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(VMMessageMetadataViewAccessibility *)self safeValueForKey:@"shortDurationLabel"];
    v14 = [v13 accessibilityLabel];
    v12 = AXLocalizeDurationTime();
  }

  objc_opt_class();
  v15 = [(VMMessageMetadataViewAccessibility *)self safeValueForKey:@"currentViewModel"];
  v16 = __UIAccessibilityCastAsSafeCategory();

  v19 = [v16 _axLocalizedSenderIdentityFullName];
  v17 = __UIAXStringForVariables();

  return v17;
}

- (BOOL)_axIsVoiceMailUnread
{
  v2 = [(VMMessageMetadataViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Phvoicemailmes_1.isa)];
  v3 = [v2 safeUIViewForKey:@"unreadIndicatorImageView"];
  [v3 alpha];
  v5 = v4 > 0.0;

  return v5;
}

@end
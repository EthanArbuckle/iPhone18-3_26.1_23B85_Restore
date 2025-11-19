@interface PHVoicemailMessageTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axInfoAction;
- (BOOL)_axShareAction;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)loadExpandedViewsIfNecessary;
@end

@implementation PHVoicemailMessageTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" hasInstanceMethod:@"metadataView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" hasProperty:@"contentScrollView" withType:"@"];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" hasInstanceMethod:@"loadExpandedViewsIfNecessary" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VMMessageMetadataView"];
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"didTapInfo:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"VMMessageMetadataView" hasInstanceMethod:@"didTapAction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PHVoicemailMessageTableViewCell" hasInstanceMethod:@"setExpanded:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"PHAudioDeviceController"];
  [v3 validateClass:@"PHAudioDeviceController" hasClassMethod:@"sharedAudioDeviceController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAudioDeviceController" hasInstanceMethod:@"receiverRouteIsPicked" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAudioDeviceController" hasInstanceMethod:@"speakerRouteAvailable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAudioDeviceController" hasInstanceMethod:@"pickSpeakerRoute" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v3 = [(PHVoicemailMessageTableViewCellAccessibility *)self safeBoolForKey:@"isExpanded"];
  v4 = MEMORY[0x29EDB8D80];
  if (v3)
  {
    v5 = @"contentScrollView";
  }

  else
  {
    v5 = @"metadataView";
  }

  v6 = [(PHVoicemailMessageTableViewCellAccessibility *)self safeValueForKey:v5];
  v7 = [v4 axArrayByIgnoringNilElementsWithCount:{1, v6}];

  return v7;
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 isEditing];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(PHVoicemailMessageTableViewCellAccessibility *)self safeValueForKey:@"metadataView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = PHVoicemailMessageTableViewCellAccessibility;
  v2 = [(PHVoicemailMessageTableViewCellAccessibility *)&v6 accessibilityTraits];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if ([v3 isSelected])
  {
    v4 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = objc_alloc(MEMORY[0x29EDC78E0]);
  v5 = accessibilityLocalizedString(@"voicemail.info");
  v6 = [v4 initWithName:v5 target:self selector:sel__axInfoAction];

  [v3 addObject:v6];
  v7 = objc_alloc(MEMORY[0x29EDC78E0]);
  v8 = accessibilityLocalizedString(@"voicemail.share");
  v9 = [v7 initWithName:v8 target:self selector:sel__axShareAction];

  [v3 addObject:v9];

  return v3;
}

- (BOOL)_axInfoAction
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __61__PHVoicemailMessageTableViewCellAccessibility__axInfoAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"metadataView"];
  [v2 didTapInfo:0];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (BOOL)_axShareAction
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __62__PHVoicemailMessageTableViewCellAccessibility__axShareAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"metadataView"];
  [v2 didTapAction:0];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (void)loadExpandedViewsIfNecessary
{
  v2.receiver = self;
  v2.super_class = PHVoicemailMessageTableViewCellAccessibility;
  [(PHVoicemailMessageTableViewCellAccessibility *)&v2 loadExpandedViewsIfNecessary];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end
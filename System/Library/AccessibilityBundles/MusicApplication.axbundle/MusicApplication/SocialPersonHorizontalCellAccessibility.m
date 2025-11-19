@interface SocialPersonHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityApproveButtonAction:(id)a3;
- (void)_accessibilityDeclineButtonAction:(id)a3;
@end

@implementation SocialPersonHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonSubtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityFollowButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityApproveButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityDeclineButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityIsFollowRequest" withFullSignature:{"B", 0}];
}

- (id)automationElements
{
  v10.receiver = self;
  v10.super_class = SocialPersonHorizontalCellAccessibility;
  v3 = [(SocialPersonHorizontalCellAccessibility *)&v10 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  v8 = [(SocialPersonHorizontalCellAccessibility *)self _axFollowButton];
  [v7 axSafelyAddObject:v8];

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SocialPersonHorizontalCellAccessibility *)self _axFollowButton];
  v5 = [(SocialPersonHorizontalCellAccessibility *)self safeValueForKey:@"accessibilityPersonName"];
  [v4 setAccessibilityValue:v5];

  if (v4)
  {
    [v3 addObject:v4];
  }

  return v3;
}

- (void)_accessibilityApproveButtonAction:(id)a3
{
  v3 = [(SocialPersonHorizontalCellAccessibility *)self safeValueForKey:@"accessibilityApproveButton"];
  [v3 accessibilityActivate];
}

- (void)_accessibilityDeclineButtonAction:(id)a3
{
  v3 = [(SocialPersonHorizontalCellAccessibility *)self safeValueForKey:@"accessibilityDeclineButton"];
  [v3 accessibilityActivate];
}

- (id)accessibilityCustomActions
{
  v12[2] = *MEMORY[0x29EDCA608];
  if ([(SocialPersonHorizontalCellAccessibility *)self safeBoolForKey:@"accessibilityIsFollowRequest"])
  {
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityMusicLocalizedString(@"approve.action");
    v5 = [v3 initWithName:v4 target:self selector:sel__accessibilityApproveButtonAction_];

    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityMusicLocalizedString(@"decline.action");
    v8 = [v6 initWithName:v7 target:self selector:sel__accessibilityDeclineButtonAction_];

    v12[0] = v5;
    v12[1] = v8;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:2];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SocialPersonHorizontalCellAccessibility;
  return *MEMORY[0x29EDC7FA0] | [(SocialPersonHorizontalCellAccessibility *)&v3 accessibilityTraits];
}

@end
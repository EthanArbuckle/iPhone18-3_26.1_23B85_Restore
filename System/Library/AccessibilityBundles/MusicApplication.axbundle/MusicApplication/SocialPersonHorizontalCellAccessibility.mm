@interface SocialPersonHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityApproveButtonAction:(id)action;
- (void)_accessibilityDeclineButtonAction:(id)action;
@end

@implementation SocialPersonHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonSubtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityFollowButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityApproveButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityDeclineButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.SocialPersonHorizontalCell" hasInstanceMethod:@"accessibilityIsFollowRequest" withFullSignature:{"B", 0}];
}

- (id)automationElements
{
  v10.receiver = self;
  v10.super_class = SocialPersonHorizontalCellAccessibility;
  automationElements = [(SocialPersonHorizontalCellAccessibility *)&v10 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  _axFollowButton = [(SocialPersonHorizontalCellAccessibility *)self _axFollowButton];
  [v7 axSafelyAddObject:_axFollowButton];

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  _axFollowButton = [(SocialPersonHorizontalCellAccessibility *)self _axFollowButton];
  v5 = [(SocialPersonHorizontalCellAccessibility *)self safeValueForKey:@"accessibilityPersonName"];
  [_axFollowButton setAccessibilityValue:v5];

  if (_axFollowButton)
  {
    [array addObject:_axFollowButton];
  }

  return array;
}

- (void)_accessibilityApproveButtonAction:(id)action
{
  v3 = [(SocialPersonHorizontalCellAccessibility *)self safeValueForKey:@"accessibilityApproveButton"];
  [v3 accessibilityActivate];
}

- (void)_accessibilityDeclineButtonAction:(id)action
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
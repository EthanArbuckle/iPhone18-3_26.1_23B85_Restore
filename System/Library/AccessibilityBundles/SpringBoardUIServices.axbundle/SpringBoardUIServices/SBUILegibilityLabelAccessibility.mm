@interface SBUILegibilityLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityOverridesInvisibility;
- (BOOL)_accessibilityViewIsVisible;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilityParentView;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBUILegibilityLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFLockScreenDateView"];
  [validationsCopy validateClass:@"SBUILegibilityLabel" hasInstanceVariable:@"_lookasideLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBFLockScreenDateView" isKindOfClass:@"UIView"];
  if (NSClassFromString(&cfstr_Sbflockscreend_0.isa))
  {
    [validationsCopy validateClass:@"SBFLockScreenDateViewAccessibility" hasInstanceMethod:@"_axTimeLabelFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  }
}

- (id)accessibilityLabel
{
  accessibilityIdentification = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification containsString:@"LockScreenTimeLabel"];

  if (v4)
  {
    v5 = MEMORY[0x29EDBD7E8];
    date = [MEMORY[0x29EDB8DB0] date];
    v7 = AXDateStringForFormat();
    accessibilityLabel2 = [v5 axAttributedStringWithString:v7];

    v9 = *MEMORY[0x29EDB8F00];
    v10 = MEMORY[0x29EDBD888];
LABEL_5:
    [accessibilityLabel2 setAttribute:v9 forKey:*v10];
    goto LABEL_7;
  }

  accessibilityIdentification2 = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  v12 = [accessibilityIdentification2 containsString:@"LockScreenDateLabel"];

  if (v12)
  {
    v13 = MEMORY[0x29EDBD7E8];
    v14 = [(SBUILegibilityLabelAccessibility *)self safeValueForKey:@"_lookasideLabel"];
    accessibilityLabel = [v14 accessibilityLabel];
    accessibilityLabel2 = [v13 axAttributedStringWithString:accessibilityLabel];

    v9 = *MEMORY[0x29EDB8F00];
    v10 = MEMORY[0x29EDBD898];
    goto LABEL_5;
  }

  v16 = [(SBUILegibilityLabelAccessibility *)self safeValueForKey:@"_lookasideLabel"];
  accessibilityLabel2 = [v16 accessibilityLabel];

LABEL_7:

  return accessibilityLabel2;
}

- (BOOL)_accessibilityOverridesInvisibility
{
  accessibilityIdentification = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"HomeAffordanceLabel"];

  if (v4)
  {
    return 1;
  }

  accessibilityIdentification2 = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification2 isEqualToString:@"LockScreenTimeLabel"])
  {
  }

  else
  {
    accessibilityIdentification3 = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
    v7 = [accessibilityIdentification3 isEqualToString:@"LockScreenDateLabel"];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  [(SBUILegibilityLabelAccessibility *)self alpha];
  if (v8 > 0.0)
  {
    return 1;
  }

LABEL_7:
  v10.receiver = self;
  v10.super_class = SBUILegibilityLabelAccessibility;
  return [(SBUILegibilityLabelAccessibility *)&v10 _accessibilityOverridesInvisibility];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  _accessibilityWindow = [(SBUILegibilityLabelAccessibility *)self _accessibilityWindow];
  NSClassFromString(&cfstr_Sbcoversheetwi.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (scroll == 1 && (isKindOfClass & 1) != 0)
  {
    v7 = accessibilitySBLocalizedString(@"did.show.today.view.announcement");
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

  v10.receiver = self;
  v10.super_class = SBUILegibilityLabelAccessibility;
  v8 = [(SBUILegibilityLabelAccessibility *)&v10 accessibilityScroll:scroll];

  return v8;
}

- (BOOL)_accessibilityViewIsVisible
{
  accessibilityIdentification = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"HomeAffordanceLabel"];

  if (v4)
  {
    return 1;
  }

  accessibilityIdentification2 = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification2 isEqualToString:@"LockScreenTimeLabel"])
  {
  }

  else
  {
    accessibilityIdentification3 = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
    v7 = [accessibilityIdentification3 isEqualToString:@"LockScreenDateLabel"];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  [(SBUILegibilityLabelAccessibility *)self alpha];
  if (v8 > 0.0)
  {
    return 1;
  }

LABEL_7:
  v10.receiver = self;
  v10.super_class = SBUILegibilityLabelAccessibility;
  return [(SBUILegibilityLabelAccessibility *)&v10 _accessibilityViewIsVisible];
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"HomeAffordanceLabel"];

  if (v4)
  {
    return 1;
  }

  accessibilityIdentification2 = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification2 isEqualToString:@"LockScreenTimeLabel"])
  {
  }

  else
  {
    accessibilityIdentification3 = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
    v7 = [accessibilityIdentification3 isEqualToString:@"LockScreenDateLabel"];

    if (!v7)
    {
      return 1;
    }
  }

  v8 = [(SBUILegibilityLabelAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbflockscreend.isa)];

  return v8 != 0;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7FD0];
  accessibilityContainer = [(SBUILegibilityLabelAccessibility *)self accessibilityContainer];
  NSClassFromString(&cfstr_Ncnotification.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = *MEMORY[0x29EDC7F80];
  if ((isKindOfClass & 1) == 0)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (CGRect)accessibilityFrame
{
  accessibilityIdentification = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"LockScreenTimeLabel"];

  if (v4)
  {
    _accessibilityParentView = [(SBUILegibilityLabelAccessibility *)self _accessibilityParentView];
    NSClassFromString(&cfstr_Sbflockscreend.isa);
    if (objc_opt_isKindOfClass())
    {
      [_accessibilityParentView safeCGRectForKey:@"_axTimeLabelFrame"];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      if (!CGRectIsNull(v19))
      {

        goto LABEL_6;
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SBUILegibilityLabelAccessibility;
  [(SBUILegibilityLabelAccessibility *)&v18 accessibilityFrame];
  x = v10;
  y = v11;
  width = v12;
  height = v13;
LABEL_6:
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  accessibilityIdentification = [(SBUILegibilityLabelAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"LockScreenTimeLabel"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBUILegibilityLabelAccessibility;
  return [(SBUILegibilityLabelAccessibility *)&v6 accessibilityRespondsToUserInteraction];
}

- (id)_accessibilityParentView
{
  accessibilityContainer = [(SBUILegibilityLabelAccessibility *)self accessibilityContainer];
  if (accessibilityContainer && (NSClassFromString(&cfstr_Sbflockscreend.isa), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _accessibilityParentView = accessibilityContainer;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUILegibilityLabelAccessibility;
    _accessibilityParentView = [(SBUILegibilityLabelAccessibility *)&v7 _accessibilityParentView];
  }

  v5 = _accessibilityParentView;

  return v5;
}

@end
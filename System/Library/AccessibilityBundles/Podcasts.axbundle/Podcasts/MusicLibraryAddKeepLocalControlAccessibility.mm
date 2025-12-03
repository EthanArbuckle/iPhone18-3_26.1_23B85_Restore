@interface MusicLibraryAddKeepLocalControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityisStatusStructValidated;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityCustomActionLabelForControlStatus:(int64_t)status;
- (id)_accessibilityLabelForStatusType:(int64_t)type;
- (id)_accessibilityValueForStatusType:(int64_t)type andDownloadProgress:(double)progress;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateControlStatusProperties;
- (void)setTitle:(id)title forControlStatusType:(int64_t)type;
@end

@implementation MusicLibraryAddKeepLocalControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"controlStatus" withFullSignature:{"{MusicLibraryAddKeepLocalControlStatus=qd}", 0}];
  [validationsCopy validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"setControlStatus:animated:" withFullSignature:{"v", "{MusicLibraryAddKeepLocalControlStatus=qd}", "B", 0}];
  [validationsCopy validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"_updateControlStatusProperties" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceVariable:@"_controlTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MusicLibraryAddKeepLocalControl" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"setTitle:forControlStatusType:" withFullSignature:{"v", "@", "q", 0}];
}

- (BOOL)_accessibilityisStatusStructValidated
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __85__MusicLibraryAddKeepLocalControlAccessibility__accessibilityisStatusStructValidated__block_invoke;
  block[3] = &unk_29F2EA148;
  v8 = mEMORY[0x29EDBD6E8];
  v3 = _accessibilityisStatusStructValidated_onceToken;
  v4 = mEMORY[0x29EDBD6E8];
  if (v3 != -1)
  {
    dispatch_once(&_accessibilityisStatusStructValidated_onceToken, block);
  }

  v5 = _accessibilityisStatusStructValidated_validated;

  return v5;
}

uint64_t __85__MusicLibraryAddKeepLocalControlAccessibility__accessibilityisStatusStructValidated__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"controlStatus" withFullSignature:{"{MusicLibraryAddKeepLocalControlStatus=qd}", 0}];
  _accessibilityisStatusStructValidated_validated = result;
  if (result)
  {
    result = [*(a1 + 32) validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"setControlStatus:animated:" withFullSignature:{"v", "{MusicLibraryAddKeepLocalControlStatus=qd}", "B", 0}];
  }

  _accessibilityisStatusStructValidated_validated = result;
  return result;
}

- (BOOL)isAccessibilityElement
{
  accessibilityValue = [(MusicLibraryAddKeepLocalControlAccessibility *)self accessibilityValue];
  if ([accessibilityValue length])
  {
    v4 = 1;
  }

  else
  {
    accessibilityLabel = [(MusicLibraryAddKeepLocalControlAccessibility *)self accessibilityLabel];
    v4 = [accessibilityLabel length] != 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(MusicLibraryAddKeepLocalControlAccessibility *)self safeValueForKey:@"_controlTitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (!accessibilityLabel)
  {
    if ([(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityisStatusStructValidated])
    {
      accessibilityLabel = [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityLabelForStatusType:*[(MusicLibraryAddKeepLocalControlAccessibility *)self safeIvarForKey:@"_controlStatus"]];
    }

    else
    {
      accessibilityLabel = 0;
    }
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityisStatusStructValidated])
  {
    v3 = [(MusicLibraryAddKeepLocalControlAccessibility *)self safeIvarForKey:@"_controlStatus"];
    v4 = [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityValueForStatusType:*v3 andDownloadProgress:*(v3 + 8)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityLabelForStatusType:(int64_t)type
{
  if (type == 1)
  {
    v4 = @"add.to.playlist";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);

    return v5;
  }

  if (type == 2)
  {
    v4 = @"download.button";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_accessibilityValueForStatusType:(int64_t)type andDownloadProgress:(double)progress
{
  if (type == 3)
  {
    v7 = accessibilityLocalizedString(@"waiting.download");
  }

  else if (type == 4)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"downloading.percentage");
    v6 = AXFormatFloatWithPercentage();
    v7 = [v4 stringWithFormat:v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_accessibilityCustomActionLabelForControlStatus:(int64_t)status
{
  if ((status - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2EA228[status - 1]);
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = MusicLibraryAddKeepLocalControlAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(MusicLibraryAddKeepLocalControlAccessibility *)&v8 accessibilityTraits];
  if ([(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityisStatusStructValidated])
  {
    if (*[(MusicLibraryAddKeepLocalControlAccessibility *)self safeIvarForKey:@"_controlStatus"]== 4)
    {
      v4 = *MEMORY[0x29EDC7FF0];
    }

    else
    {
      v4 = 0;
    }

    v3 |= v4;
  }

  v5 = [(MusicLibraryAddKeepLocalControlAccessibility *)self safeBoolForKey:@"userInteractionEnabled"];
  v6 = *MEMORY[0x29EDC7FA8];
  if (v5)
  {
    v6 = 0;
  }

  return v6 | v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  if ([(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityisStatusStructValidated])
  {
    v3 = [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityCustomActionLabelForControlStatus:*[(MusicLibraryAddKeepLocalControlAccessibility *)self safeIvarForKey:@"_controlStatus"]];
    [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilitySetCustomActionLabel:v3];
  }

  v4.receiver = self;
  v4.super_class = MusicLibraryAddKeepLocalControlAccessibility;
  [(MusicLibraryAddKeepLocalControlAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
}

- (void)_updateControlStatusProperties
{
  v3.receiver = self;
  v3.super_class = MusicLibraryAddKeepLocalControlAccessibility;
  [(MusicLibraryAddKeepLocalControlAccessibility *)&v3 _updateControlStatusProperties];
  [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setTitle:(id)title forControlStatusType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MusicLibraryAddKeepLocalControlAccessibility;
  [(MusicLibraryAddKeepLocalControlAccessibility *)&v5 setTitle:title forControlStatusType:type];
  [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
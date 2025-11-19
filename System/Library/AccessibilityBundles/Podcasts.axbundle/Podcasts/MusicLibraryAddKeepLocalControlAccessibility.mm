@interface MusicLibraryAddKeepLocalControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityisStatusStructValidated;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityCustomActionLabelForControlStatus:(int64_t)a3;
- (id)_accessibilityLabelForStatusType:(int64_t)a3;
- (id)_accessibilityValueForStatusType:(int64_t)a3 andDownloadProgress:(double)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateControlStatusProperties;
- (void)setTitle:(id)a3 forControlStatusType:(int64_t)a4;
@end

@implementation MusicLibraryAddKeepLocalControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"controlStatus" withFullSignature:{"{MusicLibraryAddKeepLocalControlStatus=qd}", 0}];
  [v3 validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"setControlStatus:animated:" withFullSignature:{"v", "{MusicLibraryAddKeepLocalControlStatus=qd}", "B", 0}];
  [v3 validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"_updateControlStatusProperties" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceVariable:@"_controlTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"MusicLibraryAddKeepLocalControl" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"MusicLibraryAddKeepLocalControl" hasInstanceMethod:@"setTitle:forControlStatusType:" withFullSignature:{"v", "@", "q", 0}];
}

- (BOOL)_accessibilityisStatusStructValidated
{
  v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __85__MusicLibraryAddKeepLocalControlAccessibility__accessibilityisStatusStructValidated__block_invoke;
  block[3] = &unk_29F2EA148;
  v8 = v2;
  v3 = _accessibilityisStatusStructValidated_onceToken;
  v4 = v2;
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
  v3 = [(MusicLibraryAddKeepLocalControlAccessibility *)self accessibilityValue];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MusicLibraryAddKeepLocalControlAccessibility *)self accessibilityLabel];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(MusicLibraryAddKeepLocalControlAccessibility *)self safeValueForKey:@"_controlTitleLabel"];
  v4 = [v3 accessibilityLabel];

  if (!v4)
  {
    if ([(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityisStatusStructValidated])
    {
      v4 = [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityLabelForStatusType:*[(MusicLibraryAddKeepLocalControlAccessibility *)self safeIvarForKey:@"_controlStatus"]];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
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

- (id)_accessibilityLabelForStatusType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"add.to.playlist";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);

    return v5;
  }

  if (a3 == 2)
  {
    v4 = @"download.button";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_accessibilityValueForStatusType:(int64_t)a3 andDownloadProgress:(double)a4
{
  if (a3 == 3)
  {
    v7 = accessibilityLocalizedString(@"waiting.download");
  }

  else if (a3 == 4)
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

- (id)_accessibilityCustomActionLabelForControlStatus:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2EA228[a3 - 1]);
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

- (void)setTitle:(id)a3 forControlStatusType:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = MusicLibraryAddKeepLocalControlAccessibility;
  [(MusicLibraryAddKeepLocalControlAccessibility *)&v5 setTitle:a3 forControlStatusType:a4];
  [(MusicLibraryAddKeepLocalControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
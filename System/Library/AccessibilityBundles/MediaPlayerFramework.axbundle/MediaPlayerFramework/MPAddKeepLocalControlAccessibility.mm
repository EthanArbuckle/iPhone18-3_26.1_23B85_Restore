@interface MPAddKeepLocalControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityCustomActionLabelForControlStatus:(int64_t)a3;
- (id)_accessibilityLabelForStatusType:(int64_t)a3;
- (id)_accessibilityValueForStatusType:(int64_t)a3 andDownloadProgress:(double)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MPAddKeepLocalControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MPAddKeepLocalControl" hasInstanceMethod:@"controlStatus" withFullSignature:{"{MPAddKeepLocalControlStatus=qd}", 0}];
  [v3 validateClass:@"MPAddKeepLocalControl" hasInstanceMethod:@"setControlStatus:animated:" withFullSignature:{"v", "{MPAddKeepLocalControlStatus=qd}", "B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(MPAddKeepLocalControlAccessibility *)self accessibilityValue];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MPAddKeepLocalControlAccessibility *)self accessibilityLabel];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(MPAddKeepLocalControlAccessibility *)self controlStatus];

  return [(MPAddKeepLocalControlAccessibility *)self _accessibilityLabelForStatusType:v3];
}

- (id)accessibilityValue
{
  v4 = [(MPAddKeepLocalControlAccessibility *)self controlStatus];

  return [(MPAddKeepLocalControlAccessibility *)self _accessibilityValueForStatusType:v4 andDownloadProgress:v3];
}

- (id)_accessibilityLabelForStatusType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"add.button";
LABEL_5:
    v5 = accessibilityMPLocalizedString(v4);

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
    v7 = accessibilityMPLocalizedString(@"waiting.download");
  }

  else if (a3 == 4)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityMPLocalizedString(@"downloading");
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
  if ((a3 - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityMPLocalizedString(off_29F2CFE98[a3 - 1]);
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MPAddKeepLocalControlAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(MPAddKeepLocalControlAccessibility *)&v7 accessibilityTraits];
  v4 = [(MPAddKeepLocalControlAccessibility *)self controlStatus];
  v5 = *MEMORY[0x29EDC7FF0];
  if (v4 != 4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end
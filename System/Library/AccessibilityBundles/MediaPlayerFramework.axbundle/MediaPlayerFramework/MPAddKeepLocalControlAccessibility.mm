@interface MPAddKeepLocalControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityCustomActionLabelForControlStatus:(int64_t)status;
- (id)_accessibilityLabelForStatusType:(int64_t)type;
- (id)_accessibilityValueForStatusType:(int64_t)type andDownloadProgress:(double)progress;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MPAddKeepLocalControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MPAddKeepLocalControl" hasInstanceMethod:@"controlStatus" withFullSignature:{"{MPAddKeepLocalControlStatus=qd}", 0}];
  [validationsCopy validateClass:@"MPAddKeepLocalControl" hasInstanceMethod:@"setControlStatus:animated:" withFullSignature:{"v", "{MPAddKeepLocalControlStatus=qd}", "B", 0}];
}

- (BOOL)isAccessibilityElement
{
  accessibilityValue = [(MPAddKeepLocalControlAccessibility *)self accessibilityValue];
  if ([accessibilityValue length])
  {
    v4 = 1;
  }

  else
  {
    accessibilityLabel = [(MPAddKeepLocalControlAccessibility *)self accessibilityLabel];
    v4 = [accessibilityLabel length] != 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  controlStatus = [(MPAddKeepLocalControlAccessibility *)self controlStatus];

  return [(MPAddKeepLocalControlAccessibility *)self _accessibilityLabelForStatusType:controlStatus];
}

- (id)accessibilityValue
{
  controlStatus = [(MPAddKeepLocalControlAccessibility *)self controlStatus];

  return [(MPAddKeepLocalControlAccessibility *)self _accessibilityValueForStatusType:controlStatus andDownloadProgress:v3];
}

- (id)_accessibilityLabelForStatusType:(int64_t)type
{
  if (type == 1)
  {
    v4 = @"add.button";
LABEL_5:
    v5 = accessibilityMPLocalizedString(v4);

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
    v7 = accessibilityMPLocalizedString(@"waiting.download");
  }

  else if (type == 4)
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

- (id)_accessibilityCustomActionLabelForControlStatus:(int64_t)status
{
  if ((status - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityMPLocalizedString(off_29F2CFE98[status - 1]);
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MPAddKeepLocalControlAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(MPAddKeepLocalControlAccessibility *)&v7 accessibilityTraits];
  controlStatus = [(MPAddKeepLocalControlAccessibility *)self controlStatus];
  v5 = *MEMORY[0x29EDC7FF0];
  if (controlStatus != 4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end
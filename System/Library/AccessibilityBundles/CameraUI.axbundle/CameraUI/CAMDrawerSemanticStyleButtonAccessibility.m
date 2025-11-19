@interface CAMDrawerSemanticStyleButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerSemanticStyleButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [v3 validateClass:@"CAMDrawerSemanticStyleButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [v3 validateClass:@"CAMDrawerSemanticStyleButton" hasInstanceMethod:@"isOn" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMDrawerSemanticStyleButton" hasInstanceMethod:@"shouldShowSlashForCurrentState" withFullSignature:{"B", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CAMDrawerSemanticStyleButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)accessibilityValue
{
  if ([(CAMDrawerSemanticStyleButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    v3 = [(CAMDrawerSemanticStyleButtonAccessibility *)self safeBoolForKey:@"shouldShowSlashForCurrentState"];
    v4 = @"on.state";
    v5 = @"off.state";
  }

  else
  {
    v3 = [(CAMDrawerSemanticStyleButtonAccessibility *)self safeBoolForKey:@"isOn"];
    v4 = @"off.state";
    v5 = @"on.state";
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = accessibilityCameraUILocalizedString(v6);

  return v7;
}

@end
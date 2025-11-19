@interface DOCMetadataKeyValueRowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation DOCMetadataKeyValueRowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DocumentManagerExecutables.DOCMetadataKeyValueRow" hasInstanceMethod:@"accessibilityElementWithLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCMetadataKeyValueRow" hasInstanceMethod:@"accessibilityElementWithValue" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCMetadataKeyValueRow" hasSwiftField:@"$__lazy_storage_$_menuButton" withSwiftType:"Optional<UIButton>"];
}

- (id)accessibilityLabel
{
  v3 = [(DOCMetadataKeyValueRowAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityElementWithLabel, accessibilityElementWithValue"];
  v4 = [(DOCMetadataKeyValueRowAccessibility *)self _axMenuButton];
  v5 = v4;
  if (v4)
  {
    v10 = [v4 accessibilityLabel];
    v11 = @"__AXStringForVariablesSentinel";
    v6 = __AXStringForVariables();

    v3 = v6;
  }

  if ([v3 length])
  {
    v7 = v3;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = DOCMetadataKeyValueRowAccessibility;
    v7 = [(DOCMetadataKeyValueRowAccessibility *)&v12 accessibilityLabel];
  }

  v8 = v7;

  return v8;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v8.receiver = self;
  v8.super_class = DOCMetadataKeyValueRowAccessibility;
  v4 = [(DOCMetadataKeyValueRowAccessibility *)&v8 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(DOCMetadataKeyValueRowAccessibility *)self safeValueForKey:@"accessibilityElementWithValue"];
  v6 = [v5 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v6];

  return v3;
}

- (BOOL)accessibilityActivate
{
  v3 = [(DOCMetadataKeyValueRowAccessibility *)self _axMenuButton];
  v4 = v3;
  if (v3 && ([v3 menu], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 _accessibilityShowContextMenuWithTargetPointValue:0];
  }

  else
  {
    v7 = [(DOCMetadataKeyValueRowAccessibility *)self safeValueForKey:@"accessibilityElementWithValue"];
    v6 = [v7 accessibilityActivate];
  }

  return v6;
}

@end
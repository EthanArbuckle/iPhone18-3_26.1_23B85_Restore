@interface DOCMetadataKeyValueRowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation DOCMetadataKeyValueRowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCMetadataKeyValueRow" hasInstanceMethod:@"accessibilityElementWithLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCMetadataKeyValueRow" hasInstanceMethod:@"accessibilityElementWithValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCMetadataKeyValueRow" hasSwiftField:@"$__lazy_storage_$_menuButton" withSwiftType:"Optional<UIButton>"];
}

- (id)accessibilityLabel
{
  v3 = [(DOCMetadataKeyValueRowAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityElementWithLabel, accessibilityElementWithValue"];
  _axMenuButton = [(DOCMetadataKeyValueRowAccessibility *)self _axMenuButton];
  v5 = _axMenuButton;
  if (_axMenuButton)
  {
    accessibilityLabel = [_axMenuButton accessibilityLabel];
    v11 = @"__AXStringForVariablesSentinel";
    v6 = __AXStringForVariables();

    v3 = v6;
  }

  if ([v3 length])
  {
    accessibilityLabel2 = v3;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = DOCMetadataKeyValueRowAccessibility;
    accessibilityLabel2 = [(DOCMetadataKeyValueRowAccessibility *)&v12 accessibilityLabel];
  }

  v8 = accessibilityLabel2;

  return v8;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v8.receiver = self;
  v8.super_class = DOCMetadataKeyValueRowAccessibility;
  accessibilityCustomActions = [(DOCMetadataKeyValueRowAccessibility *)&v8 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  v5 = [(DOCMetadataKeyValueRowAccessibility *)self safeValueForKey:@"accessibilityElementWithValue"];
  accessibilityCustomActions2 = [v5 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions2];

  return array;
}

- (BOOL)accessibilityActivate
{
  _axMenuButton = [(DOCMetadataKeyValueRowAccessibility *)self _axMenuButton];
  v4 = _axMenuButton;
  if (_axMenuButton && ([_axMenuButton menu], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    accessibilityActivate = [v4 _accessibilityShowContextMenuWithTargetPointValue:0];
  }

  else
  {
    v7 = [(DOCMetadataKeyValueRowAccessibility *)self safeValueForKey:@"accessibilityElementWithValue"];
    accessibilityActivate = [v7 accessibilityActivate];
  }

  return accessibilityActivate;
}

@end
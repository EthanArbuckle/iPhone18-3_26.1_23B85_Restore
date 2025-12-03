@interface SBHWidgetWrapperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SBHWidgetWrapperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHWidgetWrapperView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHWidgetWrapperView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHWidgetWrapperView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHWidgetWrapperViewController" hasInstanceMethod:@"selectedSizeClass" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBHWidgetWrapperViewController" hasInstanceMethod:@"galleryItem" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SBHAddWidgetSheetGalleryItem" hasRequiredInstanceMethod:@"sbh_appName"];
  [validationsCopy validateProtocol:@"SBHAddWidgetSheetGalleryItem" hasRequiredInstanceMethod:@"sbh_widgetName"];
  [validationsCopy validateProtocol:@"SBHAddWidgetSheetGalleryItem" hasRequiredInstanceMethod:@"sbh_widgetDescription"];
}

- (id)accessibilityLabel
{
  _accessibilityViewController = [(SBHWidgetWrapperViewAccessibility *)self _accessibilityViewController];
  v4 = [_accessibilityViewController safeValueForKey:@"galleryItem"];

  v5 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"contentView"];
  accessibilityLabel = [v5 accessibilityLabel];

  v7 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];

  v9 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  accessibilityLabel3 = [v9 accessibilityLabel];

  v11 = [v4 safeStringForKey:@"sbh_appName"];
  v12 = [v4 safeStringForKey:@"sbh_widgetName"];
  v13 = accessibilityLabel;
  v14 = v13;
  if (([v13 isEqualToString:accessibilityLabel2] & 1) == 0)
  {
    v14 = v13;
    if ([accessibilityLabel2 length])
    {
      v18 = accessibilityLabel2;
      v19 = @"__AXStringForVariablesSentinel";
      v14 = __UIAXStringForVariables();
    }
  }

  if (([accessibilityLabel2 isEqualToString:{accessibilityLabel3, v18, v19}] & 1) == 0 && objc_msgSend(accessibilityLabel3, "length"))
  {
    v15 = __UIAXStringForVariables();

    v14 = v15;
  }

  if (!(accessibilityLabel2 | accessibilityLabel3) && [v11 length] && objc_msgSend(v12, "length"))
  {
    v16 = __UIAXStringForVariables();

    v14 = v16;
  }

  return v14;
}

- (id)accessibilityCustomContent
{
  _accessibilityViewController = [(SBHWidgetWrapperViewAccessibility *)self _accessibilityViewController];
  v4 = [_accessibilityViewController safeValueForKey:@"galleryItem"];

  v5 = [v4 safeStringForKey:@"widgetDescription"];
  if ([v5 length])
  {
    v6 = MEMORY[0x29EDB8058];
    v7 = accessibilityLocalizedString(@"widget.description");
    v8 = [v6 customContentWithLabel:v7 value:v5];

    [v8 setImportance:1];
    accessibilityCustomContent = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v8}];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHWidgetWrapperViewAccessibility;
    accessibilityCustomContent = [(SBHWidgetWrapperViewAccessibility *)&v11 accessibilityCustomContent];
  }

  return accessibilityCustomContent;
}

- (id)accessibilityValue
{
  v3 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"contentView"];
  accessibilityValue = [v3 accessibilityValue];

  _accessibilityViewController = [(SBHWidgetWrapperViewAccessibility *)self _accessibilityViewController];
  v6 = [_accessibilityViewController safeIntegerForKey:@"selectedSizeClass"];

  v7 = v6 - 1;
  if (v6 - 1) <= 0xA && ((0x607u >> v7))
  {
    v8 = accessibilityLocalizedString(off_29F3000D0[v7]);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SBHWidgetWrapperViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbhaddwidgetsh_0.isa)];

  if (v9)
  {
    v9 = accessibilityLocalizedString(@"widget.value.suggested");
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end
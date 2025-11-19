@interface SBHWidgetWrapperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SBHWidgetWrapperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHWidgetWrapperView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHWidgetWrapperView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHWidgetWrapperView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHWidgetWrapperViewController" hasInstanceMethod:@"selectedSizeClass" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBHWidgetWrapperViewController" hasInstanceMethod:@"galleryItem" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"SBHAddWidgetSheetGalleryItem" hasRequiredInstanceMethod:@"sbh_appName"];
  [v3 validateProtocol:@"SBHAddWidgetSheetGalleryItem" hasRequiredInstanceMethod:@"sbh_widgetName"];
  [v3 validateProtocol:@"SBHAddWidgetSheetGalleryItem" hasRequiredInstanceMethod:@"sbh_widgetDescription"];
}

- (id)accessibilityLabel
{
  v3 = [(SBHWidgetWrapperViewAccessibility *)self _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"galleryItem"];

  v5 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"contentView"];
  v6 = [v5 accessibilityLabel];

  v7 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v8 = [v7 accessibilityLabel];

  v9 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v10 = [v9 accessibilityLabel];

  v11 = [v4 safeStringForKey:@"sbh_appName"];
  v12 = [v4 safeStringForKey:@"sbh_widgetName"];
  v13 = v6;
  v14 = v13;
  if (([v13 isEqualToString:v8] & 1) == 0)
  {
    v14 = v13;
    if ([v8 length])
    {
      v18 = v8;
      v19 = @"__AXStringForVariablesSentinel";
      v14 = __UIAXStringForVariables();
    }
  }

  if (([v8 isEqualToString:{v10, v18, v19}] & 1) == 0 && objc_msgSend(v10, "length"))
  {
    v15 = __UIAXStringForVariables();

    v14 = v15;
  }

  if (!(v8 | v10) && [v11 length] && objc_msgSend(v12, "length"))
  {
    v16 = __UIAXStringForVariables();

    v14 = v16;
  }

  return v14;
}

- (id)accessibilityCustomContent
{
  v3 = [(SBHWidgetWrapperViewAccessibility *)self _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"galleryItem"];

  v5 = [v4 safeStringForKey:@"widgetDescription"];
  if ([v5 length])
  {
    v6 = MEMORY[0x29EDB8058];
    v7 = accessibilityLocalizedString(@"widget.description");
    v8 = [v6 customContentWithLabel:v7 value:v5];

    [v8 setImportance:1];
    v9 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v8}];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHWidgetWrapperViewAccessibility;
    v9 = [(SBHWidgetWrapperViewAccessibility *)&v11 accessibilityCustomContent];
  }

  return v9;
}

- (id)accessibilityValue
{
  v3 = [(SBHWidgetWrapperViewAccessibility *)self safeValueForKey:@"contentView"];
  v4 = [v3 accessibilityValue];

  v5 = [(SBHWidgetWrapperViewAccessibility *)self _accessibilityViewController];
  v6 = [v5 safeIntegerForKey:@"selectedSizeClass"];

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
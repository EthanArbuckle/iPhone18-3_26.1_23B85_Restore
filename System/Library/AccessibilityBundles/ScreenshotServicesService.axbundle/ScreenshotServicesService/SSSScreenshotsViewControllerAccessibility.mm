@interface SSSScreenshotsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityAnnotateItems;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityPostLayoutChangeIfNecessary;
- (void)_configureBarsIfNecessary;
- (void)_updateAnnotationButtonAccessibilityTraits;
- (void)annotationButtonPressed;
@end

@implementation SSSScreenshotsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SSSScreenshotsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceMethod:@"_configureBarsIfNecessary" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceMethod:@"annotationButtonPressed" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceVariable:@"_annotationModeEnabled" withType:"BOOL"];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceVariable:@"_annotationEnabledButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceVariable:@"_undoItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceVariable:@"_redoItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceVariable:@"_doneItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SSSScreenshotsViewController" hasInstanceVariable:@"_closeItem" withType:"UIBarButtonItem"];
}

- (void)_configureBarsIfNecessary
{
  v3.receiver = self;
  v3.super_class = SSSScreenshotsViewControllerAccessibility;
  [(SSSScreenshotsViewControllerAccessibility *)&v3 _configureBarsIfNecessary];
  [(SSSScreenshotsViewControllerAccessibility *)self _accessibilityAnnotateItems];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SSSScreenshotsViewControllerAccessibility;
  [(SSSScreenshotsViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SSSScreenshotsViewControllerAccessibility *)self _accessibilityAnnotateItems];
  [(SSSScreenshotsViewControllerAccessibility *)self _accessibilityPostLayoutChangeIfNecessary];
}

- (void)_accessibilityAnnotateItems
{
  v3 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"_undoItem"];
  v4 = accessibilityLocalizedString(@"undo.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"_redoItem"];
  v6 = accessibilityLocalizedString(@"redo.button");
  [v5 setAccessibilityLabel:v6];

  v7 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"_doneItem"];
  v8 = accessibilityLocalizedString(@"done.button");
  [v7 setAccessibilityLabel:v8];

  v9 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"_closeItem"];
  v10 = accessibilityLocalizedString(@"close.button");
  [v9 setAccessibilityLabel:v10];

  v11 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"_annotationEnabledButton"];
  v12 = accessibilityLocalizedString(@"annotation.button");
  [v11 setAccessibilityLabel:v12];

  [(SSSScreenshotsViewControllerAccessibility *)self _updateAnnotationButtonAccessibilityTraits];
}

- (void)annotationButtonPressed
{
  v3.receiver = self;
  v3.super_class = SSSScreenshotsViewControllerAccessibility;
  [(SSSScreenshotsViewControllerAccessibility *)&v3 annotationButtonPressed];
  [(SSSScreenshotsViewControllerAccessibility *)self _updateAnnotationButtonAccessibilityTraits];
}

- (void)_updateAnnotationButtonAccessibilityTraits
{
  v3 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"_annotationEnabledButton"];
  accessibilityTraits = [v3 accessibilityTraits];

  v5 = [(SSSScreenshotsViewControllerAccessibility *)self safeBoolForKey:@"_annotationModeEnabled"];
  v6 = accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    v7 = accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  }

  v8 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"_annotationEnabledButton"];
  [v8 setAccessibilityTraits:v7];
}

- (void)_accessibilityPostLayoutChangeIfNecessary
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if ([v3 _appearState] == 2 && !-[SSSScreenshotsViewControllerAccessibility _axDidPostNotification](self, "_axDidPostNotification"))
  {
    v4 = [(SSSScreenshotsViewControllerAccessibility *)self safeIntegerForKey:@"state"];

    if (!v4)
    {
      v5 = *MEMORY[0x29EDC7ED8];
      v6 = [(SSSScreenshotsViewControllerAccessibility *)self safeValueForKey:@"view"];
      UIAccessibilityPostNotification(v5, v6);

      [(SSSScreenshotsViewControllerAccessibility *)self _axSetDidPostNotification:1];
    }
  }

  else
  {
  }
}

@end
@interface NTKCFaceDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetHeaderInteractableElements;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NTKCFaceDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailViewController" hasInstanceVariable:@"_currentSections" withType:"NSMutableArray"];
  [v3 validateClass:@"NTKCFaceDetailComplicationSectionController"];
  [v3 validateClass:@"NTKCFaceDetailViewController" hasInstanceMethod:@"tableView: didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"NTKCFaceDetailViewController" hasInstanceVariable:@"_addButton" withType:"UIButton"];
  [v3 validateClass:@"NTKCFaceDetailViewController" hasInstanceVariable:@"_faceName" withType:"UILabel"];
  [v3 validateClass:@"NTKCFaceDetailViewController" hasInstanceVariable:@"_headerView" withType:"_NTKCDetailHeaderView"];
  [v3 validateClass:@"_NTKCDetailHeaderView"];
  [v3 validateClass:@"_NTKCDetailHeaderView" hasInstanceMethod:@"interactableSubviews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_NTKCDetailHeaderView" hasInstanceMethod:@"setInteractableSubviews:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailViewControllerAccessibility;
  [(NTKCFaceDetailViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(NTKCFaceDetailViewControllerAccessibility *)self _axSetHeaderInteractableElements];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailViewControllerAccessibility;
  [(NTKCFaceDetailViewControllerAccessibility *)&v3 viewDidLoad];
  [(NTKCFaceDetailViewControllerAccessibility *)self _axSetHeaderInteractableElements];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = NTKCFaceDetailViewControllerAccessibility;
  [(NTKCFaceDetailViewControllerAccessibility *)&v19 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [v7 section];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  AXPerformSafeBlock();
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = [(NTKCFaceDetailViewControllerAccessibility *)self safeIntegerForKey:@"_selectedComplicationIndex"];
  AXSafeClassFromString();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    AXSafeClassFromString();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [NSIndexPath indexPathForRow:v10 + 1 inSection:v8];
      v12 = [v6 cellForRowAtIndexPath:v11];

      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v12);
    }
  }
}

void __79__NTKCFaceDetailViewControllerAccessibility_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeArrayForKey:@"_currentSections"];
  v2 = [v5 objectAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_axSetHeaderInteractableElements
{
  v9 = [(NTKCFaceDetailViewControllerAccessibility *)self safeValueForKey:@"_headerView"];
  v3 = [v9 safeArrayForKey:@"interactableSubviews"];
  if (v3)
  {
    v4 = [(NTKCFaceDetailViewControllerAccessibility *)self safeValueForKey:@"_addButton"];
    if ([v3 containsObject:v4])
    {
      v5 = [(NTKCFaceDetailViewControllerAccessibility *)self safeValueForKey:@"_faceName"];
      v6 = [v3 containsObject:v5];

      if (v6)
      {
        goto LABEL_6;
      }

      v4 = [(NTKCFaceDetailViewControllerAccessibility *)self safeValueForKey:@"_faceName"];
      v7 = [(NTKCFaceDetailViewControllerAccessibility *)self safeValueForKey:@"_addButton"];
      v8 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v4, v7];
      [v9 setInteractableSubviews:v8];
    }
  }

LABEL_6:
}

@end
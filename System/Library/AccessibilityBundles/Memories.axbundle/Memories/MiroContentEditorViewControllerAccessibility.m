@interface MiroContentEditorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)clipCollection:(id)a3 didSnapToIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MiroContentEditorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroContentEditorViewController" hasInstanceMethod:@"topToolbar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroContentEditorViewController" hasInstanceMethod:@"timelineViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroContentEditorViewController" hasInstanceMethod:@"editorViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroContentEditorViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"MiroContentEditorViewController" hasInstanceMethod:@"bottomToolbar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroEditorClipCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"MiroTimelineClipCollectionViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"MiroContentEditorViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MiroContentEditorViewController" hasInstanceMethod:@"clipCollection: didSnapToIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"MiroTimelineClipCollectionViewController" hasInstanceMethod:@"snapToIndexPath: animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = MiroContentEditorViewControllerAccessibility;
  [(MiroContentEditorViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(MiroContentEditorViewControllerAccessibility *)self safeValueForKeyPath:@"topToolbar"];
  v4 = [(MiroContentEditorViewControllerAccessibility *)self safeValueForKeyPath:@"timelineViewController.view"];
  objc_opt_class();
  v5 = [(MiroContentEditorViewControllerAccessibility *)self safeValueForKeyPath:@"editorViewController.collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 accessibilitySetIdentification:@"AccessibilityMiroUICollectionView"];
  v7 = [(MiroContentEditorViewControllerAccessibility *)self safeValueForKeyPath:@"bottomToolbar"];
  objc_opt_class();
  v8 = [(MiroContentEditorViewControllerAccessibility *)self safeValueForKey:@"view"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v3, v6, v4, v7}];
  [v9 setAccessibilityElements:v10];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MiroContentEditorViewControllerAccessibility;
  [(MiroContentEditorViewControllerAccessibility *)&v3 viewDidLoad];
  [(MiroContentEditorViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)clipCollection:(id)a3 didSnapToIndexPath:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MiroContentEditorViewControllerAccessibility;
  v7 = a3;
  [(MiroContentEditorViewControllerAccessibility *)&v10 clipCollection:v7 didSnapToIndexPath:v6];
  v8 = [(MiroContentEditorViewControllerAccessibility *)self safeValueForKey:@"editorViewController"];

  if (v8 == v7)
  {
    v9 = v6;
    AXPerformSafeBlock();
  }
}

void __82__MiroContentEditorViewControllerAccessibility_clipCollection_didSnapToIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"timelineViewController"];
  [v2 snapToIndexPath:*(a1 + 40) animated:1];
}

@end
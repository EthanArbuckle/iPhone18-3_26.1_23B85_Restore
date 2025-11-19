@interface MiroTimelineClipCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MiroTimelineClipCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroEditorFlowLayout"];
  [v3 validateClass:@"MiroTimelineClipCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"MiroEditorFlowLayout" hasInstanceMethod:@"snappedIndexPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroTimelineClipCollectionViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MiroTimelineClipCollectionViewController" hasInstanceMethod:@"collectionView: didSelectItemAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10[1] = *MEMORY[0x29EDCA608];
  v9.receiver = self;
  v9.super_class = MiroTimelineClipCollectionViewControllerAccessibility;
  [(MiroTimelineClipCollectionViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(MiroTimelineClipCollectionViewControllerAccessibility *)self _axMiroPhotoScrubber];

  if (!v3)
  {
    v4 = [[AXMiroPhotoScrubber alloc] initWithAccessibilityContainer:self];
    [(MiroTimelineClipCollectionViewControllerAccessibility *)self _setAXMiroPhotoScrubber:v4];
    objc_opt_class();
    v5 = [(MiroTimelineClipCollectionViewControllerAccessibility *)self safeValueForKey:@"view"];
    v6 = __UIAccessibilityCastAsClass();

    v10[0] = v4;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
    [v6 setAccessibilityElements:v7];
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MiroTimelineClipCollectionViewControllerAccessibility;
  [(MiroTimelineClipCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(MiroTimelineClipCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
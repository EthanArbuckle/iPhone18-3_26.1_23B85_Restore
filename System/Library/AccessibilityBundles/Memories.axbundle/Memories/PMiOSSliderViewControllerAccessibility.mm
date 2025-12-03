@interface PMiOSSliderViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetMemoriesEditSliderType:(int64_t)type;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setSelectedItem:(int64_t)item;
- (void)viewDidLayoutSubviews;
@end

@implementation PMiOSSliderViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PMiOSSliderViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"PMiOSSliderViewController" hasInstanceMethod:@"selectedItem" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PMiOSSliderViewController" hasInstanceMethod:@"provider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PMiOSSliderViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PMiOSSliderViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PMiOSSliderViewController" hasInstanceMethod:@"setSelectedItem:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"PMiOSSliderViewController" hasInstanceMethod:@"scrollViewWillBeginDragging:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PMiOSSliderViewController" hasInstanceMethod:@"scrollViewDidEndDragging: willDecelerate:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"PMiOSSliderViewController" hasInstanceMethod:@"_setFontStyleForCell: highlighted:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateProtocol:@"PMSliderProviderProtocol" hasRequiredInstanceMethod:@"displayNameForIndex:"];
}

- (void)_axSetMemoriesEditSliderType:(int64_t)type
{
  [(PMiOSSliderViewControllerAccessibility *)self _setAXMemoriesEditSliderType:?];
  _axMemoriesMoodSlider = [(PMiOSSliderViewControllerAccessibility *)self _axMemoriesMoodSlider];
  [_axMemoriesMoodSlider setSliderType:type];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PMiOSSliderViewControllerAccessibility;
  [(PMiOSSliderViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(PMiOSSliderViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = PMiOSSliderViewControllerAccessibility;
  [(PMiOSSliderViewControllerAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  [(PMiOSSliderViewControllerAccessibility *)self _setAXDraggingSlider:0];
  _axMemoriesMoodSlider = [(PMiOSSliderViewControllerAccessibility *)self _axMemoriesMoodSlider];
  if (!_axMemoriesMoodSlider)
  {
    _axMemoriesMoodSlider = [[AXMemoriesSlider alloc] initWithAccessibilityContainer:self];
    [(PMiOSSliderViewControllerAccessibility *)self safeIntegerForKey:@"selectedItem"];
    [(AXMemoriesSlider *)_axMemoriesMoodSlider setSliderType:[(PMiOSSliderViewControllerAccessibility *)self _axMemoriesEditSliderType]];
    v4 = [(PMiOSSliderViewControllerAccessibility *)self safeValueForKey:@"provider"];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v10 = MEMORY[0x29EDCA5F8];
    v5 = v4;
    AXPerformSafeBlock();
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
    [(AXMemoriesSlider *)_axMemoriesMoodSlider setSelectedDescription:v6];

    [(PMiOSSliderViewControllerAccessibility *)self _setAXMemoriesMoodSlider:_axMemoriesMoodSlider];
    LOBYTE(v11) = 0;
    objc_opt_class();
    v7 = [(PMiOSSliderViewControllerAccessibility *)self safeValueForKey:@"view"];
    v8 = __UIAccessibilityCastAsClass();

    if (v11 == 1)
    {
      abort();
    }

    v9 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, _axMemoriesMoodSlider, v10, 3221225472, __84__PMiOSSliderViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke, &unk_29F2D0C18}];
    [v8 setAccessibilityElements:v9];
  }
}

uint64_t __84__PMiOSSliderViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayNameForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)setSelectedItem:(int64_t)item
{
  v14.receiver = self;
  v14.super_class = PMiOSSliderViewControllerAccessibility;
  [(PMiOSSliderViewControllerAccessibility *)&v14 setSelectedItem:item];
  _axMemoriesMoodSlider = [(PMiOSSliderViewControllerAccessibility *)self _axMemoriesMoodSlider];
  if (_axMemoriesMoodSlider)
  {
    v5 = [(PMiOSSliderViewControllerAccessibility *)self safeValueForKey:@"provider"];
    [(PMiOSSliderViewControllerAccessibility *)self safeIntegerForKey:@"selectedItem"];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    v7 = v5;
    AXPerformSafeBlock();
    v6 = v9[5];

    _Block_object_dispose(&v8, 8);
    [_axMemoriesMoodSlider setSelectedDescription:v6];
  }
}

uint64_t __58__PMiOSSliderViewControllerAccessibility_setSelectedItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayNameForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4.receiver = self;
  v4.super_class = PMiOSSliderViewControllerAccessibility;
  [(PMiOSSliderViewControllerAccessibility *)&v4 scrollViewWillBeginDragging:dragging];
  [(PMiOSSliderViewControllerAccessibility *)self _setAXDraggingSlider:1];
}

uint64_t __75__PMiOSSliderViewControllerAccessibility__setFontStyleForCell_highlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayNameForIndex:{objc_msgSend(*(a1 + 40), "item")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end
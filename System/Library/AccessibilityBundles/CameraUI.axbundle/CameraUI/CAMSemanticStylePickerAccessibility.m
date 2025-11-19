@interface CAMSemanticStylePickerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (id)_axAnnouncementValue;
- (id)_axSemanticStyle;
- (unint64_t)accessibilityTraits;
- (void)_axChangeValueInDirection:(int64_t)a3;
@end

@implementation CAMSemanticStylePickerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMViewfinderViewController"];
  [v3 validateClass:@"CAMViewfinderViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_semanticStyleForPreview" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMSemanticStylePicker" hasInstanceMethod:@"numberOfStyles" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CAMSemanticStylePicker" hasInstanceMethod:@"selectedStyleIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CAMSemanticStyle" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMSemanticStylePicker" hasInstanceMethod:@"_setSelectedStyleIndex:shouldDelegate:shouldUpdateLayout:animated:" withFullSignature:{"v", "Q", "B", "B", "B", 0}];
  [v3 validateClass:@"CAMSemanticStylePicker" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMSemanticStyleSettingsView"];
  [v3 validateClass:@"CAMSemanticStyleSettingsView" hasInstanceMethod:@"_semanticStyleDetailView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMSemanticStyleDetailView" hasInstanceMethod:@"semanticStyle" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMSemanticStylePickerAccessibility;
  return *MEMORY[0x29EDC7F60] | [(CAMSemanticStylePickerAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v3 = a3 - 1;
  if ((a3 - 1) <= 1)
  {
    [(CAMSemanticStylePickerAccessibility *)self _axChangeValueInDirection:?];
    v5 = [(CAMSemanticStylePickerAccessibility *)self _axAnnouncementValue];
    UIAccessibilitySpeak();
  }

  return v3 < 2;
}

- (id)_axAnnouncementValue
{
  v3 = [(CAMSemanticStylePickerAccessibility *)self _axSemanticStyle];
  v4 = [v3 safeStringForKey:@"displayName"];
  v5 = [(CAMSemanticStylePickerAccessibility *)self safeValueForKey:@"pageControl"];
  v8 = [v5 accessibilityValue];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_axChangeValueInDirection:(int64_t)a3
{
  [(CAMSemanticStylePickerAccessibility *)self safeUnsignedIntegerForKey:@"numberOfStyles"];
  [(CAMSemanticStylePickerAccessibility *)self safeUnsignedIntegerForKey:@"selectedStyleIndex"];
  AXPerformSafeBlock();
}

- (id)_axSemanticStyle
{
  v3 = [(CAMSemanticStylePickerAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_4 startWithSelf:1];
  v4 = [v3 _accessibilityViewController];
  v5 = [v4 safeValueForKey:@"_semanticStyleForPreview"];

  if (!v5)
  {
    v6 = [(CAMSemanticStylePickerAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMSemanticStyleSettingsView")];
    v7 = [v6 safeValueForKey:@"_semanticStyleDetailView"];
    v5 = [v7 safeValueForKey:@"semanticStyle"];
  }

  return v5;
}

uint64_t __55__CAMSemanticStylePickerAccessibility__axSemanticStyle__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end
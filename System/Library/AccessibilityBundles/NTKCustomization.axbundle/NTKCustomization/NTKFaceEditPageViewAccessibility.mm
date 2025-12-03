@interface NTKFaceEditPageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)layoutSubviews;
- (void)removeAllKeylines;
@end

@implementation NTKFaceEditPageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKFaceEditPageView" hasInstanceVariable:@"_addColorsView" withType:"_NTKAddColorsView"];
  [validationsCopy validateClass:@"NTKFaceEditPageView" hasInstanceVariable:@"_keylineContainers" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"NTKFaceEditPageView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKFaceEditPageView" hasInstanceMethod:@"addKeyline:forKey:tappable:" withFullSignature:{"v", "@", "@", "B", 0}];
  [validationsCopy validateClass:@"NTKFaceEditPageView" hasInstanceMethod:@"removeAllKeylines" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v3 = [(NTKFaceEditPageViewAccessibility *)self safeUIViewForKey:@"_addColorsView"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v11 = v3;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v5 = [(NTKFaceEditPageViewAccessibility *)self _accessibilityValueForKey:kUIAccessibilityStorageKeyChildren];

    if (!v5)
    {
      v6 = [(NTKFaceEditPageViewAccessibility *)self safeDictionaryForKey:@"_keylineContainers"];
      if ([v6 count])
      {
        allValues = [v6 allValues];
        v8 = [allValues sortedArrayUsingSelector:"accessibilityCompareGeometry:"];

        [(NTKFaceEditPageViewAccessibility *)self _accessibilitySetRetainedValue:v8 forKey:kUIAccessibilityStorageKeyChildren];
      }
    }

    v4 = [(NTKFaceEditPageViewAccessibility *)self _accessibilityValueForKey:kUIAccessibilityStorageKeyChildren];
  }

  v9 = v4;

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKFaceEditPageViewAccessibility;
  [(NTKFaceEditPageViewAccessibility *)&v3 layoutSubviews];
  [(NTKFaceEditPageViewAccessibility *)self _axClearCachedElements];
}

- (void)removeAllKeylines
{
  v3.receiver = self;
  v3.super_class = NTKFaceEditPageViewAccessibility;
  [(NTKFaceEditPageViewAccessibility *)&v3 removeAllKeylines];
  [(NTKFaceEditPageViewAccessibility *)self _axClearCachedElements];
}

@end
@interface _NTKCCFacesCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityRoleDescription;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation _NTKCCFacesCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKCCFacesCollectionCell" hasInstanceMethod:@"active" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_NTKCCFacesCollectionCell" hasInstanceMethod:@"faceView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceMethod:@"face" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_NTKCCFacesCollectionCell" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(_NTKCCFacesCollectionCellAccessibility *)self safeBoolForKey:@"active"];
  objc_opt_class();
  v4 = [(_NTKCCFacesCollectionCellAccessibility *)self safeValueForKey:@"name"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [(_NTKCCFacesCollectionCellAccessibility *)self safeValueForKey:@"faceView"];
  v7 = [v6 safeValueForKey:@"delegate"];
  v8 = [v7 safeValueForKey:@"face"];
  v9 = __UIAccessibilityCastAsSafeCategory();

  v10 = [v9 _accessibilityFaceEditOptionsDescription];
  v11 = __UIAXStringForVariables();

  if (v3)
  {
    v14 = accessibilityLocalizedCustomizationString(@"myfaces.face.is.active");
    v12 = __UIAXStringForVariables();
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(_NTKCCFacesCollectionCellAccessibility *)self pointInside:v7 withEvent:x, y])
  {
    v8 = self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _NTKCCFacesCollectionCellAccessibility;
    v8 = [(_NTKCCFacesCollectionCellAccessibility *)&v11 _accessibilityHitTest:v7 withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (id)accessibilityValue
{
  v2 = [(_NTKCCFacesCollectionCellAccessibility *)self safeValueForKey:@"faceView"];
  v3 = [v2 safeValueForKey:@"delegate"];
  v4 = [v3 safeValueForKey:@"face"];

  v5 = AXNTKFaceComplicationOverviewDescription(v4);

  return v5;
}

- (id)_accessibilityRoleDescription
{
  v3 = [(_NTKCCFacesCollectionCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  [v3 numberOfItemsInSection:0];
  v4 = [v3 indexPathForCell:self];
  [v4 item];

  v5 = accessibilityLocalizedCustomizationString(@"watch.face.role");
  v6 = accessibilityLocalizedCustomizationString(@"watch.x.of.x");
  v7 = AXFormatInteger();
  v8 = AXFormatInteger();
  v11 = [NSString stringWithFormat:v6, v7, v8];
  v9 = __UIAXStringForVariables();

  return v9;
}

@end
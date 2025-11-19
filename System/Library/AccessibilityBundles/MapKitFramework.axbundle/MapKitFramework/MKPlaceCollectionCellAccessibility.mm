@interface MKPlaceCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MKPlaceCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"collectionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"savedView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"savedCollectionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKPlaceCollectionViewModel" hasInstanceMethod:@"placeCollection" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MKPlaceCollectionCellAccessibility *)self safeValueForKey:@"item"];
  v4 = [v3 safeValueForKey:@"placeCollection"];
  v5 = AXPublisherDescriptionForCollection(v4);

  v6 = [(MKPlaceCollectionCellAccessibility *)self safeValueForKey:@"collectionLabel"];
  v7 = [v6 accessibilityLabel];

  v8 = [(MKPlaceCollectionCellAccessibility *)self safeUIViewForKey:@"savedView"];
  if ([v8 isHidden])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(MKPlaceCollectionCellAccessibility *)self safeValueForKey:@"savedCollectionLabel"];
    v9 = [v10 accessibilityLabel];
  }

  v11 = __UIAXStringForVariables();

  return v11;
}

@end
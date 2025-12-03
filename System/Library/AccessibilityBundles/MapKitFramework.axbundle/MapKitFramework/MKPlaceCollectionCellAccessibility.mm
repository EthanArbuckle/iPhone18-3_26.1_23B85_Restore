@interface MKPlaceCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MKPlaceCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"collectionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"savedView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"savedCollectionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKPlaceCollectionCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKPlaceCollectionViewModel" hasInstanceMethod:@"placeCollection" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MKPlaceCollectionCellAccessibility *)self safeValueForKey:@"item"];
  v4 = [v3 safeValueForKey:@"placeCollection"];
  v5 = AXPublisherDescriptionForCollection(v4);

  v6 = [(MKPlaceCollectionCellAccessibility *)self safeValueForKey:@"collectionLabel"];
  accessibilityLabel = [v6 accessibilityLabel];

  v8 = [(MKPlaceCollectionCellAccessibility *)self safeUIViewForKey:@"savedView"];
  if ([v8 isHidden])
  {
    accessibilityLabel2 = 0;
  }

  else
  {
    v10 = [(MKPlaceCollectionCellAccessibility *)self safeValueForKey:@"savedCollectionLabel"];
    accessibilityLabel2 = [v10 accessibilityLabel];
  }

  v11 = __UIAXStringForVariables();

  return v11;
}

@end
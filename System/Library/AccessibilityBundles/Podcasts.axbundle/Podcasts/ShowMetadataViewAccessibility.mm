@interface ShowMetadataViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)ratingFormatter;
@end

@implementation ShowMetadataViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ShowMetadataView" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ShowMetadataView" hasSwiftField:@"rating" withSwiftType:"Float"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ShowMetadataView" hasSwiftField:@"numberFormatter" withSwiftType:"NSNumberFormatter"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ShowMetadataView" hasSwiftField:@"explicit" withSwiftType:"Bool"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ShowMetadataViewAccessibility *)self safeSwiftValueForKey:@"label"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];
  [(ShowMetadataViewAccessibility *)self safeSwiftFloatForKey:@"rating"];
  v7 = v6;
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"stars.count");
  v10 = [v8 stringWithFormat:v9, (roundf(v7 * 10.0) / 10.0)];

  v11 = [(ShowMetadataViewAccessibility *)self safeSwiftIntForKey:@"numberOfRatings"];
  v12 = v11 + 50 - (v11 + 50) % 0x64u;
  if (v11 < 1000)
  {
    v12 = v11;
  }

  if (v11 >= 10000)
  {
    v13 = 1000 * ((v11 + 500) / 0x3E8uLL);
  }

  else
  {
    v13 = v12;
  }

  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityLocalizedString(@"ratings.count");
  v16 = [v14 stringWithFormat:v15, v13];

  v17 = [text componentsSeparatedByString:@"·"];
  v18 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithObjects:{v10, v16, 0}];
  if ([v17 count])
  {
    v19 = [v17 subarrayWithRange:{1, objc_msgSend(v17, "count") - 1}];
    [v18 axSafelyAddObjectsFromArray:v19];
  }

  if ([(ShowMetadataViewAccessibility *)self safeSwiftBoolForKey:@"explicit"])
  {
    v20 = accessibilityLocalizedString(@"explicit");
    [v18 axSafelyAddObject:v20];
  }

  v21 = [v18 componentsJoinedByString:{@", "}];

  return v21;
}

- (id)ratingFormatter
{
  v2 = objc_alloc_init(MEMORY[0x29EDBA078]);
  [v2 setNumberStyle:1];

  return v2;
}

@end
@interface PKSearchSuggestionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKSearchSuggestionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSearchSuggestionCollectionViewCell" hasInstanceVariable:@"_labelSuggestion" withType:"UILabel"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSearchSuggestionCollectionViewCell" hasInstanceVariable:@"_imageViewIcon" withType:"UIImageView"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(PKSearchSuggestionCollectionViewCellAccessibility *)self safeValueForKey:@"_imageViewIcon"];
  v4 = __UIAccessibilityCastAsClass();

  image = [v4 image];
  imageAsset = [image imageAsset];
  v7 = [imageAsset safeStringForKey:@"assetName"];

  v8 = [(PKSearchSuggestionCollectionViewCellAccessibility *)self safeValueForKey:@"_labelSuggestion"];
  accessibilityLabel = [v8 accessibilityLabel];
  v10 = [v7 isEqualToString:@"mappin.and.ellipse"];
  if (v10)
  {
    v11 = accessibilityLocalizedString(@"map.search.result");
  }

  else
  {
    v11 = 0;
  }

  if (([v7 isEqualToString:@"magnifyingglass"] & 1) == 0)
  {
    v12 = __UIAXStringForVariables();
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = accessibilityLocalizedString(@"search.result");
  v12 = __UIAXStringForVariables();

  if (v10)
  {
LABEL_8:
  }

LABEL_9:

  return v12;
}

@end
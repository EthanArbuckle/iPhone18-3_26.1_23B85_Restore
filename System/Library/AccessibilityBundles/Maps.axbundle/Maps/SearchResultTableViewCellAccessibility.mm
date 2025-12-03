@interface SearchResultTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axRatingDescription;
- (id)accessibilityLabel;
@end

@implementation SearchResultTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceVariable:@"_secondLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceVariable:@"_secondPartLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceVariable:@"_thirdLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceVariable:@"_contextualInformationLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceVariable:@"_mapItem" withType:"MKMapItem"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceVariable:@"_transitInfoLabel" withType:"MKTransitInfoLabelView"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceMethod:@"ratingsAttributedString" withFullSignature:{"@", 0}];
}

- (id)_axRatingDescription
{
  v2 = [(SearchResultTableViewCellAccessibility *)self safeValueForKey:@"_mapItem"];
  v3 = __UIAccessibilitySafeClass();

  LODWORD(v2) = [v3 _hasUserRatingScore];
  [v3 _normalizedUserRatingScore];
  if (v2)
  {
    v14 = UIAXStarRatingStringForRating();
    v15 = @"__AXStringForVariablesSentinel";
    v4 = __UIAXStringForVariables();
  }

  else
  {
    v4 = 0;
  }

  _reviewsAttribution = [v3 _reviewsAttribution];
  providerName = [_reviewsAttribution providerName];

  _sampleSizeForUserRatingScore = [v3 _sampleSizeForUserRatingScore];
  v8 = [providerName length];
  v9 = MEMORY[0x29EDBA0F8];
  if (v8)
  {
    v10 = AXMapsLocString(@"REVIEWS_COUNT_WITH_PROVIDER_FORMAT");
    [v9 localizedStringWithFormat:v10, _sampleSizeForUserRatingScore, providerName];
  }

  else
  {
    v10 = AXMapsLocString(@"REVIEWS_COUNT_FORMAT");
    [v9 localizedStringWithFormat:v10, _sampleSizeForUserRatingScore, v16];
  }
  v11 = ;

  v12 = __AXStringForVariables();

  return v12;
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(SearchResultTableViewCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v5 = [(SearchResultTableViewCellAccessibility *)self safeUIViewForKey:@"_secondLabel"];
  v6 = [(SearchResultTableViewCellAccessibility *)self safeUIViewForKey:@"_secondPartLabel"];
  v7 = [(SearchResultTableViewCellAccessibility *)self safeUIViewForKey:@"_thirdLabel"];
  v8 = [(SearchResultTableViewCellAccessibility *)self safeUIViewForKey:@"_transitInfoLabel"];
  v9 = [(SearchResultTableViewCellAccessibility *)self safeUIViewForKey:@"_contextualInformationLabel"];
  v10 = [v3 axArrayByIgnoringNilElementsWithCount:{6, v4, v5, v6, v7, v8, v9}];

  objc_opt_class();
  v11 = [(SearchResultTableViewCellAccessibility *)self safeValueForKey:@"ratingsAttributedString"];
  v12 = __UIAccessibilityCastAsClass();

  string = [v12 string];

  v26 = 0;
  objc_opt_class();
  v14 = [(SearchResultTableViewCellAccessibility *)self safeValueForKey:@"_mapItem"];
  v15 = __UIAccessibilityCastAsClass();

  _priceRangeString = [v15 _priceRangeString];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __60__SearchResultTableViewCellAccessibility_accessibilityLabel__block_invoke;
  v22[3] = &unk_29F2CC6C0;
  v23 = string;
  selfCopy = self;
  v25 = _priceRangeString;
  v17 = _priceRangeString;
  v18 = string;
  v19 = [v10 ax_flatMappedArrayUsingBlock:v22];
  v20 = MEMORY[0x29C2DCCF0]();

  return v20;
}

id __60__SearchResultTableViewCellAccessibility_accessibilityLabel__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = [v4 text];
    if ([a1[4] length])
    {
      v6 = [v5 rangeOfString:a1[4]];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v6;
        v9 = v7;
        v10 = [a1[5] _axRatingDescription];
        v11 = [v5 stringByReplacingCharactersInRange:v8 withString:{v9, v10}];

        v5 = v11;
      }
    }

    if ([a1[6] length])
    {
      v12 = [v5 rangeOfString:a1[6]];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v12;
        v15 = v13;
        v16 = a1[6];
        v17 = UIAXPriceRangeDescription();
        v18 = [v5 stringByReplacingCharactersInRange:v14 withString:{v15, v17}];

        v5 = v18;
      }
    }

    v19 = AXStringByReplacingMiddleDots(v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end
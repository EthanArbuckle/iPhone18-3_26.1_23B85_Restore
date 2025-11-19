@interface SUUIItemBrowseTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SUUIItemBrowseTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIItemBrowseTableViewCell" hasInstanceMethod:@"layout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemBrowseCellLayout" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemBrowseCellLayout" hasInstanceMethod:@"numberOfUserRatings" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SUUIItemBrowseCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemBrowseCellLayout" hasInstanceMethod:@"indexNumberString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemBrowseCellLayout" hasInstanceVariable:@"_userRating" withType:"d"];
}

- (id)accessibilityLabel
{
  v2 = [(SUUIItemBrowseTableViewCellAccessibility *)self safeValueForKey:@"layout"];
  v3 = [v2 safeValueForKey:@"title"];
  v4 = [v2 safeValueForKey:@"_userRating"];
  [v4 floatValue];

  v5 = [v2 safeValueForKey:@"category"];
  v6 = [v2 safeIntegerForKey:@"numberOfUserRatings"];
  v7 = MEMORY[0x29EDBA0F8];
  v8 = accessibilityLocalizedString(@"USER_RATING_COUNT");
  v9 = [v7 localizedStringWithFormat:v8, v6];

  v10 = [v2 safeValueForKey:@"indexNumberString"];
  v13 = UIAXStarRatingStringForRating();
  v11 = __UIAXStringForVariables();

  return v11;
}

@end
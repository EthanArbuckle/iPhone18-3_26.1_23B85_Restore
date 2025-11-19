@interface UGCRatingCategoryLikeDislikeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupSubviews;
@end

@implementation UGCRatingCategoryLikeDislikeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UGCRatingCategoryLikeDislikeView" hasInstanceVariable:@"_likeButton" withType:"UGCGlyphButtonView"];
  [v3 validateClass:@"UGCRatingCategoryLikeDislikeView" hasInstanceVariable:@"_dislikeButton" withType:"UGCGlyphButtonView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = UGCRatingCategoryLikeDislikeViewAccessibility;
  [(UGCRatingCategoryLikeDislikeViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(UGCRatingCategoryLikeDislikeViewAccessibility *)self safeUIViewForKey:@"_likeButton"];
  v4 = AXMapsLocString(@"LIKE");
  [v3 setAccessibilityLabel:v4];

  v5 = *MEMORY[0x29EDC7F70];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v6 = [(UGCRatingCategoryLikeDislikeViewAccessibility *)self safeUIViewForKey:@"_dislikeButton"];
  v7 = AXMapsLocString(@"DISLIKE");
  [v6 setAccessibilityLabel:v7];

  [v6 setAccessibilityTraits:v5];
}

- (void)_setupSubviews
{
  v3.receiver = self;
  v3.super_class = UGCRatingCategoryLikeDislikeViewAccessibility;
  [(UGCRatingCategoryLikeDislikeViewAccessibility *)&v3 _setupSubviews];
  [(UGCRatingCategoryLikeDislikeViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
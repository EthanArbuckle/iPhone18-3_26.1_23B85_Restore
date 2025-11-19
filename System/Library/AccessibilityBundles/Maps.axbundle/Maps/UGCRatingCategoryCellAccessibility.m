@interface UGCRatingCategoryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UGCRatingCategoryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UGCRatingCategoryCell" hasInstanceMethod:@"likeDislikeViewDidSelectDislike:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UGCRatingCategoryCell" hasInstanceMethod:@"likeDislikeViewDidSelectLike:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UGCRatingCategoryCell" hasInstanceMethod:@"_updateState:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"UGCRatingCategoryCell" hasInstanceMethod:@"currentState" withFullSignature:{"q", 0}];
  [v3 validateClass:@"UGCRatingCategoryCell" hasInstanceVariable:@"_categoryView" withType:"MUAppleRatingRowView"];
  [v3 validateClass:@"MUAppleRatingRowView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"MUAppleRatingRowView" hasInstanceVariable:@"_subtitleLabel" withType:"UIView<MULabelViewProtocol>"];
}

- (id)accessibilityLabel
{
  v2 = [(UGCRatingCategoryCellAccessibility *)self safeValueForKey:@"_categoryView"];
  v3 = [v2 safeValueForKey:@"_titleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [v2 safeValueForKey:@"_subtitleLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __AXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  v2 = [(UGCRatingCategoryCellAccessibility *)self safeIntForKey:@"currentState"];
  if (v2 > 2)
  {
    v3 = &stru_2A21E4020;
  }

  else
  {
    v3 = AXMapsLocString(off_29F2CC568[v2]);
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v20[2] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = AXMapsLocString(@"LIKE");
  v5 = [v3 initWithName:v4 target:self selector:sel_likeDislikeViewDidSelectLike_];

  v6 = objc_alloc(MEMORY[0x29EDC78E0]);
  v7 = AXMapsLocString(@"DISLIKE");
  v8 = [v6 initWithName:v7 target:self selector:sel_likeDislikeViewDidSelectDislike_];

  v9 = objc_alloc(MEMORY[0x29EDC78E0]);
  v10 = AXMapsLocString(@"CLEAR_RATING");
  v11 = [v9 initWithName:v10 target:self selector:sel__axClearRating];

  v12 = [(UGCRatingCategoryCellAccessibility *)self safeIntForKey:@"currentState"];
  switch(v12)
  {
    case 2:
      v18 = v8;
      v13 = &v18;
      goto LABEL_7;
    case 1:
      v19 = v5;
      v13 = &v19;
LABEL_7:
      v14 = v11;
      goto LABEL_8;
    case 0:
      v20[0] = v5;
      v13 = v20;
      v14 = v8;
LABEL_8:
      v13[1] = v14;
      v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:? count:?];
      goto LABEL_10;
  }

  v15 = MEMORY[0x29EDB8E90];
LABEL_10:

  v16 = *MEMORY[0x29EDCA608];

  return v15;
}

@end
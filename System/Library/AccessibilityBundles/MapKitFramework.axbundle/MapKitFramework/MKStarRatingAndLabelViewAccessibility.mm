@interface MKStarRatingAndLabelViewAccessibility
+ (id)ratingAndReviewsAsAttributedString:(double)a3 style:(int64_t)a4 font:(id)a5 numberOfReviews:(unint64_t)a6 textColor:(id)a7 theme:(id)a8;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MKStarRatingAndLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKStarRatingAndLabelView" hasClassMethod:@"starRatingAndProviderAsAttributedStringForMapItem: textColor: font: showReviewsOrTips: showNumberOfReviews: ratingStyle: theme:" withFullSignature:{"@", "@", "@", "@", "B", "B", "q", "@", 0}];
  [v3 validateClass:@"MKStarRatingAndLabelView" hasClassMethod:@"ratingAndReviewsAsAttributedString: style: font: numberOfReviews: textColor:theme:" withFullSignature:{"@", "d", "q", "@", "Q", "@", "@", 0}];
  [v3 validateClass:@"MKStarRatingView"];
}

+ (id)ratingAndReviewsAsAttributedString:(double)a3 style:(int64_t)a4 font:(id)a5 numberOfReviews:(unint64_t)a6 textColor:(id)a7 theme:(id)a8
{
  v21[1] = *MEMORY[0x29EDCA608];
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS___MKStarRatingAndLabelViewAccessibility;
  v9 = objc_msgSendSuper2(&v19, sel_ratingAndReviewsAsAttributedString_style_font_numberOfReviews_textColor_theme_, a4, a5, a6, a7, a8);
  v10 = [v9 mutableCopy];
  v11 = UIAXStarRatingStringForRating();
  v12 = MEMORY[0x29EDBA0F8];
  v13 = AXMapsLocString(@"REVIEWS_COUNT_FORMAT");
  v18 = [v12 localizedStringWithFormat:v13, a6];
  v14 = __AXStringForVariables();

  v20 = *MEMORY[0x29EDBDA20];
  v21[0] = v14;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v21 forKeys:&v20 count:{1, v18, @"__AXStringForVariablesSentinel"}];
  [v10 addAttributes:v15 range:{0, objc_msgSend(v10, "length")}];

  v16 = *MEMORY[0x29EDCA608];

  return v10;
}

@end
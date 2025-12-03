@interface MKStarRatingAndLabelViewAccessibility
+ (id)ratingAndReviewsAsAttributedString:(double)string style:(int64_t)style font:(id)font numberOfReviews:(unint64_t)reviews textColor:(id)color theme:(id)theme;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MKStarRatingAndLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKStarRatingAndLabelView" hasClassMethod:@"starRatingAndProviderAsAttributedStringForMapItem: textColor: font: showReviewsOrTips: showNumberOfReviews: ratingStyle: theme:" withFullSignature:{"@", "@", "@", "@", "B", "B", "q", "@", 0}];
  [validationsCopy validateClass:@"MKStarRatingAndLabelView" hasClassMethod:@"ratingAndReviewsAsAttributedString: style: font: numberOfReviews: textColor:theme:" withFullSignature:{"@", "d", "q", "@", "Q", "@", "@", 0}];
  [validationsCopy validateClass:@"MKStarRatingView"];
}

+ (id)ratingAndReviewsAsAttributedString:(double)string style:(int64_t)style font:(id)font numberOfReviews:(unint64_t)reviews textColor:(id)color theme:(id)theme
{
  v21[1] = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___MKStarRatingAndLabelViewAccessibility;
  v9 = objc_msgSendSuper2(&v19, sel_ratingAndReviewsAsAttributedString_style_font_numberOfReviews_textColor_theme_, style, font, reviews, color, theme);
  v10 = [v9 mutableCopy];
  v11 = UIAXStarRatingStringForRating();
  v12 = MEMORY[0x29EDBA0F8];
  v13 = AXMapsLocString(@"REVIEWS_COUNT_FORMAT");
  reviews = [v12 localizedStringWithFormat:v13, reviews];
  v14 = __AXStringForVariables();

  v20 = *MEMORY[0x29EDBDA20];
  v21[0] = v14;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v21 forKeys:&v20 count:{1, reviews, @"__AXStringForVariablesSentinel"}];
  [v10 addAttributes:v15 range:{0, objc_msgSend(v10, "length")}];

  v16 = *MEMORY[0x29EDCA608];

  return v10;
}

@end
@interface SKUIProductPageReviewsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setFacebookLikeStatus:(id)status;
@end

@implementation SKUIProductPageReviewsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIProductPageReviewsViewController" hasInstanceMethod:@"setFacebookLikeStatus:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SKUIProductPageReviewsViewController" hasInstanceVariable:@"_headerViewController" withType:"SKUIProductPageHeaderViewController"];
  [validationsCopy validateClass:@"SKUIReviewsFacebookViewController" hasInstanceVariable:@"_facebookLikeStatus" withType:"SKUIFacebookLikeStatus"];
  [validationsCopy validateClass:@"SKUIProductPageReviewsViewController" hasInstanceVariable:@"_facebookViewController" withType:"SKUIReviewsFacebookViewController"];
  [validationsCopy validateClass:@"SKUIFacebookLikeStatus" hasInstanceMethod:@"friendNames" withFullSignature:{"@", 0}];
}

- (void)setFacebookLikeStatus:(id)status
{
  statusCopy = status;
  v13.receiver = self;
  v13.super_class = SKUIProductPageReviewsViewControllerAccessibility;
  [(SKUIProductPageReviewsViewControllerAccessibility *)&v13 setFacebookLikeStatus:statusCopy];
  v5 = [(SKUIProductPageReviewsViewControllerAccessibility *)self safeValueForKey:@"_facebookViewController"];
  v6 = [v5 safeValueForKey:@"_facebookLikeStatus"];
  v7 = [v6 safeValueForKey:@"friendNames"];
  v8 = [v7 count];

  v9 = [(SKUIProductPageReviewsViewControllerAccessibility *)self safeValueForKey:@"_headerViewController"];
  v10 = [v9 safeValueForKey:@"view"];
  v11 = __UIAccessibilitySafeClass();

  v12 = [MEMORY[0x29EDBA070] numberWithInteger:v8];
  [v11 _accessibilitySetRetainedValue:v12 forKey:@"facebookCount"];
}

@end
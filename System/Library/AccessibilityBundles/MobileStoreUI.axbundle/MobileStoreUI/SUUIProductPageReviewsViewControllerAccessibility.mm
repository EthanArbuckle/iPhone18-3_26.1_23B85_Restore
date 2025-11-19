@interface SUUIProductPageReviewsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setFacebookLikeStatus:(id)a3;
@end

@implementation SUUIProductPageReviewsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIProductPageReviewsViewController" hasInstanceMethod:@"setFacebookLikeStatus:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SUUIProductPageReviewsViewController" hasInstanceVariable:@"_headerViewController" withType:"SUUIProductPageHeaderViewController"];
  [v3 validateClass:@"SUUIReviewsFacebookViewController" hasInstanceVariable:@"_facebookLikeStatus" withType:"SUUIFacebookLikeStatus"];
  [v3 validateClass:@"SUUIProductPageReviewsViewController" hasInstanceVariable:@"_facebookViewController" withType:"SUUIReviewsFacebookViewController"];
  [v3 validateClass:@"SUUIFacebookLikeStatus" hasInstanceMethod:@"friendNames" withFullSignature:{"@", 0}];
}

- (void)setFacebookLikeStatus:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUUIProductPageReviewsViewControllerAccessibility;
  [(SUUIProductPageReviewsViewControllerAccessibility *)&v13 setFacebookLikeStatus:v4];
  v5 = [(SUUIProductPageReviewsViewControllerAccessibility *)self safeValueForKey:@"_facebookViewController"];
  v6 = [v5 safeValueForKey:@"_facebookLikeStatus"];
  v7 = [v6 safeValueForKey:@"friendNames"];
  v8 = [v7 count];

  v9 = [(SUUIProductPageReviewsViewControllerAccessibility *)self safeValueForKey:@"_headerViewController"];
  v10 = [v9 safeValueForKey:@"view"];
  v11 = __UIAccessibilitySafeClass();

  v12 = [MEMORY[0x29EDBA070] numberWithInteger:v8];
  [v11 _accessibilitySetRetainedValue:v12 forKey:@"facebookCount"];
}

@end
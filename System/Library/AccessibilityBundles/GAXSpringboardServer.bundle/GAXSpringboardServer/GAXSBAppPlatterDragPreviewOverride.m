@interface GAXSBAppPlatterDragPreviewOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (GAXSBAppPlatterDragPreviewOverride)initWithReferenceIconView:(id)a3 sourceView:(id)a4;
@end

@implementation GAXSBAppPlatterDragPreviewOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBAppPlatterDragPreview" hasInstanceMethod:@"initWithReferenceIconView:sourceView:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
}

- (GAXSBAppPlatterDragPreviewOverride)initWithReferenceIconView:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  objc_opt_class();
  v8 = [v6 safeValueForKey:@"icon"];
  v9 = __UIAccessibilityCastAsSafeCategory();

  [v9 _gaxSetNeedsLaunchEnabledAppearance:1];
  v12.receiver = self;
  v12.super_class = GAXSBAppPlatterDragPreviewOverride;
  v10 = [(GAXSBAppPlatterDragPreviewOverride *)&v12 initWithReferenceIconView:v6 sourceView:v7];
  [v9 _gaxSetNeedsLaunchEnabledAppearance:0];

  return v10;
}

@end
@interface GAXSBAppPlatterDragPreviewOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (GAXSBAppPlatterDragPreviewOverride)initWithReferenceIconView:(id)view sourceView:(id)sourceView;
@end

@implementation GAXSBAppPlatterDragPreviewOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBAppPlatterDragPreview" hasInstanceMethod:@"initWithReferenceIconView:sourceView:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
}

- (GAXSBAppPlatterDragPreviewOverride)initWithReferenceIconView:(id)view sourceView:(id)sourceView
{
  viewCopy = view;
  sourceViewCopy = sourceView;
  v13 = 0;
  objc_opt_class();
  v8 = [viewCopy safeValueForKey:@"icon"];
  v9 = __UIAccessibilityCastAsSafeCategory();

  [v9 _gaxSetNeedsLaunchEnabledAppearance:1];
  v12.receiver = self;
  v12.super_class = GAXSBAppPlatterDragPreviewOverride;
  v10 = [(GAXSBAppPlatterDragPreviewOverride *)&v12 initWithReferenceIconView:viewCopy sourceView:sourceViewCopy];
  [v9 _gaxSetNeedsLaunchEnabledAppearance:0];

  return v10;
}

@end
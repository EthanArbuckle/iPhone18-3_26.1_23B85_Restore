@interface NTKFaceViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)configureWithDuration:(double)duration block:(id)block;
- (void)faceViewWantsCustomKeylineFramesReloadedForEditMode:(int64_t)mode;
@end

@implementation NTKFaceViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceMethod:@"configureWithDuration: block:" withFullSignature:{"v", "d", "@?", 0}];
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceMethod:@"enumerateComplicationControllersAndDisplaysWithBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceVariable:@"_editView" withType:"NTKFaceEditView"];
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceVariable:@"_faceView" withType:"NTKFaceView"];
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceMethod:@"faceViewWantsCustomKeylineFramesReloadedForEditMode:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"_NTKKeylineImageView"];
  [validationsCopy validateClass:@"NTKComplication" hasInstanceMethod:@"localizedKeylineLabelText" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = NTKFaceViewControllerAccessibility;
  [(NTKFaceViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)configureWithDuration:(double)duration block:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKFaceViewControllerAccessibility;
  [(NTKFaceViewControllerAccessibility *)&v5 configureWithDuration:block block:duration];
  [(NTKFaceViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)faceViewWantsCustomKeylineFramesReloadedForEditMode:(int64_t)mode
{
  v3.receiver = self;
  v3.super_class = NTKFaceViewControllerAccessibility;
  [(NTKFaceViewControllerAccessibility *)&v3 faceViewWantsCustomKeylineFramesReloadedForEditMode:mode];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

@end
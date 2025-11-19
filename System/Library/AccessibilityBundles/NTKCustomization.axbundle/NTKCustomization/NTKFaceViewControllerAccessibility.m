@interface NTKFaceViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)configureWithDuration:(double)a3 block:(id)a4;
- (void)faceViewWantsCustomKeylineFramesReloadedForEditMode:(int64_t)a3;
@end

@implementation NTKFaceViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKFaceViewController" hasInstanceMethod:@"configureWithDuration: block:" withFullSignature:{"v", "d", "@?", 0}];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceMethod:@"enumerateComplicationControllersAndDisplaysWithBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceVariable:@"_editView" withType:"NTKFaceEditView"];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceVariable:@"_faceView" withType:"NTKFaceView"];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceMethod:@"faceViewWantsCustomKeylineFramesReloadedForEditMode:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"_NTKKeylineImageView"];
  [v3 validateClass:@"NTKComplication" hasInstanceMethod:@"localizedKeylineLabelText" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = NTKFaceViewControllerAccessibility;
  [(NTKFaceViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)configureWithDuration:(double)a3 block:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKFaceViewControllerAccessibility;
  [(NTKFaceViewControllerAccessibility *)&v5 configureWithDuration:a4 block:a3];
  [(NTKFaceViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)faceViewWantsCustomKeylineFramesReloadedForEditMode:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = NTKFaceViewControllerAccessibility;
  [(NTKFaceViewControllerAccessibility *)&v3 faceViewWantsCustomKeylineFramesReloadedForEditMode:a3];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

@end
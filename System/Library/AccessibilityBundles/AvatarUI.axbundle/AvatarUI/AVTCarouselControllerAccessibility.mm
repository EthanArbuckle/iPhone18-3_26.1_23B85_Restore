@interface AVTCarouselControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)presentEditorForCreatingAvatar:(id)avatar;
@end

@implementation AVTCarouselControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTCarouselController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVTCarouselController" hasInstanceMethod:@"presentEditorForCreatingAvatar:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = AVTCarouselControllerAccessibility;
  [(AVTCarouselControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = AVTCarouselControllerAccessibility;
  [(AVTCarouselControllerAccessibility *)&v3 loadView];
  [(AVTCarouselControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)presentEditorForCreatingAvatar:(id)avatar
{
  v3.receiver = self;
  v3.super_class = AVTCarouselControllerAccessibility;
  [(AVTCarouselControllerAccessibility *)&v3 presentEditorForCreatingAvatar:avatar];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end
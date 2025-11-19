@interface AVTCarouselControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)presentEditorForCreatingAvatar:(id)a3;
@end

@implementation AVTCarouselControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTCarouselController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVTCarouselController" hasInstanceMethod:@"presentEditorForCreatingAvatar:" withFullSignature:{"v", "@", 0}];
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

- (void)presentEditorForCreatingAvatar:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVTCarouselControllerAccessibility;
  [(AVTCarouselControllerAccessibility *)&v3 presentEditorForCreatingAvatar:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end
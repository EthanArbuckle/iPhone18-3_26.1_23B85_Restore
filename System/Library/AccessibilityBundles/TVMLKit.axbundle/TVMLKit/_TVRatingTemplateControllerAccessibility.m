@interface _TVRatingTemplateControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation _TVRatingTemplateControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = _TVRatingTemplateControllerAccessibility;
  [(_TVRatingTemplateControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVRatingTemplateControllerAccessibility *)self safeValueForKey:@"_titleView"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _TVRatingTemplateControllerAccessibility;
  [(_TVRatingTemplateControllerAccessibility *)&v3 viewDidLoad];
  [(_TVRatingTemplateControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
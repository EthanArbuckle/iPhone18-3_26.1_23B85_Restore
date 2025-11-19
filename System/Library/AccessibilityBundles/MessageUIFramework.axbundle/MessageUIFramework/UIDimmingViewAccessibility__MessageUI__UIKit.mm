@interface UIDimmingViewAccessibility__MessageUI__UIKit
- (id)passthroughViews;
@end

@implementation UIDimmingViewAccessibility__MessageUI__UIKit

- (id)passthroughViews
{
  v8.receiver = self;
  v8.super_class = UIDimmingViewAccessibility__MessageUI__UIKit;
  v3 = [(UIDimmingViewAccessibility__MessageUI__UIKit *)&v8 passthroughViews];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [(UIDimmingViewAccessibility__MessageUI__UIKit *)self safeValueForKey:@"superview"];
    v5 = [v4 _accessibilityFindSubviewDescendant:&__block_literal_global_3];

    if (v5)
    {
      v6 = [v3 arrayByAddingObject:v5];

      v3 = v6;
    }
  }

  return v3;
}

@end
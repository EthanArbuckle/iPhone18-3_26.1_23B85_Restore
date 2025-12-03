@interface UIImageAccessibility__MapKit__UIKit
+ (id)_mapkit_imageNamed:(id)named;
@end

@implementation UIImageAccessibility__MapKit__UIKit

+ (id)_mapkit_imageNamed:(id)named
{
  namedCopy = named;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___UIImageAccessibility__MapKit__UIKit;
  v5 = objc_msgSendSuper2(&v12, sel__mapkit_imageNamed_, namedCopy);
  v6 = [namedCopy isEqualToString:@"playpause"];
  v7 = MEMORY[0x29EDC7FD0];
  if (v6)
  {
    v8 = AXMapKitLocString(@"play.pause.button.image.label");
    [v5 setAccessibilityLabel:v8];

    [v5 setAccessibilityTraits:*v7];
  }

  else if ([namedCopy hasPrefix:@"apple-pay"])
  {
    v9 = AXMapKitLocString(@"APPLE_PAY");
    [v5 setAccessibilityLabel:v9];
  }

  if ([namedCopy isEqualToString:@"gamecontroller_xbutton"])
  {
    v10 = AXMapKitLocString(@"x.button.image.label");
    [v5 setAccessibilityLabel:v10];

    [v5 setAccessibilityTraits:*v7];
  }

  return v5;
}

@end
@interface MPAVRoutingControllerAccessibility
+ (id)_iconImageForRoute:(id)route;
@end

@implementation MPAVRoutingControllerAccessibility

+ (id)_iconImageForRoute:(id)route
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___MPAVRoutingControllerAccessibility;
  routeCopy = route;
  v4 = objc_msgSendSuper2(&v7, sel__iconImageForRoute_, routeCopy);
  v5 = AXLabelForMediaRoute(routeCopy);

  [v4 setAccessibilityLabel:{v5, v7.receiver, v7.super_class}];

  return v4;
}

@end
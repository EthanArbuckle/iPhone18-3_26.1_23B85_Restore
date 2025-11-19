@interface MPAVRoutingControllerAccessibility
+ (id)_iconImageForRoute:(id)a3;
@end

@implementation MPAVRoutingControllerAccessibility

+ (id)_iconImageForRoute:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___MPAVRoutingControllerAccessibility;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v7, sel__iconImageForRoute_, v3);
  v5 = AXLabelForMediaRoute(v3);

  [v4 setAccessibilityLabel:{v5, v7.receiver, v7.super_class}];

  return v4;
}

@end
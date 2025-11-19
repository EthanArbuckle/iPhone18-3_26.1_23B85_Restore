@interface LiveActivitiesHostingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation LiveActivitiesHostingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TtGC9AirDropUI31LiveActivitiesHostingControllerVS_14AirDropPlatter_" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
}

@end
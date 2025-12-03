@interface LiveActivitiesHostingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation LiveActivitiesHostingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TtGC9AirDropUI31LiveActivitiesHostingControllerVS_14AirDropPlatter_" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
}

@end
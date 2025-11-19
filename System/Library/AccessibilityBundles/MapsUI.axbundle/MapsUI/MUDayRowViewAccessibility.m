@interface MUDayRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MUDayRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUDayRowView" hasInstanceVariable:@"_headerLabel" withType:"UIView<MULabelViewProtocol>"];
  [v3 validateClass:@"MUDayRowView" hasInstanceVariable:@"_dayLabel" withType:"UIView<MULabelViewProtocol>"];
  [v3 validateClass:@"MUDayRowView" hasInstanceVariable:@"_hoursLabel" withType:"UIView<MULabelViewProtocol>"];
}

@end
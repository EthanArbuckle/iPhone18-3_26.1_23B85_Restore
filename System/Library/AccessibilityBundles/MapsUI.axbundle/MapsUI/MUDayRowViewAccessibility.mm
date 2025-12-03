@interface MUDayRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MUDayRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUDayRowView" hasInstanceVariable:@"_headerLabel" withType:"UIView<MULabelViewProtocol>"];
  [validationsCopy validateClass:@"MUDayRowView" hasInstanceVariable:@"_dayLabel" withType:"UIView<MULabelViewProtocol>"];
  [validationsCopy validateClass:@"MUDayRowView" hasInstanceVariable:@"_hoursLabel" withType:"UIView<MULabelViewProtocol>"];
}

@end
@interface HistoryButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)showHistoryFrom:(id)from;
@end

@implementation HistoryButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.HistoryView"];
  [validationsCopy validateClass:@"Measure.HistoryButton" hasInstanceMethod:@"showHistoryFrom:" withFullSignature:{"v", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HistoryButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HistoryButtonAccessibility *)&v3 accessibilityTraits];
}

- (void)showHistoryFrom:(id)from
{
  v4.receiver = self;
  v4.super_class = HistoryButtonAccessibility;
  [(HistoryButtonAccessibility *)&v4 showHistoryFrom:from];
  v3 = MEMORY[0x29C2DD610](@"Measure.HistoryView");
  AXMeasureDidPotentiallyShowCardViewWithAncestorClass(v3);
}

@end
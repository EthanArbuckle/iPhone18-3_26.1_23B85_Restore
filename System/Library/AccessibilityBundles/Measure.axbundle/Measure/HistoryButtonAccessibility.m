@interface HistoryButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)showHistoryFrom:(id)a3;
@end

@implementation HistoryButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.HistoryView"];
  [v3 validateClass:@"Measure.HistoryButton" hasInstanceMethod:@"showHistoryFrom:" withFullSignature:{"v", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HistoryButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HistoryButtonAccessibility *)&v3 accessibilityTraits];
}

- (void)showHistoryFrom:(id)a3
{
  v4.receiver = self;
  v4.super_class = HistoryButtonAccessibility;
  [(HistoryButtonAccessibility *)&v4 showHistoryFrom:a3];
  v3 = MEMORY[0x29C2DD610](@"Measure.HistoryView");
  AXMeasureDidPotentiallyShowCardViewWithAncestorClass(v3);
}

@end
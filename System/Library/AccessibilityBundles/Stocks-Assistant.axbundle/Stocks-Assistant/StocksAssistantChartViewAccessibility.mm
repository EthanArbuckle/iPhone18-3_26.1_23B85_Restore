@interface StocksAssistantChartViewAccessibility
- (id)accessibilityElements;
@end

@implementation StocksAssistantChartViewAccessibility

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(StocksAssistantChartViewAccessibility *)self safeValueForKey:@"_graph"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end
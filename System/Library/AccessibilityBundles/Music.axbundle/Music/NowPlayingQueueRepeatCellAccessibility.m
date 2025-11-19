@interface NowPlayingQueueRepeatCellAccessibility
- (id)accessibilityLabel;
@end

@implementation NowPlayingQueueRepeatCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(NowPlayingQueueRepeatCellAccessibility *)self safeSwiftStringForKey:@"text"];
  v3 = __AXStringForVariables();

  return v3;
}

@end
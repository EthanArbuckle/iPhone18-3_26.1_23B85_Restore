@interface NowPlayingQueueCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NowPlayingQueueCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.NowPlayingQueueCell" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"MusicApplication.NowPlayingQueueCell" hasSwiftField:@"subtitle" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"MusicApplication.NowPlayingQueueCell" hasSwiftField:@"explicitBadgeLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"MusicApplication.NowPlayingQueueCell" hasSwiftField:@"isExplicit" withSwiftType:"Bool"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(NowPlayingQueueCellAccessibility *)self safeSwiftValueForKey:@"explicitBadgeLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(NowPlayingQueueCellAccessibility *)self safeSwiftStringForKey:@"title"];
  v6 = [(NowPlayingQueueCellAccessibility *)self safeSwiftStringForKey:@"subtitle"];
  if (([(NowPlayingQueueCellAccessibility *)self safeSwiftBoolForKey:@"isExplicit"]& 1) != 0)
  {
    v9 = [v4 accessibilityLabel];
    v7 = __AXStringForVariables();
  }

  else
  {
    v7 = __AXStringForVariables();
  }

  return v7;
}

@end
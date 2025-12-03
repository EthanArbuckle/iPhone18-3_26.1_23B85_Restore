@interface NowPlayingQueueCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NowPlayingQueueCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.NowPlayingQueueCell" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"Music.NowPlayingQueueCell" hasSwiftField:@"subtitle" withSwiftType:"Optional<AttributedString>"];
  [validationsCopy validateClass:@"Music.NowPlayingQueueCell" hasSwiftField:@"explicitBadgeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"Music.NowPlayingQueueCell" hasSwiftField:@"isExplicit" withSwiftType:"Bool"];
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
    accessibilityLabel = [v4 accessibilityLabel];
    v7 = __AXStringForVariables();
  }

  else
  {
    v7 = __AXStringForVariables();
  }

  return v7;
}

@end
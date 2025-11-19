@interface EKDayOccurrenceView_QSExtras
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityQuickSpeakContent;
@end

@implementation EKDayOccurrenceView_QSExtras

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"occurrence" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKEvent" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)_accessibilityQuickSpeakContent
{
  v2 = [(EKDayOccurrenceView_QSExtras *)self safeValueForKey:@"occurrence"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end
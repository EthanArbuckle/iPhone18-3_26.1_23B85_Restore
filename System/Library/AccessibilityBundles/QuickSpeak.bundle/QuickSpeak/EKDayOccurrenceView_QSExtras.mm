@interface EKDayOccurrenceView_QSExtras
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityQuickSpeakContent;
@end

@implementation EKDayOccurrenceView_QSExtras

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"occurrence" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKEvent" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)_accessibilityQuickSpeakContent
{
  v2 = [(EKDayOccurrenceView_QSExtras *)self safeValueForKey:@"occurrence"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end
@interface NSDateComponentsFormatter
+ (id)hoursMinutesSecondsStringWithInterval:(double)interval forAccessibility:(BOOL)accessibility;
@end

@implementation NSDateComponentsFormatter

+ (id)hoursMinutesSecondsStringWithInterval:(double)interval forAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  v6 = objc_alloc_init(NSDateComponentsFormatter);
  [v6 setAllowedUnits:224];
  if (accessibilityCopy)
  {
    [v6 setZeroFormattingBehavior:14];
    [v6 setUnitsStyle:3];
  }

  else
  {
    [v6 setZeroFormattingBehavior:0];
    [v6 setZeroFormattingBehavior:0];
  }

  v7 = [v6 stringFromTimeInterval:interval];

  return v7;
}

@end
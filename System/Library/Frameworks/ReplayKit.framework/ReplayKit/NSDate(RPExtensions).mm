@interface NSDate(RPExtensions)
+ (id)_srGetStringFromDate:()RPExtensions;
@end

@implementation NSDate(RPExtensions)

+ (id)_srGetStringFromDate:()RPExtensions
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setLocalizedDateFormatFromTemplate:@"MMMM d hh:mm a"];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"..."];
  [v5 setTimeZone:v6];

  v7 = [v5 stringFromDate:v4];

  return v7;
}

@end
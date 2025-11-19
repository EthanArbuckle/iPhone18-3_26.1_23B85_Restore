@interface NSUserDefaults
+ (id)__maps_groupUserDefaults;
@end

@implementation NSUserDefaults

+ (id)__maps_groupUserDefaults
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Maps"];

  return v2;
}

@end
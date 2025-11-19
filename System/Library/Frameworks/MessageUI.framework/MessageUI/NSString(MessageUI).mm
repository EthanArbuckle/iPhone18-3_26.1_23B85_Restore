@interface NSString(MessageUI)
- (uint64_t)ef_repeatedStringTimes:()MessageUI;
@end

@implementation NSString(MessageUI)

- (uint64_t)ef_repeatedStringTimes:()MessageUI
{
  v4 = [a1 length] * a3;

  return [&stru_1F3CF3758 stringByPaddingToLength:v4 withString:a1 startingAtIndex:0];
}

@end
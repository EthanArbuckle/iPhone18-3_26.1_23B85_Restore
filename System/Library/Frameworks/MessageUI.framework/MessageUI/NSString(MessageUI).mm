@interface NSString(MessageUI)
- (uint64_t)ef_repeatedStringTimes:()MessageUI;
@end

@implementation NSString(MessageUI)

- (uint64_t)ef_repeatedStringTimes:()MessageUI
{
  v4 = [self length] * a3;

  return [&stru_1F3CF3758 stringByPaddingToLength:v4 withString:self startingAtIndex:0];
}

@end
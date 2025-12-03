@interface NSMutableString(AppleMediaServices)
- (void)ams_appendNullableString:()AppleMediaServices;
@end

@implementation NSMutableString(AppleMediaServices)

- (void)ams_appendNullableString:()AppleMediaServices
{
  if (a3)
  {
    return [self appendString:?];
  }

  return self;
}

@end
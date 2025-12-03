@interface NSError
- (BOOL)isFBAErrorWithCode:(int64_t)code;
@end

@implementation NSError

- (BOOL)isFBAErrorWithCode:(int64_t)code
{
  if ([(NSError *)self code]!= code)
  {
    return 0;
  }

  domain = [(NSError *)self domain];
  v5 = [domain isEqualToString:@"com.apple.appleseed.FeedbackAssistant"];

  return v5;
}

@end
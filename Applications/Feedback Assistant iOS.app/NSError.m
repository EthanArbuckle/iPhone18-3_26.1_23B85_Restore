@interface NSError
- (BOOL)isFBAErrorWithCode:(int64_t)a3;
@end

@implementation NSError

- (BOOL)isFBAErrorWithCode:(int64_t)a3
{
  if ([(NSError *)self code]!= a3)
  {
    return 0;
  }

  v4 = [(NSError *)self domain];
  v5 = [v4 isEqualToString:@"com.apple.appleseed.FeedbackAssistant"];

  return v5;
}

@end
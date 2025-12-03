@interface NSMutableDictionary(NSURLExtras)
- (void)_web_setBool:()NSURLExtras forKey:;
- (void)_web_setInt:()NSURLExtras forKey:;
@end

@implementation NSMutableDictionary(NSURLExtras)

- (void)_web_setInt:()NSURLExtras forKey:
{
  v6 = [[NSNumber alloc] initWithInt:a3];
  [self setObject:v6 forKey:a4];
}

- (void)_web_setBool:()NSURLExtras forKey:
{
  v6 = [[NSNumber alloc] initWithBool:a3];
  [self setObject:v6 forKey:a4];
}

@end
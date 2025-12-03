@interface _JSAWindowManagerKeyWindowHosting
- (CGSize)windowHostingWindowSize;
@end

@implementation _JSAWindowManagerKeyWindowHosting

- (CGSize)windowHostingWindowSize
{
  v2 = +[JSABridge sharedInstance];
  windowManager = [v2 windowManager];
  [windowManager keyWindowSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end
@interface RSAppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation RSAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];

  v8 = [v6 initWithName:@"Default Configuration" sessionRole:role];
  [v8 setDelegateClass:objc_opt_class()];

  return v8;
}

@end
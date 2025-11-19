@interface InputUIAppDelegate
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation InputUIAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [UISceneConfiguration alloc];
  v7 = [v5 role];

  v8 = [v6 initWithName:@"Default Configuration" sessionRole:v7];

  return v8;
}

@end
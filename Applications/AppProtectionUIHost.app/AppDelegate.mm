@interface AppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  configuration = [sessionCopy configuration];
  name = [configuration name];
  v9 = name;
  if (name)
  {
    v10 = name;
  }

  else
  {
    v10 = @"Default Configuration";
  }

  role = [sessionCopy role];

  v12 = [v6 initWithName:v10 sessionRole:role];

  return v12;
}

@end
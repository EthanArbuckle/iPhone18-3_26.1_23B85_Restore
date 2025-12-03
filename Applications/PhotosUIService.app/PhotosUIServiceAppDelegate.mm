@interface PhotosUIServiceAppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation PhotosUIServiceAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];

  v8 = [v6 initWithName:0 sessionRole:role];

  return v8;
}

@end
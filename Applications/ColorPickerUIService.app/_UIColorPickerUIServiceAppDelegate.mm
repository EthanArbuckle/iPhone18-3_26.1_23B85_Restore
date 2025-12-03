@interface _UIColorPickerUIServiceAppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation _UIColorPickerUIServiceAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v9 = _UISceneSessionRoleSceneHosting;
  v10 = [role isEqualToString:_UISceneSessionRoleSceneHosting];

  if (v10)
  {
    v11 = [[UISceneConfiguration alloc] initWithName:0 sessionRole:v9];
    [v11 setDelegateClass:objc_opt_class()];
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    role2 = [sessionCopy role];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIColorPickerUIServiceAppDelegate.m" lineNumber:23 description:{@"%@ is not a supported scene type. This app was probably launched manually (ie: from the home screen) which is not a supported operation.", role2}];

    v11 = 0;
  }

  return v11;
}

@end
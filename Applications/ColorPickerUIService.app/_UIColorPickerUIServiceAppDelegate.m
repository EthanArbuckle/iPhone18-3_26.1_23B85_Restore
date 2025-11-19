@interface _UIColorPickerUIServiceAppDelegate
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation _UIColorPickerUIServiceAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = [v7 role];
  v9 = _UISceneSessionRoleSceneHosting;
  v10 = [v8 isEqualToString:_UISceneSessionRoleSceneHosting];

  if (v10)
  {
    v11 = [[UISceneConfiguration alloc] initWithName:0 sessionRole:v9];
    [v11 setDelegateClass:objc_opt_class()];
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    v13 = [v7 role];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIColorPickerUIServiceAppDelegate.m" lineNumber:23 description:{@"%@ is not a supported scene type. This app was probably launched manually (ie: from the home screen) which is not a supported operation.", v13}];

    v11 = 0;
  }

  return v11;
}

@end
@interface UIScene
- (BOOL)isCarScene;
@end

@implementation UIScene

- (BOOL)isCarScene
{
  session = [(UIScene *)self session];
  role = [session role];
  v4 = [role isEqualToString:_UIWindowSceneSessionRoleCarPlay];

  return v4;
}

@end
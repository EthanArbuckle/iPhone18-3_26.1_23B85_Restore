@interface UIScene
- (BOOL)isCarScene;
@end

@implementation UIScene

- (BOOL)isCarScene
{
  v2 = [(UIScene *)self session];
  v3 = [v2 role];
  v4 = [v3 isEqualToString:_UIWindowSceneSessionRoleCarPlay];

  return v4;
}

@end
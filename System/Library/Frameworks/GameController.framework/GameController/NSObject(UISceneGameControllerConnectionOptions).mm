@interface NSObject(UISceneGameControllerConnectionOptions)
- (id)gameControllerActivationContext;
@end

@implementation NSObject(UISceneGameControllerConnectionOptions)

- (id)gameControllerActivationContext
{
  if (LoadGameControllerUIFramework(1) == 1)
  {
    v2 = [a1 gameControllerActivationContext];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end
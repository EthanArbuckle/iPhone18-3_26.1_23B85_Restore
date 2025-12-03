@interface NSObject(UISceneGameControllerConnectionOptions)
- (id)gameControllerActivationContext;
@end

@implementation NSObject(UISceneGameControllerConnectionOptions)

- (id)gameControllerActivationContext
{
  if (LoadGameControllerUIFramework(1) == 1)
  {
    gameControllerActivationContext = [self gameControllerActivationContext];
  }

  else
  {
    gameControllerActivationContext = 0;
  }

  return gameControllerActivationContext;
}

@end
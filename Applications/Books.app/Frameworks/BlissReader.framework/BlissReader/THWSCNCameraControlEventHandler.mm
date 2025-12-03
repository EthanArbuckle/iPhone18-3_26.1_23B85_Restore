@interface THWSCNCameraControlEventHandler
- (THWSCNCameraControlEventHandler)initWithSceneController:(id)controller;
@end

@implementation THWSCNCameraControlEventHandler

- (THWSCNCameraControlEventHandler)initWithSceneController:(id)controller
{
  v7.receiver = self;
  v7.super_class = THWSCNCameraControlEventHandler;
  v4 = [(THWSCNCameraControlEventHandler *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWSCNCameraControlEventHandler *)v4 setSceneController:controller];
  }

  return v5;
}

@end
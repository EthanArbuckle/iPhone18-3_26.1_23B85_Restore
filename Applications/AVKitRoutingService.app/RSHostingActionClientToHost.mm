@interface RSHostingActionClientToHost
+ (id)actionForNewSize:(CGSize)size;
- (void)performActionForSceneController:(id)controller;
@end

@implementation RSHostingActionClientToHost

+ (id)actionForNewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc_init(BSMutableSettings);
  [v6 setObject:&off_10007C638 forSetting:0];
  height = [NSValue valueWithCGSize:width, height];
  [v6 setObject:height forSetting:1];

  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  info = [(RSHostingActionClientToHost *)self info];
  v6 = [info objectForSetting:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [controllerCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      if ([v6 integerValue])
      {
LABEL_7:

        goto LABEL_8;
      }

      info2 = [(RSHostingActionClientToHost *)self info];
      v9 = [info2 objectForSetting:1];

      [v9 CGSizeValue];
      [delegate didSizeChange:?];
    }

    else
    {
      v9 = +[NSAssertionHandler currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"RSHostingActionClientToHost.m" lineNumber:53 description:{@"Scene controller's delegate (%@) does not conform to _TSBrowserClientToHostActionHandling", objc_opt_class()}];
    }

    goto LABEL_7;
  }

LABEL_8:
}

@end
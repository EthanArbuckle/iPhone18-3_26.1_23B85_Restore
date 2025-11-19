@interface RSHostingActionClientToHost
+ (id)actionForNewSize:(CGSize)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation RSHostingActionClientToHost

+ (id)actionForNewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc_init(BSMutableSettings);
  [v6 setObject:&off_10007C638 forSetting:0];
  v7 = [NSValue valueWithCGSize:width, height];
  [v6 setObject:v7 forSetting:1];

  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

- (void)performActionForSceneController:(id)a3
{
  v10 = a3;
  v5 = [(RSHostingActionClientToHost *)self info];
  v6 = [v5 objectForSetting:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 delegate];
    if (objc_opt_respondsToSelector())
    {
      if ([v6 integerValue])
      {
LABEL_7:

        goto LABEL_8;
      }

      v8 = [(RSHostingActionClientToHost *)self info];
      v9 = [v8 objectForSetting:1];

      [v9 CGSizeValue];
      [v7 didSizeChange:?];
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
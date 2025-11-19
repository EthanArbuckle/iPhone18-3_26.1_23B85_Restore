@interface UIViewController
- (id)tui_effectiveSyncLayoutController;
@end

@implementation UIViewController

- (id)tui_effectiveSyncLayoutController
{
  v2 = self;
  if (v2)
  {
    while (1)
    {
      v3 = TUIProtocolCast(&OBJC_PROTOCOL___TUISyncLayoutControllerHosting, v2);
      v4 = [v3 syncLayoutController];

      if (v4)
      {
        break;
      }

      v5 = [(UIViewController *)v2 parentViewController];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = [(UIViewController *)v2 presentingViewController];
      }

      v8 = v7;

      v2 = v8;
      if (!v8)
      {
        v4 = 0;
        v2 = 0;
        break;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
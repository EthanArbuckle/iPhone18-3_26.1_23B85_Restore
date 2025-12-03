@interface UIViewController
- (id)tui_effectiveSyncLayoutController;
@end

@implementation UIViewController

- (id)tui_effectiveSyncLayoutController
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      v3 = TUIProtocolCast(&OBJC_PROTOCOL___TUISyncLayoutControllerHosting, selfCopy);
      syncLayoutController = [v3 syncLayoutController];

      if (syncLayoutController)
      {
        break;
      }

      parentViewController = [(UIViewController *)selfCopy parentViewController];
      v6 = parentViewController;
      if (parentViewController)
      {
        presentingViewController = parentViewController;
      }

      else
      {
        presentingViewController = [(UIViewController *)selfCopy presentingViewController];
      }

      v8 = presentingViewController;

      selfCopy = v8;
      if (!v8)
      {
        syncLayoutController = 0;
        selfCopy = 0;
        break;
      }
    }
  }

  else
  {
    syncLayoutController = 0;
  }

  return syncLayoutController;
}

@end
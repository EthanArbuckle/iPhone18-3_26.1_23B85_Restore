@interface MapsViewInspectorWindow
+ (void)show;
- (MapsViewInspectorWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_dismiss;
- (void)dismissAllWindowsNotification:(id)notification;
- (void)longPressGestureFired:(id)fired;
@end

@implementation MapsViewInspectorWindow

- (void)dismissAllWindowsNotification:(id)notification
{
  object = [notification object];

  if (object != self)
  {

    [(MapsViewInspectorWindow *)self _dismiss];
  }
}

- (void)_dismiss
{
  [(MapsViewInspectorWindow *)self setHidden:1];

  [(MapsViewInspectorWindow *)self setSelfReference:0];
}

- (void)longPressGestureFired:(id)fired
{
  [(MapsViewInspectorWindow *)self _dismiss];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"kMapsViewInspectorWindowDismissAllWindows" object:self];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([eventCopy type])
  {
    selfCopy = self;
  }

  else
  {
    v40.receiver = self;
    v40.super_class = MapsViewInspectorWindow;
    v9 = [(MapsViewInspectorWindow *)&v40 hitTest:eventCopy withEvent:x, y];
    rootViewController = [(MapsViewInspectorWindow *)self rootViewController];
    presentedViewController = [rootViewController presentedViewController];

    selfCopy2 = v9;
    if (!presentedViewController)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      windowScene = [(MapsViewInspectorWindow *)self windowScene];
      windows = [windowScene windows];

      v15 = [windows countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(windows);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            if (v19 != self)
            {
              v20 = [*(*(&v36 + 1) + 8 * i) hitTest:eventCopy withEvent:{x, y}];
              v21 = v20;
              if (v20 != v19 && v20 != 0)
              {
                [(MapsViewInspectorWindow *)v20 bounds];
                MidX = CGRectGetMidX(v43);
                [(MapsViewInspectorWindow *)v21 bounds];
                [(MapsViewInspectorWindow *)v21 convertPoint:v19 toView:MidX, CGRectGetMidY(v44)];
                [(MapsViewInspectorWindow *)v19 convertPoint:self toWindow:?];
                v25 = v24;
                v27 = v26;
                v28 = [[MapsViewInspectorContentViewController alloc] initWithView:v21];
                v29 = [[UINavigationController alloc] initWithRootViewController:v28];
                [v29 setModalPresentationStyle:7];
                popoverPresentationController = [v29 popoverPresentationController];
                [popoverPresentationController setSourceView:self];

                popoverPresentationController2 = [v29 popoverPresentationController];
                [popoverPresentationController2 setSourceRect:{v25, v27, 0.0, 0.0}];

                popoverPresentationController3 = [v29 popoverPresentationController];
                [popoverPresentationController3 setPermittedArrowDirections:15];

                popoverPresentationController4 = [v29 popoverPresentationController];
                [popoverPresentationController4 setDelegate:self];

                rootViewController2 = [(MapsViewInspectorWindow *)self rootViewController];
                [rootViewController2 presentViewController:v29 animated:1 completion:0];

                goto LABEL_18;
              }
            }
          }

          v16 = [windows countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v16);
      }

LABEL_18:

      selfCopy2 = self;
    }

    selfCopy = selfCopy2;
  }

  return selfCopy;
}

- (MapsViewInspectorWindow)initWithWindowScene:(id)scene
{
  v11.receiver = self;
  v11.super_class = MapsViewInspectorWindow;
  v3 = [(MapsViewInspectorWindow *)&v11 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(MapsViewInspectorWindow *)v3 setSelfReference:v3];
    [(MapsViewInspectorWindow *)v4 setWindowLevel:UIHUDWindowLevel];
    v5 = +[UIColor greenColor];
    v6 = [v5 colorWithAlphaComponent:0.300000012];
    [(MapsViewInspectorWindow *)v4 setBackgroundColor:v6];

    [(MapsViewInspectorWindow *)v4 setHidden:0];
    v7 = objc_alloc_init(UIViewController);
    [(MapsViewInspectorWindow *)v4 setRootViewController:v7];
    v8 = [[UILongPressGestureRecognizer alloc] initWithTarget:v4 action:"longPressGestureFired:"];
    [(MapsViewInspectorWindow *)v4 addGestureRecognizer:v8];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"dismissAllWindowsNotification:" name:@"kMapsViewInspectorWindowDismissAllWindows" object:0];
  }

  return v4;
}

+ (void)show
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [connectedScenes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end
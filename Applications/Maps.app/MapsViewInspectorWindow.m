@interface MapsViewInspectorWindow
+ (void)show;
- (MapsViewInspectorWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_dismiss;
- (void)dismissAllWindowsNotification:(id)a3;
- (void)longPressGestureFired:(id)a3;
@end

@implementation MapsViewInspectorWindow

- (void)dismissAllWindowsNotification:(id)a3
{
  v4 = [a3 object];

  if (v4 != self)
  {

    [(MapsViewInspectorWindow *)self _dismiss];
  }
}

- (void)_dismiss
{
  [(MapsViewInspectorWindow *)self setHidden:1];

  [(MapsViewInspectorWindow *)self setSelfReference:0];
}

- (void)longPressGestureFired:(id)a3
{
  [(MapsViewInspectorWindow *)self _dismiss];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"kMapsViewInspectorWindowDismissAllWindows" object:self];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([v7 type])
  {
    v8 = self;
  }

  else
  {
    v40.receiver = self;
    v40.super_class = MapsViewInspectorWindow;
    v9 = [(MapsViewInspectorWindow *)&v40 hitTest:v7 withEvent:x, y];
    v10 = [(MapsViewInspectorWindow *)self rootViewController];
    v11 = [v10 presentedViewController];

    v12 = v9;
    if (!v11)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = [(MapsViewInspectorWindow *)self windowScene];
      v14 = [v13 windows];

      v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            if (v19 != self)
            {
              v20 = [*(*(&v36 + 1) + 8 * i) hitTest:v7 withEvent:{x, y}];
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
                v30 = [v29 popoverPresentationController];
                [v30 setSourceView:self];

                v31 = [v29 popoverPresentationController];
                [v31 setSourceRect:{v25, v27, 0.0, 0.0}];

                v32 = [v29 popoverPresentationController];
                [v32 setPermittedArrowDirections:15];

                v33 = [v29 popoverPresentationController];
                [v33 setDelegate:self];

                v34 = [(MapsViewInspectorWindow *)self rootViewController];
                [v34 presentViewController:v29 animated:1 completion:0];

                goto LABEL_18;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v16);
      }

LABEL_18:

      v12 = self;
    }

    v8 = v12;
  }

  return v8;
}

- (MapsViewInspectorWindow)initWithWindowScene:(id)a3
{
  v11.receiver = self;
  v11.super_class = MapsViewInspectorWindow;
  v3 = [(MapsViewInspectorWindow *)&v11 initWithWindowScene:a3];
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
  v3 = [v2 connectedScenes];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end
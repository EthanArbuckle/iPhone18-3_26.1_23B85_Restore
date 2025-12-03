@interface SCATElementManagerViewController
- (BOOL)isDisplayed;
- (SCATElementManager)elementManager;
- (SCATElementManagerViewController)initWithElementManager:(id)manager;
- (void)didDismiss:(BOOL)dismiss;
- (void)didPresentWithDisplayContext:(id)context animated:(BOOL)animated;
- (void)didUpdateWithDisplayContext:(id)context animated:(BOOL)animated;
- (void)dismiss:(BOOL)dismiss;
- (void)presentWithDisplayContext:(id)context animated:(BOOL)animated;
- (void)updateCustomFocusingViewStateForViewsWithElement:(id)element;
- (void)viewDidLoad;
- (void)willDismiss:(BOOL)dismiss;
- (void)willPresentWithDisplayContext:(id)context animated:(BOOL)animated;
@end

@implementation SCATElementManagerViewController

- (SCATElementManagerViewController)initWithElementManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = SCATElementManagerViewController;
  v5 = [(SCATElementManagerViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SCATElementManagerViewController *)v5 setElementManager:managerCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SCATElementManagerViewController;
  [(SCATElementManagerViewController *)&v3 viewDidLoad];
  [(SCATElementManagerViewController *)self updateCustomFocusingViewStateForViewsWithElement:0];
}

- (void)presentWithDisplayContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  if (contextCopy)
  {
    [(SCATElementManagerViewController *)self willPresentWithDisplayContext:contextCopy animated:animatedCopy];
    view = [(SCATElementManagerViewController *)self view];
    v8 = view;
    if (animatedCopy)
    {
      [view setAlpha:0.0];

      view2 = [(SCATElementManagerViewController *)self view];
      [contextCopy addSubview:view2];

      [(SCATElementManagerViewController *)self didAddSubviewToDisplayContext:contextCopy];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000F22C8;
      v13[3] = &unk_1001D3488;
      v13[4] = self;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F2310;
      v10[3] = &unk_1001D5030;
      v10[4] = self;
      v11 = contextCopy;
      v12 = animatedCopy;
      [UIView animateWithDuration:v13 animations:v10 completion:0.3];
    }

    else
    {
      [contextCopy addSubview:view];

      [(SCATElementManagerViewController *)self didAddSubviewToDisplayContext:contextCopy];
      [(SCATElementManagerViewController *)self didPresentWithDisplayContext:contextCopy animated:0];
    }
  }
}

- (void)dismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  [(SCATElementManagerViewController *)self willDismiss:?];
  if (dismissCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F2440;
    v8[3] = &unk_1001D3488;
    v8[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F2488;
    v6[3] = &unk_1001D7C70;
    v6[4] = self;
    v7 = 1;
    [UIView animateWithDuration:v8 animations:v6 completion:0.3];
  }

  else
  {
    view = [(SCATElementManagerViewController *)self view];
    [view removeFromSuperview];

    [(SCATElementManagerViewController *)self didDismiss:0];
  }
}

- (void)willPresentWithDisplayContext:(id)context animated:(BOOL)animated
{
  v4 = [(SCATElementManagerViewController *)self elementManager:context];
  [v4 visualProviderWillPresent];
}

- (void)didPresentWithDisplayContext:(id)context animated:(BOOL)animated
{
  v4 = [(SCATElementManagerViewController *)self elementManager:context];
  [v4 visualProviderDidPresent];
}

- (void)didUpdateWithDisplayContext:(id)context animated:(BOOL)animated
{
  v4 = [(SCATElementManagerViewController *)self elementManager:context];
  [v4 visualProviderDidUpdate];
}

- (void)willDismiss:(BOOL)dismiss
{
  elementManager = [(SCATElementManagerViewController *)self elementManager];
  [elementManager visualProviderWillDismiss];
}

- (void)didDismiss:(BOOL)dismiss
{
  elementManager = [(SCATElementManagerViewController *)self elementManager];
  [elementManager visualProviderDidDismiss];
}

- (void)updateCustomFocusingViewStateForViewsWithElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isGroup])
  {
    parentGroup = elementCopy;
  }

  else
  {
    parentGroup = [elementCopy parentGroup];
  }

  v6 = parentGroup;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  viewsRequiringStateUpdate = [(SCATElementManagerViewController *)self viewsRequiringStateUpdate];
  v8 = [viewsRequiringStateUpdate countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(viewsRequiringStateUpdate);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (v12 == elementCopy)
        {
          v15 = 1;
          goto LABEL_17;
        }

        if (([v6 containsObject:*(*(&v22 + 1) + 8 * i)] & 1) == 0)
        {
          subviews = [v12 subviews];
          firstObject = [subviews firstObject];
          if ([v6 containsObject:firstObject])
          {
          }

          else
          {
            +[AXSettings sharedInstance];
            v16 = v10;
            v17 = v6;
            v18 = elementCopy;
            v20 = v19 = viewsRequiringStateUpdate;
            assistiveTouchGroupElementsEnabled = [v20 assistiveTouchGroupElementsEnabled];

            viewsRequiringStateUpdate = v19;
            elementCopy = v18;
            v6 = v17;
            v10 = v16;

            if (assistiveTouchGroupElementsEnabled)
            {
              v15 = 0;
              goto LABEL_17;
            }
          }
        }

        v15 = 2;
LABEL_17:
        [v12 updateFocusState:v15];
      }

      v9 = [viewsRequiringStateUpdate countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }
}

- (BOOL)isDisplayed
{
  view = [(SCATElementManagerViewController *)self view];
  window = [view window];
  v4 = window != 0;

  return v4;
}

- (SCATElementManager)elementManager
{
  WeakRetained = objc_loadWeakRetained(&self->_elementManager);

  return WeakRetained;
}

@end
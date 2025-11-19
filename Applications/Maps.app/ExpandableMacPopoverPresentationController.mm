@interface ExpandableMacPopoverPresentationController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (UIPanGestureRecognizer)scrollExpandGestureRecognizer;
- (void)handlePanGesture:(id)a3;
- (void)setMinimizedMode:(BOOL)a3;
@end

@implementation ExpandableMacPopoverPresentationController

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(MacPopoverPresentationController *)self containeeViewController];
  v6 = [v5 view];
  [v4 translationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = fabs(v10);
  v12 = fabs(v8);
  if (v10 != 0.0 && v11 > v12)
  {

    [(ExpandableMacPopoverPresentationController *)self expandPopover];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(ExpandableMacPopoverPresentationController *)self scrollExpandGestureRecognizer];

  return v6 == v5;
}

- (UIPanGestureRecognizer)scrollExpandGestureRecognizer
{
  scrollExpandGestureRecognizer = self->_scrollExpandGestureRecognizer;
  if (!scrollExpandGestureRecognizer)
  {
    v4 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"handlePanGesture:"];
    v5 = self->_scrollExpandGestureRecognizer;
    self->_scrollExpandGestureRecognizer = v4;

    [(UIPanGestureRecognizer *)self->_scrollExpandGestureRecognizer setAllowedScrollTypesMask:3];
    [(UIPanGestureRecognizer *)self->_scrollExpandGestureRecognizer setDelegate:self];
    scrollExpandGestureRecognizer = self->_scrollExpandGestureRecognizer;
  }

  return scrollExpandGestureRecognizer;
}

- (void)setMinimizedMode:(BOOL)a3
{
  if (self->_minimizedMode != a3)
  {
    v28 = v6;
    v29 = v5;
    v30 = v4;
    v31 = v3;
    self->_minimizedMode = a3;
    if (a3)
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"SCROLLING_OPENS_PLACECARD_KEY_ROTATED"];

      if (v13)
      {
        v14 = [(MacPopoverPresentationController *)self containeeViewController];
        v15 = [v14 view];
        v16 = [(ExpandableMacPopoverPresentationController *)self scrollExpandGestureRecognizer];
        [v15 addGestureRecognizer:v16];
      }

      v17 = [(MacPopoverPresentationController *)self containeeViewController:v10];
      [v17 macContaineeWidth];
      v19 = v18;
      v20 = 374.0;
    }

    else
    {
      v21 = [(MacPopoverPresentationController *)self containeeViewController];
      v22 = [v21 view];
      v23 = [(ExpandableMacPopoverPresentationController *)self scrollExpandGestureRecognizer];
      [v22 removeGestureRecognizer:v23];

      v24 = [(MacPopoverPresentationController *)self containeeViewController];
      [v24 heightForLayout:3];
      v26 = v25;

      v17 = [(MacPopoverPresentationController *)self containeeViewController];
      [v17 macContaineeWidth];
      v19 = v27;
      v20 = fmin(v26, 610.0);
    }

    [(MacPopoverPresentationController *)self setPreferredContentSize:v19, v20];
  }
}

@end
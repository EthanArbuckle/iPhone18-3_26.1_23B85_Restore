@interface ExpandableMacPopoverPresentationController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (UIPanGestureRecognizer)scrollExpandGestureRecognizer;
- (void)handlePanGesture:(id)gesture;
- (void)setMinimizedMode:(BOOL)mode;
@end

@implementation ExpandableMacPopoverPresentationController

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  containeeViewController = [(MacPopoverPresentationController *)self containeeViewController];
  view = [containeeViewController view];
  [gestureCopy translationInView:view];
  v8 = v7;
  v10 = v9;

  v11 = fabs(v10);
  v12 = fabs(v8);
  if (v10 != 0.0 && v11 > v12)
  {

    [(ExpandableMacPopoverPresentationController *)self expandPopover];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  scrollExpandGestureRecognizer = [(ExpandableMacPopoverPresentationController *)self scrollExpandGestureRecognizer];

  return scrollExpandGestureRecognizer == recognizerCopy;
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

- (void)setMinimizedMode:(BOOL)mode
{
  if (self->_minimizedMode != mode)
  {
    v28 = v6;
    v29 = v5;
    v30 = v4;
    v31 = v3;
    self->_minimizedMode = mode;
    if (mode)
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"SCROLLING_OPENS_PLACECARD_KEY_ROTATED"];

      if (v13)
      {
        containeeViewController = [(MacPopoverPresentationController *)self containeeViewController];
        view = [containeeViewController view];
        scrollExpandGestureRecognizer = [(ExpandableMacPopoverPresentationController *)self scrollExpandGestureRecognizer];
        [view addGestureRecognizer:scrollExpandGestureRecognizer];
      }

      containeeViewController4 = [(MacPopoverPresentationController *)self containeeViewController:v10];
      [containeeViewController4 macContaineeWidth];
      v19 = v18;
      v20 = 374.0;
    }

    else
    {
      containeeViewController2 = [(MacPopoverPresentationController *)self containeeViewController];
      view2 = [containeeViewController2 view];
      scrollExpandGestureRecognizer2 = [(ExpandableMacPopoverPresentationController *)self scrollExpandGestureRecognizer];
      [view2 removeGestureRecognizer:scrollExpandGestureRecognizer2];

      containeeViewController3 = [(MacPopoverPresentationController *)self containeeViewController];
      [containeeViewController3 heightForLayout:3];
      v26 = v25;

      containeeViewController4 = [(MacPopoverPresentationController *)self containeeViewController];
      [containeeViewController4 macContaineeWidth];
      v19 = v27;
      v20 = fmin(v26, 610.0);
    }

    [(MacPopoverPresentationController *)self setPreferredContentSize:v19, v20];
  }
}

@end
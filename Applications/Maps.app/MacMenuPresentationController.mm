@interface MacMenuPresentationController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (ContaineeViewController)containeeViewController;
- (MacMenuPresentationController)initWithContaineeViewController:(id)controller;
- (UIViewController)containerViewController;
- (void)_didDismiss;
- (void)_dismissGestureFired:(id)fired;
- (void)_willDismiss;
- (void)addObserver:(id)observer;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)presentFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)setPassThroughViews:(id)views;
@end

@implementation MacMenuPresentationController

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (ContaineeViewController)containeeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);

  return WeakRetained;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(MacMenuPresentationController *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(MacMenuPresentationController *)self observers];
  [observers registerObserver:observerCopy];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  dismissTapGesture = self->_dismissTapGesture;
  dismissPanGesture = self->_dismissPanGesture;
  if (dismissTapGesture != recognizerCopy || (v10 = dismissPanGesture == gestureRecognizerCopy, dismissPanGesture = gestureRecognizerCopy, v10))
  {
    v10 = dismissTapGesture != gestureRecognizerCopy && dismissPanGesture == recognizerCopy;
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
  view2 = [WeakRetained view];
  v8 = view2;
  if (view == view2)
  {

    goto LABEL_14;
  }

  v9 = objc_loadWeakRetained(&self->_containeeViewController);
  view3 = [v9 view];
  v11 = [view isDescendantOfView:view3];

  if (v11)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_passThroughViews;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (view == *(*(&v19 + 1) + 8 * i) || ([view isDescendantOfView:v19] & 1) != 0)
        {
          v17 = 0;
          goto LABEL_17;
        }
      }

      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v17 = 1;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_17:

LABEL_18:
  return v17;
}

- (void)_dismissGestureFired:(id)fired
{
  firedCopy = fired;
  if (self->_dismissPanGesture == firedCopy && (v6 = firedCopy, v5 = [(UITapGestureRecognizer *)firedCopy state]== 1, firedCopy = v6, v5))
  {
    [(MacMenuPresentationController *)self dismissAnimated:1 completion:0];
    [(UITapGestureRecognizer *)v6 setEnabled:0];
    [(UITapGestureRecognizer *)v6 setEnabled:1];
  }

  else
  {
    if (self->_dismissTapGesture != firedCopy)
    {
      goto LABEL_8;
    }

    v6 = firedCopy;
    [(MacMenuPresentationController *)self dismissAnimated:1 completion:0];
  }

  firedCopy = v6;
LABEL_8:
}

- (void)_didDismiss
{
  self->_isDismissing = 0;
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
  containeeDelegate = [WeakRetained containeeDelegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->_containeeViewController);
    [containeeDelegate containeeViewControllerDidDismissExternally:v4];
  }

  observers = [(MacMenuPresentationController *)self observers];
  [observers macMenuPresentationControllerDidDismiss:self];
}

- (void)_willDismiss
{
  observers = [(MacMenuPresentationController *)self observers];
  [observers macMenuPresentationControllerWillDismiss:self];

  *&self->_isPresented = 256;
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_isPresented)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    view = [WeakRetained view];
    v10 = objc_loadWeakRetained(&self->_containeeViewController);
    view2 = [v10 view];
    superview = [view2 superview];

    if (view == superview)
    {
      v13 = objc_loadWeakRetained(&self->_containeeViewController);
      view3 = [v13 view];

      v15 = objc_loadWeakRetained(&self->_containeeViewController);
      view4 = [WeakRetained view];
      [view4 removeGestureRecognizer:self->_dismissTapGesture];

      view5 = [WeakRetained view];
      [view5 removeGestureRecognizer:self->_dismissPanGesture];

      [(MacMenuPresentationController *)self _willDismiss];
      [v15 willMoveToParentViewController:0];
      if (animatedCopy)
      {
        objc_initWeak(&location, self);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1006CAB44;
        v23[3] = &unk_101661B18;
        v24 = view3;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1006CAB50;
        v18[3] = &unk_1016267B8;
        v19 = v24;
        v20 = v15;
        objc_copyWeak(&v22, &location);
        v21 = v7;
        [UIView animateWithDuration:v23 animations:v18 completion:0.1];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        [view3 removeFromSuperview];
        [v15 removeFromParentViewController];
        if (v7)
        {
          v7[2](v7);
        }
      }
    }

    else if (v7)
    {
      v7[2](v7);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)presentFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if (self->_isPresented || self->_isDismissing || (v10 = objc_loadWeakRetained(&self->_containeeViewController), [v10 view], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "superview"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    view = [controllerCopy view];
    if (view)
    {
      anchorLayoutGuide = [(MacMenuPresentationController *)self anchorLayoutGuide];
      widthLayoutGuide = [(MacMenuPresentationController *)self widthLayoutGuide];
      self->_isPresented = 1;
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

      if (WeakRetained != controllerCopy)
      {
        objc_storeWeak(&self->_containerViewController, controllerCopy);
      }

      v17 = objc_loadWeakRetained(&self->_containeeViewController);
      [controllerCopy addChildViewController:v17];

      v18 = objc_loadWeakRetained(&self->_containeeViewController);
      view2 = [v18 view];

      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 setAlpha:0.0];
      [view addSubview:view2];
      v20 = objc_loadWeakRetained(&self->_containeeViewController);
      [v20 didMoveToParentViewController:controllerCopy];

      view3 = [(UIPanGestureRecognizer *)self->_dismissPanGesture view];

      if (view3 != view)
      {
        view4 = [controllerCopy view];
        [view4 addGestureRecognizer:self->_dismissPanGesture];
      }

      view5 = [(UITapGestureRecognizer *)self->_dismissTapGesture view];

      if (view5 != view)
      {
        view6 = [controllerCopy view];
        [view6 addGestureRecognizer:self->_dismissTapGesture];
      }

      v25 = objc_alloc_init(NSMutableArray);
      generatedWidthLayoutGuide = self->_generatedWidthLayoutGuide;
      v47 = v25;
      if (widthLayoutGuide)
      {
        if (generatedWidthLayoutGuide)
        {
          owningView = [(UILayoutGuide *)generatedWidthLayoutGuide owningView];

          if (owningView == view)
          {
            [view removeLayoutGuide:self->_generatedWidthLayoutGuide];
          }
        }
      }

      else
      {
        if (!generatedWidthLayoutGuide)
        {
          v28 = objc_alloc_init(UILayoutGuide);
          v29 = self->_generatedWidthLayoutGuide;
          self->_generatedWidthLayoutGuide = v28;

          generatedWidthLayoutGuide = self->_generatedWidthLayoutGuide;
        }

        owningView2 = [(UILayoutGuide *)generatedWidthLayoutGuide owningView];

        if (owningView2 != view)
        {
          [view addLayoutGuide:self->_generatedWidthLayoutGuide];
          widthAnchor = [(UILayoutGuide *)self->_generatedWidthLayoutGuide widthAnchor];
          v32 = [widthAnchor constraintEqualToConstant:282.0];
          [v25 addObject:v32];
        }

        widthLayoutGuide = self->_generatedWidthLayoutGuide;
      }

      widthAnchor2 = [view2 widthAnchor];
      v49 = widthLayoutGuide;
      widthAnchor3 = [(UILayoutGuide *)widthLayoutGuide widthAnchor];
      v44 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
      v57[0] = v44;
      centerXAnchor = [view2 centerXAnchor];
      centerXAnchor2 = [anchorLayoutGuide centerXAnchor];
      v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v57[1] = v41;
      topAnchor = [view2 topAnchor];
      v50 = anchorLayoutGuide;
      bottomAnchor = [anchorLayoutGuide bottomAnchor];
      v34 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      v57[2] = v34;
      heightAnchor = [view2 heightAnchor];
      [view heightAnchor];
      v36 = v48 = view;
      v37 = [heightAnchor constraintLessThanOrEqualToAnchor:v36 constant:-150.0];
      v57[3] = v37;
      v38 = [NSArray arrayWithObjects:v57 count:4];
      [v47 addObjectsFromArray:v38];

      view = v48;
      [NSLayoutConstraint activateConstraints:v47];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1006CB1F0;
      v55[3] = &unk_101661B18;
      v56 = v48;
      [UIView performWithoutAnimation:v55];
      if (animatedCopy)
      {
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_1006CB1F8;
        v53[3] = &unk_101661B18;
        v54 = view2;
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1006CB204;
        v51[3] = &unk_10165F438;
        v52 = completionCopy;
        [UIView animateWithDuration:v53 animations:v51 completion:0.1];

        v39 = view2;
      }

      else
      {
        v39 = view2;
        [view2 setAlpha:1.0];
        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }
      }
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)setPassThroughViews:(id)views
{
  viewsCopy = views;
  v5 = +[NSHashTable weakObjectsHashTable];
  passThroughViews = self->_passThroughViews;
  self->_passThroughViews = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = viewsCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSHashTable *)self->_passThroughViews addObject:*(*(&v12 + 1) + 8 * v11), v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (MacMenuPresentationController)initWithContaineeViewController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = MacMenuPresentationController;
  v5 = [(MacMenuPresentationController *)&v13 init];
  if (v5)
  {
    v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MacMenuPresentationControllerObserver queue:0];
    observers = v5->_observers;
    v5->_observers = v6;

    objc_storeWeak(&v5->_containeeViewController, controllerCopy);
    v8 = [[UIPanGestureRecognizer alloc] initWithTarget:v5 action:"_dismissGestureFired:"];
    dismissPanGesture = v5->_dismissPanGesture;
    v5->_dismissPanGesture = v8;

    [(UIPanGestureRecognizer *)v5->_dismissPanGesture setDelegate:v5];
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:"_dismissGestureFired:"];
    dismissTapGesture = v5->_dismissTapGesture;
    v5->_dismissTapGesture = v10;

    [(UITapGestureRecognizer *)v5->_dismissTapGesture setDelegate:v5];
  }

  return v5;
}

@end
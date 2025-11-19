@interface MacMenuPresentationController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (ContaineeViewController)containeeViewController;
- (MacMenuPresentationController)initWithContaineeViewController:(id)a3;
- (UIViewController)containerViewController;
- (void)_didDismiss;
- (void)_dismissGestureFired:(id)a3;
- (void)_willDismiss;
- (void)addObserver:(id)a3;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removeObserver:(id)a3;
- (void)setPassThroughViews:(id)a3;
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

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(MacMenuPresentationController *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(MacMenuPresentationController *)self observers];
  [v5 registerObserver:v4];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  dismissTapGesture = self->_dismissTapGesture;
  dismissPanGesture = self->_dismissPanGesture;
  if (dismissTapGesture != v6 || (v10 = dismissPanGesture == v7, dismissPanGesture = v7, v10))
  {
    v10 = dismissTapGesture != v7 && dismissPanGesture == v6;
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = [a4 view];
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
  v7 = [WeakRetained view];
  v8 = v7;
  if (v5 == v7)
  {

    goto LABEL_14;
  }

  v9 = objc_loadWeakRetained(&self->_containeeViewController);
  v10 = [v9 view];
  v11 = [v5 isDescendantOfView:v10];

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

        if (v5 == *(*(&v19 + 1) + 8 * i) || ([v5 isDescendantOfView:v19] & 1) != 0)
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

- (void)_dismissGestureFired:(id)a3
{
  v4 = a3;
  if (self->_dismissPanGesture == v4 && (v6 = v4, v5 = [(UITapGestureRecognizer *)v4 state]== 1, v4 = v6, v5))
  {
    [(MacMenuPresentationController *)self dismissAnimated:1 completion:0];
    [(UITapGestureRecognizer *)v6 setEnabled:0];
    [(UITapGestureRecognizer *)v6 setEnabled:1];
  }

  else
  {
    if (self->_dismissTapGesture != v4)
    {
      goto LABEL_8;
    }

    v6 = v4;
    [(MacMenuPresentationController *)self dismissAnimated:1 completion:0];
  }

  v4 = v6;
LABEL_8:
}

- (void)_didDismiss
{
  self->_isDismissing = 0;
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
  v6 = [WeakRetained containeeDelegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->_containeeViewController);
    [v6 containeeViewControllerDidDismissExternally:v4];
  }

  v5 = [(MacMenuPresentationController *)self observers];
  [v5 macMenuPresentationControllerDidDismiss:self];
}

- (void)_willDismiss
{
  v3 = [(MacMenuPresentationController *)self observers];
  [v3 macMenuPresentationControllerWillDismiss:self];

  *&self->_isPresented = 256;
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_isPresented)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v9 = [WeakRetained view];
    v10 = objc_loadWeakRetained(&self->_containeeViewController);
    v11 = [v10 view];
    v12 = [v11 superview];

    if (v9 == v12)
    {
      v13 = objc_loadWeakRetained(&self->_containeeViewController);
      v14 = [v13 view];

      v15 = objc_loadWeakRetained(&self->_containeeViewController);
      v16 = [WeakRetained view];
      [v16 removeGestureRecognizer:self->_dismissTapGesture];

      v17 = [WeakRetained view];
      [v17 removeGestureRecognizer:self->_dismissPanGesture];

      [(MacMenuPresentationController *)self _willDismiss];
      [v15 willMoveToParentViewController:0];
      if (v4)
      {
        objc_initWeak(&location, self);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1006CAB44;
        v23[3] = &unk_101661B18;
        v24 = v14;
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
        [v14 removeFromSuperview];
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

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)presentFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (self->_isPresented || self->_isDismissing || (v10 = objc_loadWeakRetained(&self->_containeeViewController), [v10 view], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "superview"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
  {
    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    v13 = [v8 view];
    if (v13)
    {
      v14 = [(MacMenuPresentationController *)self anchorLayoutGuide];
      v15 = [(MacMenuPresentationController *)self widthLayoutGuide];
      self->_isPresented = 1;
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

      if (WeakRetained != v8)
      {
        objc_storeWeak(&self->_containerViewController, v8);
      }

      v17 = objc_loadWeakRetained(&self->_containeeViewController);
      [v8 addChildViewController:v17];

      v18 = objc_loadWeakRetained(&self->_containeeViewController);
      v19 = [v18 view];

      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v19 setAlpha:0.0];
      [v13 addSubview:v19];
      v20 = objc_loadWeakRetained(&self->_containeeViewController);
      [v20 didMoveToParentViewController:v8];

      v21 = [(UIPanGestureRecognizer *)self->_dismissPanGesture view];

      if (v21 != v13)
      {
        v22 = [v8 view];
        [v22 addGestureRecognizer:self->_dismissPanGesture];
      }

      v23 = [(UITapGestureRecognizer *)self->_dismissTapGesture view];

      if (v23 != v13)
      {
        v24 = [v8 view];
        [v24 addGestureRecognizer:self->_dismissTapGesture];
      }

      v25 = objc_alloc_init(NSMutableArray);
      generatedWidthLayoutGuide = self->_generatedWidthLayoutGuide;
      v47 = v25;
      if (v15)
      {
        if (generatedWidthLayoutGuide)
        {
          v27 = [(UILayoutGuide *)generatedWidthLayoutGuide owningView];

          if (v27 == v13)
          {
            [v13 removeLayoutGuide:self->_generatedWidthLayoutGuide];
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

        v30 = [(UILayoutGuide *)generatedWidthLayoutGuide owningView];

        if (v30 != v13)
        {
          [v13 addLayoutGuide:self->_generatedWidthLayoutGuide];
          v31 = [(UILayoutGuide *)self->_generatedWidthLayoutGuide widthAnchor];
          v32 = [v31 constraintEqualToConstant:282.0];
          [v25 addObject:v32];
        }

        v15 = self->_generatedWidthLayoutGuide;
      }

      v46 = [v19 widthAnchor];
      v49 = v15;
      v45 = [(UILayoutGuide *)v15 widthAnchor];
      v44 = [v46 constraintEqualToAnchor:v45];
      v57[0] = v44;
      v43 = [v19 centerXAnchor];
      v42 = [v14 centerXAnchor];
      v41 = [v43 constraintEqualToAnchor:v42];
      v57[1] = v41;
      v40 = [v19 topAnchor];
      v50 = v14;
      v33 = [v14 bottomAnchor];
      v34 = [v40 constraintEqualToAnchor:v33];
      v57[2] = v34;
      v35 = [v19 heightAnchor];
      [v13 heightAnchor];
      v36 = v48 = v13;
      v37 = [v35 constraintLessThanOrEqualToAnchor:v36 constant:-150.0];
      v57[3] = v37;
      v38 = [NSArray arrayWithObjects:v57 count:4];
      [v47 addObjectsFromArray:v38];

      v13 = v48;
      [NSLayoutConstraint activateConstraints:v47];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1006CB1F0;
      v55[3] = &unk_101661B18;
      v56 = v48;
      [UIView performWithoutAnimation:v55];
      if (v6)
      {
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_1006CB1F8;
        v53[3] = &unk_101661B18;
        v54 = v19;
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1006CB204;
        v51[3] = &unk_10165F438;
        v52 = v9;
        [UIView animateWithDuration:v53 animations:v51 completion:0.1];

        v39 = v19;
      }

      else
      {
        v39 = v19;
        [v19 setAlpha:1.0];
        if (v9)
        {
          v9[2](v9);
        }
      }
    }

    else if (v9)
    {
      v9[2](v9);
    }
  }
}

- (void)setPassThroughViews:(id)a3
{
  v4 = a3;
  v5 = +[NSHashTable weakObjectsHashTable];
  passThroughViews = self->_passThroughViews;
  self->_passThroughViews = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
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

- (MacMenuPresentationController)initWithContaineeViewController:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MacMenuPresentationController;
  v5 = [(MacMenuPresentationController *)&v13 init];
  if (v5)
  {
    v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MacMenuPresentationControllerObserver queue:0];
    observers = v5->_observers;
    v5->_observers = v6;

    objc_storeWeak(&v5->_containeeViewController, v4);
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
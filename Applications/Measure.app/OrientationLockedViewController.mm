@interface OrientationLockedViewController
- (BOOL)shouldAutorotate;
- (CGRect)correctionRotationBoundsForReferenceOrientation:(int64_t)a3 targetOrientation:(int64_t)a4 bounds:(CGRect)result;
- (OrientationLockedViewController)initWithCoder:(id)a3;
- (OrientationLockedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)correctionRotationAngleForReferenceOrientation:(int64_t)a3 targetOrientation:(int64_t)a4;
- (double)rotationAngleForOrientation:(int64_t)a3;
- (void)configure;
- (void)counterRotateChildrenForBoundsOrOrientationChange;
- (void)setViewControllers:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation OrientationLockedViewController

- (OrientationLockedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = OrientationLockedViewController;
  v4 = [(OrientationLockedViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(OrientationLockedViewController *)v4 configure];
  }

  return v5;
}

- (OrientationLockedViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OrientationLockedViewController;
  v3 = [(OrientationLockedViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(OrientationLockedViewController *)v3 configure];
  }

  return v4;
}

- (void)configure
{
  viewControllers = self->_viewControllers;
  self->_viewControllers = 0;

  self->_previousOrientation = 0;
  self->_orientationToLockTo = 1;
  v4 = objc_alloc_init(UIView);
  [(UIView *)v4 setAutoresizingMask:0];
  orientationLockedView = self->_orientationLockedView;
  self->_orientationLockedView = v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = OrientationLockedViewController;
  [(OrientationLockedViewController *)&v4 viewDidLoad];
  v3 = [(OrientationLockedViewController *)self view];
  [v3 addSubview:self->_orientationLockedView];

  [(OrientationLockedViewController *)self counterRotateChildrenForBoundsOrOrientationChange];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(OrientationLockedViewController *)self view];
  v6 = [v5 superview];
  [v6 setClipsToBounds:0];

  v9.receiver = self;
  v9.super_class = OrientationLockedViewController;
  [(OrientationLockedViewController *)&v9 viewWillAppear:v3];
  v7 = [(OrientationLockedViewController *)self transitionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B190;
  v8[3] = &unk_100464B68;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)setViewControllers:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_viewControllers, a3);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [(OrientationLockedViewController *)self addChildViewController:v11, v14];
        orientationLockedView = self->_orientationLockedView;
        v13 = [v11 view];
        [(UIView *)orientationLockedView addSubview:v13];

        [v11 didMoveToParentViewController:self];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(OrientationLockedViewController *)self counterRotateChildrenForBoundsOrOrientationChange];
}

- (void)counterRotateChildrenForBoundsOrOrientationChange
{
  v3 = [(OrientationLockedViewController *)self interfaceOrientation];
  v4 = [(OrientationLockedViewController *)self orientationToLockTo];
  v5 = [(OrientationLockedViewController *)self view];
  [v5 bounds];
  [(OrientationLockedViewController *)self correctionRotationBoundsForReferenceOrientation:v3 targetOrientation:v4 bounds:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(OrientationLockedViewController *)self correctionRotationAngleForReferenceOrientation:v3 targetOrientation:v4];
  v15 = v14;
  v16 = [(OrientationLockedViewController *)self orientationLockedView];
  previousOrientation = self->_previousOrientation;
  if (previousOrientation == v3)
  {
    goto LABEL_24;
  }

  if ((previousOrientation - 3) <= 1)
  {
    if ((v3 - 3) >= 2)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v18 = previousOrientation == 2 && v3 == 1;
  if (v18 || (previousOrientation == 1 ? (v19 = v3 == 2) : (v19 = 0), v19))
  {
LABEL_14:
    [OrientationLockedViewController correctionRotationAngleForReferenceOrientation:"correctionRotationAngleForReferenceOrientation:targetOrientation:" targetOrientation:?];
    if (v20 == -3.14159265)
    {
      CGAffineTransformMakeRotation(&v40, 1.57079633);
      *&v39.a = *&v40.a;
      *&v39.c = *&v40.c;
      v21 = *&v40.tx;
    }

    else if (v20 == -1.57079633)
    {
      CGAffineTransformMakeRotation(&v38, 3.14159265);
      *&v39.a = *&v38.a;
      *&v39.c = *&v38.c;
      v21 = *&v38.tx;
    }

    else if (v20 == 1.57079633)
    {
      CGAffineTransformMakeRotation(&v37, 0.0);
      *&v39.a = *&v37.a;
      *&v39.c = *&v37.c;
      v21 = *&v37.tx;
    }

    else if (v20 == 3.14159265)
    {
      CGAffineTransformMakeRotation(&v36, -1.57079633);
      *&v39.a = *&v36.a;
      *&v39.c = *&v36.c;
      v21 = *&v36.tx;
    }

    else
    {
      CGAffineTransformMakeRotation(&v35, 6.28318531);
      *&v39.a = *&v35.a;
      *&v39.c = *&v35.c;
      v21 = *&v35.tx;
    }

    *&v39.tx = v21;
    [v16 setTransform:&v39];
  }

LABEL_24:
  CGAffineTransformMakeRotation(&v34, v15);
  v39 = v34;
  [v16 setTransform:&v39];
  v22 = [(OrientationLockedViewController *)self view];
  [v22 bounds];
  [v16 setFrame:?];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = [(OrientationLockedViewController *)self childViewControllers];
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * i);
        if ([v28 isViewLoaded])
        {
          v29 = [v28 view];
          [v29 setFrame:{v7, v9, v11, v13}];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v25);
  }

  [(OrientationLockedViewController *)self setPreviousOrientation:v3];
}

- (CGRect)correctionRotationBoundsForReferenceOrientation:(int64_t)a3 targetOrientation:(int64_t)a4 bounds:(CGRect)result
{
  width = result.size.width;
  if ((a3 - 3) > 1)
  {
    if (((a4 - 3) | (a3 - 1)) > 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    result.origin.x = 0.0;
    result.origin.y = 0.0;
    result.size.width = result.size.height;
    goto LABEL_6;
  }

  if ((a4 - 1) < 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  width = result.size.height;
LABEL_6:
  v6 = width;
  result.size.height = v6;
  return result;
}

- (double)correctionRotationAngleForReferenceOrientation:(int64_t)a3 targetOrientation:(int64_t)a4
{
  [(OrientationLockedViewController *)self rotationAngleForOrientation:a3];
  v7 = v6;
  [(OrientationLockedViewController *)self rotationAngleForOrientation:a4];
  return v8 - v7;
}

- (double)rotationAngleForOrientation:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 2) <= 2)
  {
    return dbl_1003D2F50[a3 - 2];
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = OrientationLockedViewController;
  v7 = a4;
  [(OrientationLockedViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B860;
  v8[3] = &unk_100464B68;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (BOOL)shouldAutorotate
{
  v3 = [(OrientationLockedViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom])
  {

LABEL_4:
    v5 = [(OrientationLockedViewController *)self isAutorotationEnabled];
    v6 = v5[2]();

    return v6;
  }

  v4 = +[UIDevice _hasHomeButton];

  if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

@end
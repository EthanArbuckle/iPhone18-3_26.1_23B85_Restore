@interface MacPopoverPresentationController
- (BOOL)_isCoordinateVisibleInContainerViewController:(id)controller;
- (CGRect)anchorRect;
- (CGSize)preferredContentSize;
- (CLLocationCoordinate2D)coordinate;
- (ContaineeViewController)containeeViewController;
- (ContainerViewController)containerViewController;
- (MacPopoverPresentationController)initWithContaineeViewController:(id)controller;
- (MacPopoverPresentationControllerDelegate)delegate;
- (NSArray)passthroughViews;
- (void)_didDismiss;
- (void)_willDismiss;
- (void)configurePopoverPosition;
- (void)configurePopoverSize;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)presentFromContainerViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setPassthroughViews:(id)views;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation MacPopoverPresentationController

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)anchorRect
{
  x = self->_anchorRect.origin.x;
  y = self->_anchorRect.origin.y;
  width = self->_anchorRect.size.width;
  height = self->_anchorRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MacPopoverPresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (ContaineeViewController)containeeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);

  return WeakRetained;
}

- (void)configurePopoverSize
{
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
  [WeakRetained macContaineeWidth];
  v5 = v4;
  v6 = objc_loadWeakRetained(&self->_containeeViewController);
  [v6 heightForLayout:2];
  v8 = v7;

  v9 = objc_loadWeakRetained(&self->_containeeViewController);
  [v9 preferredContentSize];
  if (v11 == CGSizeZero.width && v10 == CGSizeZero.height)
  {
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_containerViewController);
    [v13 preferredContentSize];
    v15 = v14;
    v17 = v16;

    if (v15 == v5 && v17 == v8)
    {
      return;
    }
  }

  [(MacPopoverPresentationController *)self setPreferredContentSize:v5, v8];
}

- (void)configurePopoverPosition
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v73.origin.x = CGRectZero.origin.x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v6 = CGRectEqualToRect(self->_anchorRect, v73);
  v7 = CLLocationCoordinate2DIsValid(self->_coordinate);
  if (!v6 || v7)
  {
    v54 = height;
    v55 = width;
    v56 = y;
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    chromeViewController = [WeakRetained chromeViewController];

    view = [chromeViewController view];
    mapView = [chromeViewController mapView];
    v12 = mapView;
    if (v6)
    {
      [mapView convertCoordinate:mapView toPointToView:{self->_coordinate.latitude, self->_coordinate.longitude}];
      x = v13 + -30.0;
      v16 = v15 + -74.0;
      v17 = 60.0;
      v18 = 60.0;
    }

    else
    {
      x = self->_anchorRect.origin.x;
      v16 = self->_anchorRect.origin.y;
      v18 = self->_anchorRect.size.width;
      v17 = self->_anchorRect.size.height;
    }

    v19 = objc_loadWeakRetained(&self->_containeeViewController);
    popoverPresentationController = [v19 popoverPresentationController];

    [popoverPresentationController setSourceView:view];
    v59 = v16;
    v60 = x;
    v57 = v18;
    v58 = v17;
    [popoverPresentationController setSourceRect:{x, v16, v18, v17}];
    viewportLayoutGuide = [chromeViewController viewportLayoutGuide];
    [viewportLayoutGuide layoutFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    owningView = [viewportLayoutGuide owningView];
    [owningView bounds];
    v50 = v31;
    rect = v32;
    v52 = v34;
    v53 = v33;
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v49 = v23;
    v63.origin.x = v23;
    v63.origin.y = v25;
    v63.size.width = v27;
    v63.size.height = v29;
    v74.origin.x = CGRectZero.origin.x;
    v74.origin.y = v56;
    v74.size.width = v55;
    v74.size.height = v54;
    if (!CGRectEqualToRect(v63, v74))
    {
      v64.origin.x = v50;
      v64.size.height = rect;
      v64.size.width = v52;
      v64.origin.y = v53;
      v75.origin.x = CGRectZero.origin.x;
      v75.origin.y = v56;
      v75.size.width = v55;
      v75.size.height = v54;
      if (!CGRectEqualToRect(v64, v75))
      {
        v65.origin.x = v23;
        v65.origin.y = v25;
        v65.size.width = v27;
        v65.size.height = v29;
        top = CGRectGetMinY(v65);
        v66.origin.x = v23;
        v66.origin.y = v25;
        v66.size.width = v27;
        v66.size.height = v29;
        left = CGRectGetMinX(v66);
        v67.size.height = rect;
        v67.origin.x = v50;
        v67.size.width = v52;
        v67.origin.y = v53;
        v39 = CGRectGetHeight(v67);
        v68.origin.x = v23;
        v68.origin.y = v25;
        v68.size.width = v27;
        v68.size.height = v29;
        bottom = v39 - CGRectGetMaxY(v68);
        v69.origin.x = v50;
        v69.size.width = v52;
        v69.origin.y = v53;
        v69.size.height = rect;
        v40 = CGRectGetWidth(v69);
        v70.origin.x = v49;
        v70.origin.y = v25;
        v70.size.width = v27;
        v70.size.height = v29;
        right = v40 - CGRectGetMaxX(v70);
      }
    }

    [view convertRect:v12 toView:{v60, v59, v57, v58}];
    CGRectGetMidX(v71);
    [v12 bounds];
    v72.origin.x = v41 + left;
    v72.origin.y = v42 + top;
    v72.size.width = v43 - (right + left);
    v72.size.height = v44 - (bottom + top);
    CGRectGetMidX(v72);
    UIFloorToViewScale();
    v46 = v45;
    UIFloorToViewScale();
    if (v46 > v47)
    {
      v48 = 8;
    }

    else
    {
      v48 = 4;
    }

    [popoverPresentationController setPermittedArrowDirections:v48];
  }
}

- (BOOL)_isCoordinateVisibleInContainerViewController:(id)controller
{
  chromeViewController = [controller chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView visibleMapRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = MKMapPointForCoordinate(self->_coordinate);
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  LOBYTE(self) = MKMapRectContainsPoint(v16, v15);

  return self;
}

- (void)_didDismiss
{
  self->_isDismissing = 0;
  objc_storeWeak(&self->_containerViewController, 0);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 macPopoverPresentationControllerDidDismiss:self];
  }
}

- (void)_willDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 macPopoverPresentationControllerWillDismiss:self];
  }

  *&self->_isPresented = 256;
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (self->_isPresented)
  {
    objc_initWeak(&location, self);
    [(MacPopoverPresentationController *)self _willDismiss];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100895008;
    v10[3] = &unk_101660648;
    objc_copyWeak(&v12, &location);
    v11 = completionCopy;
    v7 = objc_retainBlock(v10);
    WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
    presentingViewController = [WeakRetained presentingViewController];

    if (presentingViewController)
    {
      [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v7];
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v7);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)presentFromContainerViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  obj = controller;
  completionCopy = completion;
  if (!self->_isPresented && !self->_isDismissing)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
    presentingViewController = [WeakRetained presentingViewController];

    if (!presentingViewController && CLLocationCoordinate2DIsValid(self->_coordinate) && [(MacPopoverPresentationController *)self _isCoordinateVisibleInContainerViewController:obj])
    {
      self->_isPresented = 1;
      objc_storeWeak(&self->_containerViewController, obj);
      v11 = objc_loadWeakRetained(&self->_containeeViewController);
      popoverPresentationController = [v11 popoverPresentationController];
      [popoverPresentationController setDelegate:self];

      [(MacPopoverPresentationController *)self configurePopoverPosition];
      [(MacPopoverPresentationController *)self configurePopoverSize];
      v13 = objc_loadWeakRetained(&self->_containerViewController);
      v14 = objc_loadWeakRetained(&self->_containeeViewController);
      [v13 _maps_topMostPresentViewController:v14 animated:animatedCopy completion:completionCopy];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 postNotificationName:@"MacPopoverPresentationControllerDidPresentPopover" object:self];
    }
  }
}

- (void)setPassthroughViews:(id)views
{
  viewsCopy = views;
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
  popoverPresentationController = [WeakRetained popoverPresentationController];
  [popoverPresentationController setPassthroughViews:viewsCopy];
}

- (NSArray)passthroughViews
{
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
  popoverPresentationController = [WeakRetained popoverPresentationController];
  passthroughViews = [popoverPresentationController passthroughViews];

  return passthroughViews;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width != self->_preferredContentSize.width || size.height != self->_preferredContentSize.height)
  {
    self->_preferredContentSize = size;
    WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
    [WeakRetained setPreferredContentSize:{width, height}];

    v10 = objc_loadWeakRetained(&self->_containeeViewController);
    popoverPresentationController = [v10 popoverPresentationController];
    presentedViewController = [popoverPresentationController presentedViewController];
    [presentedViewController setPreferredContentSize:{width, height}];
  }
}

- (MacPopoverPresentationController)initWithContaineeViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = MacPopoverPresentationController;
  v5 = [(MacPopoverPresentationController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_containeeViewController, controllerCopy);
    [controllerCopy setModalPresentationStyle:7];

    v6->_coordinate = kCLLocationCoordinate2DInvalid;
    size = CGRectZero.size;
    v6->_anchorRect.origin = CGRectZero.origin;
    v6->_anchorRect.size = size;
  }

  return v6;
}

@end
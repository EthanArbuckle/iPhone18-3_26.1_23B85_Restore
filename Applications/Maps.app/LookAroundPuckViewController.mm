@interface LookAroundPuckViewController
- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)availability;
- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidEnterLookAroundPIP:(id)p;
- (void)lookAroundPIPDataCoordinatorDidPanLookAroundView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)p;
- (void)lookAroundPIPDataCoordinatorIsMovingLookAroundView:(id)view;
- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorIsRotatingMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorWillEnterLookArounPIP:(id)p;
- (void)lookAroundPIPDataCoordinatorWillExitLookAroundPIP:(id)p;
- (void)setCanEnterLookAroundPIP;
- (void)setPitch:(double)pitch;
- (void)viewDidLoad;
@end

@implementation LookAroundPuckViewController

- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)view
{
  viewCopy = view;
  isMapViewInSyncWithLookAroundView = [viewCopy isMapViewInSyncWithLookAroundView];
  isLookAroundDataAvailable = [viewCopy isLookAroundDataAvailable];
  [(LookAroundPuckView *)self->_puckView setDimmed:[(LookAroundPuckViewController *)self isDimmed]];
  if (isMapViewInSyncWithLookAroundView && isLookAroundDataAvailable)
  {
    v6 = viewCopy;
    [v6 lookAroundViewHeading];
    v8 = v7;
    mapView = [v6 mapView];

    [mapView presentationYaw];
    v11 = (v8 - v10) * 0.0174532925;

    [(LookAroundPuckView *)self->_puckView setHeading:v11];
  }

  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorIsMovingLookAroundView:(id)view
{
  viewCopy = view;
  [viewCopy lookAroundViewHeading];
  v6 = v5;
  mapView = [viewCopy mapView];

  [mapView presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)view
{
  viewCopy = view;
  isMapViewInSyncWithLookAroundView = [viewCopy isMapViewInSyncWithLookAroundView];
  isLookAroundDataAvailable = [viewCopy isLookAroundDataAvailable];
  if (isMapViewInSyncWithLookAroundView && isLookAroundDataAvailable)
  {
    v6 = viewCopy;
    [v6 lookAroundViewHeading];
    v8 = v7;
    mapView = [v6 mapView];

    [mapView presentationYaw];
    v11 = (v8 - v10) * 0.0174532925;

    [(LookAroundPuckView *)self->_puckView setHeading:v11];
    [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
  }
}

- (void)lookAroundPIPDataCoordinatorDidPanLookAroundView:(id)view
{
  viewCopy = view;
  [viewCopy lookAroundViewHeading];
  v6 = v5;
  mapView = [viewCopy mapView];

  [mapView presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)lookAroundPIPDataCoordinatorIsRotatingMapView:(id)view
{
  viewCopy = view;
  [viewCopy lookAroundViewHeading];
  v6 = v5;
  mapView = [viewCopy mapView];

  [mapView presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)view
{
  viewCopy = view;
  [(MKHapticEngine *)self->_hapticEngine draggedObjectLanded];
  v10 = viewCopy;
  [v10 lookAroundViewHeading];
  v6 = v5;
  mapView = [v10 mapView];

  [mapView presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  [(LookAroundPuckView *)self->_puckView setState:2];
  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)view
{
  viewCopy = view;
  [(LookAroundPuckView *)self->_puckView setDimmed:[(LookAroundPuckViewController *)self isDimmed]];
  v10 = viewCopy;
  [v10 lookAroundViewHeading];
  v6 = v5;
  mapView = [v10 mapView];

  [mapView presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)view
{
  viewCopy = view;
  [(MKHapticEngine *)self->_hapticEngine draggedObjectLifted];
  v10 = viewCopy;
  [v10 lookAroundViewHeading];
  v6 = v5;
  mapView = [v10 mapView];

  [mapView presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  [(LookAroundPuckView *)self->_puckView setState:3];
  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = self->_lookAroundAvailability == 2;
  v9 = availabilityCopy;
  mapView = [availabilityCopy mapView];
  self->_lookAroundAvailability = [mapView _lookAroundAvailability];

  if (v5 == (self->_lookAroundAvailability != 2) || ([(LookAroundPuckView *)self->_puckView alpha], v7 == 0.0))
  {
    if ([(LookAroundPuckViewController *)self isDimmed])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v9 isMapViewInSyncWithLookAroundView] ^ 1;
    }

    [(LookAroundPuckView *)self->_puckView setDimmed:v8];
    [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
  }
}

- (void)lookAroundPIPDataCoordinatorWillExitLookAroundPIP:(id)p
{
  [(LookAroundPuckView *)self->_puckView setHeading:p, 3.14159265];
  puckView = self->_puckView;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F99AF8;
  v5[3] = &unk_101661738;
  v5[4] = self;
  [(LookAroundPuckView *)puckView updateSubviewsIfNeededAnimated:1 completion:v5];
}

- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)p
{
  mapView = [p mapView];
  self->_lookAroundAvailability = [mapView _lookAroundAvailability];

  [(LookAroundPuckView *)self->_puckView setDimmed:1];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorDidEnterLookAroundPIP:(id)p
{
  pCopy = p;
  mapView = [pCopy mapView];
  self->_lookAroundAvailability = [mapView _lookAroundAvailability];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100F99D50;
  v12 = &unk_101661A90;
  selfCopy = self;
  v14 = pCopy;
  v6 = pCopy;
  v7 = objc_retainBlock(&v9);
  v8 = v7;
  if (self->_canEnterLookAroundPIP)
  {
    (v7[2])(v7);
  }

  else
  {
    [(LookAroundPuckViewController *)self setDidEnterLookAroundPIP:v7, v9, v10, v11, v12, selfCopy, v14];
  }
}

- (void)lookAroundPIPDataCoordinatorWillEnterLookArounPIP:(id)p
{
  mapView = [p mapView];
  self->_lookAroundAvailability = [mapView _lookAroundAvailability];

  [(LookAroundPuckView *)self->_puckView setState:1];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)setCanEnterLookAroundPIP
{
  if (!self->_canEnterLookAroundPIP)
  {
    self->_canEnterLookAroundPIP = 1;
    didEnterLookAroundPIP = [(LookAroundPuckViewController *)self didEnterLookAroundPIP];

    if (didEnterLookAroundPIP)
    {
      didEnterLookAroundPIP2 = [(LookAroundPuckViewController *)self didEnterLookAroundPIP];
      didEnterLookAroundPIP2[2]();

      [(LookAroundPuckViewController *)self setDidEnterLookAroundPIP:0];
    }
  }
}

- (void)setPitch:(double)pitch
{
  if (self->_pitch != pitch)
  {
    self->_pitch = pitch;
    [(LookAroundPuckView *)self->_puckView setPitch:pitch * 0.0174532925];
    puckView = self->_puckView;

    [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
  }
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = LookAroundPuckViewController;
  [(LookAroundPuckViewController *)&v26 viewDidLoad];
  view = [(LookAroundPuckViewController *)self view];
  [view setUserInteractionEnabled:0];

  v4 = objc_alloc_init(MKHapticEngine);
  hapticEngine = self->_hapticEngine;
  self->_hapticEngine = v4;

  v6 = [[LookAroundPuckView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  puckView = self->_puckView;
  self->_puckView = v6;

  [(LookAroundPuckView *)self->_puckView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LookAroundPuckView *)self->_puckView setUserInteractionEnabled:0];
  view2 = [(LookAroundPuckViewController *)self view];
  [view2 addSubview:self->_puckView];

  bottomAnchor = [(LookAroundPuckView *)self->_puckView bottomAnchor];
  view3 = [(LookAroundPuckViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[0] = v22;
  topAnchor = [(LookAroundPuckView *)self->_puckView topAnchor];
  view4 = [(LookAroundPuckViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[1] = v9;
  leadingAnchor = [(LookAroundPuckView *)self->_puckView leadingAnchor];
  view5 = [(LookAroundPuckViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[2] = v13;
  trailingAnchor = [(LookAroundPuckView *)self->_puckView trailingAnchor];
  view6 = [(LookAroundPuckViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[3] = v17;
  v18 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

@end
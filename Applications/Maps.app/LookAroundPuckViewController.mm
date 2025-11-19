@interface LookAroundPuckViewController
- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidEnterLookAroundPIP:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidPanLookAroundView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)a3;
- (void)lookAroundPIPDataCoordinatorIsMovingLookAroundView:(id)a3;
- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorIsRotatingMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorWillEnterLookArounPIP:(id)a3;
- (void)lookAroundPIPDataCoordinatorWillExitLookAroundPIP:(id)a3;
- (void)setCanEnterLookAroundPIP;
- (void)setPitch:(double)a3;
- (void)viewDidLoad;
@end

@implementation LookAroundPuckViewController

- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)a3
{
  v12 = a3;
  v4 = [v12 isMapViewInSyncWithLookAroundView];
  v5 = [v12 isLookAroundDataAvailable];
  [(LookAroundPuckView *)self->_puckView setDimmed:[(LookAroundPuckViewController *)self isDimmed]];
  if (v4 && v5)
  {
    v6 = v12;
    [v6 lookAroundViewHeading];
    v8 = v7;
    v9 = [v6 mapView];

    [v9 presentationYaw];
    v11 = (v8 - v10) * 0.0174532925;

    [(LookAroundPuckView *)self->_puckView setHeading:v11];
  }

  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorIsMovingLookAroundView:(id)a3
{
  v4 = a3;
  [v4 lookAroundViewHeading];
  v6 = v5;
  v7 = [v4 mapView];

  [v7 presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)a3
{
  v12 = a3;
  v4 = [v12 isMapViewInSyncWithLookAroundView];
  v5 = [v12 isLookAroundDataAvailable];
  if (v4 && v5)
  {
    v6 = v12;
    [v6 lookAroundViewHeading];
    v8 = v7;
    v9 = [v6 mapView];

    [v9 presentationYaw];
    v11 = (v8 - v10) * 0.0174532925;

    [(LookAroundPuckView *)self->_puckView setHeading:v11];
    [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
  }
}

- (void)lookAroundPIPDataCoordinatorDidPanLookAroundView:(id)a3
{
  v4 = a3;
  [v4 lookAroundViewHeading];
  v6 = v5;
  v7 = [v4 mapView];

  [v7 presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)lookAroundPIPDataCoordinatorIsRotatingMapView:(id)a3
{
  v4 = a3;
  [v4 lookAroundViewHeading];
  v6 = v5;
  v7 = [v4 mapView];

  [v7 presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)a3
{
  v4 = a3;
  [(MKHapticEngine *)self->_hapticEngine draggedObjectLanded];
  v10 = v4;
  [v10 lookAroundViewHeading];
  v6 = v5;
  v7 = [v10 mapView];

  [v7 presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  [(LookAroundPuckView *)self->_puckView setState:2];
  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)a3
{
  v4 = a3;
  [(LookAroundPuckView *)self->_puckView setDimmed:[(LookAroundPuckViewController *)self isDimmed]];
  v10 = v4;
  [v10 lookAroundViewHeading];
  v6 = v5;
  v7 = [v10 mapView];

  [v7 presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)a3
{
  v4 = a3;
  [(MKHapticEngine *)self->_hapticEngine draggedObjectLifted];
  v10 = v4;
  [v10 lookAroundViewHeading];
  v6 = v5;
  v7 = [v10 mapView];

  [v7 presentationYaw];
  v9 = (v6 - v8) * 0.0174532925;

  [(LookAroundPuckView *)self->_puckView setHeading:v9];
  [(LookAroundPuckView *)self->_puckView setState:3];
  [(LookAroundPuckView *)self->_puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)a3
{
  v4 = a3;
  v5 = self->_lookAroundAvailability == 2;
  v9 = v4;
  v6 = [v4 mapView];
  self->_lookAroundAvailability = [v6 _lookAroundAvailability];

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

- (void)lookAroundPIPDataCoordinatorWillExitLookAroundPIP:(id)a3
{
  [(LookAroundPuckView *)self->_puckView setHeading:a3, 3.14159265];
  puckView = self->_puckView;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F99AF8;
  v5[3] = &unk_101661738;
  v5[4] = self;
  [(LookAroundPuckView *)puckView updateSubviewsIfNeededAnimated:1 completion:v5];
}

- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)a3
{
  v4 = [a3 mapView];
  self->_lookAroundAvailability = [v4 _lookAroundAvailability];

  [(LookAroundPuckView *)self->_puckView setDimmed:1];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeededAnimated:1];
}

- (void)lookAroundPIPDataCoordinatorDidEnterLookAroundPIP:(id)a3
{
  v4 = a3;
  v5 = [v4 mapView];
  self->_lookAroundAvailability = [v5 _lookAroundAvailability];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100F99D50;
  v12 = &unk_101661A90;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = objc_retainBlock(&v9);
  v8 = v7;
  if (self->_canEnterLookAroundPIP)
  {
    (v7[2])(v7);
  }

  else
  {
    [(LookAroundPuckViewController *)self setDidEnterLookAroundPIP:v7, v9, v10, v11, v12, v13, v14];
  }
}

- (void)lookAroundPIPDataCoordinatorWillEnterLookArounPIP:(id)a3
{
  v4 = [a3 mapView];
  self->_lookAroundAvailability = [v4 _lookAroundAvailability];

  [(LookAroundPuckView *)self->_puckView setState:1];
  puckView = self->_puckView;

  [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
}

- (void)setCanEnterLookAroundPIP
{
  if (!self->_canEnterLookAroundPIP)
  {
    self->_canEnterLookAroundPIP = 1;
    v3 = [(LookAroundPuckViewController *)self didEnterLookAroundPIP];

    if (v3)
    {
      v4 = [(LookAroundPuckViewController *)self didEnterLookAroundPIP];
      v4[2]();

      [(LookAroundPuckViewController *)self setDidEnterLookAroundPIP:0];
    }
  }
}

- (void)setPitch:(double)a3
{
  if (self->_pitch != a3)
  {
    self->_pitch = a3;
    [(LookAroundPuckView *)self->_puckView setPitch:a3 * 0.0174532925];
    puckView = self->_puckView;

    [(LookAroundPuckView *)puckView updateSubviewsIfNeeded];
  }
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = LookAroundPuckViewController;
  [(LookAroundPuckViewController *)&v26 viewDidLoad];
  v3 = [(LookAroundPuckViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = objc_alloc_init(MKHapticEngine);
  hapticEngine = self->_hapticEngine;
  self->_hapticEngine = v4;

  v6 = [[LookAroundPuckView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  puckView = self->_puckView;
  self->_puckView = v6;

  [(LookAroundPuckView *)self->_puckView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LookAroundPuckView *)self->_puckView setUserInteractionEnabled:0];
  v8 = [(LookAroundPuckViewController *)self view];
  [v8 addSubview:self->_puckView];

  v24 = [(LookAroundPuckView *)self->_puckView bottomAnchor];
  v25 = [(LookAroundPuckViewController *)self view];
  v23 = [v25 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v20 = [(LookAroundPuckView *)self->_puckView topAnchor];
  v21 = [(LookAroundPuckViewController *)self view];
  v19 = [v21 topAnchor];
  v9 = [v20 constraintEqualToAnchor:v19];
  v27[1] = v9;
  v10 = [(LookAroundPuckView *)self->_puckView leadingAnchor];
  v11 = [(LookAroundPuckViewController *)self view];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v27[2] = v13;
  v14 = [(LookAroundPuckView *)self->_puckView trailingAnchor];
  v15 = [(LookAroundPuckViewController *)self view];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v27[3] = v17;
  v18 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

@end
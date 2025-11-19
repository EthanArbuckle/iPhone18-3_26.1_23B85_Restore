@interface CarMapPanningViewController
- (CarChromeViewController)chromeViewController;
- (CarMapNudgerizer)nudgerizer;
- (CarMapPanningViewControllerDelegate)panDelegate;
- (MKMapView)mapView;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredFocusEnvironments;
- (void)_beginImpulseDown;
- (void)_beginImpulseLeft;
- (void)_beginImpulseRight;
- (void)_beginImpulseUp;
- (void)_createViewsIfNeeded;
- (void)_endImpulseDown;
- (void)_endImpulseLeft;
- (void)_endImpulseRight;
- (void)_endImpulseUp;
- (void)_momentaryImpulseDown;
- (void)_momentaryImpulseLeft;
- (void)_momentaryImpulseRight;
- (void)_momentaryImpulseUp;
- (void)_tappedDone;
- (void)_updateContentViewIfNeeded;
- (void)nudgerizer:(id)a3 didGestureMapView:(id)a4 inDirection:(int64_t)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarMapPanningViewController

- (CarMapPanningViewControllerDelegate)panDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_panDelegate);

  return WeakRetained;
}

- (CarMapNudgerizer)nudgerizer
{
  WeakRetained = objc_loadWeakRetained(&self->_nudgerizer);

  return WeakRetained;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (CarChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)nudgerizer:(id)a3 didGestureMapView:(id)a4 inDirection:(int64_t)a5
{
  v7 = [(CarMapPanningViewController *)self panDelegate:a3];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CarMapPanningViewController *)self panDelegate];
    [v9 carMapPanningViewControllerDidPan:self inDirection:a5];
  }

  v10 = +[CarDisplayController sharedInstance];
  v11 = [v10 window];
  v12 = [v11 windowScene];
  v13 = [v12 focusSystem];
  v14 = [v13 focusedItem];

  v15 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
  v20[0] = v15;
  v16 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
  v20[1] = v16;
  v17 = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
  v20[2] = v17;
  v18 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
  v20[3] = v18;
  v19 = [NSArray arrayWithObjects:v20 count:4];

  if ([v19 containsObject:v14] && objc_msgSend(v14, "direction") != a5)
  {
    [(CarPanButtonContainer *)self->_panButtonContainer setLastNudgedDirection:a5];
    [(CarPanButtonContainer *)self->_panButtonContainer setNeedsFocusUpdate];
  }
}

- (NSArray)carFocusOrderSequences
{
  if ([(CarMapPanningViewController *)self isViewLoaded])
  {
    v3 = +[MapsExternalDevice sharedInstance];
    v4 = [v3 rightHandDrive];

    v21 = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    v5 = [CarFocusOrderItem itemWithFocusItem:?];
    v20 = v5;
    if (v4)
    {
      v24[0] = v5;
      v19 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
      v18 = [CarFocusOrderItem itemWithFocusItem:?];
      v24[1] = v18;
      v17 = [(CarMapPanningViewController *)self chromeViewController];
      v6 = [v17 itemRepresentingMapControls];
      v7 = [v6 itemFlippedForRHD];
      v24[2] = v7;
      v8 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
      v9 = [CarFocusOrderItem itemWithFocusItem:v8];
      v24[3] = v9;
      v10 = [CarFocusOrderItem itemWithFocusItem:self->_doneButton];
      v24[4] = v10;
      v11 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
      v12 = [CarFocusOrderItem itemWithFocusItem:v11];
      v24[5] = v12;
      v13 = [NSArray arrayWithObjects:v24 count:6];
      v14 = [CarFocusOrderSequence sequenceWithItems:v13 options:10];
      v25 = v14;
      v15 = [NSArray arrayWithObjects:&v25 count:1];
    }

    else
    {
      v22[0] = v5;
      v19 = [(CarMapPanningViewController *)self chromeViewController];
      v18 = [v19 itemRepresentingMapControls];
      v22[1] = v18;
      v17 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
      v6 = [CarFocusOrderItem itemWithFocusItem:?];
      v22[2] = v6;
      v7 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
      v8 = [CarFocusOrderItem itemWithFocusItem:v7];
      v22[3] = v8;
      v9 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
      v10 = [CarFocusOrderItem itemWithFocusItem:v9];
      v22[4] = v10;
      v11 = [CarFocusOrderItem itemWithFocusItem:self->_doneButton];
      v22[5] = v11;
      v12 = [NSArray arrayWithObjects:v22 count:6];
      v13 = [CarFocusOrderSequence sequenceWithItems:v12 options:9];
      v23 = v13;
      v15 = [NSArray arrayWithObjects:&v23 count:1];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_momentaryImpulseRight
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 momentaryImpulseInDirection:4];
}

- (void)_endImpulseRight
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 endImpluseInDirection:4];
}

- (void)_beginImpulseRight
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 beginImpulseInDirection:4];
}

- (void)_momentaryImpulseLeft
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 momentaryImpulseInDirection:3];
}

- (void)_endImpulseLeft
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 endImpluseInDirection:3];
}

- (void)_beginImpulseLeft
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 beginImpulseInDirection:3];
}

- (void)_momentaryImpulseDown
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 momentaryImpulseInDirection:2];
}

- (void)_endImpulseDown
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 endImpluseInDirection:2];
}

- (void)_beginImpulseDown
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 beginImpulseInDirection:2];
}

- (void)_momentaryImpulseUp
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 momentaryImpulseInDirection:1];
}

- (void)_endImpulseUp
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 endImpluseInDirection:1];
}

- (void)_beginImpulseUp
{
  v2 = [(CarMapPanningViewController *)self nudgerizer];
  [v2 beginImpulseInDirection:1];
}

- (void)_tappedDone
{
  v3 = [(CarMapPanningViewController *)self panDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CarMapPanningViewController *)self panDelegate];
    [v5 carMapPanningViewControllerDidTapDone:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(CarMapPanningViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  panButtonContainer = self->_panButtonContainer;

  [(CarPanButtonContainer *)panButtonContainer setFrame:v5, v7, v9, v11];
}

- (NSArray)preferredFocusEnvironments
{
  if (self->_panButtonContainer)
  {
    panButtonContainer = self->_panButtonContainer;
    v2 = [NSArray arrayWithObjects:&panButtonContainer count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)_createViewsIfNeeded
{
  if (!self->_doneButton)
  {
    v3 = [[CarDoneButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    doneButton = self->_doneButton;
    self->_doneButton = v3;

    [(CarDoneButton *)self->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarDoneButton *)self->_doneButton addTarget:self action:"_tappedDone" forControlEvents:64];
  }

  if (!self->_panButtonContainer)
  {
    v5 = [[CarPanButtonContainer alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    panButtonContainer = self->_panButtonContainer;
    self->_panButtonContainer = v5;

    [(CarPanButtonContainer *)self->_panButtonContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
    [v7 addTarget:self action:"_beginImpulseUp" forControlEvents:0x2000000];

    v8 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
    [v8 addTarget:self action:"_endImpulseUp" forControlEvents:0x4000000];

    v9 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
    [v9 addTarget:self action:"_momentaryImpulseUp" forControlEvents:0x1000000];

    v10 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
    [v10 addTarget:self action:"_beginImpulseLeft" forControlEvents:0x2000000];

    v11 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
    [v11 addTarget:self action:"_endImpulseLeft" forControlEvents:0x4000000];

    v12 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
    [v12 addTarget:self action:"_momentaryImpulseLeft" forControlEvents:0x1000000];

    v13 = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    [v13 addTarget:self action:"_beginImpulseRight" forControlEvents:0x2000000];

    v14 = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    [v14 addTarget:self action:"_endImpulseRight" forControlEvents:0x4000000];

    v15 = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    [v15 addTarget:self action:"_momentaryImpulseRight" forControlEvents:0x1000000];

    v16 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
    [v16 addTarget:self action:"_beginImpulseDown" forControlEvents:0x2000000];

    v17 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
    [v17 addTarget:self action:"_endImpulseDown" forControlEvents:0x4000000];

    v18 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
    [v18 addTarget:self action:"_momentaryImpulseDown" forControlEvents:0x1000000];
  }
}

- (void)_updateContentViewIfNeeded
{
  v3 = [(CarMapPanningViewController *)self chromeViewController];
  v4 = [v3 viewport];

  v5 = [(CarMapPanningViewController *)self chromeViewController];
  v6 = [v5 viewportLayoutGuide];

  if (self->_doneButton)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  v8 = v7 || v6 == 0;
  if (!v8 && [(CarMapPanningViewController *)self isViewLoaded])
  {
    [(CarMapPanningViewController *)self _createViewsIfNeeded];
    [v4 addSubview:self->_doneButton];
    [v4 addSubview:self->_panButtonContainer];
    v30 = [(CarDoneButton *)self->_doneButton _maps_rightRHDAnchor];
    v31 = [v4 safeAreaLayoutGuide];
    v29 = [v31 _maps_rightRHDAnchor];
    LODWORD(v9) = 1148846080;
    v28 = [v30 _maps_constraintWithRHDAnchor:v29 relation:0 constant:-10.0 priority:v9];
    v32[0] = v28;
    v27 = [(CarDoneButton *)self->_doneButton topAnchor];
    v26 = [v6 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:10.0];
    v32[1] = v25;
    v24 = [(CarDoneButton *)self->_doneButton heightAnchor];
    v23 = [v24 constraintEqualToConstant:36.0];
    v32[2] = v23;
    v22 = [(CarPanButtonContainer *)self->_panButtonContainer topAnchor];
    v21 = [v6 topAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v32[3] = v20;
    v19 = [(CarPanButtonContainer *)self->_panButtonContainer bottomAnchor];
    v18 = [v6 bottomAnchor];
    v10 = [v19 constraintEqualToAnchor:v18];
    v32[4] = v10;
    v11 = [(CarPanButtonContainer *)self->_panButtonContainer leadingAnchor];
    v12 = [v6 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v32[5] = v13;
    v14 = [(CarPanButtonContainer *)self->_panButtonContainer trailingAnchor];
    v15 = [v6 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v32[6] = v16;
    v17 = [NSArray arrayWithObjects:v32 count:7];
    [NSLayoutConstraint activateConstraints:v17];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CarMapPanningViewController;
  [(CarMapPanningViewController *)&v6 viewWillDisappear:a3];
  [(CarDoneButton *)self->_doneButton removeFromSuperview];
  [(CarPanButtonContainer *)self->_panButtonContainer removeFromSuperview];
  doneButton = self->_doneButton;
  self->_doneButton = 0;

  panButtonContainer = self->_panButtonContainer;
  self->_panButtonContainer = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarMapPanningViewController *)self navigationController];
  [v5 setNeedsFocusUpdate];

  v6.receiver = self;
  v6.super_class = CarMapPanningViewController;
  [(CarMapPanningViewController *)&v6 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarMapPanningViewController;
  [(CarMapPanningViewController *)&v4 viewWillAppear:a3];
  [(CarMapPanningViewController *)self _updateContentViewIfNeeded];
}

@end
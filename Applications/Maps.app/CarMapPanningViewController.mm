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
- (void)nudgerizer:(id)nudgerizer didGestureMapView:(id)view inDirection:(int64_t)direction;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)nudgerizer:(id)nudgerizer didGestureMapView:(id)view inDirection:(int64_t)direction
{
  v7 = [(CarMapPanningViewController *)self panDelegate:nudgerizer];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    panDelegate = [(CarMapPanningViewController *)self panDelegate];
    [panDelegate carMapPanningViewControllerDidPan:self inDirection:direction];
  }

  v10 = +[CarDisplayController sharedInstance];
  window = [v10 window];
  windowScene = [window windowScene];
  focusSystem = [windowScene focusSystem];
  focusedItem = [focusSystem focusedItem];

  panUpButton = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
  v20[0] = panUpButton;
  panLeftButton = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
  v20[1] = panLeftButton;
  panRightButton = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
  v20[2] = panRightButton;
  panDownButton = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
  v20[3] = panDownButton;
  v19 = [NSArray arrayWithObjects:v20 count:4];

  if ([v19 containsObject:focusedItem] && objc_msgSend(focusedItem, "direction") != direction)
  {
    [(CarPanButtonContainer *)self->_panButtonContainer setLastNudgedDirection:direction];
    [(CarPanButtonContainer *)self->_panButtonContainer setNeedsFocusUpdate];
  }
}

- (NSArray)carFocusOrderSequences
{
  if ([(CarMapPanningViewController *)self isViewLoaded])
  {
    v3 = +[MapsExternalDevice sharedInstance];
    rightHandDrive = [v3 rightHandDrive];

    panRightButton = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    v5 = [CarFocusOrderItem itemWithFocusItem:?];
    v20 = v5;
    if (rightHandDrive)
    {
      v24[0] = v5;
      panDownButton = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
      itemRepresentingMapControls2 = [CarFocusOrderItem itemWithFocusItem:?];
      v24[1] = itemRepresentingMapControls2;
      chromeViewController = [(CarMapPanningViewController *)self chromeViewController];
      itemRepresentingMapControls = [chromeViewController itemRepresentingMapControls];
      itemFlippedForRHD = [itemRepresentingMapControls itemFlippedForRHD];
      v24[2] = itemFlippedForRHD;
      panLeftButton = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
      panUpButton2 = [CarFocusOrderItem itemWithFocusItem:panLeftButton];
      v24[3] = panUpButton2;
      v10 = [CarFocusOrderItem itemWithFocusItem:self->_doneButton];
      v24[4] = v10;
      panUpButton = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
      v12 = [CarFocusOrderItem itemWithFocusItem:panUpButton];
      v24[5] = v12;
      v13 = [NSArray arrayWithObjects:v24 count:6];
      v14 = [CarFocusOrderSequence sequenceWithItems:v13 options:10];
      v25 = v14;
      v15 = [NSArray arrayWithObjects:&v25 count:1];
    }

    else
    {
      v22[0] = v5;
      panDownButton = [(CarMapPanningViewController *)self chromeViewController];
      itemRepresentingMapControls2 = [panDownButton itemRepresentingMapControls];
      v22[1] = itemRepresentingMapControls2;
      chromeViewController = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
      itemRepresentingMapControls = [CarFocusOrderItem itemWithFocusItem:?];
      v22[2] = itemRepresentingMapControls;
      itemFlippedForRHD = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
      panLeftButton = [CarFocusOrderItem itemWithFocusItem:itemFlippedForRHD];
      v22[3] = panLeftButton;
      panUpButton2 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
      v10 = [CarFocusOrderItem itemWithFocusItem:panUpButton2];
      v22[4] = v10;
      panUpButton = [CarFocusOrderItem itemWithFocusItem:self->_doneButton];
      v22[5] = panUpButton;
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
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer momentaryImpulseInDirection:4];
}

- (void)_endImpulseRight
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer endImpluseInDirection:4];
}

- (void)_beginImpulseRight
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer beginImpulseInDirection:4];
}

- (void)_momentaryImpulseLeft
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer momentaryImpulseInDirection:3];
}

- (void)_endImpulseLeft
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer endImpluseInDirection:3];
}

- (void)_beginImpulseLeft
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer beginImpulseInDirection:3];
}

- (void)_momentaryImpulseDown
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer momentaryImpulseInDirection:2];
}

- (void)_endImpulseDown
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer endImpluseInDirection:2];
}

- (void)_beginImpulseDown
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer beginImpulseInDirection:2];
}

- (void)_momentaryImpulseUp
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer momentaryImpulseInDirection:1];
}

- (void)_endImpulseUp
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer endImpluseInDirection:1];
}

- (void)_beginImpulseUp
{
  nudgerizer = [(CarMapPanningViewController *)self nudgerizer];
  [nudgerizer beginImpulseInDirection:1];
}

- (void)_tappedDone
{
  panDelegate = [(CarMapPanningViewController *)self panDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    panDelegate2 = [(CarMapPanningViewController *)self panDelegate];
    [panDelegate2 carMapPanningViewControllerDidTapDone:self];
  }
}

- (void)viewDidLayoutSubviews
{
  view = [(CarMapPanningViewController *)self view];
  [view bounds];
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
    panUpButton = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
    [panUpButton addTarget:self action:"_beginImpulseUp" forControlEvents:0x2000000];

    panUpButton2 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
    [panUpButton2 addTarget:self action:"_endImpulseUp" forControlEvents:0x4000000];

    panUpButton3 = [(CarPanButtonContainer *)self->_panButtonContainer panUpButton];
    [panUpButton3 addTarget:self action:"_momentaryImpulseUp" forControlEvents:0x1000000];

    panLeftButton = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
    [panLeftButton addTarget:self action:"_beginImpulseLeft" forControlEvents:0x2000000];

    panLeftButton2 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
    [panLeftButton2 addTarget:self action:"_endImpulseLeft" forControlEvents:0x4000000];

    panLeftButton3 = [(CarPanButtonContainer *)self->_panButtonContainer panLeftButton];
    [panLeftButton3 addTarget:self action:"_momentaryImpulseLeft" forControlEvents:0x1000000];

    panRightButton = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    [panRightButton addTarget:self action:"_beginImpulseRight" forControlEvents:0x2000000];

    panRightButton2 = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    [panRightButton2 addTarget:self action:"_endImpulseRight" forControlEvents:0x4000000];

    panRightButton3 = [(CarPanButtonContainer *)self->_panButtonContainer panRightButton];
    [panRightButton3 addTarget:self action:"_momentaryImpulseRight" forControlEvents:0x1000000];

    panDownButton = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
    [panDownButton addTarget:self action:"_beginImpulseDown" forControlEvents:0x2000000];

    panDownButton2 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
    [panDownButton2 addTarget:self action:"_endImpulseDown" forControlEvents:0x4000000];

    panDownButton3 = [(CarPanButtonContainer *)self->_panButtonContainer panDownButton];
    [panDownButton3 addTarget:self action:"_momentaryImpulseDown" forControlEvents:0x1000000];
  }
}

- (void)_updateContentViewIfNeeded
{
  chromeViewController = [(CarMapPanningViewController *)self chromeViewController];
  viewport = [chromeViewController viewport];

  chromeViewController2 = [(CarMapPanningViewController *)self chromeViewController];
  viewportLayoutGuide = [chromeViewController2 viewportLayoutGuide];

  if (self->_doneButton)
  {
    v7 = 1;
  }

  else
  {
    v7 = viewport == 0;
  }

  v8 = v7 || viewportLayoutGuide == 0;
  if (!v8 && [(CarMapPanningViewController *)self isViewLoaded])
  {
    [(CarMapPanningViewController *)self _createViewsIfNeeded];
    [viewport addSubview:self->_doneButton];
    [viewport addSubview:self->_panButtonContainer];
    _maps_rightRHDAnchor = [(CarDoneButton *)self->_doneButton _maps_rightRHDAnchor];
    safeAreaLayoutGuide = [viewport safeAreaLayoutGuide];
    _maps_rightRHDAnchor2 = [safeAreaLayoutGuide _maps_rightRHDAnchor];
    LODWORD(v9) = 1148846080;
    v28 = [_maps_rightRHDAnchor _maps_constraintWithRHDAnchor:_maps_rightRHDAnchor2 relation:0 constant:-10.0 priority:v9];
    v32[0] = v28;
    topAnchor = [(CarDoneButton *)self->_doneButton topAnchor];
    topAnchor2 = [viewportLayoutGuide topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v32[1] = v25;
    heightAnchor = [(CarDoneButton *)self->_doneButton heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:36.0];
    v32[2] = v23;
    topAnchor3 = [(CarPanButtonContainer *)self->_panButtonContainer topAnchor];
    topAnchor4 = [viewportLayoutGuide topAnchor];
    v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v32[3] = v20;
    bottomAnchor = [(CarPanButtonContainer *)self->_panButtonContainer bottomAnchor];
    bottomAnchor2 = [viewportLayoutGuide bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[4] = v10;
    leadingAnchor = [(CarPanButtonContainer *)self->_panButtonContainer leadingAnchor];
    leadingAnchor2 = [viewportLayoutGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[5] = v13;
    trailingAnchor = [(CarPanButtonContainer *)self->_panButtonContainer trailingAnchor];
    trailingAnchor2 = [viewportLayoutGuide trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[6] = v16;
    v17 = [NSArray arrayWithObjects:v32 count:7];
    [NSLayoutConstraint activateConstraints:v17];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CarMapPanningViewController;
  [(CarMapPanningViewController *)&v6 viewWillDisappear:disappear];
  [(CarDoneButton *)self->_doneButton removeFromSuperview];
  [(CarPanButtonContainer *)self->_panButtonContainer removeFromSuperview];
  doneButton = self->_doneButton;
  self->_doneButton = 0;

  panButtonContainer = self->_panButtonContainer;
  self->_panButtonContainer = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(CarMapPanningViewController *)self navigationController];
  [navigationController setNeedsFocusUpdate];

  v6.receiver = self;
  v6.super_class = CarMapPanningViewController;
  [(CarMapPanningViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CarMapPanningViewController;
  [(CarMapPanningViewController *)&v4 viewWillAppear:appear];
  [(CarMapPanningViewController *)self _updateContentViewIfNeeded];
}

@end
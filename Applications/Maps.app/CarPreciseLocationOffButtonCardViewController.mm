@interface CarPreciseLocationOffButtonCardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout;
- (BOOL)checkShouldBeVisible;
- (CarPreciseLocationOffButtonCardViewController)initWithDelegate:(id)delegate;
- (CarPreciseLocationOffButtonCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_buttonTapped:(id)tapped;
- (void)locationManagerApprovalDidChange:(id)change;
- (void)setShouldBeVisible:(BOOL)visible;
- (void)viewDidLoad;
@end

@implementation CarPreciseLocationOffButtonCardViewController

- (CarPreciseLocationOffButtonCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  preciseLocationOffButton = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  v5 = preciseLocationOffButton;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (NSArray)focusOrderSubItems
{
  preciseLocationOffButton = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  v5 = preciseLocationOffButton;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout
{
  retstr->var0 = 15;
  retstr->var1 = 14.0;
  result = kCACornerCurveContinuous;
  *&retstr->var3 = 0;
  retstr->var4 = 0;
  retstr->var2 = result;
  return result;
}

- (void)locationManagerApprovalDidChange:(id)change
{
  checkShouldBeVisible = [(CarPreciseLocationOffButtonCardViewController *)self checkShouldBeVisible];

  [(CarPreciseLocationOffButtonCardViewController *)self setShouldBeVisible:checkShouldBeVisible];
}

- (void)_buttonTapped:(id)tapped
{
  delegate = [(CarPreciseLocationOffButtonCardViewController *)self delegate];
  [delegate preciseLocationOffButtonCardDidSelectAction:self];
}

- (void)setShouldBeVisible:(BOOL)visible
{
  if (self->_shouldBeVisible != visible)
  {
    self->_shouldBeVisible = visible;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained preciseLocationOffButtonCard:self visibilityUpdated:self->_shouldBeVisible];
  }
}

- (BOOL)checkShouldBeVisible
{
  v2 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v2 isAuthorizedForPreciseLocation];

  v4 = +[MKLocationManager sharedLocationManager];
  isLocationServicesApproved = [v4 isLocationServicesApproved];

  return (isAuthorizedForPreciseLocation ^ 1) & isLocationServicesApproved;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = CarPreciseLocationOffButtonCardViewController;
  [(CarPreciseLocationOffButtonCardViewController *)&v25 viewDidLoad];
  view = [(CarPreciseLocationOffButtonCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarPreciseLocationOffButtonCard"];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CarPlay_PreciseLocationOffButton" value:@"localized string not found" table:0];
  v6 = [CarPreciseLocationOffButton preciseLocationOffButtonWithTitle:v5];
  [(CarPreciseLocationOffButtonCardViewController *)self setPreciseLocationOffButton:v6];

  preciseLocationOffButton = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  [preciseLocationOffButton setTranslatesAutoresizingMaskIntoConstraints:0];

  preciseLocationOffButton2 = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  [preciseLocationOffButton2 addTarget:self action:"_buttonTapped:" forControlEvents:64];

  v9 = [UIStackView alloc];
  preciseLocationOffButton3 = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  v26 = preciseLocationOffButton3;
  v11 = [NSArray arrayWithObjects:&v26 count:1];
  v12 = [v9 initWithArrangedSubviews:v11];
  [(CarPreciseLocationOffButtonCardViewController *)self setButtonStack:v12];

  buttonStack = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [buttonStack setTranslatesAutoresizingMaskIntoConstraints:0];

  buttonStack2 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [buttonStack2 setAxis:1];

  buttonStack3 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [buttonStack3 setDistribution:2];

  buttonStack4 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [buttonStack4 setSpacing:2.0];

  buttonStack5 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [buttonStack5 setAccessibilityIdentifier:@"CarPreciseLocationOffCard"];

  view2 = [(CarPreciseLocationOffButtonCardViewController *)self view];
  buttonStack6 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [view2 addSubview:buttonStack6];

  buttonStack7 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  view3 = [(CarPreciseLocationOffButtonCardViewController *)self view];
  LODWORD(v22) = 1148846080;
  v23 = [buttonStack7 _maps_constraintsEqualToEdgesOfView:view3 priority:v22];
  allConstraints = [v23 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (CarPreciseLocationOffButtonCardViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = CarPreciseLocationOffButtonCardViewController;
  v5 = [(CarPreciseLocationOffButtonCardViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(CarPreciseLocationOffButtonCardViewController *)v6 setShouldBeVisible:[(CarPreciseLocationOffButtonCardViewController *)v6 checkShouldBeVisible]];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  return v6;
}

@end
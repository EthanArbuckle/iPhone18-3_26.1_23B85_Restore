@interface CarPreciseLocationOffButtonCardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3;
- (BOOL)checkShouldBeVisible;
- (CarPreciseLocationOffButtonCardViewController)initWithDelegate:(id)a3;
- (CarPreciseLocationOffButtonCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_buttonTapped:(id)a3;
- (void)locationManagerApprovalDidChange:(id)a3;
- (void)setShouldBeVisible:(BOOL)a3;
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
  v2 = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (NSArray)focusOrderSubItems
{
  v2 = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3
{
  retstr->var0 = 15;
  retstr->var1 = 14.0;
  result = kCACornerCurveContinuous;
  *&retstr->var3 = 0;
  retstr->var4 = 0;
  retstr->var2 = result;
  return result;
}

- (void)locationManagerApprovalDidChange:(id)a3
{
  v4 = [(CarPreciseLocationOffButtonCardViewController *)self checkShouldBeVisible];

  [(CarPreciseLocationOffButtonCardViewController *)self setShouldBeVisible:v4];
}

- (void)_buttonTapped:(id)a3
{
  v4 = [(CarPreciseLocationOffButtonCardViewController *)self delegate];
  [v4 preciseLocationOffButtonCardDidSelectAction:self];
}

- (void)setShouldBeVisible:(BOOL)a3
{
  if (self->_shouldBeVisible != a3)
  {
    self->_shouldBeVisible = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained preciseLocationOffButtonCard:self visibilityUpdated:self->_shouldBeVisible];
  }
}

- (BOOL)checkShouldBeVisible
{
  v2 = +[MKLocationManager sharedLocationManager];
  v3 = [v2 isAuthorizedForPreciseLocation];

  v4 = +[MKLocationManager sharedLocationManager];
  v5 = [v4 isLocationServicesApproved];

  return (v3 ^ 1) & v5;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = CarPreciseLocationOffButtonCardViewController;
  [(CarPreciseLocationOffButtonCardViewController *)&v25 viewDidLoad];
  v3 = [(CarPreciseLocationOffButtonCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarPreciseLocationOffButtonCard"];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CarPlay_PreciseLocationOffButton" value:@"localized string not found" table:0];
  v6 = [CarPreciseLocationOffButton preciseLocationOffButtonWithTitle:v5];
  [(CarPreciseLocationOffButtonCardViewController *)self setPreciseLocationOffButton:v6];

  v7 = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  [v8 addTarget:self action:"_buttonTapped:" forControlEvents:64];

  v9 = [UIStackView alloc];
  v10 = [(CarPreciseLocationOffButtonCardViewController *)self preciseLocationOffButton];
  v26 = v10;
  v11 = [NSArray arrayWithObjects:&v26 count:1];
  v12 = [v9 initWithArrangedSubviews:v11];
  [(CarPreciseLocationOffButtonCardViewController *)self setButtonStack:v12];

  v13 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [v14 setAxis:1];

  v15 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [v15 setDistribution:2];

  v16 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [v16 setSpacing:2.0];

  v17 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [v17 setAccessibilityIdentifier:@"CarPreciseLocationOffCard"];

  v18 = [(CarPreciseLocationOffButtonCardViewController *)self view];
  v19 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  [v18 addSubview:v19];

  v20 = [(CarPreciseLocationOffButtonCardViewController *)self buttonStack];
  v21 = [(CarPreciseLocationOffButtonCardViewController *)self view];
  LODWORD(v22) = 1148846080;
  v23 = [v20 _maps_constraintsEqualToEdgesOfView:v21 priority:v22];
  v24 = [v23 allConstraints];
  [NSLayoutConstraint activateConstraints:v24];
}

- (CarPreciseLocationOffButtonCardViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CarPreciseLocationOffButtonCardViewController;
  v5 = [(CarPreciseLocationOffButtonCardViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(CarPreciseLocationOffButtonCardViewController *)v6 setShouldBeVisible:[(CarPreciseLocationOffButtonCardViewController *)v6 checkShouldBeVisible]];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  return v6;
}

@end
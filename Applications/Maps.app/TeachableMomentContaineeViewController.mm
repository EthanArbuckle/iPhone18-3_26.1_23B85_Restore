@interface TeachableMomentContaineeViewController
- (TeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)configuration;
- (double)heightForLayout:(unint64_t)layout;
- (void)_setHasShownTeachableMomentFlag;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation TeachableMomentContaineeViewController

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout == 5)
  {
    height = UILayoutFittingCompressedSize.height;
    view = [(TeachableMomentContaineeViewController *)self view];
    view2 = [(TeachableMomentContaineeViewController *)self view];
    [view2 frame];
    v9 = v8;
    LODWORD(v8) = 1148846080;
    LODWORD(v10) = 1112014848;
    [view systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:height verticalFittingPriority:{v8, v10}];
    v3 = v11;

    view3 = [(TeachableMomentContaineeViewController *)self view];
    [view3 safeAreaInsets];
    v14 = v13;

    if (v14 == 0.0)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v3 = v16 + v3;
    }
  }

  return v3;
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = TeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v5 willChangeContainerStyle:?];
  if (style == 6 || style == 3)
  {
    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_setHasShownTeachableMomentFlag
{
  v4 = +[NSUserDefaults standardUserDefaults];
  userDefaultSaveKey = [(TeachableMomentConfiguration *)self->_configuration userDefaultSaveKey];
  [v4 setBool:1 forKey:userDefaultSaveKey];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TeachableMomentContaineeViewController;
  [(TeachableMomentContaineeViewController *)&v4 viewDidAppear:appear];
  [(TeachableMomentContaineeViewController *)self _setHasShownTeachableMomentFlag];
}

- (void)viewDidLoad
{
  v85.receiver = self;
  v85.super_class = TeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v85 viewDidLoad];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v5 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v5];

  title = [(TeachableMomentConfiguration *)self->_configuration title];
  [(UILabel *)self->_titleLabel setText:title];

  [DynamicTypeWizard autorefreshLabel:self->_titleLabel withFontProvider:&stru_10165D868];
  view = [(TeachableMomentContaineeViewController *)self view];
  [view addSubview:self->_titleLabel];

  v8 = objc_alloc_init(UIView);
  animationContainer = self->_animationContainer;
  self->_animationContainer = v8;

  [(UIView *)self->_animationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(TeachableMomentContaineeViewController *)self view];
  [view2 addSubview:self->_animationContainer];

  leadingAnchor = [(UIView *)self->_animationContainer leadingAnchor];
  view3 = [(TeachableMomentContaineeViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v89[0] = v73;
  trailingAnchor = [(UIView *)self->_animationContainer trailingAnchor];
  view4 = [(TeachableMomentContaineeViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v89[1] = v11;
  topAnchor = [(UIView *)self->_animationContainer topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v14 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v89[2] = v14;
  heightAnchor = [(UIView *)self->_animationContainer heightAnchor];
  widthAnchor = [(UIView *)self->_animationContainer widthAnchor];
  v17 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.64533335 constant:0.0];
  v89[3] = v17;
  v18 = [NSArray arrayWithObjects:v89 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  illustrationViewController = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  [(TeachableMomentContaineeViewController *)self addChildViewController:illustrationViewController];

  illustrationViewController2 = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  view5 = [illustrationViewController2 view];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = self->_animationContainer;
  illustrationViewController3 = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  view6 = [illustrationViewController3 view];
  [(UIView *)v22 addSubview:view6];

  illustrationViewController4 = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  view7 = [illustrationViewController4 view];
  LODWORD(v27) = 1148846080;
  v28 = [view7 _maps_constraintsEqualToEdgesOfView:self->_animationContainer priority:v27];
  allConstraints = [v28 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  v30 = +[OBBoldTrayButton boldButton];
  acknowledgementButton = self->_acknowledgementButton;
  self->_acknowledgementButton = v30;

  [(OBBoldTrayButton *)self->_acknowledgementButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = self->_acknowledgementButton;
  buttonTitle = [(TeachableMomentConfiguration *)self->_configuration buttonTitle];
  [(OBBoldTrayButton *)v32 setTitle:buttonTitle forState:0];

  [(OBBoldTrayButton *)self->_acknowledgementButton addTarget:self action:"handleDismissAction:" forEvents:64];
  view8 = [(TeachableMomentContaineeViewController *)self view];
  [view8 addSubview:self->_acknowledgementButton];

  leadingAnchor3 = [(OBBoldTrayButton *)self->_acknowledgementButton leadingAnchor];
  view9 = [(TeachableMomentContaineeViewController *)self view];
  leadingAnchor4 = [view9 leadingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v76 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v88[0] = v76;
  trailingAnchor3 = [(OBBoldTrayButton *)self->_acknowledgementButton trailingAnchor];
  view10 = [(TeachableMomentContaineeViewController *)self view];
  trailingAnchor4 = [view10 trailingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v35];
  v88[1] = v68;
  topAnchor2 = [(OBBoldTrayButton *)self->_acknowledgementButton topAnchor];
  bottomAnchor2 = [(UIView *)self->_animationContainer bottomAnchor];
  v38 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
  v88[2] = v38;
  bottomAnchor3 = [(OBBoldTrayButton *)self->_acknowledgementButton bottomAnchor];
  view11 = [(TeachableMomentContaineeViewController *)self view];
  safeAreaLayoutGuide = [view11 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
  v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v88[3] = v43;
  v44 = [NSArray arrayWithObjects:v88 count:4];
  [NSLayoutConstraint activateConstraints:v44];

  v45 = +[UIButton _maps_cardButtonCloseButton];
  closeButton = self->_closeButton;
  self->_closeButton = v45;

  [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_closeButton addTarget:self action:"_closeButtonAction:" forControlEvents:64];
  view12 = [(TeachableMomentContaineeViewController *)self view];
  [view12 addSubview:self->_closeButton];

  trailingAnchor5 = [(UIButton *)self->_closeButton trailingAnchor];
  view13 = [(TeachableMomentContaineeViewController *)self view];
  trailingAnchor6 = [view13 trailingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim cardHeaderHorizontalControlPadding];
  v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v50];
  v87[0] = v51;
  topAnchor3 = [(UIButton *)self->_closeButton topAnchor];
  view14 = [(TeachableMomentContaineeViewController *)self view];
  topAnchor4 = [view14 topAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim cardHeaderTopPadding];
  v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  v87[1] = v55;
  v56 = [NSArray arrayWithObjects:v87 count:2];
  [NSLayoutConstraint activateConstraints:v56];

  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  view15 = [(TeachableMomentContaineeViewController *)self view];
  leadingAnchor6 = [view15 leadingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
  v58 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  v86[0] = v58;
  trailingAnchor7 = [(UILabel *)self->_titleLabel trailingAnchor];
  leadingAnchor7 = [(UIButton *)self->_closeButton leadingAnchor];
  v61 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor7 constant:-8.0];
  v86[1] = v61;
  topAnchor5 = [(UILabel *)self->_titleLabel topAnchor];
  view16 = [(TeachableMomentContaineeViewController *)self view];
  topAnchor6 = [view16 topAnchor];
  v65 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:22.0];
  v86[2] = v65;
  v66 = [NSArray arrayWithObjects:v86 count:3];
  [NSLayoutConstraint activateConstraints:v66];
}

- (TeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = TeachableMomentContaineeViewController;
  v6 = [(TeachableMomentContaineeViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    cardPresentationController = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController setHideGrabber:1];

    cardPresentationController2 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController3 setPresentedModally:1];
  }

  return v7;
}

@end
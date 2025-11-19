@interface TeachableMomentContaineeViewController
- (TeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)a3;
- (double)heightForLayout:(unint64_t)a3;
- (void)_setHasShownTeachableMomentFlag;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willChangeContainerStyle:(unint64_t)a3;
@end

@implementation TeachableMomentContaineeViewController

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if (a3 == 5)
  {
    height = UILayoutFittingCompressedSize.height;
    v6 = [(TeachableMomentContaineeViewController *)self view];
    v7 = [(TeachableMomentContaineeViewController *)self view];
    [v7 frame];
    v9 = v8;
    LODWORD(v8) = 1148846080;
    LODWORD(v10) = 1112014848;
    [v6 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:height verticalFittingPriority:{v8, v10}];
    v3 = v11;

    v12 = [(TeachableMomentContaineeViewController *)self view];
    [v12 safeAreaInsets];
    v14 = v13;

    if (v14 == 0.0)
    {
      v15 = [(ContaineeViewController *)self cardPresentationController];
      [v15 bottomSafeOffset];
      v3 = v16 + v3;
    }
  }

  return v3;
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v5 willChangeContainerStyle:?];
  if (a3 == 6 || a3 == 3)
  {
    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_setHasShownTeachableMomentFlag
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v3 = [(TeachableMomentConfiguration *)self->_configuration userDefaultSaveKey];
  [v4 setBool:1 forKey:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TeachableMomentContaineeViewController;
  [(TeachableMomentContaineeViewController *)&v4 viewDidAppear:a3];
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

  v6 = [(TeachableMomentConfiguration *)self->_configuration title];
  [(UILabel *)self->_titleLabel setText:v6];

  [DynamicTypeWizard autorefreshLabel:self->_titleLabel withFontProvider:&stru_10165D868];
  v7 = [(TeachableMomentContaineeViewController *)self view];
  [v7 addSubview:self->_titleLabel];

  v8 = objc_alloc_init(UIView);
  animationContainer = self->_animationContainer;
  self->_animationContainer = v8;

  [(UIView *)self->_animationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(TeachableMomentContaineeViewController *)self view];
  [v10 addSubview:self->_animationContainer];

  v77 = [(UIView *)self->_animationContainer leadingAnchor];
  v79 = [(TeachableMomentContaineeViewController *)self view];
  v75 = [v79 leadingAnchor];
  v73 = [v77 constraintEqualToAnchor:v75];
  v89[0] = v73;
  v70 = [(UIView *)self->_animationContainer trailingAnchor];
  v72 = [(TeachableMomentContaineeViewController *)self view];
  v67 = [v72 trailingAnchor];
  v11 = [v70 constraintEqualToAnchor:v67];
  v89[1] = v11;
  v12 = [(UIView *)self->_animationContainer topAnchor];
  v13 = [(UILabel *)self->_titleLabel bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v89[2] = v14;
  v15 = [(UIView *)self->_animationContainer heightAnchor];
  v16 = [(UIView *)self->_animationContainer widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 multiplier:0.64533335 constant:0.0];
  v89[3] = v17;
  v18 = [NSArray arrayWithObjects:v89 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  [(TeachableMomentContaineeViewController *)self addChildViewController:v19];

  v20 = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  v21 = [v20 view];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = self->_animationContainer;
  v23 = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  v24 = [v23 view];
  [(UIView *)v22 addSubview:v24];

  v25 = [(TeachableMomentConfiguration *)self->_configuration illustrationViewController];
  v26 = [v25 view];
  LODWORD(v27) = 1148846080;
  v28 = [v26 _maps_constraintsEqualToEdgesOfView:self->_animationContainer priority:v27];
  v29 = [v28 allConstraints];
  [NSLayoutConstraint activateConstraints:v29];

  v30 = +[OBBoldTrayButton boldButton];
  acknowledgementButton = self->_acknowledgementButton;
  self->_acknowledgementButton = v30;

  [(OBBoldTrayButton *)self->_acknowledgementButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = self->_acknowledgementButton;
  v33 = [(TeachableMomentConfiguration *)self->_configuration buttonTitle];
  [(OBBoldTrayButton *)v32 setTitle:v33 forState:0];

  [(OBBoldTrayButton *)self->_acknowledgementButton addTarget:self action:"handleDismissAction:" forEvents:64];
  v34 = [(TeachableMomentContaineeViewController *)self view];
  [v34 addSubview:self->_acknowledgementButton];

  v80 = [(OBBoldTrayButton *)self->_acknowledgementButton leadingAnchor];
  v82 = [(TeachableMomentContaineeViewController *)self view];
  v78 = [v82 leadingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v76 = [v80 constraintEqualToAnchor:v78 constant:?];
  v88[0] = v76;
  v71 = [(OBBoldTrayButton *)self->_acknowledgementButton trailingAnchor];
  v74 = [(TeachableMomentContaineeViewController *)self view];
  v69 = [v74 trailingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v68 = [v71 constraintEqualToAnchor:v69 constant:-v35];
  v88[1] = v68;
  v36 = [(OBBoldTrayButton *)self->_acknowledgementButton topAnchor];
  v37 = [(UIView *)self->_animationContainer bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v88[2] = v38;
  v39 = [(OBBoldTrayButton *)self->_acknowledgementButton bottomAnchor];
  v40 = [(TeachableMomentContaineeViewController *)self view];
  v41 = [v40 safeAreaLayoutGuide];
  v42 = [v41 bottomAnchor];
  v43 = [v39 constraintEqualToAnchor:v42];
  v88[3] = v43;
  v44 = [NSArray arrayWithObjects:v88 count:4];
  [NSLayoutConstraint activateConstraints:v44];

  v45 = +[UIButton _maps_cardButtonCloseButton];
  closeButton = self->_closeButton;
  self->_closeButton = v45;

  [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_closeButton addTarget:self action:"_closeButtonAction:" forControlEvents:64];
  v47 = [(TeachableMomentContaineeViewController *)self view];
  [v47 addSubview:self->_closeButton];

  v83 = [(UIButton *)self->_closeButton trailingAnchor];
  v48 = [(TeachableMomentContaineeViewController *)self view];
  v49 = [v48 trailingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim cardHeaderHorizontalControlPadding];
  v51 = [v83 constraintEqualToAnchor:v49 constant:-v50];
  v87[0] = v51;
  v52 = [(UIButton *)self->_closeButton topAnchor];
  v53 = [(TeachableMomentContaineeViewController *)self view];
  v54 = [v53 topAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim cardHeaderTopPadding];
  v55 = [v52 constraintEqualToAnchor:v54 constant:?];
  v87[1] = v55;
  v56 = [NSArray arrayWithObjects:v87 count:2];
  [NSLayoutConstraint activateConstraints:v56];

  v81 = [(UILabel *)self->_titleLabel leadingAnchor];
  v84 = [(TeachableMomentContaineeViewController *)self view];
  v57 = [v84 leadingAnchor];
  +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
  v58 = [v81 constraintEqualToAnchor:v57 constant:?];
  v86[0] = v58;
  v59 = [(UILabel *)self->_titleLabel trailingAnchor];
  v60 = [(UIButton *)self->_closeButton leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-8.0];
  v86[1] = v61;
  v62 = [(UILabel *)self->_titleLabel topAnchor];
  v63 = [(TeachableMomentContaineeViewController *)self view];
  v64 = [v63 topAnchor];
  v65 = [v62 constraintEqualToAnchor:v64 constant:22.0];
  v86[2] = v65;
  v66 = [NSArray arrayWithObjects:v86 count:3];
  [NSLayoutConstraint activateConstraints:v66];
}

- (TeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TeachableMomentContaineeViewController;
  v6 = [(TeachableMomentContaineeViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [(ContaineeViewController *)v7 cardPresentationController];
    [v8 setHideGrabber:1];

    v9 = [(ContaineeViewController *)v7 cardPresentationController];
    [v9 setAllowsSwipeToDismiss:0];

    v10 = [(ContaineeViewController *)v7 cardPresentationController];
    [v10 setPresentedModally:1];
  }

  return v7;
}

@end
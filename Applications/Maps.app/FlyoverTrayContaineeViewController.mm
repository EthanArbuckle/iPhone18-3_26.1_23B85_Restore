@interface FlyoverTrayContaineeViewController
- (FlyoverActionCoordination)delegate;
- (FlyoverTrayContaineeViewController)initWithMapItem:(id)a3;
- (double)heightForLayout:(unint64_t)a3;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)resetFlyoverTour;
- (void)tourButtonTapped:(id)a3;
- (void)trayHeaderButtonDidTouchUpInside:(id)a3;
- (void)trayHeaderDidReceiveTap;
- (void)updateTheme;
- (void)viewDidLoad;
@end

@implementation FlyoverTrayContaineeViewController

- (FlyoverActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 bottomSafeOffset];
  v7 = v6;

  if (a3 == 1)
  {
LABEL_8:
    [(ContaineeViewController *)self headerHeight];
    return v12 + v7;
  }

  if (a3 == 5 || (result = -1.0, a3 == 2))
  {
    tourButton = self->_tourButton;
    if (tourButton)
    {
      [(BackgroundColorButton *)tourButton systemLayoutSizeFittingSize:CGSizeZero.width, CGSizeZero.height];
      v11 = v10 + 15.0;
    }

    else
    {
      v11 = 15.0;
    }

    v7 = v11 + v7;
    goto LABEL_8;
  }

  return result;
}

- (void)trayHeaderDidReceiveTap
{
  v3 = +[VKPlatform sharedPlatform];
  if ([v3 supportsARMode])
  {
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained isFlyoverUnificationEnabled];

    if (!v5)
    {
      return;
    }
  }

  v6 = [(ContaineeViewController *)self cardPresentationController];
  v7 = [v6 containeeLayout];

  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    if (v7 != 1)
    {
      return;
    }

    v8 = 2;
  }

  v9 = [(ContaineeViewController *)self cardPresentationController];
  [v9 wantsLayout:v8];
}

- (void)trayHeaderButtonDidTouchUpInside:(id)a3
{
  v4 = [(FlyoverTrayContaineeViewController *)self delegate];
  [v4 viewControllerEndFlyover:self];

  v6 = [(FlyoverTrayContaineeViewController *)self delegate];
  v5 = [v6 appCoordinator];
  [v5 exitFlyover];
}

- (void)tourButtonTapped:(id)a3
{
  v4 = a3;
  if (qword_10195CCE8 != -1)
  {
    v8 = v4;
    dispatch_once(&qword_10195CCE8, &stru_101623F70);
    v4 = v8;
  }

  tourButtonState = self->_tourButtonState;
  switch(tourButtonState)
  {
    case 3uLL:
      v7 = v4;
      [(BackgroundColorButton *)self->_tourButton setTitle:qword_10195CCD8 forState:0];
      self->_tourButtonState = 2;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained flyoverTourResume];
      break;
    case 2uLL:
      v7 = v4;
      [(BackgroundColorButton *)self->_tourButton setTitle:qword_10195CCE0 forState:0];
      self->_tourButtonState = 3;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained flyoverTourPause];
      break;
    case 1uLL:
      v7 = v4;
      [(BackgroundColorButton *)self->_tourButton setTitle:qword_10195CCD8 forState:0];
      self->_tourButtonState = 2;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained flyoverTourPlay];
      break;
    default:
      goto LABEL_10;
  }

  v4 = v7;
LABEL_10:
}

- (void)updateTheme
{
  if ([(MKMapItem *)self->_mapItem _hasFlyover])
  {
    tourButton = self->_tourButton;
    v4 = [(FlyoverTrayContaineeViewController *)self theme];
    v5 = [v4 flyoverTourButtonBackgroundColor:0];
    [(BackgroundColorButton *)tourButton setBackgroundColor:v5 forState:0];

    v6 = self->_tourButton;
    v7 = [(FlyoverTrayContaineeViewController *)self theme];
    v8 = [v7 flyoverTourButtonBackgroundColor:1];
    [(BackgroundColorButton *)v6 setBackgroundColor:v8 forState:1];

    v9 = self->_tourButton;
    v10 = [(FlyoverTrayContaineeViewController *)self theme];
    v11 = [v10 keyColor];
    [(BackgroundColorButton *)v9 setTitleColor:v11 forState:0];

    v12 = self->_tourButton;
    v14 = [(FlyoverTrayContaineeViewController *)self theme];
    v13 = [v14 darkKeyColor];
    [(BackgroundColorButton *)v12 setTitleColor:v13 forState:1];
  }
}

- (void)_setupConstraints
{
  v3 = +[VKPlatform sharedPlatform];
  v4 = [v3 supportsARMode];

  if (v4)
  {
    v59 = [(FlyoverTrayHeader *)self->_headerView topAnchor];
    v62 = [(FlyoverTrayContaineeViewController *)self view];
    v56 = [v62 topAnchor];
    v53 = [v59 constraintEqualToAnchor:v56];
    v68[0] = v53;
    v48 = [(FlyoverTrayHeader *)self->_headerView leadingAnchor];
    v50 = [(FlyoverTrayContaineeViewController *)self view];
    v47 = [v50 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v68[1] = v46;
    v44 = [(FlyoverTrayHeader *)self->_headerView trailingAnchor];
    v45 = [(FlyoverTrayContaineeViewController *)self view];
    v43 = [v45 trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v68[2] = v42;
    v41 = [(FlyoverTrayHeader *)self->_headerView bottomAnchor];
    v40 = [(UIView *)self->_panelView topAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v68[3] = v39;
    v37 = [(UIView *)self->_panelView leadingAnchor];
    v38 = [(FlyoverTrayContaineeViewController *)self view];
    v36 = [v38 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v68[4] = v35;
    v5 = [(UIView *)self->_panelView trailingAnchor];
    v6 = [(FlyoverTrayContaineeViewController *)self view];
    v7 = [v6 trailingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v68[5] = v8;
    v9 = [(UIView *)self->_panelView bottomAnchor];
    v10 = [(FlyoverTrayContaineeViewController *)self view];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v68[6] = v12;
    v13 = [NSArray arrayWithObjects:v68 count:7];
    v65 = [v13 mutableCopy];

    if ([(MKMapItem *)self->_mapItem _hasFlyover])
    {
      v63 = [(BackgroundColorButton *)self->_tourButton leadingAnchor];
      v60 = [(UIView *)self->_panelView leadingAnchor];
      v57 = [v63 constraintEqualToAnchor:v60 constant:16.0];
      v67[0] = v57;
      v54 = [(BackgroundColorButton *)self->_tourButton trailingAnchor];
      v51 = [(UIView *)self->_panelView trailingAnchor];
      v14 = [v54 constraintEqualToAnchor:v51 constant:-16.0];
      v67[1] = v14;
      v15 = [(BackgroundColorButton *)self->_tourButton heightAnchor];
      v16 = [v15 constraintGreaterThanOrEqualToConstant:52.0];
      v17 = [DynamicTypeWizard autoscaledConstraint:v16 constant:&stru_101623F30 withFontProvider:52.0];
      v67[2] = v17;
      v18 = [(BackgroundColorButton *)self->_tourButton titleLabel];
      v19 = [v18 firstBaselineAnchor];
      v20 = [(UIView *)self->_panelView topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v22 = [DynamicTypeWizard autoscaledConstraint:v21 constant:&stru_101623F30 withFontProvider:32.0];
      v67[3] = v22;
      v23 = [NSArray arrayWithObjects:v67 count:4];
      [v65 addObjectsFromArray:v23];
    }

    v24 = v65;
    [NSLayoutConstraint activateConstraints:v65];
  }

  else
  {
    v66 = [(FlyoverTrayHeader *)self->_headerView topAnchor];
    v64 = [(FlyoverTrayContaineeViewController *)self view];
    v61 = [v64 topAnchor];
    v58 = [v66 constraintEqualToAnchor:v61];
    v69[0] = v58;
    v52 = [(FlyoverTrayHeader *)self->_headerView leadingAnchor];
    v55 = [(FlyoverTrayContaineeViewController *)self view];
    v49 = [v55 leadingAnchor];
    v25 = [v52 constraintEqualToAnchor:v49];
    v69[1] = v25;
    v26 = [(FlyoverTrayHeader *)self->_headerView trailingAnchor];
    v27 = [(FlyoverTrayContaineeViewController *)self view];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v69[2] = v29;
    v30 = [(FlyoverTrayHeader *)self->_headerView bottomAnchor];
    v31 = [(FlyoverTrayContaineeViewController *)self view];
    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    v69[3] = v33;
    v34 = [NSArray arrayWithObjects:v69 count:4];
    [NSLayoutConstraint activateConstraints:v34];

    v24 = v66;
  }
}

- (void)_setupViews
{
  v3 = [(FlyoverTrayContaineeViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(FlyoverTrayContaineeViewController *)self view];
  [v4 setAccessibilityIdentifier:@"FlyoverTray"];

  v5 = [FlyoverTrayHeader alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(FlyoverTrayHeader *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = v9;

  [(FlyoverTrayHeader *)self->_headerView setDelegate:self];
  [(FlyoverTrayHeader *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_headerView;
  v12 = [(MKMapItem *)self->_mapItem name];
  [(FlyoverTrayHeader *)v11 setTitle:v12];

  v13 = +[VKPlatform sharedPlatform];
  if ([v13 supportsARMode])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = [WeakRetained isFlyoverUnificationEnabled];

    if (!v15)
    {
      v16 = @"Flyover [Minimized Card Subtitle]";
      goto LABEL_6;
    }
  }

  else
  {
  }

  v16 = @"Flyover Tour [Minimized Card Subtitle]";
LABEL_6:
  v17 = +[NSBundle mainBundle];
  v33 = [v17 localizedStringForKey:v16 value:@"localized string not found" table:0];

  [(FlyoverTrayHeader *)self->_headerView setSubtitle:v33];
  v18 = [(FlyoverTrayContaineeViewController *)self view];
  [v18 addSubview:self->_headerView];

  v19 = +[VKPlatform sharedPlatform];
  LODWORD(v17) = [v19 supportsARMode];

  if (v17)
  {
    v20 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    panelView = self->_panelView;
    self->_panelView = v20;

    [(UIView *)self->_panelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_panelView setAccessibilityIdentifier:@"FlyoverTrayPanel"];
    v22 = [(FlyoverTrayContaineeViewController *)self view];
    [v22 addSubview:self->_panelView];

    if ([(MKMapItem *)self->_mapItem _hasFlyover])
    {
      v23 = [BackgroundColorButton buttonWithType:0];
      tourButton = self->_tourButton;
      self->_tourButton = v23;

      [(BackgroundColorButton *)self->_tourButton setContentEdgeInsets:0.0, 17.0, 0.0, 17.0];
      v25 = [(BackgroundColorButton *)self->_tourButton layer];
      [v25 setCornerRadius:8.0];

      [(BackgroundColorButton *)self->_tourButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v26 = [(BackgroundColorButton *)self->_tourButton titleLabel];
      [DynamicTypeWizard autorefreshLabel:v26 withFontProvider:&stru_101623F30];

      [(BackgroundColorButton *)self->_tourButton addTarget:self action:"tourButtonTapped:" forControlEvents:64];
      if (qword_10195CCD0 != -1)
      {
        dispatch_once(&qword_10195CCD0, &stru_101623F50);
      }

      v27 = objc_loadWeakRetained(&self->_delegate);
      v28 = [v27 isFlyoverUnificationEnabled];

      v29 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
      v30 = v29;
      if (v28)
      {
        v31 = &qword_10195CCB8;
        v32 = 2;
      }

      else
      {
        v31 = &qword_10195CCC8;
        if (v29 && [v29 length])
        {
          v31 = &qword_10195CCC0;
        }

        v32 = 1;
      }

      objc_storeStrong(&self->_startTourTitle, *v31);
      [(BackgroundColorButton *)self->_tourButton setTitle:self->_startTourTitle forState:0];
      [(BackgroundColorButton *)self->_tourButton setAccessibilityIdentifier:@"FlyoverTrayTourButton"];
      [(UIView *)self->_panelView addSubview:self->_tourButton];
      self->_tourButtonState = v32;
    }

    [(FlyoverTrayContaineeViewController *)self updateTheme];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = FlyoverTrayContaineeViewController;
  [(ContaineeViewController *)&v7 viewDidLoad];
  WeakRetained = +[VKPlatform sharedPlatform];
  v4 = [WeakRetained supportsARMode];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained isFlyoverUnificationEnabled] ^ 1;
  }

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 setPresentedModally:v5];

  if ((v4 & 1) == 0)
  {
  }

  [(FlyoverTrayContaineeViewController *)self _setupViews];
  [(FlyoverTrayContaineeViewController *)self _setupConstraints];
}

- (void)resetFlyoverTour
{
  [(BackgroundColorButton *)self->_tourButton setTitle:self->_startTourTitle forState:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained isFlyoverUnificationEnabled];
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  self->_tourButtonState = v4;
}

- (FlyoverTrayContaineeViewController)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FlyoverTrayContaineeViewController;
  v6 = [(FlyoverTrayContaineeViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end
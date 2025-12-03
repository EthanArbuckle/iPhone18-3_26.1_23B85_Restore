@interface FlyoverTrayContaineeViewController
- (FlyoverActionCoordination)delegate;
- (FlyoverTrayContaineeViewController)initWithMapItem:(id)item;
- (double)heightForLayout:(unint64_t)layout;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)resetFlyoverTour;
- (void)tourButtonTapped:(id)tapped;
- (void)trayHeaderButtonDidTouchUpInside:(id)inside;
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

- (double)heightForLayout:(unint64_t)layout
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v7 = v6;

  if (layout == 1)
  {
LABEL_8:
    [(ContaineeViewController *)self headerHeight];
    return v12 + v7;
  }

  if (layout == 5 || (result = -1.0, layout == 2))
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
    isFlyoverUnificationEnabled = [WeakRetained isFlyoverUnificationEnabled];

    if (!isFlyoverUnificationEnabled)
    {
      return;
    }
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout == 2)
  {
    v8 = 1;
  }

  else
  {
    if (containeeLayout != 1)
    {
      return;
    }

    v8 = 2;
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 wantsLayout:v8];
}

- (void)trayHeaderButtonDidTouchUpInside:(id)inside
{
  delegate = [(FlyoverTrayContaineeViewController *)self delegate];
  [delegate viewControllerEndFlyover:self];

  delegate2 = [(FlyoverTrayContaineeViewController *)self delegate];
  appCoordinator = [delegate2 appCoordinator];
  [appCoordinator exitFlyover];
}

- (void)tourButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (qword_10195CCE8 != -1)
  {
    v8 = tappedCopy;
    dispatch_once(&qword_10195CCE8, &stru_101623F70);
    tappedCopy = v8;
  }

  tourButtonState = self->_tourButtonState;
  switch(tourButtonState)
  {
    case 3uLL:
      v7 = tappedCopy;
      [(BackgroundColorButton *)self->_tourButton setTitle:qword_10195CCD8 forState:0];
      self->_tourButtonState = 2;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained flyoverTourResume];
      break;
    case 2uLL:
      v7 = tappedCopy;
      [(BackgroundColorButton *)self->_tourButton setTitle:qword_10195CCE0 forState:0];
      self->_tourButtonState = 3;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained flyoverTourPause];
      break;
    case 1uLL:
      v7 = tappedCopy;
      [(BackgroundColorButton *)self->_tourButton setTitle:qword_10195CCD8 forState:0];
      self->_tourButtonState = 2;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained flyoverTourPlay];
      break;
    default:
      goto LABEL_10;
  }

  tappedCopy = v7;
LABEL_10:
}

- (void)updateTheme
{
  if ([(MKMapItem *)self->_mapItem _hasFlyover])
  {
    tourButton = self->_tourButton;
    theme = [(FlyoverTrayContaineeViewController *)self theme];
    v5 = [theme flyoverTourButtonBackgroundColor:0];
    [(BackgroundColorButton *)tourButton setBackgroundColor:v5 forState:0];

    v6 = self->_tourButton;
    theme2 = [(FlyoverTrayContaineeViewController *)self theme];
    v8 = [theme2 flyoverTourButtonBackgroundColor:1];
    [(BackgroundColorButton *)v6 setBackgroundColor:v8 forState:1];

    v9 = self->_tourButton;
    theme3 = [(FlyoverTrayContaineeViewController *)self theme];
    keyColor = [theme3 keyColor];
    [(BackgroundColorButton *)v9 setTitleColor:keyColor forState:0];

    v12 = self->_tourButton;
    theme4 = [(FlyoverTrayContaineeViewController *)self theme];
    darkKeyColor = [theme4 darkKeyColor];
    [(BackgroundColorButton *)v12 setTitleColor:darkKeyColor forState:1];
  }
}

- (void)_setupConstraints
{
  v3 = +[VKPlatform sharedPlatform];
  supportsARMode = [v3 supportsARMode];

  if (supportsARMode)
  {
    topAnchor = [(FlyoverTrayHeader *)self->_headerView topAnchor];
    view = [(FlyoverTrayContaineeViewController *)self view];
    topAnchor2 = [view topAnchor];
    v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v68[0] = v53;
    leadingAnchor = [(FlyoverTrayHeader *)self->_headerView leadingAnchor];
    view2 = [(FlyoverTrayContaineeViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v68[1] = v46;
    trailingAnchor = [(FlyoverTrayHeader *)self->_headerView trailingAnchor];
    view3 = [(FlyoverTrayContaineeViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v68[2] = v42;
    bottomAnchor = [(FlyoverTrayHeader *)self->_headerView bottomAnchor];
    topAnchor3 = [(UIView *)self->_panelView topAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
    v68[3] = v39;
    leadingAnchor3 = [(UIView *)self->_panelView leadingAnchor];
    view4 = [(FlyoverTrayContaineeViewController *)self view];
    leadingAnchor4 = [view4 leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v68[4] = v35;
    trailingAnchor3 = [(UIView *)self->_panelView trailingAnchor];
    view5 = [(FlyoverTrayContaineeViewController *)self view];
    trailingAnchor4 = [view5 trailingAnchor];
    v8 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v68[5] = v8;
    bottomAnchor2 = [(UIView *)self->_panelView bottomAnchor];
    view6 = [(FlyoverTrayContaineeViewController *)self view];
    bottomAnchor3 = [view6 bottomAnchor];
    v12 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v68[6] = v12;
    v13 = [NSArray arrayWithObjects:v68 count:7];
    v65 = [v13 mutableCopy];

    if ([(MKMapItem *)self->_mapItem _hasFlyover])
    {
      leadingAnchor5 = [(BackgroundColorButton *)self->_tourButton leadingAnchor];
      leadingAnchor6 = [(UIView *)self->_panelView leadingAnchor];
      v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
      v67[0] = v57;
      trailingAnchor5 = [(BackgroundColorButton *)self->_tourButton trailingAnchor];
      trailingAnchor6 = [(UIView *)self->_panelView trailingAnchor];
      v14 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
      v67[1] = v14;
      heightAnchor = [(BackgroundColorButton *)self->_tourButton heightAnchor];
      v16 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
      v17 = [DynamicTypeWizard autoscaledConstraint:v16 constant:&stru_101623F30 withFontProvider:52.0];
      v67[2] = v17;
      titleLabel = [(BackgroundColorButton *)self->_tourButton titleLabel];
      firstBaselineAnchor = [titleLabel firstBaselineAnchor];
      topAnchor4 = [(UIView *)self->_panelView topAnchor];
      v21 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor4];
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
    topAnchor5 = [(FlyoverTrayHeader *)self->_headerView topAnchor];
    view7 = [(FlyoverTrayContaineeViewController *)self view];
    topAnchor6 = [view7 topAnchor];
    v58 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v69[0] = v58;
    leadingAnchor7 = [(FlyoverTrayHeader *)self->_headerView leadingAnchor];
    view8 = [(FlyoverTrayContaineeViewController *)self view];
    leadingAnchor8 = [view8 leadingAnchor];
    v25 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v69[1] = v25;
    trailingAnchor7 = [(FlyoverTrayHeader *)self->_headerView trailingAnchor];
    view9 = [(FlyoverTrayContaineeViewController *)self view];
    trailingAnchor8 = [view9 trailingAnchor];
    v29 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v69[2] = v29;
    bottomAnchor4 = [(FlyoverTrayHeader *)self->_headerView bottomAnchor];
    view10 = [(FlyoverTrayContaineeViewController *)self view];
    bottomAnchor5 = [view10 bottomAnchor];
    v33 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v69[3] = v33;
    v34 = [NSArray arrayWithObjects:v69 count:4];
    [NSLayoutConstraint activateConstraints:v34];

    v24 = topAnchor5;
  }
}

- (void)_setupViews
{
  view = [(FlyoverTrayContaineeViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(FlyoverTrayContaineeViewController *)self view];
  [view2 setAccessibilityIdentifier:@"FlyoverTray"];

  v5 = [FlyoverTrayHeader alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(FlyoverTrayHeader *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = height;

  [(FlyoverTrayHeader *)self->_headerView setDelegate:self];
  [(FlyoverTrayHeader *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_headerView;
  name = [(MKMapItem *)self->_mapItem name];
  [(FlyoverTrayHeader *)v11 setTitle:name];

  v13 = +[VKPlatform sharedPlatform];
  if ([v13 supportsARMode])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    isFlyoverUnificationEnabled = [WeakRetained isFlyoverUnificationEnabled];

    if (!isFlyoverUnificationEnabled)
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
  view3 = [(FlyoverTrayContaineeViewController *)self view];
  [view3 addSubview:self->_headerView];

  v19 = +[VKPlatform sharedPlatform];
  LODWORD(v17) = [v19 supportsARMode];

  if (v17)
  {
    v20 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    panelView = self->_panelView;
    self->_panelView = v20;

    [(UIView *)self->_panelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_panelView setAccessibilityIdentifier:@"FlyoverTrayPanel"];
    view4 = [(FlyoverTrayContaineeViewController *)self view];
    [view4 addSubview:self->_panelView];

    if ([(MKMapItem *)self->_mapItem _hasFlyover])
    {
      v23 = [BackgroundColorButton buttonWithType:0];
      tourButton = self->_tourButton;
      self->_tourButton = v23;

      [(BackgroundColorButton *)self->_tourButton setContentEdgeInsets:0.0, 17.0, 0.0, 17.0];
      layer = [(BackgroundColorButton *)self->_tourButton layer];
      [layer setCornerRadius:8.0];

      [(BackgroundColorButton *)self->_tourButton setTranslatesAutoresizingMaskIntoConstraints:0];
      titleLabel = [(BackgroundColorButton *)self->_tourButton titleLabel];
      [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_101623F30];

      [(BackgroundColorButton *)self->_tourButton addTarget:self action:"tourButtonTapped:" forControlEvents:64];
      if (qword_10195CCD0 != -1)
      {
        dispatch_once(&qword_10195CCD0, &stru_101623F50);
      }

      v27 = objc_loadWeakRetained(&self->_delegate);
      isFlyoverUnificationEnabled2 = [v27 isFlyoverUnificationEnabled];

      _firstLocalizedCategoryName = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
      v30 = _firstLocalizedCategoryName;
      if (isFlyoverUnificationEnabled2)
      {
        v31 = &qword_10195CCB8;
        v32 = 2;
      }

      else
      {
        v31 = &qword_10195CCC8;
        if (_firstLocalizedCategoryName && [_firstLocalizedCategoryName length])
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
  supportsARMode = [WeakRetained supportsARMode];

  if (supportsARMode)
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained isFlyoverUnificationEnabled] ^ 1;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:v5];

  if ((supportsARMode & 1) == 0)
  {
  }

  [(FlyoverTrayContaineeViewController *)self _setupViews];
  [(FlyoverTrayContaineeViewController *)self _setupConstraints];
}

- (void)resetFlyoverTour
{
  [(BackgroundColorButton *)self->_tourButton setTitle:self->_startTourTitle forState:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isFlyoverUnificationEnabled = [WeakRetained isFlyoverUnificationEnabled];
  v4 = 1;
  if (isFlyoverUnificationEnabled)
  {
    v4 = 2;
  }

  self->_tourButtonState = v4;
}

- (FlyoverTrayContaineeViewController)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = FlyoverTrayContaineeViewController;
  v6 = [(FlyoverTrayContaineeViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end
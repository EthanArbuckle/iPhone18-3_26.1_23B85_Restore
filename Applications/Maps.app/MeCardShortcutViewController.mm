@interface MeCardShortcutViewController
- (BOOL)_isMapUserShortcut;
- (MeCardShortcutViewController)initWithShortcutEditSession:(id)session;
- (ShortcutEditSessionController)sessionController;
- (void)_buildContent;
- (void)_close;
- (void)_doneAction:(id)action;
- (void)_updateFonts;
- (void)_updatePreferredContentSize;
- (void)updateContact;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MeCardShortcutViewController

- (ShortcutEditSessionController)sessionController
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);

  return WeakRetained;
}

- (void)_doneAction:(id)action
{
  v4 = +[AddressBookManager sharedManager];
  meCardExists = [v4 meCardExists];

  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  contactCardButton = self->_contactCardButton;
  v8 = WeakRetained;
  if (meCardExists)
  {
    [WeakRetained showMeCardWithAddress:0 from:contactCardButton];
  }

  else
  {
    [WeakRetained presentChoicePickerFrom:contactCardButton];
  }
}

- (void)_close
{
  sessionController = [(MeCardShortcutViewController *)self sessionController];
  [sessionController closeViewController:self];
}

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = +[UIFont system17Tall];
    [(UILabel *)self->_titleLabel setFont:v3];

    v4 = +[UIFont system17Tall];
    [(UILabel *)self->_subtitleLabel setFont:v4];

    titleLabel3 = +[UIFont system17Tall];
    titleLabel = [(OverridenBackgroundColorButton *)self->_contactCardButton titleLabel];
    [titleLabel setFont:titleLabel3];
  }

  else
  {
    v6 = +[UIFont system17Bold];
    [(UILabel *)self->_titleLabel setFont:v6];

    v7 = +[UIFont system15];
    [(UILabel *)self->_subtitleLabel setFont:v7];

    v8 = +[UIFont system15Bold];
    titleLabel2 = [(OverridenBackgroundColorButton *)self->_contactCardButton titleLabel];
    [titleLabel2 setFont:v8];

    titleLabel3 = [(OverridenBackgroundColorButton *)self->_contactCardButton titleLabel];
    titleLabel = [titleLabel3 font];
    [titleLabel _mapkit_scaledValueForValue:54.0];
    [(NSLayoutConstraint *)self->_contactCardButtonHeightConstraint setConstant:?];
  }
}

- (void)_buildContent
{
  if (sub_10000FA08(self) == 5)
  {
    contentView = self->_meCardContainerView;
  }

  else
  {
    contentView = [(AutoLayoutScrollView *)self->_scrollView contentView];
  }

  v4 = contentView;
  v5 = [MeCardShortcutView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  meCardContact = [WeakRetained meCardContact];
  v8 = [(MeCardShortcutView *)v5 initWithContact:meCardContact];

  [(MeCardShortcutView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v4 addSubview:v8];
  v9 = v8;
  objc_storeStrong(&self->_meCardAvatar, v8);
  v10 = objc_alloc_init(UILabel);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v4 addSubview:v10];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[Shortcut] Contact Card title" value:@"localized string not found" table:0];
  [v10 setText:v12];

  [v10 setNumberOfLines:0];
  objc_storeStrong(&self->_titleLabel, v10);
  v13 = objc_alloc_init(UILabel);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v4 addSubview:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Shortcut] Contact Card Update" value:@"localized string not found" table:0];
  [v13 setText:v15];

  v16 = +[UIColor secondaryLabelColor];
  [v13 setTextColor:v16];

  [v13 setNumberOfLines:0];
  objc_storeStrong(&self->_subtitleLabel, v13);
  traitCollection = [(MeCardShortcutViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  traitCollection2 = [(MeCardShortcutViewController *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  selfCopy = self;
  traitCollection3 = [(MeCardShortcutViewController *)self traitCollection];
  userInterfaceIdiom3 = [traitCollection3 userInterfaceIdiom];

  if (sub_10000FA08(self) == 5)
  {
    v23 = 4;
  }

  else
  {
    v23 = 1;
  }

  [v10 setTextAlignment:v23];
  [v13 setTextAlignment:v23];
  if (userInterfaceIdiom3 == 5)
  {
    v24 = 14.0;
  }

  else
  {
    v24 = 10.0;
  }

  if (userInterfaceIdiom2 == 5)
  {
    v25 = 4.0;
  }

  else
  {
    v25 = 10.0;
  }

  if (userInterfaceIdiom == 5)
  {
    v26 = 17.0;
  }

  else
  {
    v26 = 24.0;
  }

  topAnchor = [(MeCardShortcutView *)v9 topAnchor];
  topAnchor2 = [(UIView *)v4 topAnchor];
  v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v63[0] = v58;
  leadingAnchor = [(MeCardShortcutView *)v9 leadingAnchor];
  leadingAnchor2 = [(UIView *)v4 leadingAnchor];
  v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v63[1] = v55;
  v60 = v9;
  trailingAnchor = [(MeCardShortcutView *)v9 trailingAnchor];
  trailingAnchor2 = [(UIView *)v4 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v63[2] = v51;
  topAnchor3 = [v10 topAnchor];
  bottomAnchor = [(MeCardShortcutView *)v9 bottomAnchor];
  v48 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v24];
  v63[3] = v48;
  leadingAnchor3 = [v10 leadingAnchor];
  leadingAnchor4 = [(UIView *)v4 leadingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v26];
  v63[4] = v44;
  v53 = v10;
  trailingAnchor3 = [v10 trailingAnchor];
  v47 = v4;
  trailingAnchor4 = [(UIView *)v4 trailingAnchor];
  v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v26];
  v63[5] = v41;
  topAnchor4 = [v13 topAnchor];
  bottomAnchor2 = [v10 bottomAnchor];
  v38 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:v25];
  v63[6] = v38;
  leadingAnchor5 = [v13 leadingAnchor];
  leadingAnchor6 = [(UIView *)v4 leadingAnchor];
  v28 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v26];
  v63[7] = v28;
  trailingAnchor5 = [v13 trailingAnchor];
  trailingAnchor6 = [(UIView *)v4 trailingAnchor];
  v31 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v26];
  v63[8] = v31;
  bottomAnchor3 = [v13 bottomAnchor];
  bottomAnchor4 = [(UIView *)v4 bottomAnchor];
  v34 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v63[9] = v34;
  v35 = [NSArray arrayWithObjects:v63 count:10];
  [NSLayoutConstraint activateConstraints:v35];

  v36 = +[NSNotificationCenter defaultCenter];
  [v36 addObserver:selfCopy selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(MeCardShortcutViewController *)selfCopy _updateFonts];
  [(MeCardShortcutViewController *)selfCopy _updatePreferredContentSize];
}

- (BOOL)_isMapUserShortcut
{
  shortcut = [(MeCardShortcutViewController *)self shortcut];
  v3 = [shortcut type] == 1;

  return v3;
}

- (void)updateContact
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  meCardContact = [WeakRetained meCardContact];
  [(MeCardShortcutView *)self->_meCardAvatar setContact:meCardContact];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MeCardShortcutViewController;
  [(MeCardShortcutViewController *)&v6 viewDidAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  meCardContact = [WeakRetained meCardContact];
  [(MeCardShortcutView *)self->_meCardAvatar setContact:meCardContact];
}

- (void)_updatePreferredContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    [(MeCardShortcutViewController *)self preferredContentSize];
    v4 = v3;
    v6 = v5;
    view = [(MeCardShortcutViewController *)self view];
    [view systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v9 = v8;
    v11 = v10;

    if (v4 != v9 || v6 != v11)
    {

      [(MeCardShortcutViewController *)self setPreferredContentSize:v9, v11];
    }
  }
}

- (void)viewDidLoad
{
  v98.receiver = self;
  v98.super_class = MeCardShortcutViewController;
  [(ContaineeViewController *)&v98 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(MeCardShortcutViewController *)self view];
  [view setBackgroundColor:v3];

  headerView = [(ContaineeViewController *)self headerView];
  contentView = [(ContaineeViewController *)self contentView];
  if (sub_10000FA08(self) == 5)
  {
    v6 = objc_alloc_init(OverridenBackgroundColorButton);
  }

  else
  {
    v6 = +[OverridenBackgroundColorButton newChromeBlueButton];
  }

  v7 = v6;
  [(OverridenBackgroundColorButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Shortcut] Open My Contact Card" value:@"localized string not found" table:0];
  [(OverridenBackgroundColorButton *)v7 setTitle:v9 forState:0];

  titleLabel = [(OverridenBackgroundColorButton *)v7 titleLabel];
  [titleLabel setNumberOfLines:2];

  [(OverridenBackgroundColorButton *)v7 addTarget:self action:"_doneAction:" forControlEvents:0x2000];
  [contentView addSubview:v7];
  objc_storeStrong(&self->_contactCardButton, v7);
  traitCollection = [(MeCardShortcutViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  traitCollection2 = [(MeCardShortcutViewController *)self traitCollection];
  if ([traitCollection2 userInterfaceIdiom] == 5)
  {
    v13 = 17.0;
  }

  else
  {
    v13 = 0.0;
  }

  traitCollection3 = [(MeCardShortcutViewController *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

  traitCollection4 = [(MeCardShortcutViewController *)self traitCollection];
  userInterfaceIdiom3 = [traitCollection4 userInterfaceIdiom];

  layer = [(OverridenBackgroundColorButton *)v7 layer];
  [layer setCornerRadius:7.5];

  v17 = sub_10000FA08(self);
  titleLabel2 = [(OverridenBackgroundColorButton *)v7 titleLabel];
  v19 = titleLabel2;
  v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  selfCopy = self;
  if (v17 == 5)
  {
    [titleLabel2 setTextAlignment:4];

    [(OverridenBackgroundColorButton *)v7 setContentHorizontalAlignment:4];
    v21 = +[UIColor _maps_keyColor];
    [(OverridenBackgroundColorButton *)v7 setTitleColor:v21 forState:0];

    v22 = objc_alloc_init(UILabel);
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"[Shortcut] Set up your Contact Card" value:@"localized string not found" table:0];
    [(ModalCardHeaderView *)v22 setText:v24];

    [(ModalCardHeaderView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v22];
    v25 = +[UIColor labelColor];
    [(ModalCardHeaderView *)v22 setTextColor:v25];

    v26 = +[UIFont system20Semibold];
    [(ModalCardHeaderView *)v22 setFont:v26];

    [(ModalCardHeaderView *)v22 setNumberOfLines:0];
    v27 = objc_alloc_init(UIView);
    [(AutoLayoutScrollView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v27];
    v28 = v27;
    objc_storeStrong(&self->_meCardContainerView, v27);
    view2 = [(MeCardShortcutViewController *)self view];
    widthAnchor = [view2 widthAnchor];
    v31 = [widthAnchor constraintEqualToConstant:v13 * 2.0 + 256.0];
    [(ModalCardHeaderView *)v31 setActive:1];
  }

  else
  {
    [titleLabel2 setTextAlignment:1];

    v32 = [_TtC4Maps19ModalCardHeaderView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(ModalCardHeaderView *)v32 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(ModalCardHeaderView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"[Shortcut] Set up Contact Card" value:@"localized string not found" table:0];
    [(ModalCardHeaderView *)height setTitle:v38];

    view2 = [MapsThemeButton buttonWithType:1];
    [view2 addTarget:self action:"_close" forControlEvents:0x2000];
    [(ModalCardHeaderView *)self->_modalHeaderView setTrailingButton:view2];
    [headerView addSubview:height];
    objc_storeStrong(&self->_modalHeaderView, height);
    v31 = height;
    height2 = [[AutoLayoutScrollView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    LODWORD(v40) = 1148846080;
    [(AutoLayoutScrollView *)height2 setContentOverflowCompressionPriority:0 forAxis:v40];
    [(AutoLayoutScrollView *)height2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:height2];
    objc_storeStrong(&self->_scrollView, height2);
    v41 = height2;
    heightAnchor = [(OverridenBackgroundColorButton *)v7 heightAnchor];
    v43 = [heightAnchor constraintEqualToConstant:0.0];
    contactCardButtonHeightConstraint = self->_contactCardButtonHeightConstraint;
    self->_contactCardButtonHeightConstraint = v43;

    v100 = self->_contactCardButtonHeightConstraint;
    widthAnchor = [NSArray arrayWithObjects:&v100 count:1];
    [NSLayoutConstraint activateConstraints:widthAnchor];
    v28 = v41;

    v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v22 = v31;
  }

  v67 = v22;

  if (userInterfaceIdiom == 5)
  {
    v45 = 13.0;
  }

  else
  {
    v45 = 0.0;
  }

  v77 = v20[433];
  topAnchor = [(ModalCardHeaderView *)v22 topAnchor];
  topAnchor2 = [headerView topAnchor];
  v88 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v45];
  v99[0] = v88;
  leadingAnchor = [(ModalCardHeaderView *)v22 leadingAnchor];
  leadingAnchor2 = [headerView leadingAnchor];
  v85 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v13];
  v99[1] = v85;
  trailingAnchor = [(ModalCardHeaderView *)v22 trailingAnchor];
  trailingAnchor2 = [headerView trailingAnchor];
  v82 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v13];
  v99[2] = v82;
  bottomAnchor = [(ModalCardHeaderView *)v22 bottomAnchor];
  v81 = bottomAnchor;
  bottomAnchor2 = [headerView bottomAnchor];
  v80 = bottomAnchor2;
  v48 = -0.0;
  if (userInterfaceIdiom2 == 5)
  {
    v48 = -14.0;
  }

  v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v48];
  v99[3] = v94;
  topAnchor3 = [(AutoLayoutScrollView *)v28 topAnchor];
  topAnchor4 = [contentView topAnchor];
  v75 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v99[4] = v75;
  leadingAnchor3 = [(AutoLayoutScrollView *)v28 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v99[5] = v72;
  v79 = v28;
  trailingAnchor3 = [(AutoLayoutScrollView *)v28 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v99[6] = v68;
  bottomAnchor3 = [(AutoLayoutScrollView *)v28 bottomAnchor];
  v66 = bottomAnchor3;
  topAnchor5 = [(OverridenBackgroundColorButton *)v7 topAnchor];
  v65 = topAnchor5;
  v51 = -10.0;
  if (userInterfaceIdiom3 == 5)
  {
    v51 = -7.0;
  }

  v64 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:v51];
  v99[7] = v64;
  bottomAnchor4 = [(OverridenBackgroundColorButton *)v7 bottomAnchor];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  bottomAnchor5 = [safeAreaLayoutGuide bottomAnchor];
  v54 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
  v99[8] = v54;
  [(OverridenBackgroundColorButton *)v7 leadingAnchor];
  v55 = v7;
  v56 = v71 = v7;
  leadingAnchor5 = [contentView leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
  v99[9] = v58;
  trailingAnchor5 = [(OverridenBackgroundColorButton *)v55 trailingAnchor];
  trailingAnchor6 = [contentView trailingAnchor];
  [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v61 = v96 = contentView;
  v99[10] = v61;
  v62 = [NSArray arrayWithObjects:v99 count:11];
  [v77 activateConstraints:v62];

  [(MeCardShortcutViewController *)selfCopy _buildContent];
}

- (MeCardShortcutViewController)initWithShortcutEditSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = MeCardShortcutViewController;
  v6 = [(MeCardShortcutViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    objc_storeStrong(&v7->_shortcutEditSession, session);
  }

  return v7;
}

@end
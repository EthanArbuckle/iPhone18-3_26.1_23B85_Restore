@interface MeCardShortcutViewController
- (BOOL)_isMapUserShortcut;
- (MeCardShortcutViewController)initWithShortcutEditSession:(id)a3;
- (ShortcutEditSessionController)sessionController;
- (void)_buildContent;
- (void)_close;
- (void)_doneAction:(id)a3;
- (void)_updateFonts;
- (void)_updatePreferredContentSize;
- (void)updateContact;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MeCardShortcutViewController

- (ShortcutEditSessionController)sessionController
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);

  return WeakRetained;
}

- (void)_doneAction:(id)a3
{
  v4 = +[AddressBookManager sharedManager];
  v5 = [v4 meCardExists];

  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  contactCardButton = self->_contactCardButton;
  v8 = WeakRetained;
  if (v5)
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
  v3 = [(MeCardShortcutViewController *)self sessionController];
  [v3 closeViewController:self];
}

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = +[UIFont system17Tall];
    [(UILabel *)self->_titleLabel setFont:v3];

    v4 = +[UIFont system17Tall];
    [(UILabel *)self->_subtitleLabel setFont:v4];

    v10 = +[UIFont system17Tall];
    v5 = [(OverridenBackgroundColorButton *)self->_contactCardButton titleLabel];
    [v5 setFont:v10];
  }

  else
  {
    v6 = +[UIFont system17Bold];
    [(UILabel *)self->_titleLabel setFont:v6];

    v7 = +[UIFont system15];
    [(UILabel *)self->_subtitleLabel setFont:v7];

    v8 = +[UIFont system15Bold];
    v9 = [(OverridenBackgroundColorButton *)self->_contactCardButton titleLabel];
    [v9 setFont:v8];

    v10 = [(OverridenBackgroundColorButton *)self->_contactCardButton titleLabel];
    v5 = [v10 font];
    [v5 _mapkit_scaledValueForValue:54.0];
    [(NSLayoutConstraint *)self->_contactCardButtonHeightConstraint setConstant:?];
  }
}

- (void)_buildContent
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = self->_meCardContainerView;
  }

  else
  {
    v3 = [(AutoLayoutScrollView *)self->_scrollView contentView];
  }

  v4 = v3;
  v5 = [MeCardShortcutView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  v7 = [WeakRetained meCardContact];
  v8 = [(MeCardShortcutView *)v5 initWithContact:v7];

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
  v17 = [(MeCardShortcutViewController *)self traitCollection];
  v18 = [v17 userInterfaceIdiom];

  v19 = [(MeCardShortcutViewController *)self traitCollection];
  v20 = [v19 userInterfaceIdiom];

  v62 = self;
  v21 = [(MeCardShortcutViewController *)self traitCollection];
  v22 = [v21 userInterfaceIdiom];

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
  if (v22 == 5)
  {
    v24 = 14.0;
  }

  else
  {
    v24 = 10.0;
  }

  if (v20 == 5)
  {
    v25 = 4.0;
  }

  else
  {
    v25 = 10.0;
  }

  if (v18 == 5)
  {
    v26 = 17.0;
  }

  else
  {
    v26 = 24.0;
  }

  v61 = [(MeCardShortcutView *)v9 topAnchor];
  v59 = [(UIView *)v4 topAnchor];
  v58 = [v61 constraintEqualToAnchor:v59];
  v63[0] = v58;
  v57 = [(MeCardShortcutView *)v9 leadingAnchor];
  v56 = [(UIView *)v4 leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v63[1] = v55;
  v60 = v9;
  v54 = [(MeCardShortcutView *)v9 trailingAnchor];
  v52 = [(UIView *)v4 trailingAnchor];
  v51 = [v54 constraintEqualToAnchor:v52];
  v63[2] = v51;
  v50 = [v10 topAnchor];
  v49 = [(MeCardShortcutView *)v9 bottomAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:v24];
  v63[3] = v48;
  v46 = [v10 leadingAnchor];
  v45 = [(UIView *)v4 leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45 constant:v26];
  v63[4] = v44;
  v53 = v10;
  v43 = [v10 trailingAnchor];
  v47 = v4;
  v42 = [(UIView *)v4 trailingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:-v26];
  v63[5] = v41;
  v40 = [v13 topAnchor];
  v39 = [v10 bottomAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:v25];
  v63[6] = v38;
  v37 = [v13 leadingAnchor];
  v27 = [(UIView *)v4 leadingAnchor];
  v28 = [v37 constraintEqualToAnchor:v27 constant:v26];
  v63[7] = v28;
  v29 = [v13 trailingAnchor];
  v30 = [(UIView *)v4 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v26];
  v63[8] = v31;
  v32 = [v13 bottomAnchor];
  v33 = [(UIView *)v4 bottomAnchor];
  v34 = [v32 constraintLessThanOrEqualToAnchor:v33];
  v63[9] = v34;
  v35 = [NSArray arrayWithObjects:v63 count:10];
  [NSLayoutConstraint activateConstraints:v35];

  v36 = +[NSNotificationCenter defaultCenter];
  [v36 addObserver:v62 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(MeCardShortcutViewController *)v62 _updateFonts];
  [(MeCardShortcutViewController *)v62 _updatePreferredContentSize];
}

- (BOOL)_isMapUserShortcut
{
  v2 = [(MeCardShortcutViewController *)self shortcut];
  v3 = [v2 type] == 1;

  return v3;
}

- (void)updateContact
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  v3 = [WeakRetained meCardContact];
  [(MeCardShortcutView *)self->_meCardAvatar setContact:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MeCardShortcutViewController;
  [(MeCardShortcutViewController *)&v6 viewDidAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);
  v5 = [WeakRetained meCardContact];
  [(MeCardShortcutView *)self->_meCardAvatar setContact:v5];
}

- (void)_updatePreferredContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    [(MeCardShortcutViewController *)self preferredContentSize];
    v4 = v3;
    v6 = v5;
    v7 = [(MeCardShortcutViewController *)self view];
    [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
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
  v4 = [(MeCardShortcutViewController *)self view];
  [v4 setBackgroundColor:v3];

  v97 = [(ContaineeViewController *)self headerView];
  v5 = [(ContaineeViewController *)self contentView];
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

  v10 = [(OverridenBackgroundColorButton *)v7 titleLabel];
  [v10 setNumberOfLines:2];

  [(OverridenBackgroundColorButton *)v7 addTarget:self action:"_doneAction:" forControlEvents:0x2000];
  [v5 addSubview:v7];
  objc_storeStrong(&self->_contactCardButton, v7);
  v11 = [(MeCardShortcutViewController *)self traitCollection];
  v90 = [v11 userInterfaceIdiom];

  v12 = [(MeCardShortcutViewController *)self traitCollection];
  if ([v12 userInterfaceIdiom] == 5)
  {
    v13 = 17.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [(MeCardShortcutViewController *)self traitCollection];
  v93 = [v14 userInterfaceIdiom];

  v15 = [(MeCardShortcutViewController *)self traitCollection];
  v95 = [v15 userInterfaceIdiom];

  v16 = [(OverridenBackgroundColorButton *)v7 layer];
  [v16 setCornerRadius:7.5];

  v17 = sub_10000FA08(self);
  v18 = [(OverridenBackgroundColorButton *)v7 titleLabel];
  v19 = v18;
  v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v92 = self;
  if (v17 == 5)
  {
    [v18 setTextAlignment:4];

    [(OverridenBackgroundColorButton *)v7 setContentHorizontalAlignment:4];
    v21 = +[UIColor _maps_keyColor];
    [(OverridenBackgroundColorButton *)v7 setTitleColor:v21 forState:0];

    v22 = objc_alloc_init(UILabel);
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"[Shortcut] Set up your Contact Card" value:@"localized string not found" table:0];
    [(ModalCardHeaderView *)v22 setText:v24];

    [(ModalCardHeaderView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v22];
    v25 = +[UIColor labelColor];
    [(ModalCardHeaderView *)v22 setTextColor:v25];

    v26 = +[UIFont system20Semibold];
    [(ModalCardHeaderView *)v22 setFont:v26];

    [(ModalCardHeaderView *)v22 setNumberOfLines:0];
    v27 = objc_alloc_init(UIView);
    [(AutoLayoutScrollView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v27];
    v28 = v27;
    objc_storeStrong(&self->_meCardContainerView, v27);
    v29 = [(MeCardShortcutViewController *)self view];
    v30 = [v29 widthAnchor];
    v31 = [v30 constraintEqualToConstant:v13 * 2.0 + 256.0];
    [(ModalCardHeaderView *)v31 setActive:1];
  }

  else
  {
    [v18 setTextAlignment:1];

    v32 = [_TtC4Maps19ModalCardHeaderView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v36 = [(ModalCardHeaderView *)v32 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(ModalCardHeaderView *)v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"[Shortcut] Set up Contact Card" value:@"localized string not found" table:0];
    [(ModalCardHeaderView *)v36 setTitle:v38];

    v29 = [MapsThemeButton buttonWithType:1];
    [v29 addTarget:self action:"_close" forControlEvents:0x2000];
    [(ModalCardHeaderView *)self->_modalHeaderView setTrailingButton:v29];
    [v97 addSubview:v36];
    objc_storeStrong(&self->_modalHeaderView, v36);
    v31 = v36;
    v39 = [[AutoLayoutScrollView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    LODWORD(v40) = 1148846080;
    [(AutoLayoutScrollView *)v39 setContentOverflowCompressionPriority:0 forAxis:v40];
    [(AutoLayoutScrollView *)v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v39];
    objc_storeStrong(&self->_scrollView, v39);
    v41 = v39;
    v42 = [(OverridenBackgroundColorButton *)v7 heightAnchor];
    v43 = [v42 constraintEqualToConstant:0.0];
    contactCardButtonHeightConstraint = self->_contactCardButtonHeightConstraint;
    self->_contactCardButtonHeightConstraint = v43;

    v100 = self->_contactCardButtonHeightConstraint;
    v30 = [NSArray arrayWithObjects:&v100 count:1];
    [NSLayoutConstraint activateConstraints:v30];
    v28 = v41;

    v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v22 = v31;
  }

  v67 = v22;

  if (v90 == 5)
  {
    v45 = 13.0;
  }

  else
  {
    v45 = 0.0;
  }

  v77 = v20[433];
  v91 = [(ModalCardHeaderView *)v22 topAnchor];
  v89 = [v97 topAnchor];
  v88 = [v91 constraintEqualToAnchor:v89 constant:v45];
  v99[0] = v88;
  v87 = [(ModalCardHeaderView *)v22 leadingAnchor];
  v86 = [v97 leadingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86 constant:v13];
  v99[1] = v85;
  v84 = [(ModalCardHeaderView *)v22 trailingAnchor];
  v83 = [v97 trailingAnchor];
  v82 = [v84 constraintEqualToAnchor:v83 constant:-v13];
  v99[2] = v82;
  v46 = [(ModalCardHeaderView *)v22 bottomAnchor];
  v81 = v46;
  v47 = [v97 bottomAnchor];
  v80 = v47;
  v48 = -0.0;
  if (v93 == 5)
  {
    v48 = -14.0;
  }

  v94 = [v46 constraintEqualToAnchor:v47 constant:v48];
  v99[3] = v94;
  v78 = [(AutoLayoutScrollView *)v28 topAnchor];
  v76 = [v5 topAnchor];
  v75 = [v78 constraintEqualToAnchor:v76];
  v99[4] = v75;
  v74 = [(AutoLayoutScrollView *)v28 leadingAnchor];
  v73 = [v5 leadingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v99[5] = v72;
  v79 = v28;
  v70 = [(AutoLayoutScrollView *)v28 trailingAnchor];
  v69 = [v5 trailingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v99[6] = v68;
  v49 = [(AutoLayoutScrollView *)v28 bottomAnchor];
  v66 = v49;
  v50 = [(OverridenBackgroundColorButton *)v7 topAnchor];
  v65 = v50;
  v51 = -10.0;
  if (v95 == 5)
  {
    v51 = -7.0;
  }

  v64 = [v49 constraintEqualToAnchor:v50 constant:v51];
  v99[7] = v64;
  v63 = [(OverridenBackgroundColorButton *)v7 bottomAnchor];
  v52 = [v5 safeAreaLayoutGuide];
  v53 = [v52 bottomAnchor];
  v54 = [v63 constraintEqualToAnchor:v53 constant:-10.0];
  v99[8] = v54;
  [(OverridenBackgroundColorButton *)v7 leadingAnchor];
  v55 = v7;
  v56 = v71 = v7;
  v57 = [v5 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:16.0];
  v99[9] = v58;
  v59 = [(OverridenBackgroundColorButton *)v55 trailingAnchor];
  v60 = [v5 trailingAnchor];
  [v59 constraintEqualToAnchor:v60 constant:-16.0];
  v61 = v96 = v5;
  v99[10] = v61;
  v62 = [NSArray arrayWithObjects:v99 count:11];
  [v77 activateConstraints:v62];

  [(MeCardShortcutViewController *)v92 _buildContent];
}

- (MeCardShortcutViewController)initWithShortcutEditSession:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MeCardShortcutViewController;
  v6 = [(MeCardShortcutViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v8 = [(ContaineeViewController *)v6 cardPresentationController];
    [v8 setPresentedModally:1];

    v9 = [(ContaineeViewController *)v7 cardPresentationController];
    [v9 setTakesAvailableHeight:1];

    objc_storeStrong(&v7->_shortcutEditSession, a3);
  }

  return v7;
}

@end
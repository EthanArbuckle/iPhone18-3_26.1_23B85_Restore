@interface MFCategorizationConfirmationViewController
- (MFCategorizationConfirmationViewController)initWithDisplayName:(id)a3 bucket:(int64_t)a4 messageListItem:(id)a5 avatarGenerator:(id)a6 continueActionHandler:(id)a7 cancelActionHandler:(id)a8;
- (double)preferredHeightForWidth:(double)a3;
- (id)_explainationLabelTextForBucket:(int64_t)a3;
- (id)_titleLabelTextForBucket:(int64_t)a3;
- (void)_updateAvatar;
- (void)loadView;
- (void)resizeSheet;
- (void)updateSizeForLayoutChange;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MFCategorizationConfirmationViewController

- (MFCategorizationConfirmationViewController)initWithDisplayName:(id)a3 bucket:(int64_t)a4 messageListItem:(id)a5 avatarGenerator:(id)a6 continueActionHandler:(id)a7 cancelActionHandler:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = MFCategorizationConfirmationViewController;
  v20 = [(MFCategorizationConfirmationViewController *)&v27 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    v20->_bucket = a4;
    objc_storeStrong(&v20->_displayName, a3);
    objc_storeStrong(&v21->_messageListItem, a5);
    objc_storeStrong(&v21->_avatarGenerator, a6);
    v22 = objc_retainBlock(v18);
    continueActionHandler = v21->_continueActionHandler;
    v21->_continueActionHandler = v22;

    v24 = objc_retainBlock(v19);
    cancelActionHandler = v21->_cancelActionHandler;
    v21->_cancelActionHandler = v24;
  }

  return v21;
}

- (void)loadView
{
  v63 = objc_alloc_init(UIView);
  [(MFCategorizationConfirmationViewController *)self setView:?];
  v55 = [UIBlurEffect effectWithStyle:9];
  v46 = [[UIVisualEffectView alloc] initWithEffect:v55];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v63 addSubview:v46];
  [v46 mf_pinToView:v63 usingLayoutMargins:0];
  if (MUISolariumFeatureEnabled())
  {
    v2 = [[MUIAvatarViewController alloc] initWithContacts:&__NSArray0__struct];
    [(MFCategorizationConfirmationViewController *)self setAvatarController:v2];
    v3 = [v2 view];
  }

  else
  {
    v3 = objc_opt_new();
    v2 = [UIImageSymbolConfiguration configurationWithPointSize:80.0];
    v4 = [UIImage systemImageNamed:MFImageGlyphSearchPeople withConfiguration:v2];
    [v3 setImage:v4];
    [MUIAvatarImageGenerator roundAvatarView:v3 withBorder:0 size:80.0];
    [(MFCategorizationConfirmationViewController *)self setAvatarImageView:v3];
  }

  [(MFCategorizationConfirmationViewController *)self _updateAvatar];
  v58 = v3;
  v60 = objc_alloc_init(UILabel);
  v5 = [(MFCategorizationConfirmationViewController *)self _titleLabelTextForBucket:[(MFCategorizationConfirmationViewController *)self bucket]];
  [v60 setText:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v6 pointSize];
  v7 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [v60 setFont:v7];

  [v60 setNumberOfLines:0];
  [v60 setTextAlignment:1];
  v59 = objc_alloc_init(UILabel);
  v8 = [(MFCategorizationConfirmationViewController *)self _explainationLabelTextForBucket:[(MFCategorizationConfirmationViewController *)self bucket]];
  [v59 setText:v8];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v59 setFont:v9];

  [v59 setNumberOfLines:0];
  [v59 setTextAlignment:1];
  v62 = +[OBBoldTrayButton boldButton];
  v10 = _EFLocalizedStringFromTable();
  [v62 setTitle:v10 forState:0];

  v11 = [(MFCategorizationConfirmationViewController *)self continueActionHandler];
  v12 = [UIAction actionWithHandler:v11];
  [v62 addAction:v12 forControlEvents:64];

  v61 = +[OBLinkTrayButton linkButton];
  v13 = _EFLocalizedStringFromTable();
  [v61 setTitle:v13 forState:0];

  v14 = [(MFCategorizationConfirmationViewController *)self cancelActionHandler];
  v15 = [UIAction actionWithHandler:v14];
  [v61 addAction:v15 forControlEvents:64];

  LODWORD(v16) = 1148846080;
  [v61 setContentHuggingPriority:1 forAxis:v16];
  v17 = [UIStackView alloc];
  v68[0] = v3;
  v68[1] = v60;
  v68[2] = v59;
  v18 = [NSArray arrayWithObjects:v68 count:3];
  v57 = [v17 initWithArrangedSubviews:v18];

  [v57 setAxis:1];
  [v57 setAlignment:3];
  [v57 setSpacing:16.0];
  v19 = [UIStackView alloc];
  v67[0] = v62;
  v67[1] = v61;
  v20 = [NSArray arrayWithObjects:v67 count:2];
  v56 = [v19 initWithArrangedSubviews:v20];

  [v56 setAxis:1];
  [v56 setAlignment:3];
  [v56 setDistribution:1];
  [v56 setSpacing:8.0];
  v21 = [UIStackView alloc];
  v66[0] = v57;
  v66[1] = v56;
  v22 = [NSArray arrayWithObjects:v66 count:2];
  v23 = [v21 initWithArrangedSubviews:v22];

  [v23 setAxis:1];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 setAlignment:3];
  [v23 setSpacing:40.0];
  [v63 addSubview:v23];
  v54 = [v23 topAnchor];
  v45 = [v63 topAnchor];
  v44 = [v54 constraintEqualToAnchor:24.0 constant:?];
  v65[0] = v44;
  v53 = [v23 leadingAnchor];
  v43 = [v63 leadingAnchor];
  v42 = [v53 constraintEqualToAnchor:28.0 constant:?];
  v65[1] = v42;
  v52 = [v23 trailingAnchor];
  v41 = [v63 trailingAnchor];
  v40 = [v52 constraintEqualToAnchor:-28.0 constant:?];
  v65[2] = v40;
  v51 = [v23 bottomAnchor];
  v39 = [v63 bottomAnchor];
  v38 = [v51 constraintEqualToAnchor:-24.0 constant:?];
  v65[3] = v38;
  v50 = [v62 leadingAnchor];
  v37 = [v23 leadingAnchor];
  v36 = [v50 constraintEqualToAnchor:?];
  v65[4] = v36;
  v49 = [v62 trailingAnchor];
  v35 = [v23 trailingAnchor];
  v34 = [v49 constraintEqualToAnchor:?];
  v65[5] = v34;
  v48 = [v61 leadingAnchor];
  v33 = [v23 leadingAnchor];
  v32 = [v48 constraintEqualToAnchor:?];
  v65[6] = v32;
  v47 = [v61 trailingAnchor];
  v24 = [v23 trailingAnchor];
  v25 = [v47 constraintEqualToAnchor:v24];
  v65[7] = v25;
  v26 = [v58 widthAnchor];
  v27 = [v26 constraintEqualToConstant:80.0];
  v65[8] = v27;
  v28 = [v58 heightAnchor];
  v29 = [v58 widthAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v65[9] = v30;
  v31 = [NSArray arrayWithObjects:v65 count:10];
  [NSLayoutConstraint activateConstraints:v31];

  [(MFCategorizationConfirmationViewController *)self setAvatarView:v58];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = MFCategorizationConfirmationViewController;
  [(MFCategorizationConfirmationViewController *)&v10 viewDidLoad];
  v3 = [(MFCategorizationConfirmationViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  objc_initWeak(&location, self);
  v4 = [(MFCategorizationConfirmationViewController *)self presentingViewController];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v11 count:2];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AD0D8;
  v7[3] = &unk_100650498;
  objc_copyWeak(&v8, &location);
  v6 = [v4 registerForTraitChanges:v5 withHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFCategorizationConfirmationViewController;
  [(MFCategorizationConfirmationViewController *)&v4 viewWillAppear:a3];
  [(MFCategorizationConfirmationViewController *)self updateSizeForLayoutChange];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = MFCategorizationConfirmationViewController;
  [(MFCategorizationConfirmationViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AD31C;
  v8[3] = &unk_10064CC00;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)updateSizeForLayoutChange
{
  v3 = [(MFCategorizationConfirmationViewController *)self sheetPresentationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AD3F0;
  v5[3] = &unk_10064C7E8;
  v5[4] = self;
  [v3 animateChanges:v5];

  [(MFCategorizationConfirmationViewController *)self preferredHeightForWidth:388.0];
  [(MFCategorizationConfirmationViewController *)self setPreferredContentSize:388.0, v4];
}

- (void)resizeSheet
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AD550;
  v8[3] = &unk_1006535B0;
  v8[4] = self;
  v5 = [UISheetPresentationControllerDetent customDetentWithIdentifier:v4 resolver:v8];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [(MFCategorizationConfirmationViewController *)self sheetPresentationController];
  [v7 setDetents:v6];
}

- (id)_explainationLabelTextForBucket:(int64_t)a3
{
  v4 = [(MFCategorizationConfirmationViewController *)self displayName];
  if (a3)
  {
    [MUILocalizedBlackPearlStrings allCurrentAndFutureMessagesFromDisplayName:v4 willBeCategorizedInBucket:a3];
  }

  else
  {
    [MUILocalizedBlackPearlStrings allCurrentAndFutureMessagesAutomaticallyCategorizedForDisplayName:v4];
  }
  v5 = ;

  return v5;
}

- (id)_titleLabelTextForBucket:(int64_t)a3
{
  v5 = [(MFCategorizationConfirmationViewController *)self displayName];
  if (a3)
  {
    [MUILocalizedBlackPearlStrings titleForManuallyCategorizingMessagesFromDisplayName:v5 toBucket:[(MFCategorizationConfirmationViewController *)self bucket]];
  }

  else
  {
    [MUILocalizedBlackPearlStrings titleForRestoringAutomaticCategorizationForDisplayName:v5];
  }
  v6 = ;

  return v6;
}

- (void)_updateAvatar
{
  objc_initWeak(&location, self);
  v3 = [MUIAvatarImageContext alloc];
  v4 = [(MFCategorizationConfirmationViewController *)self messageListItem];
  v5 = [v3 initWithMessageListItem:v4 reducePlaceholderImage:1];

  if (MUISolariumFeatureEnabled())
  {
    v6 = [(MFCategorizationConfirmationViewController *)self avatarController];
    v7 = [(MFCategorizationConfirmationViewController *)self avatarGenerator];
    v8 = [v6 displayPersonForContext:v5 avatarGenerator:v7];
  }

  else
  {
    v9 = [(MFCategorizationConfirmationViewController *)self avatarGenerator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001AD8A0;
    v11[3] = &unk_1006535D8;
    objc_copyWeak(&v12, &location);
    v10 = [v9 contactForContext:v5 handler:v11];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

- (double)preferredHeightForWidth:(double)a3
{
  height = UILayoutFittingCompressedSize.height;
  v5 = [(MFCategorizationConfirmationViewController *)self view];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  [v5 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:height verticalFittingPriority:{v6, v7}];
  v9 = v8;

  return v9;
}

@end
@interface CRLiOSQuickSelectViewController
- (BOOL)isInCompactViewModeForCompactFrame:(CGRect)a3 andRegularSizeFrame:(CGRect)a4;
- (BOOL)p_isHUDHidden;
- (BOOL)p_isInCompactViewModeForFrame:(CGRect)a3;
- (BOOL)p_isPresented;
- (CGRect)p_visibleCanvasRectInContainerView;
- (CRLiOSQuickSelectViewController)initWithDelegate:(id)a3;
- (id)p_constraintsForBackgroundView:(id)a3 inHudView:(id)a4;
- (id)p_constraintsForIconView:(id)a3 verticallyCenteredToView:(id)a4 inHudView:(id)a5;
- (id)p_constraintsForSelectAllButton:(id)a3 deselectAllButton:(id)a4 andDoneButton:(id)a5 withSeparator:(id)a6 andTextLabel:(id)a7 inHudView:(id)a8 forCompactLayout:(BOOL)a9;
- (id)p_constraintsForTextLabel:(id)a3 inHudView:(id)a4 withIconView:(id)a5 andSelectAllButton:(id)a6 andDeselectAllButton:(id)a7 forCompactLayout:(BOOL)a8;
- (id)p_createBackgroundView;
- (id)p_createBaseHUDView;
- (id)p_createSeparatorView;
- (id)p_makeHUDView;
- (id)p_setupHUDConstraintsInContainerViewForView:(id)a3 isCompact:(BOOL)a4;
- (id)traitCollection;
- (void)dismiss;
- (void)p_beginWatchingSelectionChanges;
- (void)p_configureDoneButton:(id)a3;
- (void)p_configureIconView:(id)a3;
- (void)p_configureSelectAllButton:(id)a3 andDeselectAllButton:(id)a4;
- (void)p_configureSelectButton:(id)a3;
- (void)p_configureTextLabel:(id)a3;
- (void)p_currentEditorDidChange:(id)a3;
- (void)p_deselectAllAction:(id)a3;
- (void)p_dismissAndAlertDelegate;
- (void)p_endWatchingSelectionChanges;
- (void)p_hideHUDWithAnimation:(BOOL)a3;
- (void)p_selectAllAction:(id)a3;
- (void)p_selectionPathDidChange:(id)a3;
- (void)p_temporarilyHideUIIfAppropriateForWindowRect:(CGRect)a3 hudRect:(CGRect)a4;
- (void)p_unhideHUDWithAnimation:(BOOL)a3;
- (void)p_updateConstraintsForSizeClassChange;
- (void)p_updateHUDAppearance;
- (void)p_updateHUDContainerViewFrame;
- (void)p_updateHUDIcon;
- (void)p_updateHUDState;
- (void)p_updateHUDTitle;
- (void)p_updateStateForSelectionButtons;
- (void)presentOnCanvasViewController:(id)a3 parentView:(id)a4;
- (void)temporarilyHideUIIfAppropriateForWindowRect:(CGRect)a3;
- (void)unhideUIIfAppropriateAfterHidingForWindowRect;
- (void)viewDidLayoutSubviews;
@end

@implementation CRLiOSQuickSelectViewController

- (CRLiOSQuickSelectViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRLiOSQuickSelectViewController;
  v5 = [(CRLiOSQuickSelectViewController *)&v21 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [UIImageView alloc];
    v8 = [UIImageSymbolConfiguration configurationWithPointSize:17.0];
    v9 = [UIImage systemImageNamed:@"square.on.circle" withConfiguration:v8];
    v10 = [v7 initWithImage:v9];
    iconImageView = v6->_iconImageView;
    v6->_iconImageView = v10;

    v12 = objc_alloc_init(UILabel);
    textLabel = v6->_textLabel;
    v6->_textLabel = v12;

    v14 = [UIButton buttonWithType:1];
    doneButton = v6->_doneButton;
    v6->_doneButton = v14;

    v16 = [UIButton buttonWithType:1];
    selectAllButton = v6->_selectAllButton;
    v6->_selectAllButton = v16;

    v18 = [UIButton buttonWithType:1];
    deselectAllButton = v6->_deselectAllButton;
    v6->_deselectAllButton = v18;
  }

  return v6;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CRLiOSQuickSelectViewController;
  [(CRLiOSQuickSelectViewController *)&v3 viewDidLayoutSubviews];
  [(CRLiOSQuickSelectViewController *)self p_updateHUDContainerViewFrame];
}

- (id)p_makeHUDView
{
  v3 = [(CRLiOSQuickSelectViewController *)self p_createBaseHUDView];
  v4 = [(CRLiOSQuickSelectViewController *)self p_createBackgroundView];
  [(CRLiOSQuickSelectViewController *)self setBackgroundView:v4];

  v5 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  [(CRLiOSQuickSelectViewController *)self p_configureIconView:v5];

  v6 = [(CRLiOSQuickSelectViewController *)self textLabel];
  [(CRLiOSQuickSelectViewController *)self p_configureTextLabel:v6];

  v7 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  v8 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  [(CRLiOSQuickSelectViewController *)self p_configureSelectAllButton:v7 andDeselectAllButton:v8];

  [(CRLiOSQuickSelectViewController *)self p_updateHUDState];
  v9 = [(CRLiOSQuickSelectViewController *)self p_createSeparatorView];
  [(CRLiOSQuickSelectViewController *)self setSeparatorView:v9];

  v10 = [(CRLiOSQuickSelectViewController *)self backgroundView];
  v11 = [(CRLiOSQuickSelectViewController *)self separatorView];
  [v10 addSubview:v11];

  v12 = [(CRLiOSQuickSelectViewController *)self doneButton];
  [(CRLiOSQuickSelectViewController *)self p_configureDoneButton:v12];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v13 = objc_opt_class();
    v14 = sub_100013F00(v13, v3);
    v15 = [v14 contentView];
    v16 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    [v15 addSubview:v16];

    v17 = [v14 contentView];
    v18 = [(CRLiOSQuickSelectViewController *)self iconImageView];
    [v17 addSubview:v18];

    v19 = [v14 contentView];
    v20 = [(CRLiOSQuickSelectViewController *)self textLabel];
    [v19 addSubview:v20];

    v21 = [v14 contentView];
    v22 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
    [v21 addSubview:v22];

    v23 = [v14 contentView];
    v24 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
    [v23 addSubview:v24];

    v25 = [v14 contentView];
    v26 = [(CRLiOSQuickSelectViewController *)self doneButton];
    [v25 addSubview:v26];
  }

  else
  {
    v27 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    [v3 addSubview:v27];

    v28 = [(CRLiOSQuickSelectViewController *)self iconImageView];
    [v3 addSubview:v28];

    v29 = [(CRLiOSQuickSelectViewController *)self textLabel];
    [v3 addSubview:v29];

    v30 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
    [v3 addSubview:v30];

    v31 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
    [v3 addSubview:v31];

    v14 = [(CRLiOSQuickSelectViewController *)self doneButton];
    [v3 addSubview:v14];
  }

  v32 = objc_alloc_init(NSMutableArray);
  v33 = [(CRLiOSQuickSelectViewController *)self backgroundView];
  v34 = [(CRLiOSQuickSelectViewController *)self p_constraintsForBackgroundView:v33 inHudView:v3];
  [v32 addObjectsFromArray:v34];

  [NSLayoutConstraint activateConstraints:v32];
  v35 = +[NSMutableArray array];
  v36 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  v37 = [(CRLiOSQuickSelectViewController *)self p_constraintsForIconView:v36 verticallyCenteredToView:v3 inHudView:v3];
  [v35 addObjectsFromArray:v37];

  v38 = [(CRLiOSQuickSelectViewController *)self textLabel];
  v39 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  v40 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  v41 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  v42 = [(CRLiOSQuickSelectViewController *)self p_constraintsForTextLabel:v38 inHudView:v3 withIconView:v39 andSelectAllButton:v40 andDeselectAllButton:v41 forCompactLayout:0];
  [v35 addObjectsFromArray:v42];

  v43 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  v44 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  v45 = [(CRLiOSQuickSelectViewController *)self doneButton];
  v46 = [(CRLiOSQuickSelectViewController *)self separatorView];
  v47 = [(CRLiOSQuickSelectViewController *)self textLabel];
  LOBYTE(v71) = 0;
  v48 = [(CRLiOSQuickSelectViewController *)self p_constraintsForSelectAllButton:v43 deselectAllButton:v44 andDoneButton:v45 withSeparator:v46 andTextLabel:v47 inHudView:v3 forCompactLayout:v71];
  [v35 addObjectsFromArray:v48];

  v49 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];

  if (v49)
  {
    v50 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
    v51 = [v50 arrayByAddingObjectsFromArray:v35];
    [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v51];
  }

  else
  {
    [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v35];
  }

  v52 = +[NSMutableArray array];
  v53 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  v54 = [(CRLiOSQuickSelectViewController *)self textLabel];
  v55 = [(CRLiOSQuickSelectViewController *)self p_constraintsForIconView:v53 verticallyCenteredToView:v54 inHudView:v3];
  [v52 addObjectsFromArray:v55];

  v56 = [(CRLiOSQuickSelectViewController *)self textLabel];
  v57 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  v58 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  v59 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  v60 = [(CRLiOSQuickSelectViewController *)self p_constraintsForTextLabel:v56 inHudView:v3 withIconView:v57 andSelectAllButton:v58 andDeselectAllButton:v59 forCompactLayout:1];
  [v52 addObjectsFromArray:v60];

  v61 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  v62 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  v63 = [(CRLiOSQuickSelectViewController *)self doneButton];
  v64 = [(CRLiOSQuickSelectViewController *)self separatorView];
  v65 = [(CRLiOSQuickSelectViewController *)self textLabel];
  LOBYTE(v72) = 1;
  v66 = [(CRLiOSQuickSelectViewController *)self p_constraintsForSelectAllButton:v61 deselectAllButton:v62 andDoneButton:v63 withSeparator:v64 andTextLabel:v65 inHudView:v3 forCompactLayout:v72];
  [v52 addObjectsFromArray:v66];

  v67 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];

  if (v67)
  {
    v68 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
    v69 = [v68 arrayByAddingObjectsFromArray:v52];
    [(CRLiOSQuickSelectViewController *)self setCompactHUDConstraints:v69];
  }

  else
  {
    [(CRLiOSQuickSelectViewController *)self setCompactHUDConstraints:v52];
  }

  [(CRLiOSQuickSelectViewController *)self p_updateHUDAppearance];

  return v3;
}

- (void)temporarilyHideUIIfAppropriateForWindowRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRLiOSQuickSelectViewController *)self HUDView];
  v9 = [(CRLiOSQuickSelectViewController *)self HUDView];
  [v9 bounds];
  [v8 convertRect:0 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(CRLiOSQuickSelectViewController *)self p_temporarilyHideUIIfAppropriateForWindowRect:x hudRect:y, width, height, v11, v13, v15, v17];
}

- (void)p_temporarilyHideUIIfAppropriateForWindowRect:(CGRect)a3 hudRect:(CGRect)a4
{
  if (sub_10011FF38(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height) && !self->_hidingHUDForWindowRect)
  {
    self->_hidingHUDForWindowRect = 1;

    [(CRLiOSQuickSelectViewController *)self p_hideHUDWithAnimation:1];
  }
}

- (void)unhideUIIfAppropriateAfterHidingForWindowRect
{
  if (self->_hidingHUDForWindowRect)
  {
    self->_hidingHUDForWindowRect = 0;
    [(CRLiOSQuickSelectViewController *)self p_unhideHUDWithAnimation:1];
  }
}

- (id)traitCollection
{
  v8.receiver = self;
  v8.super_class = CRLiOSQuickSelectViewController;
  v2 = [(CRLiOSQuickSelectViewController *)&v8 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    v9[0] = v2;
    v4 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
    v9[1] = v4;
    v5 = [NSArray arrayWithObjects:v9 count:2];
    v6 = [UITraitCollection traitCollectionWithTraitsFromCollections:v5];

    v2 = v6;
  }

  return v2;
}

- (BOOL)isInCompactViewModeForCompactFrame:(CGRect)a3 andRegularSizeFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = [(CRLiOSQuickSelectViewController *)self traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = x;
  }

  if (v14 == 1)
  {
    v16 = v10;
  }

  else
  {
    v16 = y;
  }

  if (v14 == 1)
  {
    v17 = v9;
  }

  else
  {
    v17 = width;
  }

  if (v14 == 1)
  {
    v18 = v8;
  }

  else
  {
    v18 = height;
  }

  return [(CRLiOSQuickSelectViewController *)self p_isInCompactViewModeForFrame:v15, v16, v17, v18];
}

- (BOOL)p_isInCompactViewModeForFrame:(CGRect)a3
{
  width = a3.size.width;
  v4 = [(CRLiOSQuickSelectViewController *)self traitCollection:a3.origin.x];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1 && width >= 480.0)
  {
    return 0;
  }

  return width < 480.0 || v5 == 1;
}

- (id)p_createBaseHUDView
{
  v2 = objc_alloc_init(UIView);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v3 = objc_alloc_init(UIGlassEffect);
    v4 = [[UIVisualEffectView alloc] initWithEffect:v3];

    v5 = [v4 layer];
    [v5 setCornerRadius:22.0];

    v2 = v4;
  }

  else
  {
    v3 = [v2 layer];
    [v3 setCornerRadius:8.0];
  }

  v6 = [v2 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  v7 = [UIColor colorWithWhite:1.0 alpha:0.1];
  v8 = [v7 CGColor];
  v9 = [v2 layer];
  [v9 setBorderColor:v8];

  v10 = [v2 layer];
  [v10 setBorderWidth:1.0];

  LODWORD(v11) = 1144799232;
  [v2 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148829696;
  [v2 setContentCompressionResistancePriority:0 forAxis:v12];

  return v2;
}

- (id)p_createBackgroundView
{
  v2 = objc_alloc_init(UIView);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)p_createSeparatorView
{
  v2 = objc_alloc_init(UIView);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (void)p_configureIconView:(id)a3
{
  v8 = a3;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    [v8 setHidden:1];
  }

  else
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = +[UIColor labelColor];
    [v8 setTintColor:v3];

    LODWORD(v4) = 1148846080;
    [v8 setContentCompressionResistancePriority:0 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [v8 setContentCompressionResistancePriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [v8 setContentHuggingPriority:1 forAxis:v7];
  }
}

- (void)p_configureTextLabel:(id)a3
{
  v7 = a3;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v3];

  v4 = +[UIColor labelColor];
  [v7 setTextColor:v4];

  [v7 setNumberOfLines:0];
  [v7 setAdjustsFontSizeToFitWidth:1];
  [v7 setAllowsDefaultTighteningForTruncation:1];
  [v7 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v5) = 1144750080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v7 setContentHuggingPriority:0 forAxis:v6];
}

- (void)p_configureSelectAllButton:(id)a3 andDeselectAllButton:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 configuration];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v8 = +[UIButtonConfiguration borderedButtonConfiguration];

    [v8 setCornerStyle:4];
    v7 = v8;
  }

  [(CRLiOSQuickSelectViewController *)self p_configureSelectButton:v15];
  [v15 addTarget:self action:"p_selectAllAction:" forControlEvents:64];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Select All" value:0 table:0];
  [v15 setTitle:v10 forState:0];

  if (v7)
  {
    [v15 setConfiguration:v7];
  }

  else
  {
    v11 = [v15 configuration];
    [v15 setConfiguration:v11];
  }

  [(CRLiOSQuickSelectViewController *)self p_configureSelectButton:v6];
  [v6 addTarget:self action:"p_deselectAllAction:" forControlEvents:64];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Deselect All" value:0 table:0];
  [v6 setTitle:v13 forState:0];

  if (v7)
  {
    [v6 setConfiguration:v7];
  }

  else
  {
    v14 = [v6 configuration];
    [v6 setConfiguration:v14];
  }
}

- (void)p_configureSelectButton:(id)a3
{
  v3 = a3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = [v3 titleLabel];
  [v5 setAdjustsFontForContentSizeCategory:1];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v7 = [v3 titleLabel];
  [v7 setFont:v6];

  v8 = [v3 titleLabel];
  [v8 setLineBreakMode:0];

  v9 = [v3 titleLabel];

  [v9 setNumberOfLines:0];
}

- (void)p_configureDoneButton:(id)a3
{
  v22 = a3;
  [v22 addTarget:self action:"p_doneEditingAction:" forControlEvents:64];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = [v22 titleLabel];
  [v5 setAdjustsFontForContentSizeCategory:1];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v7 = [v22 titleLabel];
  [v7 setFont:v6];

  v8 = [v22 titleLabel];
  [v8 setLineBreakMode:0];

  v9 = [v22 titleLabel];
  [v9 setNumberOfLines:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Done" value:0 table:0];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v12 = +[UIButtonConfiguration borderedButtonConfiguration];
    [v12 setCornerStyle:4];
    v13 = [UIImageSymbolConfiguration configurationWithScale:2];
    v14 = +[UIColor systemWhiteColor];
    v15 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v14];
    v16 = [v13 configurationByApplyingConfiguration:v15];
    [v12 setPreferredSymbolConfigurationForImage:v16];

    v17 = [(CRLiOSQuickSelectViewController *)self traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 2)
    {
      v19 = [UIImage systemImageNamed:@"checkmark"];
      [v12 setImage:v19];
    }

    else
    {
      [v12 setTitle:v11];
      v19 = +[UIColor systemWhiteColor];
      [v12 setBaseForegroundColor:v19];
    }

    v20 = +[UIBackgroundConfiguration clearConfiguration];
    v21 = +[UIColor tintColor];
    [v20 setBackgroundColor:v21];

    [v12 setBackground:v20];
    [v22 setConfiguration:v12];
  }

  else
  {
    [v22 setTitle:v11 forState:0];
  }

  [v22 setAccessibilityLabel:v11];
}

- (id)p_constraintsForBackgroundView:(id)a3 inHudView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v20 = [v6 leadingAnchor];
  v19 = [v5 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v7 = [v6 trailingAnchor];
  v8 = [v5 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v21[1] = v9;
  v10 = [v6 topAnchor];
  v11 = [v5 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [v6 bottomAnchor];

  v14 = [v5 bottomAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v21[3] = v15;
  v16 = [NSArray arrayWithObjects:v21 count:4];

  return v16;
}

- (id)p_constraintsForIconView:(id)a3 verticallyCenteredToView:(id)a4 inHudView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    v11 = [v7 leadingAnchor];
    v12 = [v9 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:12.0];
    v18[0] = v13;
    v14 = [v7 centerYAnchor];
    v15 = [v8 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v18[1] = v16;
    v10 = [NSArray arrayWithObjects:v18 count:2];
  }

  return v10;
}

- (id)p_constraintsForTextLabel:(id)a3 inHudView:(id)a4 withIconView:(id)a5 andSelectAllButton:(id)a6 andDeselectAllButton:(id)a7 forCompactLayout:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v46 = a7;
  v17 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
  LODWORD(a7) = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
  v18 = [v13 leadingAnchor];
  if (a7)
  {
    v19 = [v14 leadingAnchor];
    v20 = 20.0;
  }

  else
  {
    v19 = [v15 trailingAnchor];
    v20 = 12.0;
  }

  v21 = [v18 constraintEqualToAnchor:v19 constant:v20];
  v47 = v15;
  [v17 addObject:v21];

  if (v8)
  {
    v22 = [v13 trailingAnchor];
    v23 = [v14 trailingAnchor];
    v45 = v22;
    v24 = [v22 constraintEqualToAnchor:v23 constant:-12.0];
    v49[0] = v24;
    v25 = [v13 topAnchor];
    v26 = [v14 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:12.0];
    v49[1] = v27;
    v28 = [NSArray arrayWithObjects:v49 count:2];
    v29 = v17;
    [v17 addObjectsFromArray:v28];

    v30 = v46;
  }

  else
  {
    v31 = [v13 widthAnchor];
    v32 = [v16 widthAnchor];
    v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 multiplier:2.0];

    v34 = [v13 widthAnchor];
    v35 = [v46 widthAnchor];
    v23 = [v34 constraintGreaterThanOrEqualToAnchor:v35 multiplier:2.0];

    LODWORD(v36) = 1.0;
    [v33 setPriority:v36];
    LODWORD(v37) = 1.0;
    [v23 setPriority:v37];
    v45 = v33;
    v48[0] = v33;
    v48[1] = v23;
    v38 = [v13 centerYAnchor];
    v39 = [v14 centerYAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v48[2] = v40;
    v41 = [NSArray arrayWithObjects:v48 count:3];
    [v17 addObjectsFromArray:v41];

    v30 = v46;
    LODWORD(v38) = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
    v24 = [v13 heightAnchor];
    v25 = [v14 heightAnchor];
    v42 = -20.0;
    if (v38)
    {
      v42 = -26.0;
    }

    v26 = [v24 constraintEqualToAnchor:v25 constant:v42];
    v29 = v17;
    [v17 addObject:v26];
  }

  return v29;
}

- (id)p_constraintsForSelectAllButton:(id)a3 deselectAllButton:(id)a4 andDoneButton:(id)a5 withSeparator:(id)a6 andTextLabel:(id)a7 inHudView:(id)a8 forCompactLayout:(BOOL)a9
{
  v14 = a3;
  v15 = a4;
  v132 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a7;
  v135 = objc_alloc_init(NSMutableArray);
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v19 = 3.0;
  }

  else
  {
    v19 = 12.0;
  }

  v130 = v16;
  v131 = v14;
  v133 = v17;
  v134 = v15;
  if (!a9)
  {
    v127 = [v16 leadingAnchor];
    v122 = [v14 trailingAnchor];
    v117 = [v127 constraintEqualToAnchor:v122 constant:v19];
    v141[0] = v117;
    v112 = [v16 leadingAnchor];
    v107 = [v15 trailingAnchor];
    v103 = [v112 constraintEqualToAnchor:v107 constant:v19];
    v141[1] = v103;
    v98 = [v16 leadingAnchor];
    v97 = [v14 trailingAnchor];
    v96 = [v98 constraintGreaterThanOrEqualToAnchor:v97 constant:v19];
    v141[2] = v96;
    v33 = [v16 leadingAnchor];
    v34 = [v15 trailingAnchor];
    [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:v19];
    v35 = v100 = v18;
    v141[3] = v35;
    v36 = [v16 widthAnchor];
    v37 = +[UIScreen mainScreen];
    [v37 scale];
    v39 = [v36 constraintEqualToConstant:1.0 / v38];
    v141[4] = v39;
    v40 = [v16 heightAnchor];
    v41 = [v17 heightAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v141[5] = v42;
    v43 = [NSArray arrayWithObjects:v141 count:6];
    [v135 addObjectsFromArray:v43];

    v30 = v133;
    v31 = [v100 trailingAnchor];

    v32 = [v133 topAnchor];
  }

  else
  {
    v126 = [v16 topAnchor];
    v121 = [v18 bottomAnchor];

    v116 = [v126 constraintEqualToAnchor:v121 constant:v19];
    v142[0] = v116;
    v111 = [v16 bottomAnchor];
    v20 = [v14 topAnchor];
    v21 = [v111 constraintEqualToAnchor:v20 constant:-12.0];
    v142[1] = v21;
    v22 = [v16 widthAnchor];
    v23 = [v17 widthAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v142[2] = v24;
    v25 = [v16 heightAnchor];
    v26 = +[UIScreen mainScreen];
    [v26 scale];
    v28 = [v25 constraintEqualToConstant:1.0 / v27];
    v142[3] = v28;
    v29 = [NSArray arrayWithObjects:v142 count:4];
    [v135 addObjectsFromArray:v29];

    v30 = v133;
    v31 = [v133 leadingAnchor];
    v32 = [v16 bottomAnchor];
  }

  v128 = v32;
  v44 = v131;
  v45 = [v131 leadingAnchor];
  v46 = [v45 constraintEqualToAnchor:v31 constant:12.0];
  v140[0] = v46;
  v47 = v134;
  v48 = [v134 leadingAnchor];
  v49 = [v48 constraintEqualToAnchor:v31 constant:12.0];
  v140[1] = v49;
  v50 = [NSArray arrayWithObjects:v140 count:2];
  [v135 addObjectsFromArray:v50];

  if (!+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled]|| a9)
  {
    v123 = [v131 leadingAnchor];
    v118 = [v123 constraintEqualToAnchor:v31 constant:12.0];
    v139[0] = v118;
    v113 = [v131 topAnchor];
    v108 = [v113 constraintEqualToAnchor:v128 constant:12.0];
    v139[1] = v108;
    v104 = [v131 bottomAnchor];
    v101 = [v30 bottomAnchor];
    v99 = [v104 constraintEqualToAnchor:v101 constant:-12.0];
    v139[2] = v99;
    [v134 leadingAnchor];
    v52 = v51 = v31;
    v53 = [v52 constraintEqualToAnchor:v51 constant:12.0];
    v139[3] = v53;
    v54 = [v134 topAnchor];
    v55 = [v54 constraintEqualToAnchor:v128 constant:12.0];
    v139[4] = v55;
    v56 = [v134 bottomAnchor];
    v57 = [v30 bottomAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:-12.0];
    v139[5] = v58;
    v59 = [NSArray arrayWithObjects:v139 count:6];
    [v135 addObjectsFromArray:v59];

    v30 = v133;
    v44 = v131;

    v47 = v134;
    v31 = v51;
  }

  if (a9)
  {
    v109 = [v44 widthAnchor];
    v60 = v132;
    v124 = [v132 widthAnchor];
    v119 = [v109 constraintEqualToAnchor:?];
    v137[0] = v119;
    v105 = [v47 widthAnchor];
    v114 = [v132 widthAnchor];
    v61 = [v105 constraintEqualToAnchor:?];
    v137[1] = v61;
    v62 = [v44 bottomAnchor];
    v102 = [v30 bottomAnchor];
    v63 = [v62 constraintEqualToAnchor:v102 constant:-12.0];
    v137[2] = v63;
    v64 = [v47 bottomAnchor];
    v65 = [v30 bottomAnchor];
    [v64 constraintEqualToAnchor:v65 constant:-12.0];
    v67 = v66 = v31;
    v137[3] = v67;
    v68 = [NSArray arrayWithObjects:v137 count:4];
    [v135 addObjectsFromArray:v68];

    v69 = v105;
    v31 = v66;
    v70 = v109;

    v19 = 12.0;
    v71 = v44;
    v72 = v134;
  }

  else
  {
    v70 = [v44 centerYAnchor];
    v124 = [v30 centerYAnchor];
    v119 = [v70 constraintEqualToAnchor:?];
    v138[0] = v119;
    v69 = [v47 centerYAnchor];
    v114 = [v30 centerYAnchor];
    v61 = [v69 constraintEqualToAnchor:?];
    v138[1] = v61;
    v62 = [NSArray arrayWithObjects:v138 count:2];
    [v135 addObjectsFromArray:v62];
    v72 = v130;
    v71 = v130;
    v44 = v30;
    v60 = v132;
  }

  v73 = [v71 trailingAnchor];
  v74 = [v72 trailingAnchor];
  v120 = v44;
  v115 = [v60 leadingAnchor];
  v110 = [v115 constraintEqualToAnchor:v73 constant:v19];
  v136[0] = v110;
  v106 = [v60 leadingAnchor];
  v75 = [v106 constraintEqualToAnchor:v74 constant:v19];
  v136[1] = v75;
  v76 = [v60 leadingAnchor];
  v129 = v73;
  [v76 constraintGreaterThanOrEqualToAnchor:v73 constant:v19];
  v78 = v77 = v60;
  v136[2] = v78;
  v79 = [v77 leadingAnchor];
  v125 = v74;
  v80 = [v79 constraintGreaterThanOrEqualToAnchor:v74 constant:v19];
  v136[3] = v80;
  v81 = [v77 centerYAnchor];
  v82 = [v120 centerYAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];
  v136[4] = v83;
  v84 = [NSArray arrayWithObjects:v136 count:5];
  [v135 addObjectsFromArray:v84];

  LODWORD(v75) = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
  v85 = [v132 trailingAnchor];
  v86 = [v133 trailingAnchor];
  v87 = -12.0;
  if ((v75 & !a9) != 0)
  {
    v87 = -7.0;
  }

  v88 = [v85 constraintEqualToAnchor:v86 constant:v87];
  [v135 addObject:v88];

  v89 = [v132 heightAnchor];
  v90 = [v131 heightAnchor];

  v91 = [v89 constraintEqualToAnchor:v90];
  [v135 addObject:v91];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled]&& !a9)
  {
    v92 = [v132 widthAnchor];
    v93 = [v132 heightAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];
    [v135 addObject:v94];
  }

  return v135;
}

- (void)presentOnCanvasViewController:(id)a3 parentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  v9 = [v8 superview];

  if (v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E4C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E4D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E578();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSQuickSelectViewController presentOnCanvasViewController:parentView:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSQuickSelectViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:540 isFatal:0 description:"expected nil value for '%{public}s'", "self.hudContainerView.superview"];
  }

  v13 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  v14 = [v13 superview];

  if (!v14)
  {
    v65 = v6;
    objc_storeWeak(&self->_canvasViewController, v6);
    if (!v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvasViewController);
      v16 = [WeakRetained canvasView];
      v17 = [v16 enclosingScrollView];
      v7 = [v17 superview];

      if (!v7)
      {
        v18 = objc_loadWeakRetained(&self->_canvasViewController);
        v7 = [v18 canvasView];
      }
    }

    v19 = [CRLiOSUnhittableView alloc];
    [v7 frame];
    v20 = [(CRLiOSUnhittableView *)v19 initWithFrame:?];
    [(CRLiOSQuickSelectViewController *)self setHudContainerView:v20];

    v21 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    [v21 setAutoresizingMask:18];

    v22 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    [v7 addSubview:v22];

    v63 = [v7 safeAreaLayoutGuide];
    v61 = [v63 topAnchor];
    v62 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    v60 = [v62 topAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v69[0] = v59;
    v58 = [v7 safeAreaLayoutGuide];
    v56 = [v58 leadingAnchor];
    v57 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    v55 = [v57 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v69[1] = v54;
    v53 = [v7 safeAreaLayoutGuide];
    v52 = [v53 trailingAnchor];
    v23 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    v24 = [v23 trailingAnchor];
    v25 = [v52 constraintEqualToAnchor:v24];
    v69[2] = v25;
    v64 = v7;
    v26 = [v7 safeAreaLayoutGuide];
    v27 = [v26 bottomAnchor];
    v28 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    v29 = [v28 bottomAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v69[3] = v30;
    v31 = [NSArray arrayWithObjects:v69 count:4];
    [NSLayoutConstraint activateConstraints:v31];

    v32 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    [(CRLiOSQuickSelectViewController *)self setView:v32];

    v33 = [(CRLiOSQuickSelectViewController *)self p_makeHUDView];
    [(CRLiOSQuickSelectViewController *)self setHUDView:v33];

    v34 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    v35 = [(CRLiOSQuickSelectViewController *)self HUDView];
    [v34 addSubview:v35];

    v36 = [(CRLiOSQuickSelectViewController *)self HUDView];
    v37 = [(CRLiOSQuickSelectViewController *)self p_setupHUDConstraintsInContainerViewForView:v36 isCompact:0];

    v38 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];

    if (v38)
    {
      v39 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
      v40 = [v39 arrayByAddingObjectsFromArray:v37];
      [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v40];
    }

    else
    {
      [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v37];
    }

    v41 = [(CRLiOSQuickSelectViewController *)self HUDView];
    v42 = [(CRLiOSQuickSelectViewController *)self p_setupHUDConstraintsInContainerViewForView:v41 isCompact:1];

    v43 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];

    v7 = v64;
    v6 = v65;
    if (v43)
    {
      v44 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
      v45 = [v44 arrayByAddingObjectsFromArray:v42];
      [(CRLiOSQuickSelectViewController *)self setCompactHUDConstraints:v45];
    }

    else
    {
      [(CRLiOSQuickSelectViewController *)self setCompactHUDConstraints:v42];
    }

    v46 = objc_loadWeakRetained(&self->_delegate);
    [v46 visibleCanvasRectForQuickSelectViewController:self];
    v47 = [(CRLiOSQuickSelectViewController *)self p_isInCompactViewModeForFrame:?];

    if (v47)
    {
      [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
    }

    else
    {
      [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
    }
    v48 = ;
    [NSLayoutConstraint activateConstraints:v48];

    [(CRLiOSQuickSelectViewController *)self p_beginWatchingSelectionChanges];
    v68[0] = objc_opt_class();
    v68[1] = objc_opt_class();
    v68[2] = objc_opt_class();
    v49 = [NSArray arrayWithObjects:v68 count:3];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100154858;
    v67[3] = &unk_1018404D8;
    v67[4] = self;
    v50 = [(CRLiOSQuickSelectViewController *)self registerForTraitChanges:v49 withHandler:v67];
    v51 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001548AC;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_after(v51, &_dispatch_main_q, block);
  }
}

- (void)p_updateHUDContainerViewFrame
{
  [(CRLiOSQuickSelectViewController *)self p_visibleCanvasRectInContainerView];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)p_updateConstraintsForSizeClassChange
{
  v3 = [(CRLiOSQuickSelectViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v5 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
    [NSLayoutConstraint deactivateConstraints:v5];

    v6 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
  }

  else
  {
    v7 = [(CRLiOSQuickSelectViewController *)self traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 != 1)
    {
      return;
    }

    v9 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
    [NSLayoutConstraint deactivateConstraints:v9];

    v6 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
  }

  v10 = v6;
  [NSLayoutConstraint activateConstraints:?];
}

- (void)dismiss
{
  [(CRLiOSQuickSelectViewController *)self p_endWatchingSelectionChanges];
  v3 = [(CRLiOSQuickSelectViewController *)self HUDView];
  [v3 removeFromSuperview];

  v4 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  [v4 removeFromSuperview];
}

- (id)p_setupHUDConstraintsInContainerViewForView:(id)a3 isCompact:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLiOSQuickSelectViewController *)self hudContainerView];

  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E5A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E5B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E654();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSQuickSelectViewController p_setupHUDConstraintsInContainerViewForView:isCompact:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSQuickSelectViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:645 isFatal:0 description:"invalid nil value for '%{public}s'", "self.hudContainerView"];
  }

  v11 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E67C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E6A4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E744();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLiOSQuickSelectViewController p_setupHUDConstraintsInContainerViewForView:isCompact:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSQuickSelectViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:648 isFatal:0 description:"invalid nil value for '%{public}s'", "view"];
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v6 widthAnchor];
  v16 = [v11 widthAnchor];
  v17 = [v15 constraintLessThanOrEqualToAnchor:v16];

  LODWORD(v18) = 1148829696;
  v50 = v17;
  [v17 setPriority:v18];
  v19 = [v6 heightAnchor];
  v20 = [v11 heightAnchor];
  v21 = [v19 constraintLessThanOrEqualToAnchor:v20];

  LODWORD(v22) = 1.0;
  v49 = v21;
  [v21 setPriority:v22];
  v23 = [v6 leadingAnchor];
  v24 = [v11 safeAreaLayoutGuide];
  v25 = [v24 leadingAnchor];
  if (v4)
  {
    v26 = [v23 constraintEqualToAnchor:v25 constant:16.0];

    v27 = [v6 trailingAnchor];
    v28 = [v11 safeAreaLayoutGuide];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:-16.0];

    v32 = 1148846080;
  }

  else
  {
    v26 = [v23 constraintGreaterThanOrEqualToAnchor:v25 constant:16.0];

    v33 = [v6 trailingAnchor];
    v34 = [v11 safeAreaLayoutGuide];
    v35 = [v34 trailingAnchor];
    v30 = [v33 constraintLessThanOrEqualToAnchor:v35 constant:-16.0];

    v32 = 1144782848;
  }

  v36 = v32;
  LODWORD(v31) = v32;
  [v26 setPriority:v31];
  LODWORD(v37) = v36;
  [v30 setPriority:v37];
  v48 = v30;
  v51[0] = v26;
  v51[1] = v30;
  v38 = [v6 centerXAnchor];
  v39 = [v11 centerXAnchor];
  [v38 constraintEqualToAnchor:v39];
  v41 = v40 = v6;
  v51[2] = v41;
  v42 = [v40 bottomAnchor];
  v43 = [v11 bottomAnchor];
  [v42 constraintEqualToAnchor:v43 constant:-16.0];
  v45 = v44 = v26;
  v51[3] = v45;
  v51[4] = v50;
  v51[5] = v49;
  v47 = [NSArray arrayWithObjects:v51 count:6];

  return v47;
}

- (CGRect)p_visibleCanvasRectInContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained visibleCanvasRectForQuickSelectViewController:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_canvasViewController);
  v13 = [v12 canvasView];
  v14 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  v15 = [v14 superview];
  [v13 convertRect:v15 toView:{v5, v7, v9, v11}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)p_dismissAndAlertDelegate
{
  [(CRLiOSQuickSelectViewController *)self dismiss];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didDismissQuickSelectViewController:self];
}

- (void)p_selectAllAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained editorController];
  v9 = [v5 editorForEditAction:"selectAll:" withSender:self];

  if (v9)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 editorController];
    v8 = [v7 editorForEditAction:"selectAllForQuickSelect:" withSender:self];

    if (v8 == v9)
    {
      [v9 selectAllForQuickSelect:self];
    }

    else
    {
      [v9 selectAll:self];
    }

    self->_areAllSelected = 1;
  }

  [(CRLiOSQuickSelectViewController *)self p_updateHUDState];
}

- (void)p_deselectAllAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasViewController);
  v5 = [WeakRetained interactiveCanvasController];
  v8 = [v5 canvasEditor];

  v6 = [v8 editorController];
  v7 = [v8 selectionPathWithInfos:0];
  [v6 setSelectionPath:v7 withFlags:0x8000];

  self->_areAllSelected = 0;
  [(CRLiOSQuickSelectViewController *)self p_updateHUDState];
}

- (void)p_hideHUDWithAnimation:(BOOL)a3
{
  v3 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E76C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E780();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E810();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSQuickSelectViewController p_hideHUDWithAnimation:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSQuickSelectViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:722 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (![(CRLiOSQuickSelectViewController *)self p_isHUDHidden])
  {
    if (v3)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100155734;
      v9[3] = &unk_10183AB38;
      v9[4] = self;
      [UIView animateWithDuration:v9 animations:0 completion:0.2];
    }

    else
    {
      v8 = [(CRLiOSQuickSelectViewController *)self HUDView];
      [v8 setAlpha:0.0];
    }
  }

  ++self->_hudHidingCount;
}

- (void)p_unhideHUDWithAnimation:(BOOL)a3
{
  v3 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E838();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E84C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E8DC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSQuickSelectViewController p_unhideHUDWithAnimation:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSQuickSelectViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:739 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (!self->_hudHidingCount)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E904();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E92C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E9E8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSQuickSelectViewController p_unhideHUDWithAnimation:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSQuickSelectViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:740 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "_hudHidingCount", "0"];
  }

  if (![(CRLiOSQuickSelectViewController *)self p_isHUDHidden])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131EA10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131EA38();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131EAC8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSQuickSelectViewController p_unhideHUDWithAnimation:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSQuickSelectViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:741 isFatal:0 description:"Attempting to unhide Quick Select HUD but the HUD is not hidden."];
  }

  hudHidingCount = self->_hudHidingCount;
  if (hudHidingCount <= 1)
  {
    hudHidingCount = 1;
  }

  v15 = hudHidingCount - 1;
  self->_hudHidingCount = v15;
  if (!v15 && [(CRLiOSQuickSelectViewController *)self p_isHUDHidden])
  {
    if (v3)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100155CEC;
      v17[3] = &unk_10183AB38;
      v17[4] = self;
      [UIView animateWithDuration:v17 animations:0 completion:0.2];
    }

    else
    {
      v16 = [(CRLiOSQuickSelectViewController *)self HUDView];
      [v16 setAlpha:1.0];
    }
  }
}

- (BOOL)p_isHUDHidden
{
  v2 = [(CRLiOSQuickSelectViewController *)self HUDView];
  [v2 alpha];
  v4 = fabs(v3) < 0.00999999978 || v3 == 0.0;

  return v4;
}

- (void)p_updateHUDState
{
  [(CRLiOSQuickSelectViewController *)self p_updateStateForSelectionButtons];
  [(CRLiOSQuickSelectViewController *)self p_updateHUDTitle];

  [(CRLiOSQuickSelectViewController *)self p_updateHUDIcon];
}

- (void)p_updateStateForSelectionButtons
{
  areAllSelected = self->_areAllSelected;
  v4 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  [v4 setHidden:areAllSelected];

  v5 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  [v5 setHidden:areAllSelected ^ 1];
}

- (void)p_updateHUDTitle
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100155FAC;
  v13 = sub_100155FBC;
  v3 = +[NSBundle mainBundle];
  v14 = [v3 localizedStringForKey:@"To select or deselect an object value:tap it. To select multiple objects table:{drag across them.", 0, 0}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained editorController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100155FC4;
  v8[3] = &unk_101840680;
  v8[4] = &v9;
  [v5 enumerateEditorsOnStackUsingBlock:v8];

  v6 = v10[5];
  v7 = [(CRLiOSQuickSelectViewController *)self textLabel];
  [v7 setText:v6];

  _Block_object_dispose(&v9, 8);
}

- (void)p_updateHUDIcon
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100155FAC;
  v14 = sub_100155FBC;
  v15 = @"square.on.circle";
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained editorController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001561D4;
  v9[3] = &unk_101840680;
  v9[4] = &v10;
  [v4 enumerateEditorsOnStackUsingBlock:v9];

  v5 = v11[5];
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:17.0];
  v7 = [UIImage systemImageNamed:v5 withConfiguration:v6];
  v8 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  [v8 setImage:v7];

  _Block_object_dispose(&v10, 8);
}

- (void)p_updateHUDAppearance
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v3 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    v4 = [v3 layer];
    [v4 setCornerRadius:22.0];

    +[UIColor clearColor];
  }

  else
  {
    v5 = +[UIColor systemBackgroundColor];
    v6 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    [v6 setBackgroundColor:v5];

    v7 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    v8 = [v7 layer];
    [v8 setCornerRadius:8.0];

    v9 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    v10 = [v9 layer];
    [v10 crl_applyDefaultCanvasOverlayUIShadowSettings];

    +[UIColor separatorColor];
  }
  v11 = ;
  v12 = [(CRLiOSQuickSelectViewController *)self separatorView];
  [v12 setBackgroundColor:v11];

  v13 = [(CRLiOSQuickSelectViewController *)self backgroundView];
  v14 = [v13 layer];
  [v14 setCornerCurve:kCACornerCurveContinuous];

  v15 = +[UIColor labelColor];
  v16 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  [v16 setTintColor:v15];

  v17 = +[UIColor labelColor];
  v18 = [(CRLiOSQuickSelectViewController *)self textLabel];
  [v18 setTextColor:v17];

  v19 = [(CRLiOSQuickSelectViewController *)self doneButton];
  [(CRLiOSQuickSelectViewController *)self p_configureDoneButton:v19];
}

- (void)p_beginWatchingSelectionChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained editorController];
  [v3 addObserver:self selector:"p_selectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v5];

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 editorController];
  [v8 addObserver:self selector:"p_currentEditorDidChange:" name:@"CRLEditorControllerDidChangeCurrentEditors" object:v7];
}

- (void)p_endWatchingSelectionChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained editorController];
  [v3 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v5];

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 editorController];
  [v8 removeObserver:self name:@"CRLEditorControllerDidChangeCurrentEditors" object:v7];
}

- (void)p_selectionPathDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained shouldExitQuickSelectModeForQuickSelectViewController:self];

  if (v5)
  {

    [(CRLiOSQuickSelectViewController *)self p_dismissAndAlertDelegate];
  }

  else
  {
    self->_areAllSelected = 0;
    [(CRLiOSQuickSelectViewController *)self p_updateHUDState];

    [(CRLiOSQuickSelectViewController *)self p_updateHUDContainerViewFrame];
  }
}

- (void)p_currentEditorDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained shouldExitQuickSelectModeForQuickSelectViewController:self];

  if (v5)
  {

    [(CRLiOSQuickSelectViewController *)self p_dismissAndAlertDelegate];
  }
}

- (BOOL)p_isPresented
{
  v2 = [(CRLiOSQuickSelectViewController *)self HUDView];
  v3 = [v2 superview];
  v4 = v3 != 0;

  return v4;
}

@end
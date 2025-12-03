@interface CRLiOSQuickSelectViewController
- (BOOL)isInCompactViewModeForCompactFrame:(CGRect)frame andRegularSizeFrame:(CGRect)sizeFrame;
- (BOOL)p_isHUDHidden;
- (BOOL)p_isInCompactViewModeForFrame:(CGRect)frame;
- (BOOL)p_isPresented;
- (CGRect)p_visibleCanvasRectInContainerView;
- (CRLiOSQuickSelectViewController)initWithDelegate:(id)delegate;
- (id)p_constraintsForBackgroundView:(id)view inHudView:(id)hudView;
- (id)p_constraintsForIconView:(id)view verticallyCenteredToView:(id)toView inHudView:(id)hudView;
- (id)p_constraintsForSelectAllButton:(id)button deselectAllButton:(id)allButton andDoneButton:(id)doneButton withSeparator:(id)separator andTextLabel:(id)label inHudView:(id)view forCompactLayout:(BOOL)layout;
- (id)p_constraintsForTextLabel:(id)label inHudView:(id)view withIconView:(id)iconView andSelectAllButton:(id)button andDeselectAllButton:(id)allButton forCompactLayout:(BOOL)layout;
- (id)p_createBackgroundView;
- (id)p_createBaseHUDView;
- (id)p_createSeparatorView;
- (id)p_makeHUDView;
- (id)p_setupHUDConstraintsInContainerViewForView:(id)view isCompact:(BOOL)compact;
- (id)traitCollection;
- (void)dismiss;
- (void)p_beginWatchingSelectionChanges;
- (void)p_configureDoneButton:(id)button;
- (void)p_configureIconView:(id)view;
- (void)p_configureSelectAllButton:(id)button andDeselectAllButton:(id)allButton;
- (void)p_configureSelectButton:(id)button;
- (void)p_configureTextLabel:(id)label;
- (void)p_currentEditorDidChange:(id)change;
- (void)p_deselectAllAction:(id)action;
- (void)p_dismissAndAlertDelegate;
- (void)p_endWatchingSelectionChanges;
- (void)p_hideHUDWithAnimation:(BOOL)animation;
- (void)p_selectAllAction:(id)action;
- (void)p_selectionPathDidChange:(id)change;
- (void)p_temporarilyHideUIIfAppropriateForWindowRect:(CGRect)rect hudRect:(CGRect)hudRect;
- (void)p_unhideHUDWithAnimation:(BOOL)animation;
- (void)p_updateConstraintsForSizeClassChange;
- (void)p_updateHUDAppearance;
- (void)p_updateHUDContainerViewFrame;
- (void)p_updateHUDIcon;
- (void)p_updateHUDState;
- (void)p_updateHUDTitle;
- (void)p_updateStateForSelectionButtons;
- (void)presentOnCanvasViewController:(id)controller parentView:(id)view;
- (void)temporarilyHideUIIfAppropriateForWindowRect:(CGRect)rect;
- (void)unhideUIIfAppropriateAfterHidingForWindowRect;
- (void)viewDidLayoutSubviews;
@end

@implementation CRLiOSQuickSelectViewController

- (CRLiOSQuickSelectViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = CRLiOSQuickSelectViewController;
  v5 = [(CRLiOSQuickSelectViewController *)&v21 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
  p_createBaseHUDView = [(CRLiOSQuickSelectViewController *)self p_createBaseHUDView];
  p_createBackgroundView = [(CRLiOSQuickSelectViewController *)self p_createBackgroundView];
  [(CRLiOSQuickSelectViewController *)self setBackgroundView:p_createBackgroundView];

  iconImageView = [(CRLiOSQuickSelectViewController *)self iconImageView];
  [(CRLiOSQuickSelectViewController *)self p_configureIconView:iconImageView];

  textLabel = [(CRLiOSQuickSelectViewController *)self textLabel];
  [(CRLiOSQuickSelectViewController *)self p_configureTextLabel:textLabel];

  selectAllButton = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  deselectAllButton = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  [(CRLiOSQuickSelectViewController *)self p_configureSelectAllButton:selectAllButton andDeselectAllButton:deselectAllButton];

  [(CRLiOSQuickSelectViewController *)self p_updateHUDState];
  p_createSeparatorView = [(CRLiOSQuickSelectViewController *)self p_createSeparatorView];
  [(CRLiOSQuickSelectViewController *)self setSeparatorView:p_createSeparatorView];

  backgroundView = [(CRLiOSQuickSelectViewController *)self backgroundView];
  separatorView = [(CRLiOSQuickSelectViewController *)self separatorView];
  [backgroundView addSubview:separatorView];

  doneButton = [(CRLiOSQuickSelectViewController *)self doneButton];
  [(CRLiOSQuickSelectViewController *)self p_configureDoneButton:doneButton];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v13 = objc_opt_class();
    doneButton3 = sub_100013F00(v13, p_createBaseHUDView);
    contentView = [doneButton3 contentView];
    backgroundView2 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    [contentView addSubview:backgroundView2];

    contentView2 = [doneButton3 contentView];
    iconImageView2 = [(CRLiOSQuickSelectViewController *)self iconImageView];
    [contentView2 addSubview:iconImageView2];

    contentView3 = [doneButton3 contentView];
    textLabel2 = [(CRLiOSQuickSelectViewController *)self textLabel];
    [contentView3 addSubview:textLabel2];

    contentView4 = [doneButton3 contentView];
    selectAllButton2 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
    [contentView4 addSubview:selectAllButton2];

    contentView5 = [doneButton3 contentView];
    deselectAllButton2 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
    [contentView5 addSubview:deselectAllButton2];

    contentView6 = [doneButton3 contentView];
    doneButton2 = [(CRLiOSQuickSelectViewController *)self doneButton];
    [contentView6 addSubview:doneButton2];
  }

  else
  {
    backgroundView3 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    [p_createBaseHUDView addSubview:backgroundView3];

    iconImageView3 = [(CRLiOSQuickSelectViewController *)self iconImageView];
    [p_createBaseHUDView addSubview:iconImageView3];

    textLabel3 = [(CRLiOSQuickSelectViewController *)self textLabel];
    [p_createBaseHUDView addSubview:textLabel3];

    selectAllButton3 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
    [p_createBaseHUDView addSubview:selectAllButton3];

    deselectAllButton3 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
    [p_createBaseHUDView addSubview:deselectAllButton3];

    doneButton3 = [(CRLiOSQuickSelectViewController *)self doneButton];
    [p_createBaseHUDView addSubview:doneButton3];
  }

  v32 = objc_alloc_init(NSMutableArray);
  backgroundView4 = [(CRLiOSQuickSelectViewController *)self backgroundView];
  v34 = [(CRLiOSQuickSelectViewController *)self p_constraintsForBackgroundView:backgroundView4 inHudView:p_createBaseHUDView];
  [v32 addObjectsFromArray:v34];

  [NSLayoutConstraint activateConstraints:v32];
  v35 = +[NSMutableArray array];
  iconImageView4 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  v37 = [(CRLiOSQuickSelectViewController *)self p_constraintsForIconView:iconImageView4 verticallyCenteredToView:p_createBaseHUDView inHudView:p_createBaseHUDView];
  [v35 addObjectsFromArray:v37];

  textLabel4 = [(CRLiOSQuickSelectViewController *)self textLabel];
  iconImageView5 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  selectAllButton4 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  deselectAllButton4 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  v42 = [(CRLiOSQuickSelectViewController *)self p_constraintsForTextLabel:textLabel4 inHudView:p_createBaseHUDView withIconView:iconImageView5 andSelectAllButton:selectAllButton4 andDeselectAllButton:deselectAllButton4 forCompactLayout:0];
  [v35 addObjectsFromArray:v42];

  selectAllButton5 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  deselectAllButton5 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  doneButton4 = [(CRLiOSQuickSelectViewController *)self doneButton];
  separatorView2 = [(CRLiOSQuickSelectViewController *)self separatorView];
  textLabel5 = [(CRLiOSQuickSelectViewController *)self textLabel];
  LOBYTE(v71) = 0;
  v48 = [(CRLiOSQuickSelectViewController *)self p_constraintsForSelectAllButton:selectAllButton5 deselectAllButton:deselectAllButton5 andDoneButton:doneButton4 withSeparator:separatorView2 andTextLabel:textLabel5 inHudView:p_createBaseHUDView forCompactLayout:v71];
  [v35 addObjectsFromArray:v48];

  regularSizeHUDConstraints = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];

  if (regularSizeHUDConstraints)
  {
    regularSizeHUDConstraints2 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
    v51 = [regularSizeHUDConstraints2 arrayByAddingObjectsFromArray:v35];
    [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v51];
  }

  else
  {
    [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v35];
  }

  v52 = +[NSMutableArray array];
  iconImageView6 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  textLabel6 = [(CRLiOSQuickSelectViewController *)self textLabel];
  v55 = [(CRLiOSQuickSelectViewController *)self p_constraintsForIconView:iconImageView6 verticallyCenteredToView:textLabel6 inHudView:p_createBaseHUDView];
  [v52 addObjectsFromArray:v55];

  textLabel7 = [(CRLiOSQuickSelectViewController *)self textLabel];
  iconImageView7 = [(CRLiOSQuickSelectViewController *)self iconImageView];
  selectAllButton6 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  deselectAllButton6 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  v60 = [(CRLiOSQuickSelectViewController *)self p_constraintsForTextLabel:textLabel7 inHudView:p_createBaseHUDView withIconView:iconImageView7 andSelectAllButton:selectAllButton6 andDeselectAllButton:deselectAllButton6 forCompactLayout:1];
  [v52 addObjectsFromArray:v60];

  selectAllButton7 = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  deselectAllButton7 = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  doneButton5 = [(CRLiOSQuickSelectViewController *)self doneButton];
  separatorView3 = [(CRLiOSQuickSelectViewController *)self separatorView];
  textLabel8 = [(CRLiOSQuickSelectViewController *)self textLabel];
  LOBYTE(v72) = 1;
  v66 = [(CRLiOSQuickSelectViewController *)self p_constraintsForSelectAllButton:selectAllButton7 deselectAllButton:deselectAllButton7 andDoneButton:doneButton5 withSeparator:separatorView3 andTextLabel:textLabel8 inHudView:p_createBaseHUDView forCompactLayout:v72];
  [v52 addObjectsFromArray:v66];

  compactHUDConstraints = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];

  if (compactHUDConstraints)
  {
    compactHUDConstraints2 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
    v69 = [compactHUDConstraints2 arrayByAddingObjectsFromArray:v52];
    [(CRLiOSQuickSelectViewController *)self setCompactHUDConstraints:v69];
  }

  else
  {
    [(CRLiOSQuickSelectViewController *)self setCompactHUDConstraints:v52];
  }

  [(CRLiOSQuickSelectViewController *)self p_updateHUDAppearance];

  return p_createBaseHUDView;
}

- (void)temporarilyHideUIIfAppropriateForWindowRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  hUDView = [(CRLiOSQuickSelectViewController *)self HUDView];
  hUDView2 = [(CRLiOSQuickSelectViewController *)self HUDView];
  [hUDView2 bounds];
  [hUDView convertRect:0 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(CRLiOSQuickSelectViewController *)self p_temporarilyHideUIIfAppropriateForWindowRect:x hudRect:y, width, height, v11, v13, v15, v17];
}

- (void)p_temporarilyHideUIIfAppropriateForWindowRect:(CGRect)rect hudRect:(CGRect)hudRect
{
  if (sub_10011FF38(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, hudRect.origin.x, hudRect.origin.y, hudRect.size.width, hudRect.size.height) && !self->_hidingHUDForWindowRect)
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
  traitCollection = [(CRLiOSQuickSelectViewController *)&v8 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v9[0] = traitCollection;
    v4 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
    v9[1] = v4;
    v5 = [NSArray arrayWithObjects:v9 count:2];
    v6 = [UITraitCollection traitCollectionWithTraitsFromCollections:v5];

    traitCollection = v6;
  }

  return traitCollection;
}

- (BOOL)isInCompactViewModeForCompactFrame:(CGRect)frame andRegularSizeFrame:(CGRect)sizeFrame
{
  height = sizeFrame.size.height;
  width = sizeFrame.size.width;
  y = sizeFrame.origin.y;
  x = sizeFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  traitCollection = [(CRLiOSQuickSelectViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = x;
  }

  if (horizontalSizeClass == 1)
  {
    v16 = v10;
  }

  else
  {
    v16 = y;
  }

  if (horizontalSizeClass == 1)
  {
    v17 = v9;
  }

  else
  {
    v17 = width;
  }

  if (horizontalSizeClass == 1)
  {
    v18 = v8;
  }

  else
  {
    v18 = height;
  }

  return [(CRLiOSQuickSelectViewController *)self p_isInCompactViewModeForFrame:v15, v16, v17, v18];
}

- (BOOL)p_isInCompactViewModeForFrame:(CGRect)frame
{
  width = frame.size.width;
  v4 = [(CRLiOSQuickSelectViewController *)self traitCollection:frame.origin.x];
  horizontalSizeClass = [v4 horizontalSizeClass];

  if (horizontalSizeClass == 1 && width >= 480.0)
  {
    return 0;
  }

  return width < 480.0 || horizontalSizeClass == 1;
}

- (id)p_createBaseHUDView
{
  v2 = objc_alloc_init(UIView);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    layer2 = objc_alloc_init(UIGlassEffect);
    v4 = [[UIVisualEffectView alloc] initWithEffect:layer2];

    layer = [v4 layer];
    [layer setCornerRadius:22.0];

    v2 = v4;
  }

  else
  {
    layer2 = [v2 layer];
    [layer2 setCornerRadius:8.0];
  }

  layer3 = [v2 layer];
  [layer3 setCornerCurve:kCACornerCurveContinuous];

  v7 = [UIColor colorWithWhite:1.0 alpha:0.1];
  cGColor = [v7 CGColor];
  layer4 = [v2 layer];
  [layer4 setBorderColor:cGColor];

  layer5 = [v2 layer];
  [layer5 setBorderWidth:1.0];

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

- (void)p_configureIconView:(id)view
{
  viewCopy = view;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    [viewCopy setHidden:1];
  }

  else
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = +[UIColor labelColor];
    [viewCopy setTintColor:v3];

    LODWORD(v4) = 1148846080;
    [viewCopy setContentCompressionResistancePriority:0 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [viewCopy setContentCompressionResistancePriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [viewCopy setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [viewCopy setContentHuggingPriority:1 forAxis:v7];
  }
}

- (void)p_configureTextLabel:(id)label
{
  labelCopy = label;
  [labelCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [labelCopy setFont:v3];

  v4 = +[UIColor labelColor];
  [labelCopy setTextColor:v4];

  [labelCopy setNumberOfLines:0];
  [labelCopy setAdjustsFontSizeToFitWidth:1];
  [labelCopy setAllowsDefaultTighteningForTruncation:1];
  [labelCopy setAdjustsFontForContentSizeCategory:1];
  LODWORD(v5) = 1144750080;
  [labelCopy setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [labelCopy setContentHuggingPriority:0 forAxis:v6];
}

- (void)p_configureSelectAllButton:(id)button andDeselectAllButton:(id)allButton
{
  buttonCopy = button;
  allButtonCopy = allButton;
  configuration = [buttonCopy configuration];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v8 = +[UIButtonConfiguration borderedButtonConfiguration];

    [v8 setCornerStyle:4];
    configuration = v8;
  }

  [(CRLiOSQuickSelectViewController *)self p_configureSelectButton:buttonCopy];
  [buttonCopy addTarget:self action:"p_selectAllAction:" forControlEvents:64];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Select All" value:0 table:0];
  [buttonCopy setTitle:v10 forState:0];

  if (configuration)
  {
    [buttonCopy setConfiguration:configuration];
  }

  else
  {
    configuration2 = [buttonCopy configuration];
    [buttonCopy setConfiguration:configuration2];
  }

  [(CRLiOSQuickSelectViewController *)self p_configureSelectButton:allButtonCopy];
  [allButtonCopy addTarget:self action:"p_deselectAllAction:" forControlEvents:64];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Deselect All" value:0 table:0];
  [allButtonCopy setTitle:v13 forState:0];

  if (configuration)
  {
    [allButtonCopy setConfiguration:configuration];
  }

  else
  {
    configuration3 = [allButtonCopy configuration];
    [allButtonCopy setConfiguration:configuration3];
  }
}

- (void)p_configureSelectButton:(id)button
{
  buttonCopy = button;
  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [buttonCopy setContentCompressionResistancePriority:0 forAxis:v4];
  titleLabel = [buttonCopy titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  titleLabel2 = [buttonCopy titleLabel];
  [titleLabel2 setFont:v6];

  titleLabel3 = [buttonCopy titleLabel];
  [titleLabel3 setLineBreakMode:0];

  titleLabel4 = [buttonCopy titleLabel];

  [titleLabel4 setNumberOfLines:0];
}

- (void)p_configureDoneButton:(id)button
{
  buttonCopy = button;
  [buttonCopy addTarget:self action:"p_doneEditingAction:" forControlEvents:64];
  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [buttonCopy setContentCompressionResistancePriority:0 forAxis:v4];
  titleLabel = [buttonCopy titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  titleLabel2 = [buttonCopy titleLabel];
  [titleLabel2 setFont:v6];

  titleLabel3 = [buttonCopy titleLabel];
  [titleLabel3 setLineBreakMode:0];

  titleLabel4 = [buttonCopy titleLabel];
  [titleLabel4 setNumberOfLines:0];

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

    traitCollection = [(CRLiOSQuickSelectViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 2)
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
    [buttonCopy setConfiguration:v12];
  }

  else
  {
    [buttonCopy setTitle:v11 forState:0];
  }

  [buttonCopy setAccessibilityLabel:v11];
}

- (id)p_constraintsForBackgroundView:(id)view inHudView:(id)hudView
{
  hudViewCopy = hudView;
  viewCopy = view;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [hudViewCopy leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v18;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [hudViewCopy trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v9;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [hudViewCopy topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v12;
  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [hudViewCopy bottomAnchor];

  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v15;
  v16 = [NSArray arrayWithObjects:v21 count:4];

  return v16;
}

- (id)p_constraintsForIconView:(id)view verticallyCenteredToView:(id)toView inHudView:(id)hudView
{
  viewCopy = view;
  toViewCopy = toView;
  hudViewCopy = hudView;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [hudViewCopy leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v18[0] = v13;
    centerYAnchor = [viewCopy centerYAnchor];
    centerYAnchor2 = [toViewCopy centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v18[1] = v16;
    v10 = [NSArray arrayWithObjects:v18 count:2];
  }

  return v10;
}

- (id)p_constraintsForTextLabel:(id)label inHudView:(id)view withIconView:(id)iconView andSelectAllButton:(id)button andDeselectAllButton:(id)allButton forCompactLayout:(BOOL)layout
{
  layoutCopy = layout;
  labelCopy = label;
  viewCopy = view;
  iconViewCopy = iconView;
  buttonCopy = button;
  allButtonCopy = allButton;
  v17 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
  LODWORD(allButton) = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
  leadingAnchor = [labelCopy leadingAnchor];
  if (allButton)
  {
    leadingAnchor2 = [viewCopy leadingAnchor];
    v20 = 20.0;
  }

  else
  {
    leadingAnchor2 = [iconViewCopy trailingAnchor];
    v20 = 12.0;
  }

  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v20];
  v47 = iconViewCopy;
  [v17 addObject:v21];

  if (layoutCopy)
  {
    trailingAnchor = [labelCopy trailingAnchor];
    trailingAnchor2 = [viewCopy trailingAnchor];
    v45 = trailingAnchor;
    heightAnchor = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v49[0] = heightAnchor;
    topAnchor = [labelCopy topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v49[1] = v27;
    v28 = [NSArray arrayWithObjects:v49 count:2];
    v29 = v17;
    [v17 addObjectsFromArray:v28];

    v30 = allButtonCopy;
  }

  else
  {
    widthAnchor = [labelCopy widthAnchor];
    widthAnchor2 = [buttonCopy widthAnchor];
    v33 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:2.0];

    widthAnchor3 = [labelCopy widthAnchor];
    widthAnchor4 = [allButtonCopy widthAnchor];
    trailingAnchor2 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:widthAnchor4 multiplier:2.0];

    LODWORD(v36) = 1.0;
    [v33 setPriority:v36];
    LODWORD(v37) = 1.0;
    [trailingAnchor2 setPriority:v37];
    v45 = v33;
    v48[0] = v33;
    v48[1] = trailingAnchor2;
    centerYAnchor = [labelCopy centerYAnchor];
    centerYAnchor2 = [viewCopy centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v48[2] = v40;
    v41 = [NSArray arrayWithObjects:v48 count:3];
    [v17 addObjectsFromArray:v41];

    v30 = allButtonCopy;
    LODWORD(centerYAnchor) = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
    heightAnchor = [labelCopy heightAnchor];
    topAnchor = [viewCopy heightAnchor];
    v42 = -20.0;
    if (centerYAnchor)
    {
      v42 = -26.0;
    }

    topAnchor2 = [heightAnchor constraintEqualToAnchor:topAnchor constant:v42];
    v29 = v17;
    [v17 addObject:topAnchor2];
  }

  return v29;
}

- (id)p_constraintsForSelectAllButton:(id)button deselectAllButton:(id)allButton andDoneButton:(id)doneButton withSeparator:(id)separator andTextLabel:(id)label inHudView:(id)view forCompactLayout:(BOOL)layout
{
  buttonCopy = button;
  allButtonCopy = allButton;
  doneButtonCopy = doneButton;
  separatorCopy = separator;
  viewCopy = view;
  labelCopy = label;
  v135 = objc_alloc_init(NSMutableArray);
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v19 = 3.0;
  }

  else
  {
    v19 = 12.0;
  }

  v130 = separatorCopy;
  v131 = buttonCopy;
  v133 = viewCopy;
  v134 = allButtonCopy;
  if (!layout)
  {
    leadingAnchor = [separatorCopy leadingAnchor];
    trailingAnchor = [buttonCopy trailingAnchor];
    v117 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:v19];
    v141[0] = v117;
    leadingAnchor2 = [separatorCopy leadingAnchor];
    trailingAnchor2 = [allButtonCopy trailingAnchor];
    v103 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:v19];
    v141[1] = v103;
    leadingAnchor3 = [separatorCopy leadingAnchor];
    trailingAnchor3 = [buttonCopy trailingAnchor];
    v96 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:v19];
    v141[2] = v96;
    leadingAnchor4 = [separatorCopy leadingAnchor];
    trailingAnchor4 = [allButtonCopy trailingAnchor];
    [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:v19];
    v35 = v100 = labelCopy;
    v141[3] = v35;
    widthAnchor = [separatorCopy widthAnchor];
    v37 = +[UIScreen mainScreen];
    [v37 scale];
    v39 = [widthAnchor constraintEqualToConstant:1.0 / v38];
    v141[4] = v39;
    heightAnchor = [separatorCopy heightAnchor];
    heightAnchor2 = [viewCopy heightAnchor];
    v42 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v141[5] = v42;
    v43 = [NSArray arrayWithObjects:v141 count:6];
    [v135 addObjectsFromArray:v43];

    v30 = v133;
    trailingAnchor5 = [v100 trailingAnchor];

    topAnchor = [v133 topAnchor];
  }

  else
  {
    topAnchor2 = [separatorCopy topAnchor];
    bottomAnchor = [labelCopy bottomAnchor];

    v116 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:v19];
    v142[0] = v116;
    bottomAnchor2 = [separatorCopy bottomAnchor];
    topAnchor3 = [buttonCopy topAnchor];
    v21 = [bottomAnchor2 constraintEqualToAnchor:topAnchor3 constant:-12.0];
    v142[1] = v21;
    widthAnchor2 = [separatorCopy widthAnchor];
    widthAnchor3 = [viewCopy widthAnchor];
    v24 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v142[2] = v24;
    heightAnchor3 = [separatorCopy heightAnchor];
    v26 = +[UIScreen mainScreen];
    [v26 scale];
    v28 = [heightAnchor3 constraintEqualToConstant:1.0 / v27];
    v142[3] = v28;
    v29 = [NSArray arrayWithObjects:v142 count:4];
    [v135 addObjectsFromArray:v29];

    v30 = v133;
    trailingAnchor5 = [v133 leadingAnchor];
    topAnchor = [separatorCopy bottomAnchor];
  }

  v128 = topAnchor;
  v44 = v131;
  leadingAnchor5 = [v131 leadingAnchor];
  v46 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:12.0];
  v140[0] = v46;
  v47 = v134;
  leadingAnchor6 = [v134 leadingAnchor];
  v49 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor5 constant:12.0];
  v140[1] = v49;
  v50 = [NSArray arrayWithObjects:v140 count:2];
  [v135 addObjectsFromArray:v50];

  if (!+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled]|| layout)
  {
    leadingAnchor7 = [v131 leadingAnchor];
    v118 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:12.0];
    v139[0] = v118;
    topAnchor4 = [v131 topAnchor];
    v108 = [topAnchor4 constraintEqualToAnchor:v128 constant:12.0];
    v139[1] = v108;
    bottomAnchor3 = [v131 bottomAnchor];
    bottomAnchor4 = [v30 bottomAnchor];
    v99 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
    v139[2] = v99;
    [v134 leadingAnchor];
    v52 = v51 = trailingAnchor5;
    v53 = [v52 constraintEqualToAnchor:v51 constant:12.0];
    v139[3] = v53;
    topAnchor5 = [v134 topAnchor];
    v55 = [topAnchor5 constraintEqualToAnchor:v128 constant:12.0];
    v139[4] = v55;
    bottomAnchor5 = [v134 bottomAnchor];
    bottomAnchor6 = [v30 bottomAnchor];
    v58 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-12.0];
    v139[5] = v58;
    v59 = [NSArray arrayWithObjects:v139 count:6];
    [v135 addObjectsFromArray:v59];

    v30 = v133;
    v44 = v131;

    v47 = v134;
    trailingAnchor5 = v51;
  }

  if (layout)
  {
    widthAnchor4 = [v44 widthAnchor];
    v60 = doneButtonCopy;
    widthAnchor5 = [doneButtonCopy widthAnchor];
    v119 = [widthAnchor4 constraintEqualToAnchor:?];
    v137[0] = v119;
    widthAnchor6 = [v47 widthAnchor];
    widthAnchor7 = [doneButtonCopy widthAnchor];
    v61 = [widthAnchor6 constraintEqualToAnchor:?];
    v137[1] = v61;
    bottomAnchor7 = [v44 bottomAnchor];
    bottomAnchor8 = [v30 bottomAnchor];
    v63 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-12.0];
    v137[2] = v63;
    bottomAnchor9 = [v47 bottomAnchor];
    bottomAnchor10 = [v30 bottomAnchor];
    [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-12.0];
    v67 = v66 = trailingAnchor5;
    v137[3] = v67;
    v68 = [NSArray arrayWithObjects:v137 count:4];
    [v135 addObjectsFromArray:v68];

    centerYAnchor2 = widthAnchor6;
    trailingAnchor5 = v66;
    centerYAnchor = widthAnchor4;

    v19 = 12.0;
    v71 = v44;
    v72 = v134;
  }

  else
  {
    centerYAnchor = [v44 centerYAnchor];
    widthAnchor5 = [v30 centerYAnchor];
    v119 = [centerYAnchor constraintEqualToAnchor:?];
    v138[0] = v119;
    centerYAnchor2 = [v47 centerYAnchor];
    widthAnchor7 = [v30 centerYAnchor];
    v61 = [centerYAnchor2 constraintEqualToAnchor:?];
    v138[1] = v61;
    bottomAnchor7 = [NSArray arrayWithObjects:v138 count:2];
    [v135 addObjectsFromArray:bottomAnchor7];
    v72 = v130;
    v71 = v130;
    v44 = v30;
    v60 = doneButtonCopy;
  }

  trailingAnchor6 = [v71 trailingAnchor];
  trailingAnchor7 = [v72 trailingAnchor];
  v120 = v44;
  leadingAnchor8 = [v60 leadingAnchor];
  v110 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6 constant:v19];
  v136[0] = v110;
  leadingAnchor9 = [v60 leadingAnchor];
  v75 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7 constant:v19];
  v136[1] = v75;
  leadingAnchor10 = [v60 leadingAnchor];
  v129 = trailingAnchor6;
  [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:v19];
  v78 = v77 = v60;
  v136[2] = v78;
  leadingAnchor11 = [v77 leadingAnchor];
  v125 = trailingAnchor7;
  v80 = [leadingAnchor11 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:v19];
  v136[3] = v80;
  centerYAnchor3 = [v77 centerYAnchor];
  centerYAnchor4 = [v120 centerYAnchor];
  v83 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v136[4] = v83;
  v84 = [NSArray arrayWithObjects:v136 count:5];
  [v135 addObjectsFromArray:v84];

  LODWORD(v75) = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
  trailingAnchor8 = [doneButtonCopy trailingAnchor];
  trailingAnchor9 = [v133 trailingAnchor];
  v87 = -12.0;
  if ((v75 & !layout) != 0)
  {
    v87 = -7.0;
  }

  v88 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:v87];
  [v135 addObject:v88];

  heightAnchor4 = [doneButtonCopy heightAnchor];
  heightAnchor5 = [v131 heightAnchor];

  v91 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  [v135 addObject:v91];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled]&& !layout)
  {
    widthAnchor8 = [doneButtonCopy widthAnchor];
    heightAnchor6 = [doneButtonCopy heightAnchor];
    v94 = [widthAnchor8 constraintEqualToAnchor:heightAnchor6];
    [v135 addObject:v94];
  }

  return v135;
}

- (void)presentOnCanvasViewController:(id)controller parentView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  hudContainerView = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  superview = [hudContainerView superview];

  if (superview)
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

  hudContainerView2 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  superview2 = [hudContainerView2 superview];

  if (!superview2)
  {
    v65 = controllerCopy;
    objc_storeWeak(&self->_canvasViewController, controllerCopy);
    if (!viewCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvasViewController);
      canvasView = [WeakRetained canvasView];
      enclosingScrollView = [canvasView enclosingScrollView];
      viewCopy = [enclosingScrollView superview];

      if (!viewCopy)
      {
        v18 = objc_loadWeakRetained(&self->_canvasViewController);
        viewCopy = [v18 canvasView];
      }
    }

    v19 = [CRLiOSUnhittableView alloc];
    [viewCopy frame];
    v20 = [(CRLiOSUnhittableView *)v19 initWithFrame:?];
    [(CRLiOSQuickSelectViewController *)self setHudContainerView:v20];

    hudContainerView3 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    [hudContainerView3 setAutoresizingMask:18];

    hudContainerView4 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    [viewCopy addSubview:hudContainerView4];

    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    hudContainerView5 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    topAnchor2 = [hudContainerView5 topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v69[0] = v59;
    safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
    leadingAnchor = [safeAreaLayoutGuide2 leadingAnchor];
    hudContainerView6 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    leadingAnchor2 = [hudContainerView6 leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v69[1] = v54;
    safeAreaLayoutGuide3 = [viewCopy safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
    hudContainerView7 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    trailingAnchor2 = [hudContainerView7 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v69[2] = v25;
    v64 = viewCopy;
    safeAreaLayoutGuide4 = [viewCopy safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
    hudContainerView8 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    bottomAnchor2 = [hudContainerView8 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v69[3] = v30;
    v31 = [NSArray arrayWithObjects:v69 count:4];
    [NSLayoutConstraint activateConstraints:v31];

    hudContainerView9 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    [(CRLiOSQuickSelectViewController *)self setView:hudContainerView9];

    p_makeHUDView = [(CRLiOSQuickSelectViewController *)self p_makeHUDView];
    [(CRLiOSQuickSelectViewController *)self setHUDView:p_makeHUDView];

    hudContainerView10 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
    hUDView = [(CRLiOSQuickSelectViewController *)self HUDView];
    [hudContainerView10 addSubview:hUDView];

    hUDView2 = [(CRLiOSQuickSelectViewController *)self HUDView];
    v37 = [(CRLiOSQuickSelectViewController *)self p_setupHUDConstraintsInContainerViewForView:hUDView2 isCompact:0];

    regularSizeHUDConstraints = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];

    if (regularSizeHUDConstraints)
    {
      regularSizeHUDConstraints2 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
      v40 = [regularSizeHUDConstraints2 arrayByAddingObjectsFromArray:v37];
      [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v40];
    }

    else
    {
      [(CRLiOSQuickSelectViewController *)self setRegularSizeHUDConstraints:v37];
    }

    hUDView3 = [(CRLiOSQuickSelectViewController *)self HUDView];
    v42 = [(CRLiOSQuickSelectViewController *)self p_setupHUDConstraintsInContainerViewForView:hUDView3 isCompact:1];

    compactHUDConstraints = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];

    viewCopy = v64;
    controllerCopy = v65;
    if (compactHUDConstraints)
    {
      compactHUDConstraints2 = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
      v45 = [compactHUDConstraints2 arrayByAddingObjectsFromArray:v42];
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
  hudContainerView = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  [hudContainerView setFrame:{v4, v6, v8, v10}];
}

- (void)p_updateConstraintsForSizeClassChange
{
  traitCollection = [(CRLiOSQuickSelectViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    compactHUDConstraints = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
    [NSLayoutConstraint deactivateConstraints:compactHUDConstraints];

    regularSizeHUDConstraints = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
  }

  else
  {
    traitCollection2 = [(CRLiOSQuickSelectViewController *)self traitCollection];
    horizontalSizeClass2 = [traitCollection2 horizontalSizeClass];

    if (horizontalSizeClass2 != 1)
    {
      return;
    }

    regularSizeHUDConstraints2 = [(CRLiOSQuickSelectViewController *)self regularSizeHUDConstraints];
    [NSLayoutConstraint deactivateConstraints:regularSizeHUDConstraints2];

    regularSizeHUDConstraints = [(CRLiOSQuickSelectViewController *)self compactHUDConstraints];
  }

  v10 = regularSizeHUDConstraints;
  [NSLayoutConstraint activateConstraints:?];
}

- (void)dismiss
{
  [(CRLiOSQuickSelectViewController *)self p_endWatchingSelectionChanges];
  hUDView = [(CRLiOSQuickSelectViewController *)self HUDView];
  [hUDView removeFromSuperview];

  hudContainerView = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  [hudContainerView removeFromSuperview];
}

- (id)p_setupHUDConstraintsInContainerViewForView:(id)view isCompact:(BOOL)compact
{
  compactCopy = compact;
  viewCopy = view;
  hudContainerView = [(CRLiOSQuickSelectViewController *)self hudContainerView];

  if (!hudContainerView)
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

  hudContainerView2 = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  if (!viewCopy)
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

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [viewCopy widthAnchor];
  widthAnchor2 = [hudContainerView2 widthAnchor];
  v17 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];

  LODWORD(v18) = 1148829696;
  v50 = v17;
  [v17 setPriority:v18];
  heightAnchor = [viewCopy heightAnchor];
  heightAnchor2 = [hudContainerView2 heightAnchor];
  v21 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];

  LODWORD(v22) = 1.0;
  v49 = v21;
  [v21 setPriority:v22];
  leadingAnchor = [viewCopy leadingAnchor];
  safeAreaLayoutGuide = [hudContainerView2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  if (compactCopy)
  {
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];

    trailingAnchor = [viewCopy trailingAnchor];
    safeAreaLayoutGuide2 = [hudContainerView2 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];

    v32 = 1148846080;
  }

  else
  {
    v26 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:16.0];

    trailingAnchor3 = [viewCopy trailingAnchor];
    safeAreaLayoutGuide3 = [hudContainerView2 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
    v30 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-16.0];

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
  centerXAnchor = [viewCopy centerXAnchor];
  centerXAnchor2 = [hudContainerView2 centerXAnchor];
  [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v41 = v40 = viewCopy;
  v51[2] = v41;
  bottomAnchor = [v40 bottomAnchor];
  bottomAnchor2 = [hudContainerView2 bottomAnchor];
  [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
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
  canvasView = [v12 canvasView];
  hudContainerView = [(CRLiOSQuickSelectViewController *)self hudContainerView];
  superview = [hudContainerView superview];
  [canvasView convertRect:superview toView:{v5, v7, v9, v11}];
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

- (void)p_selectAllAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  editorController = [WeakRetained editorController];
  v9 = [editorController editorForEditAction:"selectAll:" withSender:self];

  if (v9)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    editorController2 = [v6 editorController];
    v8 = [editorController2 editorForEditAction:"selectAllForQuickSelect:" withSender:self];

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

- (void)p_deselectAllAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasViewController);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];

  editorController = [canvasEditor editorController];
  v7 = [canvasEditor selectionPathWithInfos:0];
  [editorController setSelectionPath:v7 withFlags:0x8000];

  self->_areAllSelected = 0;
  [(CRLiOSQuickSelectViewController *)self p_updateHUDState];
}

- (void)p_hideHUDWithAnimation:(BOOL)animation
{
  animationCopy = animation;
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
    if (animationCopy)
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
      hUDView = [(CRLiOSQuickSelectViewController *)self HUDView];
      [hUDView setAlpha:0.0];
    }
  }

  ++self->_hudHidingCount;
}

- (void)p_unhideHUDWithAnimation:(BOOL)animation
{
  animationCopy = animation;
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
    if (animationCopy)
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
      hUDView = [(CRLiOSQuickSelectViewController *)self HUDView];
      [hUDView setAlpha:1.0];
    }
  }
}

- (BOOL)p_isHUDHidden
{
  hUDView = [(CRLiOSQuickSelectViewController *)self HUDView];
  [hUDView alpha];
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
  selectAllButton = [(CRLiOSQuickSelectViewController *)self selectAllButton];
  [selectAllButton setHidden:areAllSelected];

  deselectAllButton = [(CRLiOSQuickSelectViewController *)self deselectAllButton];
  [deselectAllButton setHidden:areAllSelected ^ 1];
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
  editorController = [WeakRetained editorController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100155FC4;
  v8[3] = &unk_101840680;
  v8[4] = &v9;
  [editorController enumerateEditorsOnStackUsingBlock:v8];

  v6 = v10[5];
  textLabel = [(CRLiOSQuickSelectViewController *)self textLabel];
  [textLabel setText:v6];

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
  editorController = [WeakRetained editorController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001561D4;
  v9[3] = &unk_101840680;
  v9[4] = &v10;
  [editorController enumerateEditorsOnStackUsingBlock:v9];

  v5 = v11[5];
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:17.0];
  v7 = [UIImage systemImageNamed:v5 withConfiguration:v6];
  iconImageView = [(CRLiOSQuickSelectViewController *)self iconImageView];
  [iconImageView setImage:v7];

  _Block_object_dispose(&v10, 8);
}

- (void)p_updateHUDAppearance
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    backgroundView = [(CRLiOSQuickSelectViewController *)self backgroundView];
    layer = [backgroundView layer];
    [layer setCornerRadius:22.0];

    +[UIColor clearColor];
  }

  else
  {
    v5 = +[UIColor systemBackgroundColor];
    backgroundView2 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    [backgroundView2 setBackgroundColor:v5];

    backgroundView3 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    layer2 = [backgroundView3 layer];
    [layer2 setCornerRadius:8.0];

    backgroundView4 = [(CRLiOSQuickSelectViewController *)self backgroundView];
    layer3 = [backgroundView4 layer];
    [layer3 crl_applyDefaultCanvasOverlayUIShadowSettings];

    +[UIColor separatorColor];
  }
  v11 = ;
  separatorView = [(CRLiOSQuickSelectViewController *)self separatorView];
  [separatorView setBackgroundColor:v11];

  backgroundView5 = [(CRLiOSQuickSelectViewController *)self backgroundView];
  layer4 = [backgroundView5 layer];
  [layer4 setCornerCurve:kCACornerCurveContinuous];

  v15 = +[UIColor labelColor];
  iconImageView = [(CRLiOSQuickSelectViewController *)self iconImageView];
  [iconImageView setTintColor:v15];

  v17 = +[UIColor labelColor];
  textLabel = [(CRLiOSQuickSelectViewController *)self textLabel];
  [textLabel setTextColor:v17];

  doneButton = [(CRLiOSQuickSelectViewController *)self doneButton];
  [(CRLiOSQuickSelectViewController *)self p_configureDoneButton:doneButton];
}

- (void)p_beginWatchingSelectionChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  editorController = [WeakRetained editorController];
  [v3 addObserver:self selector:"p_selectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = objc_loadWeakRetained(&self->_delegate);
  editorController2 = [v6 editorController];
  [v8 addObserver:self selector:"p_currentEditorDidChange:" name:@"CRLEditorControllerDidChangeCurrentEditors" object:editorController2];
}

- (void)p_endWatchingSelectionChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  editorController = [WeakRetained editorController];
  [v3 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = objc_loadWeakRetained(&self->_delegate);
  editorController2 = [v6 editorController];
  [v8 removeObserver:self name:@"CRLEditorControllerDidChangeCurrentEditors" object:editorController2];
}

- (void)p_selectionPathDidChange:(id)change
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

- (void)p_currentEditorDidChange:(id)change
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
  hUDView = [(CRLiOSQuickSelectViewController *)self HUDView];
  superview = [hUDView superview];
  v4 = superview != 0;

  return v4;
}

@end
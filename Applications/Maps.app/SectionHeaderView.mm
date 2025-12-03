@interface SectionHeaderView
+ (BOOL)shouldStackWithTitle:(id)title actionTitle:(id)actionTitle availableWidth:(double)width traitCollection:(id)collection;
+ (NSString)reuseIdentifier;
+ (double)_titleBottomMargin;
+ (double)_topMarginWhenFirstNonEmptySection:(BOOL)section traitCollection:(id)collection;
+ (double)heightWhenFirstNonEmptySection:(BOOL)section title:(id)title actionTitle:(id)actionTitle availableWidth:(double)width traitCollection:(id)collection;
+ (id)_actionFontWithTraitCollection:(id)collection;
+ (id)_effectiveTraitCollectionWithTraitCollection:(id)collection;
+ (id)_titleFontWithTraitCollection:(id)collection;
- (BOOL)updateConstraintsWithAvailableWidthWithoutMargins:(double)margins;
- (SectionHeaderView)init;
- (SectionHeaderView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section;
- (void)_contentSizeChanged:(id)changed;
- (void)_didTapActionButton;
- (void)_setConstraintsByStacking:(BOOL)stacking;
- (void)_updateFonts;
- (void)_updateTopConstraint;
- (void)clearContents;
- (void)layoutSubviews;
- (void)setAccessibilityIdentifiersWithBaseString:(id)string;
- (void)setActionTitle:(id)title;
- (void)setActionTitle:(id)title completionHandler:(id)handler;
- (void)setFirstNonEmptySection:(BOOL)section;
- (void)setFirstNonEmptySection:(BOOL)section topMargin:(double)margin;
- (void)setShowsBottomHairline:(BOOL)hairline;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SectionHeaderView

- (void)setActionTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  [(SectionHeaderView *)self setActionTitle:title];
  [(SectionHeaderView *)self setActionHandler:handlerCopy];
}

- (SectionHeaderView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section
{
  sectionCopy = section;
  titleCopy = title;
  v7 = [(SectionHeaderView *)self init];
  v8 = v7;
  if (v7)
  {
    [(SectionHeaderView *)v7 setTitle:titleCopy];
    [(SectionHeaderView *)v8 setFirstNonEmptySection:sectionCopy];
  }

  return v8;
}

- (void)_didTapActionButton
{
  actionHandler = [(SectionHeaderView *)self actionHandler];

  if (actionHandler)
  {
    actionHandler2 = [(SectionHeaderView *)self actionHandler];
    actionHandler2[2]();
  }
}

- (void)setShowsBottomHairline:(BOOL)hairline
{
  if (self->_showsBottomHairline != hairline)
  {
    hairlineCopy = hairline;
    self->_showsBottomHairline = hairline;
    bottomHairlineView = [(SectionHeaderView *)self bottomHairlineView];
    [bottomHairlineView setHidden:!hairlineCopy];
  }
}

- (void)setFirstNonEmptySection:(BOOL)section topMargin:(double)margin
{
  if (self->_firstNonEmptySection != section)
  {
    self->_firstNonEmptySection = section;
  }

  if (self->_firstNonEmptySectionTopMargin != margin)
  {
    self->_firstNonEmptySectionTopMargin = margin;
    [(SectionHeaderView *)self _updateTopConstraint];
  }
}

- (void)setFirstNonEmptySection:(BOOL)section
{
  if (self->_firstNonEmptySection != section)
  {
    self->_firstNonEmptySection = section;
    [(SectionHeaderView *)self _updateTopConstraint];
  }
}

- (void)setActionTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  v12 = titleCopy;
  if (self->_actionTitle != titleCopy || (v6 = [(NSString *)titleCopy isEqualToString:?], v5 = v12, (v6 & 1) == 0))
  {
    v7 = [(NSString *)v5 copy];
    actionTitle = self->_actionTitle;
    self->_actionTitle = v7;

    actionButton = [(SectionHeaderView *)self actionButton];
    [actionButton setTitle:self->_actionTitle forState:0];

    v10 = self->_actionTitle == 0;
    actionButton2 = [(SectionHeaderView *)self actionButton];
    [actionButton2 setHidden:v10];

    v5 = v12;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  v11 = titleCopy;
  if (self->_title != titleCopy || (v6 = [(NSString *)titleCopy isEqualToString:?], v5 = v11, (v6 & 1) == 0))
  {
    v7 = [(NSString *)v5 copy];
    title = self->_title;
    self->_title = v7;

    v9 = self->_title;
    label = [(SectionHeaderView *)self label];
    [label setText:v9];

    v5 = v11;
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SectionHeaderView;
  [(SectionHeaderView *)&v6 layoutSubviews];
  layoutMarginsGuide = [(SectionHeaderView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v4 = [(SectionHeaderView *)self updateConstraintsWithAvailableWidthWithoutMargins:CGRectGetWidth(v7)];

  if (v4)
  {
    v5.receiver = self;
    v5.super_class = SectionHeaderView;
    [(SectionHeaderView *)&v5 layoutSubviews];
  }
}

- (void)_contentSizeChanged:(id)changed
{
  [(SectionHeaderView *)self invalidateIntrinsicContentSize];

  [(SectionHeaderView *)self setNeedsLayout];
}

- (BOOL)updateConstraintsWithAvailableWidthWithoutMargins:(double)margins
{
  if (margins > 0.0)
  {
    title = [(SectionHeaderView *)self title];
    if ([title length])
    {
      actionTitle = [(SectionHeaderView *)self actionTitle];
      v7 = [actionTitle length];

      if (v7)
      {
        [(MKVibrantLabel *)self->_label intrinsicContentSize];
        v9 = v8 + 8.0;
        [(MapsThemeButton *)self->_actionButton intrinsicContentSize];
        v11 = v9 + v10 > margins;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v11 = 0;
LABEL_7:
  stacking = self->_stacking;
  if (stacking != v11)
  {
    [(SectionHeaderView *)self _setConstraintsByStacking:v11];
  }

  return stacking != v11;
}

- (void)_setConstraintsByStacking:(BOOL)stacking
{
  stackingCopy = stacking;
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  self->_stacking = stackingCopy;
  [(SectionHeaderView *)self topAnchor];
  v5 = v79 = stackingCopy;
  topAnchor = [(MKVibrantLabel *)self->_label topAnchor];
  LODWORD(v7) = 1132068864;
  v8 = [v5 constraintEqualToAnchor:topAnchor constant:0.0 priority:v7];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v8;

  [(SectionHeaderView *)self _updateTopConstraint];
  v83[0] = self->_topConstraint;
  leadingAnchor = [(MKVibrantLabel *)self->_label leadingAnchor];
  layoutMarginsGuide = [(SectionHeaderView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v83[1] = v71;
  leadingAnchor3 = [self->_bottomHairlineView leadingAnchor];
  layoutMarginsGuide2 = [(SectionHeaderView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
  v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v83[2] = v63;
  trailingAnchor = [self->_bottomHairlineView trailingAnchor];
  trailingAnchor2 = [(SectionHeaderView *)self trailingAnchor];
  v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v83[3] = v56;
  bottomAnchor = [self->_bottomHairlineView bottomAnchor];
  bottomAnchor2 = [(SectionHeaderView *)self bottomAnchor];
  v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v83[4] = v52;
  topAnchor2 = [(UIFocusGuide *)self->_focusGuide topAnchor];
  topAnchor3 = [(MapsThemeButton *)self->_actionButton topAnchor];
  v49 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:-1.0];
  v83[5] = v49;
  bottomAnchor3 = [(UIFocusGuide *)self->_focusGuide bottomAnchor];
  bottomAnchor4 = [(MapsThemeButton *)self->_actionButton bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:1.0];
  v83[6] = v11;
  leadingAnchor5 = [(UIFocusGuide *)self->_focusGuide leadingAnchor];
  leadingAnchor6 = [(SectionHeaderView *)self leadingAnchor];
  v14 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v83[7] = v14;
  trailingAnchor3 = [(UIFocusGuide *)self->_focusGuide trailingAnchor];
  trailingAnchor4 = [(SectionHeaderView *)self trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v83[8] = v17;
  v18 = [NSArray arrayWithObjects:v83 count:9];
  v19 = [NSMutableArray arrayWithArray:v18];
  constraints = self->_constraints;
  self->_constraints = v19;

  if (v79)
  {
    v21 = objc_opt_class();
    traitCollection = [(SectionHeaderView *)self traitCollection];
    v57 = [v21 _effectiveTraitCollectionWithTraitCollection:traitCollection];

    v23 = [objc_opt_class() _actionFontWithTraitCollection:v57];
    traitCollection2 = [(SectionHeaderView *)self traitCollection];
    [traitCollection2 displayScale];
    v80 = v23;
    [UILabel _maps_maximumHeightWithFont:v23 numberOfLines:1 displayScale:?];
    v26 = v25 + 8.0;

    v55 = self->_constraints;
    bottomAnchor5 = [(MKVibrantLabel *)self->_label bottomAnchor];
    bottomAnchor6 = [(SectionHeaderView *)self bottomAnchor];
    [objc_opt_class() _titleBottomMargin];
    v76 = bottomAnchor6;
    v78 = bottomAnchor5;
    trailingAnchor8 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-(v29 + v26)];
    v82[0] = trailingAnchor8;
    trailingAnchor5 = [(MKVibrantLabel *)self->_label trailingAnchor];
    layoutMarginsGuide3 = [(SectionHeaderView *)self layoutMarginsGuide];
    [layoutMarginsGuide3 trailingAnchor];
    layoutMarginsGuide6 = v72 = trailingAnchor5;
    v66 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:?];
    v82[1] = v66;
    lastBaselineAnchor = [(MapsThemeButton *)self->_actionButton lastBaselineAnchor];
    lastBaselineAnchor2 = [(MKVibrantLabel *)self->_label lastBaselineAnchor];
    v64 = lastBaselineAnchor;
    lastBaselineAnchor4 = [lastBaselineAnchor constraintEqualToAnchor:v26 constant:?];
    v82[2] = lastBaselineAnchor4;
    leadingAnchor7 = [(MapsThemeButton *)self->_actionButton leadingAnchor];
    layoutMarginsGuide4 = [(SectionHeaderView *)self layoutMarginsGuide];
    leadingAnchor8 = [layoutMarginsGuide4 leadingAnchor];
    v35 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v82[3] = v35;
    trailingAnchor6 = [(MapsThemeButton *)self->_actionButton trailingAnchor];
    layoutMarginsGuide5 = [(SectionHeaderView *)self layoutMarginsGuide];
    trailingAnchor7 = [layoutMarginsGuide5 trailingAnchor];
    v39 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:trailingAnchor7];
    v82[4] = v39;
    v40 = [NSArray arrayWithObjects:v82 count:5];
    [(NSMutableArray *)v55 addObjectsFromArray:v40];

    bottomAnchor7 = v57;
  }

  else
  {
    v58 = self->_constraints;
    bottomAnchor7 = [(MKVibrantLabel *)self->_label bottomAnchor];
    bottomAnchor8 = [(SectionHeaderView *)self bottomAnchor];
    [objc_opt_class() _titleBottomMargin];
    v80 = bottomAnchor8;
    v78 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v43];
    v81[0] = v78;
    leadingAnchor9 = [(MapsThemeButton *)self->_actionButton leadingAnchor];
    trailingAnchor8 = [(MKVibrantLabel *)self->_label trailingAnchor];
    v76 = leadingAnchor9;
    v72 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:8.0 constant:?];
    v81[1] = v72;
    trailingAnchor9 = [(MapsThemeButton *)self->_actionButton trailingAnchor];
    layoutMarginsGuide6 = [(SectionHeaderView *)self layoutMarginsGuide];
    [layoutMarginsGuide6 trailingAnchor];
    v66 = layoutMarginsGuide3 = trailingAnchor9;
    v64 = [trailingAnchor9 constraintEqualToAnchor:?];
    v81[2] = v64;
    lastBaselineAnchor3 = [(MapsThemeButton *)self->_actionButton lastBaselineAnchor];
    lastBaselineAnchor4 = [(MKVibrantLabel *)self->_label lastBaselineAnchor];
    lastBaselineAnchor2 = lastBaselineAnchor3;
    leadingAnchor7 = [lastBaselineAnchor3 constraintEqualToAnchor:?];
    v81[3] = leadingAnchor7;
    layoutMarginsGuide4 = [(MapsThemeButton *)self->_actionButton bottomAnchor];
    leadingAnchor8 = [(MKVibrantLabel *)self->_label bottomAnchor];
    LODWORD(v47) = 1132068864;
    v35 = [layoutMarginsGuide4 constraintEqualToAnchor:leadingAnchor8 constant:0.0 priority:v47];
    v81[4] = v35;
    trailingAnchor6 = [NSArray arrayWithObjects:v81 count:5];
    [(NSMutableArray *)v58 addObjectsFromArray:trailingAnchor6];
  }

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)setAccessibilityIdentifiersWithBaseString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy stringByAppendingString:@"Section"];
  [(SectionHeaderView *)self setAccessibilityIdentifier:v5];

  v6 = [stringCopy stringByAppendingString:@"Action"];
  actionButton = [(SectionHeaderView *)self actionButton];
  [actionButton setAccessibilityIdentifier:v6];

  v9 = [stringCopy stringByAppendingString:@"Title"];

  label = [(SectionHeaderView *)self label];
  [label setAccessibilityIdentifier:v9];
}

- (void)_updateTopConstraint
{
  v3 = objc_opt_class();
  traitCollection = [(SectionHeaderView *)self traitCollection];
  v8 = [v3 _effectiveTraitCollectionWithTraitCollection:traitCollection];

  [objc_opt_class() _topMarginWhenFirstNonEmptySection:-[SectionHeaderView firstNonEmptySection](self traitCollection:{"firstNonEmptySection"), v8}];
  v6 = v5;
  if (self->_firstNonEmptySection)
  {
    [(SectionHeaderView *)self firstNonEmptySectionTopMargin];
    v6 = v7 + v6;
  }

  [(NSLayoutConstraint *)self->_topConstraint setConstant:-v6];
}

- (void)_updateFonts
{
  v3 = objc_opt_class();
  traitCollection = [(SectionHeaderView *)self traitCollection];
  v10 = [v3 _effectiveTraitCollectionWithTraitCollection:traitCollection];

  v5 = [objc_opt_class() _titleFontWithTraitCollection:v10];
  label = [(SectionHeaderView *)self label];
  [label setFont:v5];

  v7 = [objc_opt_class() _actionFontWithTraitCollection:v10];
  actionButton = [(SectionHeaderView *)self actionButton];
  titleLabel = [actionButton titleLabel];
  [titleLabel setFont:v7];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = SectionHeaderView;
  [(MapsThemeView *)&v13 traitCollectionDidChange:changeCopy];
  traitCollection = [(SectionHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  if (sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2))
  {

LABEL_4:
    [(SectionHeaderView *)self _updateFonts];
    [(SectionHeaderView *)self _updateTopConstraint];
    goto LABEL_5;
  }

  traitCollection2 = [(SectionHeaderView *)self traitCollection];
  [traitCollection2 displayScale];
  v10 = v9;
  [changeCopy displayScale];
  v12 = v11;

  if (v10 != v12)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)clearContents
{
  [(SectionHeaderView *)self setTitle:0];
  [(SectionHeaderView *)self setActionTitle:0];
  [(SectionHeaderView *)self setActionHandler:0];
  [(SectionHeaderView *)self setFirstNonEmptySection:0];
  [(SectionHeaderView *)self setFirstNonEmptySectionTopMargin:0.0];
  _defaultShouldShowBottomHairline = [(SectionHeaderView *)self _defaultShouldShowBottomHairline];

  [(SectionHeaderView *)self setShowsBottomHairline:_defaultShouldShowBottomHairline];
}

- (SectionHeaderView)init
{
  v20.receiver = self;
  v20.super_class = SectionHeaderView;
  v2 = [(SectionHeaderView *)&v20 init];
  if (v2)
  {
    v3 = +[UIColor clearColor];
    [(SectionHeaderView *)v2 setBackgroundColor:v3];

    [(SectionHeaderView *)v2 _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
    v4 = [[MKVibrantLabel alloc] initWithStyle:1];
    label = v2->_label;
    v2->_label = v4;

    v6 = +[UIColor clearColor];
    [(MKVibrantLabel *)v2->_label setBackgroundColor:v6];

    [(MKVibrantLabel *)v2->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SectionHeaderView *)v2 addSubview:v2->_label];
    v7 = [MapsThemeButton buttonWithType:0];
    actionButton = v2->_actionButton;
    v2->_actionButton = v7;

    LODWORD(v9) = 1144750080;
    [(MapsThemeButton *)v2->_actionButton setContentHuggingPriority:0 forAxis:v9];
    [(MapsThemeButton *)v2->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v10) = 1144750080;
    [(MapsThemeButton *)v2->_actionButton setContentCompressionResistancePriority:0 forAxis:v10];
    [(MapsThemeButton *)v2->_actionButton setTitleColorProvider:&stru_10162A408];
    [(MapsThemeButton *)v2->_actionButton _setTouchInsets:-7.0, -7.0, -7.0, -7.0];
    actionButton = [(SectionHeaderView *)v2 actionButton];
    [actionButton addTarget:v2 action:"_didTapActionButton" forControlEvents:0x2000];

    [(SectionHeaderView *)v2 addSubview:v2->_actionButton];
    [(MapsThemeButton *)v2->_actionButton setHidden:1];
    v12 = objc_alloc_init(HairlineView);
    bottomHairlineView = v2->_bottomHairlineView;
    v2->_bottomHairlineView = v12;

    [v2->_bottomHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SectionHeaderView *)v2 addSubview:v2->_bottomHairlineView];
    _defaultShouldShowBottomHairline = [(SectionHeaderView *)v2 _defaultShouldShowBottomHairline];
    v2->_showsBottomHairline = _defaultShouldShowBottomHairline;
    [v2->_bottomHairlineView setHidden:_defaultShouldShowBottomHairline ^ 1];
    v15 = objc_alloc_init(UIFocusGuide);
    focusGuide = v2->_focusGuide;
    v2->_focusGuide = v15;

    v21 = v2->_actionButton;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
    [(UIFocusGuide *)v2->_focusGuide setPreferredFocusEnvironments:v17];

    [(SectionHeaderView *)v2 addLayoutGuide:v2->_focusGuide];
    [(SectionHeaderView *)v2 _updateFonts];
    [(SectionHeaderView *)v2 _setConstraintsByStacking:0];
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"_contentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v2;
}

+ (BOOL)shouldStackWithTitle:(id)title actionTitle:(id)actionTitle availableWidth:(double)width traitCollection:(id)collection
{
  titleCopy = title;
  actionTitleCopy = actionTitle;
  collectionCopy = collection;
  if (width > 0.0 && [titleCopy length] && objc_msgSend(actionTitleCopy, "length"))
  {
    v13 = [self _effectiveTraitCollectionWithTraitCollection:collectionCopy];

    v14 = [self _titleFontWithTraitCollection:v13];
    v15 = [self _actionFontWithTraitCollection:v13];
    v26 = NSFontAttributeName;
    v27 = v14;
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [titleCopy sizeWithAttributes:v16];
    v18 = v17;

    v24 = NSFontAttributeName;
    v25 = v15;
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [actionTitleCopy sizeWithAttributes:v19];
    v21 = v20;

    v22 = width + -32.0 < v18 + 8.0 + v21;
    collectionCopy = v13;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)_actionFontWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom] == 5)
  {
    +[UIFont system17Tall];
  }

  else
  {
    [UIFont system15CompatibleWithTraitCollection:collectionCopy];
  }
  v4 = ;

  return v4;
}

+ (id)_titleFontWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom] == 5)
  {
    +[UIFont system17Tall];
  }

  else
  {
    [UIFont system15SemiboldCompatibleWithTraitCollection:collectionCopy];
  }
  v4 = ;

  return v4;
}

+ (id)_effectiveTraitCollectionWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  _maximumContentSizeCategory = [self _maximumContentSizeCategory];
  v6 = [collectionCopy _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:_maximumContentSizeCategory];

  return v6;
}

+ (double)_titleBottomMargin
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  result = 10.0;
  if (userInterfaceIdiom == 5)
  {
    return 4.0;
  }

  return result;
}

+ (double)_topMarginWhenFirstNonEmptySection:(BOOL)section traitCollection:(id)collection
{
  if (section)
  {
    v4 = [UIScreen mainScreen:section];
    if (sub_10000FA08(v4) == 1)
    {
      v5 = 3.0;
    }

    else
    {
      v5 = 1.0;
    }
  }

  else
  {
    v6 = [UIDevice currentDevice:section];
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      return 24.0;
    }

    else
    {
      return 26.0;
    }
  }

  return v5;
}

+ (double)heightWhenFirstNonEmptySection:(BOOL)section title:(id)title actionTitle:(id)actionTitle availableWidth:(double)width traitCollection:(id)collection
{
  sectionCopy = section;
  actionTitleCopy = actionTitle;
  titleCopy = title;
  v14 = [self _effectiveTraitCollectionWithTraitCollection:collection];
  v15 = [self _titleFontWithTraitCollection:v14];
  [v14 _maps_displayScaleOrMainScreenScale];
  [UILabel _maps_maximumHeightWithFont:v15 numberOfLines:1 displayScale:?];
  v17 = v16;
  v18 = [self shouldStackWithTitle:titleCopy actionTitle:actionTitleCopy availableWidth:v14 traitCollection:width];

  if (v18)
  {
    v17 = v17 * 2.0 + 8.0;
  }

  [self _topMarginWhenFirstNonEmptySection:sectionCopy traitCollection:v14];
  v20 = v19;
  [objc_opt_class() _titleBottomMargin];
  v22 = v17 + v20 + v21;

  return v22;
}

+ (NSString)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
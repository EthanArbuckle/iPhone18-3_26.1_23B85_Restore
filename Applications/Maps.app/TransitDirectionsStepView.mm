@interface TransitDirectionsStepView
+ (double)estimatedHeightForListItem:(id)item;
+ (id)reuseIdentifierForItem:(id)item;
- (HairlineView)separatorView;
- (NSString)description;
- (NSString)reuseIdentifier;
- (TransitDirectionsCell)cell;
- (TransitDirectionsStepView)initWithFrame:(CGRect)frame;
- (TransitDirectionsStepViewSelectionDelegate)selectionDelegate;
- (double)_alphaForCurrentNavigationState;
- (double)bottomSpacerHeight;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)_invalidateConstraints;
- (void)_stepViewHighlighted:(id)highlighted;
- (void)_stepViewSelected:(id)selected;
- (void)_stepViewUnhighlighted:(id)unhighlighted;
- (void)_updateBottomSpacer;
- (void)_updateConstraints;
- (void)_updateVisibilityForItemFromDisplayOptions;
- (void)configureWithItem:(id)item;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDisplayOptions:(unint64_t)options;
- (void)setLeadingInstructionMargin:(double)margin;
- (void)setNavigationState:(int64_t)state;
- (void)setTrailingView:(id)view;
- (void)setUseNavigationMetrics:(BOOL)metrics;
@end

@implementation TransitDirectionsStepView

- (TransitDirectionsStepViewSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (TransitDirectionsCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

- (double)bottomSpacerHeight
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  nextItem = [transitListItem nextItem];

  if (([(TransitDirectionsStepView *)self displayOptions]& 4) != 0 && nextItem)
  {
    do
    {
      if (![nextItem shouldHideInExpandedDisplayStyle])
      {
        break;
      }

      v4NextItem = [nextItem nextItem];

      nextItem = v4NextItem;
    }

    while (v4NextItem);
  }

  type = [nextItem type];
  if ([(TransitDirectionsStepView *)self _isProminentItemType:type])
  {
    traitCollection = [(TransitDirectionsStepView *)self traitCollection];
    v8 = [traitCollection userInterfaceIdiom] == 5;
    v9 = 16.0;
LABEL_7:
    v10 = 10.0;
    goto LABEL_8;
  }

  v11 = 0.0;
  if (type > 14)
  {
    if (type == 16)
    {
      traitCollection = [(TransitDirectionsStepView *)self traitCollection];
      v8 = [traitCollection userInterfaceIdiom] == 5;
      v9 = 7.0;
      v10 = 5.0;
LABEL_8:
      if (v8)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      goto LABEL_18;
    }

    if (type != 15)
    {
      goto LABEL_19;
    }

LABEL_17:
    traitCollection = [(TransitDirectionsStepView *)self traitCollection];
    [traitCollection userInterfaceIdiom];
LABEL_18:

    goto LABEL_19;
  }

  if (type == 10)
  {
    goto LABEL_17;
  }

  if (type == 13)
  {
    traitCollection = [(TransitDirectionsStepView *)self traitCollection];
    v8 = [traitCollection userInterfaceIdiom] == 5;
    v9 = 14.0;
    goto LABEL_7;
  }

LABEL_19:

  return v11;
}

- (void)_stepViewSelected:(id)selected
{
  selectionDelegate = [(TransitDirectionsStepView *)self selectionDelegate];
  [selectionDelegate stepViewSelected:self];
}

- (void)_stepViewUnhighlighted:(id)unhighlighted
{
  selectionDelegate = [(TransitDirectionsStepView *)self selectionDelegate];
  [selectionDelegate stepViewUnhighlighted:self];
}

- (void)_stepViewHighlighted:(id)highlighted
{
  selectionDelegate = [(TransitDirectionsStepView *)self selectionDelegate];
  [selectionDelegate stepViewHighlighted:self];
}

- (void)setTrailingView:(id)view
{
  viewCopy = view;
  trailingView = self->_trailingView;
  if (trailingView != viewCopy)
  {
    [(UIView *)trailingView removeFromSuperview];
    objc_storeStrong(&self->_trailingView, view);
    [(UIView *)self->_trailingView _mapkit_fittingSize];
    [(NSLayoutConstraint *)self->_trailingContentLayoutGuideWidthConstraint setConstant:?];
    if (self->_trailingView)
    {
      [(TransitDirectionsStepView *)self addSubview:?];
      topAnchor = [(UIView *)self->_trailingView topAnchor];
      topAnchor2 = [(UILayoutGuide *)self->_trailingContentLayoutGuide topAnchor];
      v25 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v24 = [v25 _maps_withIdentifier:@"trailingViewTopToTrailingLayoutTop"];
      v28[0] = v24;
      bottomAnchor = [(UIView *)self->_trailingView bottomAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_trailingContentLayoutGuide bottomAnchor];
      v21 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      v20 = [v21 _maps_withIdentifier:@"trailingViewBottomToTrailingLayoutBottom"];
      v28[1] = v20;
      leadingAnchor = [(UIView *)self->_trailingView leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_trailingContentLayoutGuide leadingAnchor];
      v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v16 = [v17 _maps_withIdentifier:@"trailingViewLeadingToTrailingLayoutLeading"];
      v28[2] = v16;
      trailingAnchor = [(UIView *)self->_trailingView trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_trailingContentLayoutGuide trailingAnchor];
      v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v10 = [v9 _maps_withIdentifier:@"trailingViewTrailingToTrailingLayoutTrailing"];
      v28[3] = v10;
      centerYAnchor = [(UIView *)self->_trailingView centerYAnchor];
      centerYAnchor2 = [(UILayoutGuide *)self->_trailingContentLayoutGuide centerYAnchor];
      v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v14 = [v13 _maps_withIdentifier:@"trailingViewCenterYToTrailingLayoutCenterY"];
      v28[4] = v14;
      v15 = [NSArray arrayWithObjects:v28 count:5];
      [NSLayoutConstraint activateConstraints:v15];
    }
  }
}

- (void)_invalidateConstraints
{
  if (!self->_constraintInvalidationTimer)
  {
    objc_initWeak(&location, self);
    v3 = &_dispatch_main_q;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100AB37BC;
    v6[3] = &unk_1016616E8;
    objc_copyWeak(&v7, &location);
    v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v6 block:0.0];
    constraintInvalidationTimer = self->_constraintInvalidationTimer;
    self->_constraintInvalidationTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_updateBottomSpacer
{
  [(TransitDirectionsStepView *)self bottomSpacerHeight];
  UIRoundToViewScale();
  v4 = v3;
  [(NSLayoutConstraint *)self->_bottomSpacingLayoutGuideHeightConstraint constant];
  if (vabdd_f64(v4, v5) > 2.22044605e-16)
  {
    bottomSpacingLayoutGuideHeightConstraint = self->_bottomSpacingLayoutGuideHeightConstraint;

    [(NSLayoutConstraint *)bottomSpacingLayoutGuideHeightConstraint setConstant:v4];
  }
}

- (void)_updateConstraints
{
  [(GCDTimer *)self->_constraintInvalidationTimer invalidate];
  constraintInvalidationTimer = self->_constraintInvalidationTimer;
  self->_constraintInvalidationTimer = 0;

  [(TransitDirectionsStepView *)self _updateBottomSpacer];

  [(TransitDirectionsStepView *)self invalidateIntrinsicContentSize];
}

- (id)_initialConstraints
{
  v73 = +[NSMutableArray array];
  widthAnchor = [(UILayoutGuide *)self->_leadingAccessoryLayoutGuide widthAnchor];
  v4 = [widthAnchor constraintEqualToConstant:0.0];
  v5 = [v4 _maps_withIdentifier:@"leadingAccessoryLayoutGuideWidthConstraint"];
  leadingAccessoryLayoutGuideWidthConstraint = self->_leadingAccessoryLayoutGuideWidthConstraint;
  self->_leadingAccessoryLayoutGuideWidthConstraint = v5;

  heightAnchor = [(UILayoutGuide *)self->_bottomSpacingLayoutGuide heightAnchor];
  [(TransitDirectionsStepView *)self bottomSpacerHeight];
  v8 = [heightAnchor constraintEqualToConstant:?];
  v9 = [v8 _maps_withIdentifier:@"bottomSpacingLayoutGuideHeight"];
  bottomSpacingLayoutGuideHeightConstraint = self->_bottomSpacingLayoutGuideHeightConstraint;
  self->_bottomSpacingLayoutGuideHeightConstraint = v9;

  widthAnchor2 = [(UILayoutGuide *)self->_trailingContentLayoutGuide widthAnchor];
  v12 = [widthAnchor2 constraintEqualToConstant:0.0];
  v13 = [v12 _maps_withIdentifier:@"trailingContentLayoutGuideWidth"];
  trailingContentLayoutGuideWidthConstraint = self->_trailingContentLayoutGuideWidthConstraint;
  self->_trailingContentLayoutGuideWidthConstraint = v13;

  trailingAnchor = [(TransitDirectionsStepView *)self trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_trailingContentLayoutGuide trailingAnchor];
  [(TransitDirectionsStepView *)self _trailingGuideToContentViewDistance];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
  v18 = [v17 _maps_withIdentifier:@"contentViewTrailingToTrailingContentTrailing"];
  trailingGuideToContentViewConstraint = self->_trailingGuideToContentViewConstraint;
  self->_trailingGuideToContentViewConstraint = v18;

  leadingAnchor = [(UILayoutGuide *)self->_leadingAccessoryLayoutGuide leadingAnchor];
  leadingAnchor2 = [(TransitDirectionsStepView *)self leadingAnchor];
  v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v69 = [v70 _maps_withIdentifier:@"leadingAccessoryLayoutLeadingToContentViewLeading"];
  v74[0] = v69;
  topAnchor = [(UILayoutGuide *)self->_leadingAccessoryLayoutGuide topAnchor];
  topAnchor2 = [(TransitDirectionsStepView *)self topAnchor];
  v66 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v65 = [v66 _maps_withIdentifier:@"leadingAccessoryLayoutTopToContentViewTop"];
  v74[1] = v65;
  bottomAnchor = [(UILayoutGuide *)self->_leadingAccessoryLayoutGuide bottomAnchor];
  bottomAnchor2 = [(TransitDirectionsStepView *)self bottomAnchor];
  v62 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v61 = [v62 _maps_withIdentifier:@"leadingAccessoryLayoutBottomToContentViewBottom"];
  v20 = self->_leadingAccessoryLayoutGuideWidthConstraint;
  v74[2] = v61;
  v74[3] = v20;
  leadingAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  trailingAnchor3 = [(UILayoutGuide *)self->_leadingAccessoryLayoutGuide trailingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
  v57 = [v58 _maps_withIdentifier:@"contentLayoutLeadingToLeadingLayoutLeading"];
  v74[4] = v57;
  topAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  topAnchor4 = [(TransitDirectionsStepView *)self topAnchor];
  v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v53 = [v54 _maps_withIdentifier:@"contentLayoutTopToContentViewTop"];
  v74[5] = v53;
  bottomAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  topAnchor5 = [(UILayoutGuide *)self->_bottomSpacingLayoutGuide topAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  v49 = [v50 _maps_withIdentifier:@"contentLayoutBottomToBottomSpacingTop"];
  v74[6] = v49;
  leadingAnchor4 = [(UILayoutGuide *)self->_trailingContentLayoutGuide leadingAnchor];
  trailingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  v46 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4];
  v45 = [v46 _maps_withIdentifier:@"trailingContentLeadingToContentLeading"];
  v74[7] = v45;
  topAnchor6 = [(UILayoutGuide *)self->_trailingContentLayoutGuide topAnchor];
  topAnchor7 = [(TransitDirectionsStepView *)self topAnchor];
  v42 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v41 = [v42 _maps_withIdentifier:@"trailingContentTopToContentViewTop"];
  v74[8] = v41;
  bottomAnchor4 = [(UILayoutGuide *)self->_trailingContentLayoutGuide bottomAnchor];
  bottomAnchor5 = [(TransitDirectionsStepView *)self bottomAnchor];
  v38 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v37 = [v38 _maps_withIdentifier:@"trailingContentBottomToContentViewBottom"];
  v21 = self->_trailingGuideToContentViewConstraint;
  v74[9] = v37;
  v74[10] = v21;
  v74[11] = self->_trailingContentLayoutGuideWidthConstraint;
  leadingAnchor5 = [(UILayoutGuide *)self->_bottomSpacingLayoutGuide leadingAnchor];
  leadingAnchor6 = [(TransitDirectionsStepView *)self leadingAnchor];
  v34 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v22 = [v34 _maps_withIdentifier:@"bottomSpacingLeadingToContentViewLeading"];
  v74[12] = v22;
  trailingAnchor5 = [(UILayoutGuide *)self->_bottomSpacingLayoutGuide trailingAnchor];
  trailingAnchor6 = [(TransitDirectionsStepView *)self trailingAnchor];
  v25 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v26 = [v25 _maps_withIdentifier:@"bottomSpacingTrailingToContentViewTrailing"];
  v74[13] = v26;
  bottomAnchor6 = [(UILayoutGuide *)self->_bottomSpacingLayoutGuide bottomAnchor];
  bottomAnchor7 = [(TransitDirectionsStepView *)self bottomAnchor];
  v29 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v30 = [v29 _maps_withIdentifier:@"bottomSpacingBottomToContentViewBottom"];
  v31 = self->_bottomSpacingLayoutGuideHeightConstraint;
  v74[14] = v30;
  v74[15] = v31;
  v32 = [NSArray arrayWithObjects:v74 count:16];
  [v73 addObjectsFromArray:v32];

  return v73;
}

- (HairlineView)separatorView
{
  separatorView = self->_separatorView;
  if (!separatorView)
  {
    v4 = [(TransitDirectionsStepView *)self _maps_addHairlineAtBottomWithMargin:0.0];
    v5 = self->_separatorView;
    self->_separatorView = v4;

    separatorView = self->_separatorView;
  }

  return separatorView;
}

- (void)_updateVisibilityForItemFromDisplayOptions
{
  v3 = (self->_displayOptions & 4) != 0 && [(TransitDirectionsListItem *)self->_transitListItem shouldHideInExpandedDisplayStyle];
  [(TransitDirectionsStepView *)self setHidden:v3];

  [(TransitDirectionsStepView *)self _updateBottomSpacer];
}

- (void)setDisplayOptions:(unint64_t)options
{
  displayOptions = self->_displayOptions;
  if (displayOptions != options)
  {
    self->_displayOptions = options;
    v5 = displayOptions ^ options;
    if (((displayOptions ^ options) & 2) != 0)
    {
      [(TransitDirectionsStepView *)self _alphaForCurrentNavigationState];
      [(TransitDirectionsStepView *)self _updateNavigationStateAlpha:?];
    }

    if ((v5 & 4) != 0)
    {

      [(TransitDirectionsStepView *)self _updateVisibilityForItemFromDisplayOptions];
    }
  }
}

- (double)_alphaForCurrentNavigationState
{
  v2 = 1.0;
  if ((self->_displayOptions & 2) == 0)
  {
    navigationState = [(TransitDirectionsStepView *)self navigationState];
    if ((navigationState - 1) <= 4)
    {
      return dbl_1012163B0[navigationState - 1];
    }
  }

  return v2;
}

- (void)setNavigationState:(int64_t)state
{
  if (self->_navigationState != state)
  {
    self->_navigationState = state;
    [(TransitDirectionsStepView *)self _alphaForCurrentNavigationState];

    [(TransitDirectionsStepView *)self _updateNavigationStateAlpha:?];
  }
}

- (void)setUseNavigationMetrics:(BOOL)metrics
{
  if (self->_useNavigationMetrics != metrics)
  {
    self->_useNavigationMetrics = metrics;
  }
}

- (void)setLeadingInstructionMargin:(double)margin
{
  v3 = floor(margin);
  if (v3 != self->_leadingInstructionMargin)
  {
    self->_leadingInstructionMargin = v3;
    [(NSLayoutConstraint *)self->_leadingAccessoryLayoutGuideWidthConstraint setConstant:?];
  }
}

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(TransitDirectionsStepView *)self setBackgroundColor:v3];

  [(TransitDirectionsStepView *)self setOpaque:0];
  v4 = [UIControl alloc];
  [(TransitDirectionsStepView *)self bounds];
  v5 = [v4 initWithFrame:?];
  backgroundControlForHitTesting = self->_backgroundControlForHitTesting;
  self->_backgroundControlForHitTesting = v5;

  [(UIControl *)self->_backgroundControlForHitTesting setAutoresizingMask:18];
  [(TransitDirectionsStepView *)self addSubview:self->_backgroundControlForHitTesting];
  [(UIControl *)self->_backgroundControlForHitTesting addTarget:self action:"_stepViewHighlighted:" forControlEvents:1];
  [(UIControl *)self->_backgroundControlForHitTesting addTarget:self action:"_stepViewUnhighlighted:" forControlEvents:32];
  [(UIControl *)self->_backgroundControlForHitTesting addTarget:self action:"_stepViewUnhighlighted:" forControlEvents:256];
  [(UIControl *)self->_backgroundControlForHitTesting addTarget:self action:"_stepViewSelected:" forControlEvents:64];
  v7 = objc_alloc_init(UILayoutGuide);
  leadingAccessoryLayoutGuide = self->_leadingAccessoryLayoutGuide;
  self->_leadingAccessoryLayoutGuide = v7;

  [(TransitDirectionsStepView *)self addLayoutGuide:self->_leadingAccessoryLayoutGuide];
  v9 = objc_alloc_init(UILayoutGuide);
  contentLayoutGuide = self->_contentLayoutGuide;
  self->_contentLayoutGuide = v9;

  [(TransitDirectionsStepView *)self addLayoutGuide:self->_contentLayoutGuide];
  v11 = objc_alloc_init(UILayoutGuide);
  trailingContentLayoutGuide = self->_trailingContentLayoutGuide;
  self->_trailingContentLayoutGuide = v11;

  [(TransitDirectionsStepView *)self addLayoutGuide:self->_trailingContentLayoutGuide];
  v13 = objc_alloc_init(UILayoutGuide);
  bottomSpacingLayoutGuide = self->_bottomSpacingLayoutGuide;
  self->_bottomSpacingLayoutGuide = v13;

  v15 = self->_bottomSpacingLayoutGuide;

  [(TransitDirectionsStepView *)self addLayoutGuide:v15];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsStepView;
  [(TransitDirectionsStepView *)&v3 layoutSubviews];
  [(TransitDirectionsStepView *)self bounds];
  [(UIControl *)self->_backgroundControlForHitTesting setFrame:?];
}

- (void)configureWithItem:(id)item
{
  itemCopy = item;
  transitListItem = self->_transitListItem;
  v10 = itemCopy;
  v7 = transitListItem;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_transitListItem, item);
      [(TransitDirectionsStepView *)self _updateBottomSpacer];
      [(TransitDirectionsStepView *)self _updateVisibilityForItemFromDisplayOptions];
      v8 = v10;
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TransitDirectionsStepView;
  [(TransitDirectionsStepView *)&v4 dealloc];
}

- (TransitDirectionsStepView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = TransitDirectionsStepView;
  v3 = [(TransitDirectionsStepView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(TransitDirectionsStepView *)v3 setAccessibilityIdentifier:v5];

    v3->_trailingGuideToContentViewDistance = 16.0;
    [(TransitDirectionsStepView *)v3 _createSubviews];
    _initialConstraints = [(TransitDirectionsStepView *)v3 _initialConstraints];
    [NSLayoutConstraint activateConstraints:_initialConstraints];

    [(TransitDirectionsStepView *)v3 _updateConstraints];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v8 = v3;
  }

  return v3;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = TransitDirectionsStepView;
  v3 = [(TransitDirectionsStepView *)&v7 description];
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  v5 = [NSString stringWithFormat:@"%@ item: %@", v3, transitListItem];;

  return v5;
}

- (NSString)reuseIdentifier
{
  v3 = objc_opt_class();
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  v5 = [v3 reuseIdentifierForItem:transitListItem];

  return v5;
}

+ (double)estimatedHeightForListItem:(id)item
{
  itemCopy = item;
  v4 = 20.0;
  if ([itemCopy type] == 5)
  {
    goto LABEL_4;
  }

  v5 = 13.0;
  if ([itemCopy type] != 6)
  {
    v4 = 70.0;
LABEL_4:
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v6 _mapkit_scaledValueForValue:v4];
    v5 = v7;
  }

  return v5;
}

+ (id)reuseIdentifierForItem:(id)item
{
  itemCopy = item;
  v4 = itemCopy;
  if (itemCopy)
  {
    type = [itemCopy type];
    if (type >= 0x12)
    {
      v6 = [NSString stringWithFormat:@"Unknown (%ld)", type];
    }

    else
    {
      v6 = off_101636CF0[type];
    }

    v7 = [NSString stringWithFormat:@"%@-%p", v6, v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
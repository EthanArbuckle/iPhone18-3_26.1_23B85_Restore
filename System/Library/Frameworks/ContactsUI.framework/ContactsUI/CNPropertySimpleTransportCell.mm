@interface CNPropertySimpleTransportCell
+ (id)standardStarView;
+ (void)_updateStarImageForView:(id)view;
- (BOOL)shouldPerformDefaultAction;
- (BOOL)shouldShowStar;
- (CNPropertySimpleTransportCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNTransportButton)standardTransportIcon;
- (CNTransportButton)transportIcon1;
- (CNTransportButton)transportIcon2;
- (CNTransportButton)transportIcon3;
- (UIView)standardBadgeView;
- (id)rightMostView;
- (id)variableConstraints;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)setActionsColor:(id)color;
- (void)setCardGroupItem:(id)item;
- (void)setShouldShowBadge:(BOOL)badge;
- (void)transportButtonClicked:(id)clicked;
- (void)updateLabelNeedingHuggingContent;
- (void)updateStarIcon;
- (void)updateTransportButtons;
- (void)updateWithPropertyItem:(id)item;
@end

@implementation CNPropertySimpleTransportCell

- (void)setActionsColor:(id)color
{
  colorCopy = color;
  if (self->_actionsColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_actionsColor, color);
    transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    [transportIcon1 setGlyphColor:v8];

    transportIcon2 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [transportIcon2 setGlyphColor:v8];
  }

  MEMORY[0x1EEE66BE0](colorCopy);
}

- (void)transportButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  transportType = [clickedCopy transportType];

  [delegate propertyCell:self performActionForItem:propertyItem withTransportType:transportType];
}

- (BOOL)shouldPerformDefaultAction
{
  v5.receiver = self;
  v5.super_class = CNPropertySimpleTransportCell;
  shouldPerformDefaultAction = [(CNContactCell *)&v5 shouldPerformDefaultAction];
  if (shouldPerformDefaultAction)
  {
    LOBYTE(shouldPerformDefaultAction) = [(CNPropertySimpleTransportCell *)self allowsActions];
  }

  return shouldPerformDefaultAction;
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v67.receiver = self;
  v67.super_class = CNPropertySimpleTransportCell;
  variableConstraints = [(CNLabeledCell *)&v67 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  superview = [(UIImageView *)self->_starView superview];

  if (superview)
  {
    v7 = MEMORY[0x1E696ACD8];
    starView = self->_starView;
    labelLabel = [(CNPropertySimpleCell *)self labelLabel];
    v10 = [v7 constraintWithItem:starView attribute:5 relatedBy:0 toItem:labelLabel attribute:6 multiplier:1.0 constant:3.0];
    [v5 addObject:v10];

    v11 = MEMORY[0x1E696ACD8];
    v12 = self->_starView;
    labelLabel2 = [(CNPropertySimpleCell *)self labelLabel];
    v14 = [v11 constraintWithItem:v12 attribute:11 relatedBy:0 toItem:labelLabel2 attribute:11 multiplier:1.0 constant:0.0];
    [v5 addObject:v14];

    v15 = MEMORY[0x1E696ACD8];
    labelLabel3 = [(CNPropertySimpleCell *)self labelLabel];
    valueLabel = [(CNPropertySimpleCell *)self valueLabel];
    [(UIImageView *)self->_starView bounds];
    v19 = [v15 constraintWithItem:labelLabel3 attribute:6 relatedBy:-1 toItem:valueLabel attribute:6 multiplier:1.0 constant:-(v18 + 3.0)];
    [v5 addObject:v19];
  }

  badgeView = [(CNPropertySimpleTransportCell *)self badgeView];
  superview2 = [badgeView superview];

  if (superview2)
  {
    superview3 = [(UIImageView *)self->_starView superview];
    if (superview3)
    {
      labelLabel4 = self->_starView;
    }

    else
    {
      labelLabel4 = [(CNPropertySimpleCell *)self labelLabel];
    }

    v24 = labelLabel4;

    v25 = MEMORY[0x1E696ACD8];
    badgeView2 = [(CNPropertySimpleTransportCell *)self badgeView];
    v27 = [v25 constraintWithItem:badgeView2 attribute:5 relatedBy:0 toItem:v24 attribute:6 multiplier:1.0 constant:3.0];
    [v5 addObject:v27];

    v28 = MEMORY[0x1E696ACD8];
    badgeView3 = [(CNPropertySimpleTransportCell *)self badgeView];
    labelLabel5 = [(CNPropertySimpleCell *)self labelLabel];
    v31 = [v28 constraintWithItem:badgeView3 attribute:11 relatedBy:0 toItem:labelLabel5 attribute:11 multiplier:1.0 constant:0.0];
    [v5 addObject:v31];
  }

  transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  superview4 = [transportIcon1 superview];

  if (superview4)
  {
    v34 = MEMORY[0x1E696ACD8];
    transportIcon12 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    contentView = [(CNPropertySimpleTransportCell *)self contentView];
    v37 = [v34 constraintWithItem:transportIcon12 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v37];

    transportIcon13 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    trailingAnchor = [transportIcon13 trailingAnchor];
    contentView2 = [(CNPropertySimpleTransportCell *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    [v5 addObject:v42];

    transportIcon2 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    superview5 = [transportIcon2 superview];

    v45 = MEMORY[0x1E696ACD8];
    if (superview5)
    {
      transportIcon22 = [(CNPropertySimpleTransportCell *)self transportIcon2];
      contentView3 = [(CNPropertySimpleTransportCell *)self contentView];
      v48 = [v45 constraintWithItem:transportIcon22 attribute:10 relatedBy:0 toItem:contentView3 attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v48];

      v49 = MEMORY[0x1E696ACD8];
      transportIcon23 = [(CNPropertySimpleTransportCell *)self transportIcon2];
      transportIcon14 = [(CNPropertySimpleTransportCell *)self transportIcon1];
      v52 = [v49 constraintWithItem:transportIcon23 attribute:6 relatedBy:0 toItem:transportIcon14 attribute:5 multiplier:1.0 constant:-16.0];
      [v5 addObject:v52];

      transportIcon3 = [(CNPropertySimpleTransportCell *)self transportIcon3];
      superview6 = [transportIcon3 superview];

      v45 = MEMORY[0x1E696ACD8];
      if (superview6)
      {
        transportIcon32 = [(CNPropertySimpleTransportCell *)self transportIcon3];
        contentView4 = [(CNPropertySimpleTransportCell *)self contentView];
        v57 = [v45 constraintWithItem:transportIcon32 attribute:10 relatedBy:0 toItem:contentView4 attribute:10 multiplier:1.0 constant:0.0];
        [v5 addObject:v57];

        v58 = MEMORY[0x1E696ACD8];
        valueView = [(CNPropertySimpleCell *)self valueView];
        transportIcon33 = [(CNPropertySimpleTransportCell *)self transportIcon3];
        v61 = [v58 constraintWithItem:valueView attribute:6 relatedBy:0 toItem:transportIcon33 attribute:5 multiplier:1.0 constant:-16.0];
        [v5 addObject:v61];

        v45 = MEMORY[0x1E696ACD8];
        [(CNPropertySimpleTransportCell *)self transportIcon3];
      }

      else
      {
        [(CNPropertySimpleCell *)self valueView];
      }
      valueView2 = ;
      transportIcon24 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    }

    else
    {
      valueView2 = [(CNPropertySimpleCell *)self valueView];
      transportIcon24 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    }

    v64 = transportIcon24;
    v65 = [v45 constraintWithItem:valueView2 attribute:6 relatedBy:0 toItem:transportIcon24 attribute:5 multiplier:1.0 constant:-16.0];
    [v5 addObject:v65];
  }

  return v5;
}

- (id)rightMostView
{
  transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  superview = [transportIcon1 superview];

  if (superview)
  {
    transportIcon12 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNPropertySimpleTransportCell;
    transportIcon12 = [(CNLabeledCell *)&v7 rightMostView];
  }

  return transportIcon12;
}

- (void)updateStarIcon
{
  if ([(CNPropertySimpleTransportCell *)self shouldShowStar]&& ([(UIImageView *)self->_starView superview], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    if (self->_starView || ([objc_opt_class() standardStarView], v5 = objc_claimAutoreleasedReturnValue(), starView = self->_starView, self->_starView = v5, starView, self->_starView))
    {
      contentView = [(CNPropertySimpleTransportCell *)self contentView];
      [contentView addSubview:self->_starView];
    }
  }

  else
  {
    if ([(CNPropertySimpleTransportCell *)self shouldShowStar])
    {
      return;
    }

    superview = [(UIImageView *)self->_starView superview];

    if (!superview)
    {
      return;
    }

    [(UIImageView *)self->_starView removeFromSuperview];
  }

  [(CNPropertySimpleTransportCell *)self setNeedsUpdateConstraints];
}

- (void)updateTransportButtons
{
  if ([(CNPropertySimpleTransportCell *)self shouldShowTransportButtons])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__CNPropertySimpleTransportCell_updateTransportButtons__block_invoke;
    v7[3] = &unk_1E74E4E60;
    v7[4] = self;
    v7[5] = &v8;
    v3 = _Block_copy(v7);
    transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v3[2](v3, transportIcon1);

    transportIcon2 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    v3[2](v3, transportIcon2);

    transportIcon3 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    v3[2](v3, transportIcon3);

    if (*(v9 + 24) == 1)
    {
      [(CNPropertySimpleTransportCell *)self setNeedsUpdateTouchAreas:1];
      [(CNPropertySimpleTransportCell *)self setNeedsUpdateConstraints];
    }

    _Block_object_dispose(&v8, 8);
  }
}

void __55__CNPropertySimpleTransportCell_updateTransportButtons__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 transportType])
  {
    v3 = [v6 superview];

    if (!v3)
    {
      v5 = [*(a1 + 32) contentView];
      [v5 addSubview:v6];

      goto LABEL_7;
    }
  }

  if (![v6 transportType])
  {
    v4 = [v6 superview];

    if (v4)
    {
      [v6 removeFromSuperview];
LABEL_7:
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"allowsIMessage"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"allowsPhone") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"allowsEmail") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"allowsTTY"))
  {
    [(CNPropertySimpleTransportCell *)self updateTransportButtons];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CNPropertySimpleTransportCell;
    [(CNPropertySimpleTransportCell *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)updateWithPropertyItem:(id)item
{
  v4.receiver = self;
  v4.super_class = CNPropertySimpleTransportCell;
  [(CNPropertyCell *)&v4 updateWithPropertyItem:item];
  [(CNPropertySimpleTransportCell *)self updateTransportButtons];
  [(CNPropertySimpleTransportCell *)self updateStarIcon];
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  v6 = propertyItem;
  if (propertyItem)
  {
    [propertyItem removeObserver:self forKeyPath:@"allowsIMessage"];
    [v6 removeObserver:self forKeyPath:@"allowsPhone"];
    [v6 removeObserver:self forKeyPath:@"allowsEmail"];
    [v6 removeObserver:self forKeyPath:@"allowsTTY"];
  }

  v7.receiver = self;
  v7.super_class = CNPropertySimpleTransportCell;
  [(CNPropertyCell *)&v7 setCardGroupItem:itemCopy];
  [itemCopy addObserver:self forKeyPath:@"allowsIMessage" options:0 context:0];
  [itemCopy addObserver:self forKeyPath:@"allowsPhone" options:0 context:0];
  [itemCopy addObserver:self forKeyPath:@"allowsEmail" options:0 context:0];
  [itemCopy addObserver:self forKeyPath:@"allowsTTY" options:0 context:0];

  [(CNPropertySimpleTransportCell *)self updateLabelNeedingHuggingContent];
}

- (void)updateLabelNeedingHuggingContent
{
  shouldShowStar = [(CNPropertySimpleTransportCell *)self shouldShowBadge]|| [(CNPropertySimpleTransportCell *)self shouldShowStar];

  [(CNLabeledCell *)self setLabelViewNeedsHuggingContent:shouldShowStar];
}

- (void)setShouldShowBadge:(BOOL)badge
{
  if (self->_shouldShowBadge == badge)
  {
    return;
  }

  badgeCopy = badge;
  self->_shouldShowBadge = badge;
  badgeView = [(CNPropertySimpleTransportCell *)self badgeView];
  superview = [badgeView superview];

  badgeView2 = [(CNPropertySimpleTransportCell *)self badgeView];
  v9 = badgeView2;
  if (superview && !badgeCopy)
  {
    [badgeView2 removeFromSuperview];

    [(CNPropertySimpleTransportCell *)self setBadgeView:0];
LABEL_10:
    [(CNPropertySimpleTransportCell *)self setNeedsUpdateConstraints];
    goto LABEL_11;
  }

  superview2 = [badgeView2 superview];

  if (!superview2 && badgeCopy)
  {
    badgeView3 = [(CNPropertySimpleTransportCell *)self badgeView];

    if (!badgeView3)
    {
      standardBadgeView = [(CNPropertySimpleTransportCell *)self standardBadgeView];
      [(CNPropertySimpleTransportCell *)self setBadgeView:standardBadgeView];

      badgeView4 = [(CNPropertySimpleTransportCell *)self badgeView];
      [badgeView4 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    badgeView5 = [(CNPropertySimpleTransportCell *)self badgeView];
    [(CNPropertySimpleTransportCell *)self addSubview:badgeView5];

    goto LABEL_10;
  }

LABEL_11:

  [(CNPropertySimpleTransportCell *)self updateLabelNeedingHuggingContent];
}

- (BOOL)shouldShowStar
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  isFavorite = [propertyItem isFavorite];

  return isFavorite;
}

- (UIView)standardBadgeView
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"RECENT_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v4 = [CNLabeledBadge labeledBadgeWithText:v3];

  return v4;
}

- (CNTransportButton)transportIcon3
{
  transportIcon3 = self->_transportIcon3;
  if (!transportIcon3)
  {
    standardTransportIcon = [(CNPropertySimpleTransportCell *)self standardTransportIcon];
    v5 = self->_transportIcon3;
    self->_transportIcon3 = standardTransportIcon;

    transportIcon3 = self->_transportIcon3;
  }

  return transportIcon3;
}

- (CNTransportButton)transportIcon2
{
  transportIcon2 = self->_transportIcon2;
  if (!transportIcon2)
  {
    standardTransportIcon = [(CNPropertySimpleTransportCell *)self standardTransportIcon];
    v5 = self->_transportIcon2;
    self->_transportIcon2 = standardTransportIcon;

    transportIcon2 = self->_transportIcon2;
  }

  return transportIcon2;
}

- (CNTransportButton)transportIcon1
{
  transportIcon1 = self->_transportIcon1;
  if (!transportIcon1)
  {
    standardTransportIcon = [(CNPropertySimpleTransportCell *)self standardTransportIcon];
    v5 = self->_transportIcon1;
    self->_transportIcon1 = standardTransportIcon;

    transportIcon1 = self->_transportIcon1;
  }

  return transportIcon1;
}

- (CNTransportButton)standardTransportIcon
{
  v3 = +[CNTransportButton transportButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setTransportType:0];
  [v3 addTarget:self action:sel_transportButtonClicked_ forControlEvents:64];

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CNPropertySimpleTransportCell;
  [(CNPropertySimpleTransportCell *)&v11 layoutSubviews];
  if ([(CNPropertySimpleTransportCell *)self needsUpdateTouchAreas])
  {
    contentView = [(CNPropertySimpleTransportCell *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;

    transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    [transportIcon1 _updateTouchInsetsToFillContainerWithSize:{v5, v7}];

    transportIcon2 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [transportIcon2 _updateTouchInsetsToFillContainerWithSize:{v5, v7}];

    transportIcon3 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    [transportIcon3 _updateTouchInsetsToFillContainerWithSize:{v5, v7}];

    [(CNPropertySimpleTransportCell *)self setNeedsUpdateTouchAreas:0];
  }
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  changeCopy = change;
  if (self->_starView)
  {
    [objc_opt_class() _updateStarImageForView:self->_starView];
  }

  if (self->_shouldShowBadge)
  {
    badgeView = [(CNPropertySimpleTransportCell *)self badgeView];
    [badgeView removeFromSuperview];

    standardBadgeView = [(CNPropertySimpleTransportCell *)self standardBadgeView];
    [(CNPropertySimpleTransportCell *)self setBadgeView:standardBadgeView];

    badgeView2 = [(CNPropertySimpleTransportCell *)self badgeView];
    [(CNPropertySimpleTransportCell *)self addSubview:badgeView2];
  }

  [(CNPropertySimpleTransportCell *)self updateLabelNeedingHuggingContent];
}

- (void)prepareForReuse
{
  [(CNPropertySimpleTransportCell *)self setShouldShowBadge:0];
  v3.receiver = self;
  v3.super_class = CNPropertySimpleTransportCell;
  [(CNContactCell *)&v3 prepareForReuse];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertySimpleTransportCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertySimpleTransportCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CNPropertySimpleTransportCell;
  v4 = [(CNPropertyCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v4->_shouldShowTransportButtons = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v4;
}

+ (id)standardStarView
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  [self _updateStarImageForView:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v7];

  return v3;
}

+ (void)_updateStarImageForView:(id)view
{
  v3 = MEMORY[0x1E69DCAB8];
  viewCopy = view;
  v5 = +[CNUIColorRepository contactCardStarImageColor];
  v6 = [v3 cnui_symbolImageNamed:@"star.fill" scale:1 withColor:v5 useFixedSize:0];

  [viewCopy setImage:v6];
}

@end
@interface CNPropertySimpleTransportCell
+ (id)standardStarView;
+ (void)_updateStarImageForView:(id)a3;
- (BOOL)shouldPerformDefaultAction;
- (BOOL)shouldShowStar;
- (CNPropertySimpleTransportCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNTransportButton)standardTransportIcon;
- (CNTransportButton)transportIcon1;
- (CNTransportButton)transportIcon2;
- (CNTransportButton)transportIcon3;
- (UIView)standardBadgeView;
- (id)rightMostView;
- (id)variableConstraints;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)setActionsColor:(id)a3;
- (void)setCardGroupItem:(id)a3;
- (void)setShouldShowBadge:(BOOL)a3;
- (void)transportButtonClicked:(id)a3;
- (void)updateLabelNeedingHuggingContent;
- (void)updateStarIcon;
- (void)updateTransportButtons;
- (void)updateWithPropertyItem:(id)a3;
@end

@implementation CNPropertySimpleTransportCell

- (void)setActionsColor:(id)a3
{
  v5 = a3;
  if (self->_actionsColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_actionsColor, a3);
    v6 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    [v6 setGlyphColor:v8];

    v7 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [v7 setGlyphColor:v8];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (void)transportButtonClicked:(id)a3
{
  v4 = a3;
  v7 = [(CNPropertyCell *)self delegate];
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [v4 transportType];

  [v7 propertyCell:self performActionForItem:v5 withTransportType:v6];
}

- (BOOL)shouldPerformDefaultAction
{
  v5.receiver = self;
  v5.super_class = CNPropertySimpleTransportCell;
  v3 = [(CNContactCell *)&v5 shouldPerformDefaultAction];
  if (v3)
  {
    LOBYTE(v3) = [(CNPropertySimpleTransportCell *)self allowsActions];
  }

  return v3;
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v67.receiver = self;
  v67.super_class = CNPropertySimpleTransportCell;
  v4 = [(CNLabeledCell *)&v67 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(UIImageView *)self->_starView superview];

  if (v6)
  {
    v7 = MEMORY[0x1E696ACD8];
    starView = self->_starView;
    v9 = [(CNPropertySimpleCell *)self labelLabel];
    v10 = [v7 constraintWithItem:starView attribute:5 relatedBy:0 toItem:v9 attribute:6 multiplier:1.0 constant:3.0];
    [v5 addObject:v10];

    v11 = MEMORY[0x1E696ACD8];
    v12 = self->_starView;
    v13 = [(CNPropertySimpleCell *)self labelLabel];
    v14 = [v11 constraintWithItem:v12 attribute:11 relatedBy:0 toItem:v13 attribute:11 multiplier:1.0 constant:0.0];
    [v5 addObject:v14];

    v15 = MEMORY[0x1E696ACD8];
    v16 = [(CNPropertySimpleCell *)self labelLabel];
    v17 = [(CNPropertySimpleCell *)self valueLabel];
    [(UIImageView *)self->_starView bounds];
    v19 = [v15 constraintWithItem:v16 attribute:6 relatedBy:-1 toItem:v17 attribute:6 multiplier:1.0 constant:-(v18 + 3.0)];
    [v5 addObject:v19];
  }

  v20 = [(CNPropertySimpleTransportCell *)self badgeView];
  v21 = [v20 superview];

  if (v21)
  {
    v22 = [(UIImageView *)self->_starView superview];
    if (v22)
    {
      v23 = self->_starView;
    }

    else
    {
      v23 = [(CNPropertySimpleCell *)self labelLabel];
    }

    v24 = v23;

    v25 = MEMORY[0x1E696ACD8];
    v26 = [(CNPropertySimpleTransportCell *)self badgeView];
    v27 = [v25 constraintWithItem:v26 attribute:5 relatedBy:0 toItem:v24 attribute:6 multiplier:1.0 constant:3.0];
    [v5 addObject:v27];

    v28 = MEMORY[0x1E696ACD8];
    v29 = [(CNPropertySimpleTransportCell *)self badgeView];
    v30 = [(CNPropertySimpleCell *)self labelLabel];
    v31 = [v28 constraintWithItem:v29 attribute:11 relatedBy:0 toItem:v30 attribute:11 multiplier:1.0 constant:0.0];
    [v5 addObject:v31];
  }

  v32 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  v33 = [v32 superview];

  if (v33)
  {
    v34 = MEMORY[0x1E696ACD8];
    v35 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v36 = [(CNPropertySimpleTransportCell *)self contentView];
    v37 = [v34 constraintWithItem:v35 attribute:10 relatedBy:0 toItem:v36 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v37];

    v38 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v39 = [v38 trailingAnchor];
    v40 = [(CNPropertySimpleTransportCell *)self contentView];
    v41 = [v40 trailingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];
    [v5 addObject:v42];

    v43 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    v44 = [v43 superview];

    v45 = MEMORY[0x1E696ACD8];
    if (v44)
    {
      v46 = [(CNPropertySimpleTransportCell *)self transportIcon2];
      v47 = [(CNPropertySimpleTransportCell *)self contentView];
      v48 = [v45 constraintWithItem:v46 attribute:10 relatedBy:0 toItem:v47 attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v48];

      v49 = MEMORY[0x1E696ACD8];
      v50 = [(CNPropertySimpleTransportCell *)self transportIcon2];
      v51 = [(CNPropertySimpleTransportCell *)self transportIcon1];
      v52 = [v49 constraintWithItem:v50 attribute:6 relatedBy:0 toItem:v51 attribute:5 multiplier:1.0 constant:-16.0];
      [v5 addObject:v52];

      v53 = [(CNPropertySimpleTransportCell *)self transportIcon3];
      v54 = [v53 superview];

      v45 = MEMORY[0x1E696ACD8];
      if (v54)
      {
        v55 = [(CNPropertySimpleTransportCell *)self transportIcon3];
        v56 = [(CNPropertySimpleTransportCell *)self contentView];
        v57 = [v45 constraintWithItem:v55 attribute:10 relatedBy:0 toItem:v56 attribute:10 multiplier:1.0 constant:0.0];
        [v5 addObject:v57];

        v58 = MEMORY[0x1E696ACD8];
        v59 = [(CNPropertySimpleCell *)self valueView];
        v60 = [(CNPropertySimpleTransportCell *)self transportIcon3];
        v61 = [v58 constraintWithItem:v59 attribute:6 relatedBy:0 toItem:v60 attribute:5 multiplier:1.0 constant:-16.0];
        [v5 addObject:v61];

        v45 = MEMORY[0x1E696ACD8];
        [(CNPropertySimpleTransportCell *)self transportIcon3];
      }

      else
      {
        [(CNPropertySimpleCell *)self valueView];
      }
      v62 = ;
      v63 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    }

    else
    {
      v62 = [(CNPropertySimpleCell *)self valueView];
      v63 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    }

    v64 = v63;
    v65 = [v45 constraintWithItem:v62 attribute:6 relatedBy:0 toItem:v63 attribute:5 multiplier:1.0 constant:-16.0];
    [v5 addObject:v65];
  }

  return v5;
}

- (id)rightMostView
{
  v3 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNPropertySimpleTransportCell;
    v5 = [(CNLabeledCell *)&v7 rightMostView];
  }

  return v5;
}

- (void)updateStarIcon
{
  if ([(CNPropertySimpleTransportCell *)self shouldShowStar]&& ([(UIImageView *)self->_starView superview], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    if (self->_starView || ([objc_opt_class() standardStarView], v5 = objc_claimAutoreleasedReturnValue(), starView = self->_starView, self->_starView = v5, starView, self->_starView))
    {
      v7 = [(CNPropertySimpleTransportCell *)self contentView];
      [v7 addSubview:self->_starView];
    }
  }

  else
  {
    if ([(CNPropertySimpleTransportCell *)self shouldShowStar])
    {
      return;
    }

    v4 = [(UIImageView *)self->_starView superview];

    if (!v4)
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
    v4 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v3[2](v3, v4);

    v5 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    v3[2](v3, v5);

    v6 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    v3[2](v3, v6);

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"allowsIMessage"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"allowsPhone") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"allowsEmail") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"allowsTTY"))
  {
    [(CNPropertySimpleTransportCell *)self updateTransportButtons];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CNPropertySimpleTransportCell;
    [(CNPropertySimpleTransportCell *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)updateWithPropertyItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNPropertySimpleTransportCell;
  [(CNPropertyCell *)&v4 updateWithPropertyItem:a3];
  [(CNPropertySimpleTransportCell *)self updateTransportButtons];
  [(CNPropertySimpleTransportCell *)self updateStarIcon];
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = v5;
  if (v5)
  {
    [v5 removeObserver:self forKeyPath:@"allowsIMessage"];
    [v6 removeObserver:self forKeyPath:@"allowsPhone"];
    [v6 removeObserver:self forKeyPath:@"allowsEmail"];
    [v6 removeObserver:self forKeyPath:@"allowsTTY"];
  }

  v7.receiver = self;
  v7.super_class = CNPropertySimpleTransportCell;
  [(CNPropertyCell *)&v7 setCardGroupItem:v4];
  [v4 addObserver:self forKeyPath:@"allowsIMessage" options:0 context:0];
  [v4 addObserver:self forKeyPath:@"allowsPhone" options:0 context:0];
  [v4 addObserver:self forKeyPath:@"allowsEmail" options:0 context:0];
  [v4 addObserver:self forKeyPath:@"allowsTTY" options:0 context:0];

  [(CNPropertySimpleTransportCell *)self updateLabelNeedingHuggingContent];
}

- (void)updateLabelNeedingHuggingContent
{
  v3 = [(CNPropertySimpleTransportCell *)self shouldShowBadge]|| [(CNPropertySimpleTransportCell *)self shouldShowStar];

  [(CNLabeledCell *)self setLabelViewNeedsHuggingContent:v3];
}

- (void)setShouldShowBadge:(BOOL)a3
{
  if (self->_shouldShowBadge == a3)
  {
    return;
  }

  v4 = a3;
  self->_shouldShowBadge = a3;
  v6 = [(CNPropertySimpleTransportCell *)self badgeView];
  v7 = [v6 superview];

  v8 = [(CNPropertySimpleTransportCell *)self badgeView];
  v9 = v8;
  if (v7 && !v4)
  {
    [v8 removeFromSuperview];

    [(CNPropertySimpleTransportCell *)self setBadgeView:0];
LABEL_10:
    [(CNPropertySimpleTransportCell *)self setNeedsUpdateConstraints];
    goto LABEL_11;
  }

  v10 = [v8 superview];

  if (!v10 && v4)
  {
    v11 = [(CNPropertySimpleTransportCell *)self badgeView];

    if (!v11)
    {
      v12 = [(CNPropertySimpleTransportCell *)self standardBadgeView];
      [(CNPropertySimpleTransportCell *)self setBadgeView:v12];

      v13 = [(CNPropertySimpleTransportCell *)self badgeView];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v14 = [(CNPropertySimpleTransportCell *)self badgeView];
    [(CNPropertySimpleTransportCell *)self addSubview:v14];

    goto LABEL_10;
  }

LABEL_11:

  [(CNPropertySimpleTransportCell *)self updateLabelNeedingHuggingContent];
}

- (BOOL)shouldShowStar
{
  v2 = [(CNPropertyCell *)self propertyItem];
  v3 = [v2 isFavorite];

  return v3;
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
    v4 = [(CNPropertySimpleTransportCell *)self standardTransportIcon];
    v5 = self->_transportIcon3;
    self->_transportIcon3 = v4;

    transportIcon3 = self->_transportIcon3;
  }

  return transportIcon3;
}

- (CNTransportButton)transportIcon2
{
  transportIcon2 = self->_transportIcon2;
  if (!transportIcon2)
  {
    v4 = [(CNPropertySimpleTransportCell *)self standardTransportIcon];
    v5 = self->_transportIcon2;
    self->_transportIcon2 = v4;

    transportIcon2 = self->_transportIcon2;
  }

  return transportIcon2;
}

- (CNTransportButton)transportIcon1
{
  transportIcon1 = self->_transportIcon1;
  if (!transportIcon1)
  {
    v4 = [(CNPropertySimpleTransportCell *)self standardTransportIcon];
    v5 = self->_transportIcon1;
    self->_transportIcon1 = v4;

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
    v3 = [(CNPropertySimpleTransportCell *)self contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v8 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    [v8 _updateTouchInsetsToFillContainerWithSize:{v5, v7}];

    v9 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [v9 _updateTouchInsetsToFillContainerWithSize:{v5, v7}];

    v10 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    [v10 _updateTouchInsetsToFillContainerWithSize:{v5, v7}];

    [(CNPropertySimpleTransportCell *)self setNeedsUpdateTouchAreas:0];
  }
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v7 = a3;
  if (self->_starView)
  {
    [objc_opt_class() _updateStarImageForView:self->_starView];
  }

  if (self->_shouldShowBadge)
  {
    v4 = [(CNPropertySimpleTransportCell *)self badgeView];
    [v4 removeFromSuperview];

    v5 = [(CNPropertySimpleTransportCell *)self standardBadgeView];
    [(CNPropertySimpleTransportCell *)self setBadgeView:v5];

    v6 = [(CNPropertySimpleTransportCell *)self badgeView];
    [(CNPropertySimpleTransportCell *)self addSubview:v6];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertySimpleTransportCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertySimpleTransportCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CNPropertySimpleTransportCell;
  v4 = [(CNPropertyCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v4->_shouldShowTransportButtons = 0;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v4;
}

+ (id)standardStarView
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  [a1 _updateStarImageForView:v3];
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

+ (void)_updateStarImageForView:(id)a3
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = +[CNUIColorRepository contactCardStarImageColor];
  v6 = [v3 cnui_symbolImageNamed:@"star.fill" scale:1 withColor:v5 useFixedSize:0];

  [v4 setImage:v6];
}

@end
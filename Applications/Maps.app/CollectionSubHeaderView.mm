@interface CollectionSubHeaderView
- (CGSize)intrinsicContentSize;
- (CollectionHeaderActionTypeDelegate)delegate;
- (CollectionSubHeaderView)initWithType:(unint64_t)a3;
- (double)_height;
- (double)originalHeight;
- (id)_createMenuForSortButton;
- (id)_createUIActionForSortType:(int64_t)a3;
- (id)_currentFont;
- (id)_titleForSortType:(int64_t)a3;
- (void)_updateSortButton;
- (void)createEditContent;
- (void)createSaveContent;
- (void)loadContent;
- (void)saveAction:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setShrinkFactor:(double)a3;
- (void)setSortType:(int64_t)a3;
- (void)setType:(unint64_t)a3;
- (void)updateFonts;
@end

@implementation CollectionSubHeaderView

- (CollectionHeaderActionTypeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_titleForSortType:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = &stru_1016631F0;
  }

  else
  {
    v3 = *(&off_10164DD80 + a3);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (id)_createUIActionForSortType:(int64_t)a3
{
  v5 = [(CollectionSubHeaderView *)self _titleForSortType:?];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C17AB0;
  v8[3] = &unk_101658B58;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
  v6 = [UIAction actionWithTitle:v5 image:0 identifier:0 handler:v8];
  [v6 setState:self->_sortType == a3];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_createMenuForSortButton
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v4 = [(CollectionSubHeaderView *)self _createUIActionForSortType:2];
  [v3 addObject:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained collectionSubHeaderViewShouldShowSortByDistance];

  if (v6)
  {
    v7 = [(CollectionSubHeaderView *)self _createUIActionForSortType:1];
    [v3 addObject:v7];
  }

  v8 = [(CollectionSubHeaderView *)self _createUIActionForSortType:0];
  [v3 addObject:v8];

  v9 = [UIMenu menuWithChildren:v3];

  return v9;
}

- (void)setShrinkFactor:(double)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0);
  if (self->_shrinkFactor != v3)
  {
    self->_shrinkFactor = v3;
    [(CollectionSubHeaderView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(CollectionSubHeaderView *)self _height];
  v3 = v2;
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

- (double)originalHeight
{
  type = self->_type;
  v3 = 76.0;
  if (type != 2)
  {
    v3 = 0.0;
  }

  if (type == 1)
  {
    v4 = 26.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(CollectionSubHeaderView *)self _currentFont];
  [v5 _mapkit_scaledValueForValue:v4];
  v7 = v6;

  return v7;
}

- (double)_height
{
  shrinkFactor = self->_shrinkFactor;
  [(CollectionSubHeaderView *)self originalHeight];
  v5 = v4 - shrinkFactor * v4;
  result = 1.0;
  if (v5 >= 1.0)
  {
    v7 = self->_shrinkFactor;
    [(CollectionSubHeaderView *)self originalHeight];
    return v8 - v7 * v8;
  }

  return result;
}

- (void)createEditContent
{
  v3 = [(CollectionSubHeaderView *)self _maps_addHairlineAtBottomWithMargin:0.0];
  v4 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentView = self->_contentView;
  self->_contentView = v8;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setAccessibilityIdentifier:@"CollectionSubHeaderContent"];
  [(CollectionSubHeaderView *)self addSubview:self->_contentView];
  v42 = [UIButton buttonWithType:0];
  [v42 setShowsMenuAsPrimaryAction:1];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v42 setAccessibilityIdentifier:@"CollectionSubHeaderButton"];
  [(UIView *)self->_contentView addSubview:v42];
  v10 = [(CollectionSubHeaderView *)self theme];
  v11 = [v10 keyColor];
  [v42 setTitleColor:v11 forState:0];

  objc_initWeak(&location, self);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100C18320;
  v43[3] = &unk_10164DD60;
  objc_copyWeak(&v44, &location);
  [v42 _setMenuProvider:v43];
  objc_storeStrong(&self->_sortButton, v42);
  [(CollectionSubHeaderView *)self _updateSortButton];
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = +[UIColor secondaryLabelColor];
  [v12 setTextColor:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Collection] Sort by" value:@"localized string not found" table:0];
  [v12 setText:v15];

  [v12 setAccessibilityIdentifier:@"CollectionSubHeaderLabel"];
  [(UIView *)self->_contentView addSubview:v12];
  v41 = [(UIView *)self->_contentView leadingAnchor];
  v40 = [(CollectionSubHeaderView *)self leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v46[0] = v39;
  v38 = [(UIView *)self->_contentView bottomAnchor];
  v37 = [(CollectionSubHeaderView *)self bottomAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v46[1] = v36;
  v35 = [(UIView *)self->_contentView trailingAnchor];
  v34 = [(CollectionSubHeaderView *)self trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v46[2] = v33;
  v32 = [v12 topAnchor];
  v31 = [(UIView *)self->_contentView topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v46[3] = v30;
  v29 = [v12 bottomAnchor];
  v28 = [(UIView *)self->_contentView bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:-8.0];
  v46[4] = v27;
  v26 = [v42 titleLabel];
  v25 = [v26 firstBaselineAnchor];
  v24 = [v12 firstBaselineAnchor];
  v16 = [v25 constraintEqualToAnchor:v24];
  v46[5] = v16;
  v17 = [v42 leadingAnchor];
  v18 = [v12 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:5.0];
  v46[6] = v19;
  v20 = [v42 trailingAnchor];
  v21 = [(UIView *)self->_contentView trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-16.0];
  v46[7] = v22;
  v23 = [NSArray arrayWithObjects:v46 count:8];
  [NSLayoutConstraint activateConstraints:v23];

  [(CollectionSubHeaderView *)self updateFonts];
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
}

- (void)_updateSortButton
{
  v3 = [(CollectionSubHeaderView *)self _titleForSortType:self->_sortType];
  [(UIButton *)self->_sortButton setTitle:v3 forState:0];
}

- (void)createSaveContent
{
  v3 = [(CollectionSubHeaderView *)self _maps_addHairlineAtBottomWithMargin:0.0];
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  contentView = self->_contentView;
  self->_contentView = v4;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setAccessibilityIdentifier:@"CollectionSubHeaderContent"];
  [(CollectionSubHeaderView *)self addSubview:self->_contentView];
  v6 = [UIButton buttonWithType:0];
  v7 = +[UIColor whiteColor];
  [(UIButton *)v6 setTitleColor:v7 forState:0];

  v8 = [(CollectionSubHeaderView *)self theme];
  v9 = [v8 keyColor];
  [(UIButton *)v6 setBackgroundColor:v9];

  [(UIButton *)v6 _setContinuousCornerRadius:8.0];
  [(UIButton *)v6 addTarget:self action:"saveAction:" forControlEvents:64];
  [(UIButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)v6 setAccessibilityIdentifier:@"CollectionSubHeaderSaveButton"];
  [(UIView *)self->_contentView addSubview:v6];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"[Guide] Save to My Guides" value:@"localized string not found" table:0];
  [(UIButton *)v6 setTitle:v11 forState:0];

  saveButton = self->_saveButton;
  self->_saveButton = v6;
  v13 = v6;

  v14 = [(UIButton *)self->_saveButton heightAnchor];
  v15 = [v14 constraintEqualToConstant:0.0];
  saveButtonHeightConstraint = self->_saveButtonHeightConstraint;
  self->_saveButtonHeightConstraint = v15;

  v39 = [(UIView *)self->_contentView leadingAnchor];
  v38 = [(CollectionSubHeaderView *)self leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v40[0] = v37;
  v36 = [(UIView *)self->_contentView trailingAnchor];
  v35 = [(CollectionSubHeaderView *)self trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v40[1] = v34;
  v33 = [(UIView *)self->_contentView bottomAnchor];
  v32 = [(CollectionSubHeaderView *)self bottomAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v40[2] = v31;
  v30 = [(UIButton *)v13 leadingAnchor];
  v29 = [(UIView *)self->_contentView leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:16.0];
  v40[3] = v28;
  v27 = [(UIButton *)v13 trailingAnchor];
  v26 = [(UIView *)self->_contentView trailingAnchor];
  v17 = [v27 constraintEqualToAnchor:v26 constant:-16.0];
  v40[4] = v17;
  v18 = [(UIButton *)v13 topAnchor];
  v19 = [(UIView *)self->_contentView topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:8.0];
  v40[5] = v20;
  v21 = [(UIButton *)v13 bottomAnchor];
  v22 = [(UIView *)self->_contentView bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-16.0];
  v24 = self->_saveButtonHeightConstraint;
  v40[6] = v23;
  v40[7] = v24;
  v25 = [NSArray arrayWithObjects:v40 count:8];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)loadContent
{
  [(UIView *)self->_contentView removeFromSuperview];
  type = self->_type;
  if (type == 1)
  {
    [(CollectionSubHeaderView *)self createEditContent];
  }

  else if (type == 2)
  {
    [(CollectionSubHeaderView *)self createSaveContent];
  }

  [(CollectionSubHeaderView *)self updateFonts];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"contentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)saveAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestsCollectionHeaderSaveActionForView:self];
}

- (void)setSortType:(int64_t)a3
{
  if (self->_sortType != a3)
  {
    self->_sortType = a3;
    [(CollectionSubHeaderView *)self _updateSortButton];
  }
}

- (void)setType:(unint64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    [(CollectionSubHeaderView *)self loadContent];

    [(CollectionSubHeaderView *)self invalidateIntrinsicContentSize];
  }
}

- (void)updateFonts
{
  v3 = [(CollectionSubHeaderView *)self _currentFont];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(UIView *)self->_contentView subviews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 titleLabel];
          [v10 setFont:v3];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setFont:v3];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 _mapkit_scaledValueForValue:52.0];
  [(NSLayoutConstraint *)self->_saveButtonHeightConstraint setConstant:?];
  [(CollectionSubHeaderView *)self invalidateIntrinsicContentSize];
}

- (id)_currentFont
{
  if (self->_type == 1)
  {
    +[UIFont system13Adaptive];
  }

  else
  {
    [UIFont system15CompatibleWithTraitCollection:0 withSymbolicTraits:2];
  }
  v2 = ;

  return v2;
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
  }
}

- (CollectionSubHeaderView)initWithType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CollectionSubHeaderView;
  v4 = [(CollectionSubHeaderView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    [(CollectionSubHeaderView *)v4 setClipsToBounds:1];
    [(CollectionSubHeaderView *)v5 setAccessibilityIdentifier:@"CollectionSubHeaderView"];
    [(CollectionSubHeaderView *)v5 loadContent];
  }

  return v5;
}

@end
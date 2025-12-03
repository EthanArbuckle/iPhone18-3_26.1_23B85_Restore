@interface CollectionSubHeaderView
- (CGSize)intrinsicContentSize;
- (CollectionHeaderActionTypeDelegate)delegate;
- (CollectionSubHeaderView)initWithType:(unint64_t)type;
- (double)_height;
- (double)originalHeight;
- (id)_createMenuForSortButton;
- (id)_createUIActionForSortType:(int64_t)type;
- (id)_currentFont;
- (id)_titleForSortType:(int64_t)type;
- (void)_updateSortButton;
- (void)createEditContent;
- (void)createSaveContent;
- (void)loadContent;
- (void)saveAction:(id)action;
- (void)setEditing:(BOOL)editing;
- (void)setShrinkFactor:(double)factor;
- (void)setSortType:(int64_t)type;
- (void)setType:(unint64_t)type;
- (void)updateFonts;
@end

@implementation CollectionSubHeaderView

- (CollectionHeaderActionTypeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_titleForSortType:(int64_t)type
{
  if (type > 2)
  {
    v5 = &stru_1016631F0;
  }

  else
  {
    v3 = *(&off_10164DD80 + type);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (id)_createUIActionForSortType:(int64_t)type
{
  v5 = [(CollectionSubHeaderView *)self _titleForSortType:?];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C17AB0;
  v8[3] = &unk_101658B58;
  objc_copyWeak(v9, &location);
  v9[1] = type;
  v6 = [UIAction actionWithTitle:v5 image:0 identifier:0 handler:v8];
  [v6 setState:self->_sortType == type];
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
  collectionSubHeaderViewShouldShowSortByDistance = [WeakRetained collectionSubHeaderViewShouldShowSortByDistance];

  if (collectionSubHeaderViewShouldShowSortByDistance)
  {
    v7 = [(CollectionSubHeaderView *)self _createUIActionForSortType:1];
    [v3 addObject:v7];
  }

  v8 = [(CollectionSubHeaderView *)self _createUIActionForSortType:0];
  [v3 addObject:v8];

  v9 = [UIMenu menuWithChildren:v3];

  return v9;
}

- (void)setShrinkFactor:(double)factor
{
  v3 = fmin(fmax(factor, 0.0), 1.0);
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

  _currentFont = [(CollectionSubHeaderView *)self _currentFont];
  [_currentFont _mapkit_scaledValueForValue:v4];
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
  theme = [(CollectionSubHeaderView *)self theme];
  keyColor = [theme keyColor];
  [v42 setTitleColor:keyColor forState:0];

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
  leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
  leadingAnchor2 = [(CollectionSubHeaderView *)self leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[0] = v39;
  bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor2 = [(CollectionSubHeaderView *)self bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[1] = v36;
  trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
  trailingAnchor2 = [(CollectionSubHeaderView *)self trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[2] = v33;
  topAnchor = [v12 topAnchor];
  topAnchor2 = [(UIView *)self->_contentView topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[3] = v30;
  bottomAnchor3 = [v12 bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v46[4] = v27;
  titleLabel = [v42 titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  firstBaselineAnchor2 = [v12 firstBaselineAnchor];
  v16 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v46[5] = v16;
  leadingAnchor3 = [v42 leadingAnchor];
  trailingAnchor3 = [v12 trailingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:5.0];
  v46[6] = v19;
  trailingAnchor4 = [v42 trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_contentView trailingAnchor];
  v22 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
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

  theme = [(CollectionSubHeaderView *)self theme];
  keyColor = [theme keyColor];
  [(UIButton *)v6 setBackgroundColor:keyColor];

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

  heightAnchor = [(UIButton *)self->_saveButton heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:0.0];
  saveButtonHeightConstraint = self->_saveButtonHeightConstraint;
  self->_saveButtonHeightConstraint = v15;

  leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
  leadingAnchor2 = [(CollectionSubHeaderView *)self leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v37;
  trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
  trailingAnchor2 = [(CollectionSubHeaderView *)self trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v34;
  bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor2 = [(CollectionSubHeaderView *)self bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[2] = v31;
  leadingAnchor3 = [(UIButton *)v13 leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_contentView leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v40[3] = v28;
  trailingAnchor3 = [(UIButton *)v13 trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_contentView trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v40[4] = v17;
  topAnchor = [(UIButton *)v13 topAnchor];
  topAnchor2 = [(UIView *)self->_contentView topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v40[5] = v20;
  bottomAnchor3 = [(UIButton *)v13 bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
  v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
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

- (void)saveAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestsCollectionHeaderSaveActionForView:self];
}

- (void)setSortType:(int64_t)type
{
  if (self->_sortType != type)
  {
    self->_sortType = type;
    [(CollectionSubHeaderView *)self _updateSortButton];
  }
}

- (void)setType:(unint64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(CollectionSubHeaderView *)self loadContent];

    [(CollectionSubHeaderView *)self invalidateIntrinsicContentSize];
  }
}

- (void)updateFonts
{
  _currentFont = [(CollectionSubHeaderView *)self _currentFont];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(UIView *)self->_contentView subviews];
  v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          titleLabel = [v9 titleLabel];
          [titleLabel setFont:_currentFont];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setFont:_currentFont];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [_currentFont _mapkit_scaledValueForValue:52.0];
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

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
  }
}

- (CollectionSubHeaderView)initWithType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = CollectionSubHeaderView;
  v4 = [(CollectionSubHeaderView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    [(CollectionSubHeaderView *)v4 setClipsToBounds:1];
    [(CollectionSubHeaderView *)v5 setAccessibilityIdentifier:@"CollectionSubHeaderView"];
    [(CollectionSubHeaderView *)v5 loadContent];
  }

  return v5;
}

@end
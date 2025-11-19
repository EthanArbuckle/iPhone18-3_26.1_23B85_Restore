@interface CarSearchCategoriesRow
- (BOOL)_shouldHideSecondRow;
- (BOOL)isAnyCategoryFocused;
- (CGSize)intrinsicContentSize;
- (CarSearchCategoriesRow)initWithDelegate:(id)a3;
- (void)_buttonTapped:(id)a3;
- (void)_reloadButtons;
- (void)_reloadCategories;
- (void)didMoveToSuperview;
- (void)setShowSecondRowIfPossible:(BOOL)a3;
@end

@implementation CarSearchCategoriesRow

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = CarSearchCategoriesRow;
  [(CarSearchCategoriesRow *)&v3 didMoveToSuperview];
  [(CarSearchCategoriesRow *)self _reloadCategories];
}

- (void)_buttonTapped:(id)a3
{
  if (a3)
  {
    v4 = [(NSMapTable *)self->_categoriesByButton objectForKey:?];
    if (v4)
    {
      v6 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained searchCategoriesRow:self didSelectCategory:v6];

      v4 = v6;
    }
  }
}

- (void)_reloadButtons
{
  v3 = [(CarSearchCategoriesRow *)self superview];

  if (v3)
  {
    v4 = [(BrowseManager *)self->_browseManager cachedCategories];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v29 = [WeakRetained traitsForSearchCategoriesRow:self];

    v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v30 = +[NSMapTable weakToWeakObjectsMapTable];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [v13 alternativeName];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = [v13 alternativeName];
          }

          v17 = v16;

          v18 = [(BrowseManager *)self->_browseManager imageManager];
          v19 = [(CarSearchCategoriesRow *)self traitCollection];
          [v19 displayScale];
          v20 = [v18 synchronousImageForCategory:v13 scale:v29 traits:1 isCarplay:?];

          v21 = [[CarSearchCategoryButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
          [(CarSearchCategoryButton *)v21 setTitle:v17 image:v20];
          [(CarSearchCategoryButton *)v21 addTarget:self action:"_buttonTapped:" forControlEvents:64];
          [v28 addObject:v21];
          [v30 setObject:v13 forKey:v21];
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v7);
    }

    objc_storeStrong(&self->_categoriesByButton, v30);
    v22 = [v28 count];
    v23 = v22;
    if (v22 >= 6)
    {
      v24 = 6;
    }

    else
    {
      v24 = v22;
    }

    v25 = [v28 subarrayWithRange:{0, v24}];
    [(UIStackView *)self->_firstRow _maps_setArrangedSubviews:v25];
    if (v23 < 7)
    {
      v26 = &__NSArray0__struct;
    }

    else
    {
      v26 = [v28 subarrayWithRange:{v24, v23 - v24}];
    }

    [(UIStackView *)self->_secondRow _maps_setArrangedSubviews:v26];
    [(UIStackView *)self->_secondRow setHidden:[(CarSearchCategoriesRow *)self _shouldHideSecondRow]];
    -[CarSearchCategoriesRow setHidden:](self, "setHidden:", [v28 count] == 0);
  }
}

- (void)_reloadCategories
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained traitsForSearchCategoriesRow:self];
  [(BrowseManager *)self->_browseManager setTraits:v4];

  browseManager = self->_browseManager;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F85454;
  v6[3] = &unk_10165F290;
  objc_copyWeak(&v7, &location);
  [(BrowseManager *)browseManager getCategoriesWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)isAnyCategoryFocused
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(UIStackView *)self->_firstRow arrangedSubviews];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100F855FC;
  v8[3] = &unk_10165F268;
  v8[4] = &v9;
  [v3 enumerateObjectsUsingBlock:v8];

  if ((v10[3] & 1) == 0 && ([(UIStackView *)self->_secondRow isHidden]& 1) == 0)
  {
    v4 = [(UIStackView *)self->_secondRow arrangedSubviews];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100F85640;
    v7[3] = &unk_10165F268;
    v7[4] = &v9;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (void)setShowSecondRowIfPossible:(BOOL)a3
{
  if (self->_showSecondRowIfPossible != a3)
  {
    self->_showSecondRowIfPossible = a3;
    v5 = [(CarSearchCategoriesRow *)self _shouldHideSecondRow];
    secondRow = self->_secondRow;

    [(UIStackView *)secondRow setHidden:v5];
  }
}

- (BOOL)_shouldHideSecondRow
{
  v3 = [(UIStackView *)self->_secondRow arrangedSubviews];
  if ([v3 count])
  {
    v4 = ![(CarSearchCategoriesRow *)self showSecondRowIfPossible];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(CarSearchCategoriesRow *)self preferredMinimumVisibleHeight];
  v4 = v3;
  if ([(CarSearchCategoriesRow *)self isShowingSecondRow])
  {
    [(UIStackView *)self->_stackView spacing];
    v4 = v4 + 40.0 + v5;
  }

  v6 = UIViewNoIntrinsicMetric;
  v7 = v4;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CarSearchCategoriesRow)initWithDelegate:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = CarSearchCategoriesRow;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(CarSearchCategoriesRow *)&v49 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v4);
    v10 = [[BrowseManager alloc] initWithCacheKey:@"Stark"];
    browseManager = v9->_browseManager;
    v9->_browseManager = v10;

    v47 = v4;
    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v12 setAccessibilityIdentifier:@"CarSearchCategoriesRow"];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[UIColor tertiarySystemFillColor];
    [v12 setBackgroundColor:v13];

    [v12 _setContinuousCornerRadius:8.0];
    LODWORD(v14) = 1148829696;
    [v12 setContentHuggingPriority:0 forAxis:v14];
    [(CarSearchCategoriesRow *)v9 addSubview:v12];
    v15 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
    firstRow = v9->_firstRow;
    v9->_firstRow = v15;

    [(UIStackView *)v9->_firstRow setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_firstRow setAxis:0];
    [(UIStackView *)v9->_firstRow setSpacing:8.0];
    [(UIStackView *)v9->_firstRow setAlignment:1];
    [(UIStackView *)v9->_firstRow setDistribution:1];
    v17 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
    secondRow = v9->_secondRow;
    v9->_secondRow = v17;

    [(UIStackView *)v9->_secondRow setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_secondRow setAxis:0];
    [(UIStackView *)v9->_secondRow setSpacing:8.0];
    [(UIStackView *)v9->_secondRow setAlignment:1];
    [(UIStackView *)v9->_secondRow setDistribution:1];
    [v12 addSubview:v9->_secondRow];
    v19 = [UIStackView alloc];
    v51[0] = v9->_firstRow;
    v51[1] = v9->_secondRow;
    v20 = [NSArray arrayWithObjects:v51 count:2];
    v21 = [v19 initWithArrangedSubviews:v20];
    stackView = v9->_stackView;
    v9->_stackView = v21;

    [(UIStackView *)v9->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_stackView setAxis:1];
    [(UIStackView *)v9->_stackView setSpacing:8.0];
    [(UIStackView *)v9->_stackView setAlignment:0];
    [(UIStackView *)v9->_stackView setDistribution:1];
    [v12 addSubview:v9->_stackView];
    v48 = objc_alloc_init(NSMutableArray);
    v46 = [(UIStackView *)v9->_firstRow heightAnchor];
    v45 = [v46 constraintEqualToConstant:40.0];
    v50[0] = v45;
    v44 = [(UIStackView *)v9->_secondRow heightAnchor];
    v43 = [v44 constraintEqualToConstant:40.0];
    v50[1] = v43;
    v42 = [v12 centerXAnchor];
    v41 = [(CarSearchCategoriesRow *)v9 centerXAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v50[2] = v40;
    v39 = [v12 leadingAnchor];
    v38 = [(CarSearchCategoriesRow *)v9 leadingAnchor];
    v37 = [v39 constraintGreaterThanOrEqualToAnchor:v38 constant:4.0];
    v50[3] = v37;
    v36 = [(CarSearchCategoriesRow *)v9 trailingAnchor];
    v35 = [v12 trailingAnchor];
    v34 = [v36 constraintGreaterThanOrEqualToAnchor:v35 constant:4.0];
    v50[4] = v34;
    v23 = [v12 topAnchor];
    v24 = [(CarSearchCategoriesRow *)v9 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:2.0];
    v50[5] = v25;
    v26 = [(CarSearchCategoriesRow *)v9 bottomAnchor];
    v27 = [v12 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:2.0];
    v50[6] = v28;
    v29 = [NSArray arrayWithObjects:v50 count:7];
    [v48 addObjectsFromArray:v29];

    LODWORD(v30) = 1148846080;
    v31 = [(UIStackView *)v9->_stackView _maps_constraintsEqualToEdgesOfView:v12 insets:6.0 priority:8.0, 6.0, 8.0, v30];
    v32 = [v31 allConstraints];
    [v48 addObjectsFromArray:v32];

    [NSLayoutConstraint activateConstraints:v48];
    v4 = v47;
  }

  return v9;
}

@end
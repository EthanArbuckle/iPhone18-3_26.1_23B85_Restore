@interface FilterCategoriesView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (FilterCategoriesView)initWithFrame:(CGRect)a3;
- (FilterCategoriesViewDelegate)delegate;
- (NSArray)visibleSuggestions;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)preferredFocusEnvironments;
- (void)initCurrentListSession;
- (void)layoutSubviews;
- (void)loadSubCategories;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBackgroundAndTitleColorToButton:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3;
- (void)setSubCategories:(id)a3;
- (void)setSubCategories:(id)a3 selectedIndex:(unint64_t)a4;
- (void)touchedAction:(id)a3;
- (void)updateSelectedVisibility;
- (void)updateTheme;
@end

@implementation FilterCategoriesView

- (FilterCategoriesViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initCurrentListSession
{
  if (self->_refineSearchSession)
  {
    [(FilterCategoriesView *)self sendCurrentRefineSession];
  }

  v3 = [RefineSearchSession alloc];
  subCategories = self->_subCategories;
  v5 = [(FilterCategoriesView *)self delegate];
  v6 = -[RefineSearchSession initWithObjects:forType:](v3, "initWithObjects:forType:", subCategories, [v5 refineSearchSessionType]);
  refineSearchSession = self->_refineSearchSession;
  self->_refineSearchSession = v6;

  v8 = self->_refineSearchSession;

  [(RefineSearchSession *)v8 updateWithFilterView:self];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v6 = a3;
  x = self->_lastScrollViewContentOffset.x;
  v13 = v6;
  [v6 contentOffset];
  if (x <= v8)
  {
    v10 = self->_lastScrollViewContentOffset.x;
    [v13 contentOffset];
    if (v10 >= v11)
    {
      goto LABEL_6;
    }

    v9 = 12;
  }

  else
  {
    v9 = 13;
  }

  v12 = +[MKMapService sharedService];
  [v12 captureUserAction:v9 onTarget:619 eventValue:0];

LABEL_6:
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  p_lastScrollViewContentOffset = &self->_lastScrollViewContentOffset;
  [a3 contentOffset];
  p_lastScrollViewContentOffset->x = v4;
  p_lastScrollViewContentOffset->y = v5;
}

- (id)preferredFocusEnvironments
{
  if (self->_selected)
  {
    selected = self->_selected;
    v2 = [NSArray arrayWithObjects:&selected count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [v5 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 identifier];
    v9 = [v8 unsignedIntegerValue];
    if (v9 >= [(NSMutableArray *)self->_subCategoriesViews count])
    {
      v15 = 0;
    }

    else
    {
      v10 = [(NSMutableArray *)self->_subCategoriesViews objectAtIndexedSubscript:v9];
      v11 = [[UITargetedPreview alloc] initWithView:v10];
      if (v10 == self->_selected)
      {
        v12 = UIPointerLiftEffect_ptr;
      }

      else
      {
        v12 = UIPointerEffect_ptr;
      }

      v13 = [*v12 effectWithPreview:v11];
      [(UIButton *)v10 frame];
      v14 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
      v15 = [UIPointerStyle styleWithEffect:v13 shape:v14];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(NSMutableArray *)self->_subCategoriesViews count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(NSMutableArray *)self->_subCategoriesViews objectAtIndexedSubscript:v9];
      [(UIScrollView *)self->_scrollView frame];
      Height = CGRectGetHeight(v24);
      [v10 frame];
      v12 = Height - CGRectGetHeight(v25);
      [v10 frame];
      v27 = CGRectInset(v26, -5.0, v12 * -0.5);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      v16 = v27.size.height;
      [v6 location];
      v23.x = v17;
      v23.y = v18;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = v16;
      if (CGRectContainsPoint(v28, v23))
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v20 = [NSNumber numberWithUnsignedInteger:v9];
    v19 = [UIPointerRegion regionWithRect:v20 identifier:x, y, width, v16];
  }

  else
  {
LABEL_5:
    v19 = 0;
  }

  return v19;
}

- (void)setBackgroundAndTitleColorToButton:(id)a3
{
  v3 = a3;
  v4 = +[UIColor secondaryLabelColor];
  [v3 setTitleColor:v4 forState:0];

  v5 = +[UIColor tertiarySystemBackgroundColor];
  [v3 setTitleColor:v5 forState:4];
}

- (void)loadSubCategories
{
  [(NSMutableArray *)self->_subCategoriesViews makeObjectsPerformSelector:"removeFromSuperview"];
  [(NSMutableArray *)self->_subCategoriesViews removeAllObjects];
  if (!self->_subCategoriesViews)
  {
    v3 = +[NSMutableArray array];
    subCategoriesViews = self->_subCategoriesViews;
    self->_subCategoriesViews = v3;
  }

  v5 = 80;
  self->_selectedIndex = -1;
  v33 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_subCategories;
  v32 = [(NSArray *)v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v32)
  {
    v7 = v6;
    goto LABEL_16;
  }

  v29 = 80;
  obj = v6;
  v7 = 0;
  v8 = 0;
  v31 = *v36;
  do
  {
    v9 = 0;
    v10 = v7;
    do
    {
      if (*v36 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v35 + 1) + 8 * v9);
      v12 = [UIButton buttonWithType:0, v29];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v12 setTag:v8];
      v13 = +[UIFont system15];
      v14 = [v12 titleLabel];
      [v14 setFont:v13];

      [v12 setClipsToBounds:1];
      v15 = [v12 layer];
      [v15 setCornerRadius:5.0];

      [v12 setContentEdgeInsets:{2.0, 9.0, 2.0, 9.0}];
      [v12 addTarget:self action:"touchedAction:" forControlEvents:0x2000];
      [v12 setTitle:v11 forState:0];
      [(FilterCategoriesView *)self setBackgroundAndTitleColorToButton:v12];
      [(UIScrollView *)self->_scrollView addSubview:v12];
      v16 = [v12 centerYAnchor];
      v17 = [(UIScrollView *)self->_scrollView centerYAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v39 = v18;
      v19 = [NSArray arrayWithObjects:&v39 count:1];
      [v33 addObjectsFromArray:v19];

      v20 = [v12 leadingAnchor];
      if (v10)
      {
        v21 = [(NSArray *)v10 trailingAnchor];
        v22 = 10.0;
      }

      else
      {
        v21 = [(UIScrollView *)self->_scrollView leadingAnchor];
        v22 = 16.0;
      }

      v23 = [v20 constraintEqualToAnchor:v21 constant:v22];
      [v33 addObject:v23];

      ++v8;
      v7 = v12;

      [(NSMutableArray *)self->_subCategoriesViews addObject:v7];
      v9 = v9 + 1;
      v10 = v7;
    }

    while (v32 != v9);
    v32 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  }

  while (v32);

  v5 = v29;
  if (v7)
  {
    v24 = [(NSArray *)v7 trailingAnchor];
    v25 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-self->_lastButtonTrailingPadding];
    lastButtonTrailingConstraint = self->_lastButtonTrailingConstraint;
    self->_lastButtonTrailingConstraint = v26;

    [v33 addObject:self->_lastButtonTrailingConstraint];
LABEL_16:
  }

  [NSLayoutConstraint activateConstraints:v33];
  v28 = *(&self->super.super.super.super.isa + v5);
  if (v28 < [(NSMutableArray *)self->_subCategoriesViews count])
  {
    [(FilterCategoriesView *)self setSelectedIndex:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100900C54;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateSelectedVisibility
{
  [(UIButton *)self->_selected frame];
  if (v5 != 0.0)
  {
    v7 = v4;
    if (v4 >= 0.0)
    {
      v8 = v3;
      v9 = v5;
      v10 = v6;
      [(FilterCategoriesView *)self bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(UIScrollView *)self->_scrollView contentOffset];
      v18 = v17;
      v23 = v19;
      [(UIScrollView *)self->_scrollView scrollRectToVisible:1 animated:v8, v7, v9, v10];
      if (([(UIScrollView *)self->_scrollView _isRectFullyVisible:v8, v7, v9, v10]& 1) == 0)
      {
        v25.origin.x = v8;
        v25.origin.y = v7;
        v25.size.width = v9;
        v25.size.height = v10;
        MaxX = CGRectGetMaxX(v25);
        v26.origin.x = v18;
        v26.origin.y = v12;
        v26.size.width = v14;
        v26.size.height = v16;
        v21 = v18 + 10.0 + MaxX - CGRectGetMaxX(v26);
        if (v18 > v8)
        {
          v21 = v8 + -10.0;
        }

        scrollView = self->_scrollView;

        [(UIScrollView *)scrollView setContentOffset:1 animated:v21, v23];
      }
    }
  }
}

- (NSArray)visibleSuggestions
{
  [(FilterCategoriesView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self->_scrollView contentOffset];
  v10 = v9;
  v11 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_subCategoriesViews;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        [v17 setAccessibilityIdentifier:{@"FilterCategoriesButton", v24}];
        [v17 frame];
        v32.origin.x = v18;
        v32.origin.y = v19;
        v32.size.width = v20;
        v32.size.height = v21;
        v30.origin.x = v10;
        v30.origin.y = v4;
        v30.size.width = v6;
        v30.size.height = v8;
        v31 = CGRectIntersection(v30, v32);
        if (!CGRectIsEmpty(v31))
        {
          [v11 addObject:v17];
        }
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v22 = [v11 copy];

  return v22;
}

- (void)setSelectedIndex:(unint64_t)a3
{
  if (self->_selectedIndex != a3)
  {
    self->_selectedIndex = a3;
    if ([(NSMutableArray *)self->_subCategoriesViews count]> a3)
    {
      [(UIButton *)self->_selected setSelected:0];
      v5 = +[UIFont system15];
      v6 = [(UIButton *)self->_selected titleLabel];
      [v6 setFont:v5];

      v7 = +[UIColor clearColor];
      [(UIButton *)self->_selected setBackgroundColor:v7];

      v8 = [(NSMutableArray *)self->_subCategoriesViews objectAtIndexedSubscript:a3];
      selected = self->_selected;
      self->_selected = v8;

      v10 = +[UIFont system15Bold];
      v11 = [(UIButton *)self->_selected titleLabel];
      [v11 setFont:v10];

      v12 = +[UIColor secondaryLabelColor];
      [(UIButton *)self->_selected setBackgroundColor:v12];

      [(UIButton *)self->_selected setSelected:1];
      [(FilterCategoriesView *)self layoutIfNeeded];

      [(FilterCategoriesView *)self updateSelectedVisibility];
    }
  }
}

- (void)touchedAction:(id)a3
{
  v4 = [a3 tag];
  if (self->_selectedIndex != v4)
  {
    v5 = v4;
    [(FilterCategoriesView *)self setSelectedIndex:v4];
    [(RefineSearchSession *)self->_refineSearchSession updateWithSelection:v5];
    v6 = +[MKMapService sharedService];
    [v6 captureUserAction:2007 onTarget:619 eventValue:0];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained filterView:self indexSelected:v5];
  }
}

- (void)setSubCategories:(id)a3 selectedIndex:(unint64_t)a4
{
  v6 = a3;
  if ([v6 count] > a4)
  {
    [(FilterCategoriesView *)self setSubCategories:v6];
    [(FilterCategoriesView *)self setSelectedIndex:a4];
  }
}

- (void)setSubCategories:(id)a3
{
  v5 = a3;
  subCategories = self->_subCategories;
  if (subCategories != v5 && ([(NSArray *)subCategories isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_subCategories, a3);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100901318;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [UIView performWithoutAnimation:v7];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = FilterCategoriesView;
  [(FilterCategoriesView *)&v12 layoutSubviews];
  [(FilterCategoriesView *)self bounds];
  [(UIVisualEffectView *)self->_blurView setFrame:?];
  [(FilterCategoriesView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(FilterCategoriesView *)self safeAreaInsets];
  [(UIScrollView *)self->_scrollView setFrame:v4, v6, v8, v10 - v11];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = FilterCategoriesView;
  [(FilterCategoriesView *)&v3 safeAreaInsetsDidChange];
  [(FilterCategoriesView *)self invalidateIntrinsicContentSize];
  [(FilterCategoriesView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  [(FilterCategoriesView *)self safeAreaInsets];
  v3 = v2 + 49.0;
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = a3.width;
  [(FilterCategoriesView *)self intrinsicContentSize:a3.width];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (FilterCategoriesView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = FilterCategoriesView;
  v3 = [(FilterCategoriesView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FilterCategoriesView *)v3 setAccessibilityIdentifier:@"FilterCategoriesView"];
    [(FilterCategoriesView *)v4 _setHostsLayoutEngine:1];
    LODWORD(v5) = 1148846080;
    [(FilterCategoriesView *)v4 setContentCompressionResistancePriority:1 forAxis:v5];
    v6 = [MapsTheme visualEffectViewAllowingBlur:1];
    blurView = v4->_blurView;
    v4->_blurView = v6;

    [(FilterCategoriesView *)v4 addSubview:v4->_blurView];
    v8 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    scrollView = v4->_scrollView;
    v4->_scrollView = v8;

    [(UIScrollView *)v4->_scrollView setAccessibilityIdentifier:@"FilterCategoriesScrollView"];
    [(UIScrollView *)v4->_scrollView setDelegate:v4];
    [(UIScrollView *)v4->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setShowsVerticalScrollIndicator:0];
    [(FilterCategoriesView *)v4 addSubview:v4->_scrollView];
    [(UIScrollView *)v4->_scrollView _mapkit_addPointerInteractionWithDelegate:v4];
    v10 = [(FilterCategoriesView *)v4 _maps_addHairlineAtTopWithMargin:0.0];
    v4->_lastButtonTrailingPadding = 16.0;
  }

  return v4;
}

- (void)updateTheme
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_subCategoriesViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(FilterCategoriesView *)self setBackgroundAndTitleColorToButton:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end
@interface TransitDirectionsListView
- (BOOL)isActiveTransitDirectionsListItem:(id)a3;
- (TransitDirectionsListView)initWithFrame:(CGRect)a3;
- (TransitDirectionsListViewDataSource)dataSource;
- (TransitDirectionsListViewDelegate)listDelegate;
- (id)_allStepViewsForSection:(int64_t)a3;
- (id)_allStepViewsInSectionForStepView:(id)a3;
- (id)_constraintsForBackgroundView:(id)a3 foregroundViews:(id)a4;
- (id)_indexPathForStepView:(id)a3;
- (id)_requestStepViewForIndexPath:(id)a3;
- (id)_requestStepViewsForSectionAtIndex:(int64_t)a3;
- (id)dequeueStepViewForItem:(id)a3;
- (id)stepViewForIndexPath:(id)a3;
- (id)stepViewForItem:(id)a3;
- (void)_addHighlightForStepView:(id)a3;
- (void)_clearHighlight;
- (void)_clearHighlightForStepView:(id)a3;
- (void)_refreshSeparatorsAroundActiveStepView:(id)a3;
- (void)_requestSeparatorForStepView:(id)a3 atIndexPath:(id)a4;
- (void)_setActiveStepView:(id)a3 withIdentifier:(id)a4;
- (void)_updateVisibleAdvisories;
- (void)clearActiveTransitListItem;
- (void)didMoveToWindow;
- (void)reloadData;
- (void)reloadSectionAtIndex:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)reloadSeparators;
- (void)setActiveTransitDirectionsListItem:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setStepBackgroundAlpha:(double)a3;
- (void)stepViewHighlighted:(id)a3;
- (void)stepViewSelected:(id)a3;
@end

@implementation TransitDirectionsListView

- (TransitDirectionsListViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (TransitDirectionsListViewDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

- (id)_constraintsForBackgroundView:(id)a3 foregroundViews:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [v7 firstObject];
    v9 = [v7 lastObject];
    v10 = [(UIStackView *)self->_stackView arrangedSubviews];
    v11 = [v10 indexOfObject:v9];

    v12 = v11 + 1;
    v13 = objc_alloc_init(NSMutableArray);
    v14 = [v6 topAnchor];
    v29 = v8;
    v15 = [v8 topAnchor];
    LODWORD(v16) = 1148846080;
    v17 = [v14 constraintEqualToAnchor:v15 constant:0.0 priority:v16];
    [v13 addObject:v17];

    v18 = [(UIStackView *)self->_stackView arrangedSubviews];
    v19 = [v18 count];

    if (v12 >= v19)
    {
      v21 = [v6 bottomAnchor];
      v22 = [v9 bottomAnchor];
      LODWORD(v27) = 1148846080;
      v23 = [v21 constraintEqualToAnchor:v22 constant:0.0 priority:v27];
      [v13 addObject:v23];
    }

    else
    {
      v20 = [(UIStackView *)self->_stackView arrangedSubviews];
      v21 = [v20 objectAtIndexedSubscript:v12];

      v22 = [v6 bottomAnchor];
      v23 = [v21 topAnchor];
      LODWORD(v24) = 1148846080;
      v25 = [v22 constraintEqualToAnchor:v23 constant:0.0 priority:v24];
      [v13 addObject:v25];
    }

    v26 = [v13 copy];
  }

  else
  {
    v26 = &__NSArray0__struct;
  }

  return v26;
}

- (id)_allStepViewsForSection:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(NSMapTable *)self->_viewsByIndexPath keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 section] == a3)
          {
            v13 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:v12];
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100877054;
    v15[3] = &unk_10162C608;
    v15[4] = self;
    v3 = [v6 sortedArrayUsingComparator:v15];
  }

  return v3;
}

- (id)_allStepViewsInSectionForStepView:(id)a3
{
  v4 = [(TransitDirectionsListView *)self _indexPathForStepView:a3];
  v5 = v4;
  if (v4)
  {
    v6 = -[TransitDirectionsListView _allStepViewsForSection:](self, "_allStepViewsForSection:", [v4 section]);
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)_indexPathForStepView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSMapTable *)self->_viewsByIndexPath keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:v10];

          if (v11 == v4)
          {
            v12 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_updateVisibleAdvisories
{
  v3 = [(TransitDirectionsListView *)self allStepViews];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100877658;
  v40[3] = &unk_10162C5E0;
  v41 = &stru_10162C5B8;
  v4 = sub_1000282CC(v3, v40);

  if ([v4 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          v11 = sub_100877698(v6, v10);
          if (v11)
          {
            v12 = [(NSMutableSet *)self->_visibleAdvisories count];
            [(TransitDirectionsListView *)self bounds];
            v14 = v13;
            v16 = v15;
            v18 = v17;
            v20 = v19;
            [(TransitDirectionsStepView *)v10 frame];
            v48.origin.x = v21;
            v48.origin.y = v22;
            v48.size.width = v23;
            v48.size.height = v24;
            v47.origin.x = v14;
            v47.origin.y = v16;
            v47.size.width = v18;
            v47.size.height = v20;
            v25 = CGRectIntersectsRect(v47, v48);
            visibleAdvisories = self->_visibleAdvisories;
            if (v25)
            {
              [(NSMutableSet *)visibleAdvisories addObject:v11];
              if (v12 != [(NSMutableSet *)self->_visibleAdvisories count])
              {
                v27 = [(TransitDirectionsListView *)self listDelegate];
                [v27 transitDirectionsListView:self didDisplayAdvisory:v11];
              }
            }

            else
            {
              [(NSMutableSet *)visibleAdvisories removeObject:v11];
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v6 = [v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
        v7 = v6;
      }

      while (v6);
    }

    v28 = sub_10087773C();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v29 = self;
    if (!v29)
    {
      v34 = @"<nil>";
      goto LABEL_23;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(TransitDirectionsListView *)v29 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

        goto LABEL_21;
      }
    }

    v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
LABEL_21:

LABEL_23:
    v35 = [(NSMutableSet *)v29->_visibleAdvisories count];
    *buf = 138543618;
    v43 = v34;
    v44 = 2048;
    v45 = v35;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "[%{public}@] Updated visible advisories: %lu", buf, 0x16u);

LABEL_24:
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsListView;
  [(TransitDirectionsListView *)&v5 didMoveToWindow];
  v3 = objc_alloc_init(NSMutableSet);
  visibleAdvisories = self->_visibleAdvisories;
  self->_visibleAdvisories = v3;

  [(TransitDirectionsListView *)self _updateVisibleAdvisories];
}

- (void)_clearHighlight
{
  if (self->_highlightBackgroundConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    highlightBackgroundConstraints = self->_highlightBackgroundConstraints;
    self->_highlightBackgroundConstraints = 0;
  }

  highlightedIdentifier = self->_highlightedIdentifier;
  self->_highlightedIdentifier = 0;

  highlightBackgroundView = self->_highlightBackgroundView;

  [(UIView *)highlightBackgroundView setHidden:1];
}

- (void)_clearHighlightForStepView:(id)a3
{
  if (a3 | self->_highlightedIdentifier)
  {
    v4 = [a3 reuseIdentifier];
    if ([(NSString *)self->_highlightedIdentifier isEqualToString:?])
    {
      [(TransitDirectionsListView *)self _clearHighlight];
    }
  }
}

- (void)_addHighlightForStepView:(id)a3
{
  v14 = a3;
  v4 = [v14 reuseIdentifier];
  v5 = self->_highlightedIdentifier;
  v6 = v4;
  if (v6 | v5)
  {
    v7 = [v5 isEqual:v6];

    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        objc_storeStrong(&self->_highlightedIdentifier, v4);
        if (self->_highlightBackgroundConstraints)
        {
          [NSLayoutConstraint deactivateConstraints:?];
          highlightBackgroundConstraints = self->_highlightBackgroundConstraints;
          self->_highlightBackgroundConstraints = 0;
        }

        v9 = v14;
        if (v14)
        {
          highlightBackgroundView = self->_highlightBackgroundView;
          v11 = [(TransitDirectionsListView *)self _allStepViewsInSectionForStepView:v14];
          v12 = [(TransitDirectionsListView *)self _constraintsForBackgroundView:highlightBackgroundView foregroundViews:v11];
          v13 = self->_highlightBackgroundConstraints;
          self->_highlightBackgroundConstraints = v12;

          [NSLayoutConstraint activateConstraints:self->_highlightBackgroundConstraints];
          [(TransitDirectionsListView *)self layoutIfNeeded];
          v9 = v14;
        }

        [(UIView *)self->_highlightBackgroundView setHidden:v9 == 0];
      }
    }
  }
}

- (void)stepViewHighlighted:(id)a3
{
  v7 = a3;
  v4 = [(TransitDirectionsListView *)self listDelegate];
  v5 = [v7 transitListItem];
  v6 = [v4 transitDirectionsListView:self canSelectItem:v5];

  if (v6)
  {
    [(TransitDirectionsListView *)self _addHighlightForStepView:v7];
  }
}

- (void)stepViewSelected:(id)a3
{
  v4 = a3;
  [(TransitDirectionsListView *)self _clearHighlightForStepView:v4];
  v5 = [(TransitDirectionsListView *)self listDelegate];
  v6 = [v4 transitListItem];
  v7 = [v5 transitDirectionsListView:self canSelectItem:v6];

  if (v7)
  {
    v8 = sub_10087773C();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      v16 = [(TransitDirectionsListView *)self listDelegate];
      v17 = [v4 transitListItem];
      [v16 transitDirectionsListView:self didSelectItem:v17];

      goto LABEL_13;
    }

    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_11;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsListView *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_9;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_9:

LABEL_11:
    v15 = [v4 transitListItem];
    *buf = 138543619;
    v19 = v14;
    v20 = 2113;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] didSelectItem: %{private}@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_refreshSeparatorsAroundActiveStepView:(id)a3
{
  if (a3)
  {
    v25 = [(TransitDirectionsListView *)self _allStepViewsInSectionForStepView:?];
    v4 = [[NSMutableSet alloc] initWithCapacity:2];
    v5 = [v25 firstObject];
    v6 = [(UIStackView *)self->_stackView arrangedSubviews];
    v7 = [v6 indexOfObject:v5];

    if (v7)
    {
      v8 = [(UIStackView *)self->_stackView arrangedSubviews];
      v9 = [v8 objectAtIndexedSubscript:v7 - 1];

      v10 = [v9 separatorView];
      [v10 setHidden:1];

      [(UIView *)self->_activeItemBackgroundView alpha];
      v12 = 1.0 - v11;
      v13 = [v9 separatorView];
      [v13 setAlpha:v12];

      v14 = [v9 reuseIdentifier];
      [v4 addObject:v14];
    }

    v15 = [v25 lastObject];
    v16 = [(UIStackView *)self->_stackView arrangedSubviews];
    v17 = [v16 lastObject];

    if (v15 != v17)
    {
      v18 = [v15 separatorView];
      [v18 setHidden:0];

      [(UIView *)self->_activeItemBackgroundView alpha];
      v20 = 1.0 - v19;
      v21 = [v15 separatorView];
      [v21 setAlpha:v20];

      v22 = [v15 reuseIdentifier];
      [v4 addObject:v22];
    }

    v23 = [v4 copy];
    identifiersForOverriddenSeparatorViews = self->_identifiersForOverriddenSeparatorViews;
    self->_identifiersForOverriddenSeparatorViews = v23;
  }
}

- (void)clearActiveTransitListItem
{
  if (self->_activeItemIdentifier)
  {
    v3 = [(NSMapTable *)self->_viewsByIdentifier objectForKey:?];
    if (v3)
    {
      v4 = v3;
      identifiersForOverriddenSeparatorViews = self->_identifiersForOverriddenSeparatorViews;
      self->_identifiersForOverriddenSeparatorViews = 0;

      v6 = [(TransitDirectionsListView *)self _allStepViewsInSectionForStepView:v4];
      v7 = [v6 firstObject];
      v8 = [(UIStackView *)self->_stackView arrangedSubviews];
      v9 = [v8 indexOfObject:v7];

      if (v9)
      {
        v10 = [(UIStackView *)self->_stackView arrangedSubviews];
        v11 = [v10 objectAtIndexedSubscript:v9 - 1];

        v12 = [(TransitDirectionsListView *)self _indexPathForStepView:v11];
        [(TransitDirectionsListView *)self _requestSeparatorForStepView:v11 atIndexPath:v12];
      }

      v13 = [v6 lastObject];
      v14 = [(TransitDirectionsListView *)self _indexPathForStepView:v13];
      [(TransitDirectionsListView *)self _requestSeparatorForStepView:v13 atIndexPath:v14];
    }
  }

  if (self->_activeItemBackgroundConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    activeItemBackgroundConstraints = self->_activeItemBackgroundConstraints;
    self->_activeItemBackgroundConstraints = 0;
  }

  activeItemIdentifier = self->_activeItemIdentifier;
  self->_activeItemIdentifier = 0;

  activeItemBackgroundView = self->_activeItemBackgroundView;

  [(UIView *)activeItemBackgroundView setHidden:1];
}

- (void)_setActiveStepView:(id)a3 withIdentifier:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(TransitDirectionsListView *)self clearActiveTransitListItem];
  objc_storeStrong(&self->_activeItemIdentifier, a4);
  if (self->_activeItemBackgroundConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    activeItemBackgroundConstraints = self->_activeItemBackgroundConstraints;
    self->_activeItemBackgroundConstraints = 0;

    identifiersForOverriddenSeparatorViews = self->_identifiersForOverriddenSeparatorViews;
    self->_identifiersForOverriddenSeparatorViews = 0;
  }

  v9 = v13;
  if (v13)
  {
    v10 = [(TransitDirectionsListView *)self _allStepViewsInSectionForStepView:v13];
    [(TransitDirectionsListView *)self _refreshSeparatorsAroundActiveStepView:v13];
    v11 = [(TransitDirectionsListView *)self _constraintsForBackgroundView:self->_activeItemBackgroundView foregroundViews:v10];
    v12 = self->_activeItemBackgroundConstraints;
    self->_activeItemBackgroundConstraints = v11;

    [NSLayoutConstraint activateConstraints:self->_activeItemBackgroundConstraints];
    [(TransitDirectionsListView *)self layoutIfNeeded];

    v9 = v13;
  }

  [(UIView *)self->_activeItemBackgroundView setHidden:v9 == 0];
}

- (void)setActiveTransitDirectionsListItem:(id)a3
{
  v4 = [TransitDirectionsStepView reuseIdentifierForItem:a3];
  v5 = [(NSMapTable *)self->_viewsByIdentifier objectForKey:v4];
  activeItemIdentifier = self->_activeItemIdentifier;
  v7 = v4;
  v8 = activeItemIdentifier;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = sub_10087773C();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
LABEL_10:

        [(TransitDirectionsListView *)self _setActiveStepView:v5 withIdentifier:v7];
        goto LABEL_11;
      }

      v12 = self;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      if (objc_opt_respondsToSelector())
      {
        v15 = [(TransitDirectionsListView *)v12 performSelector:"accessibilityIdentifier"];
        v16 = v15;
        if (v15 && ![v15 isEqualToString:v14])
        {
          v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

          goto LABEL_9;
        }
      }

      v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_9:

      *buf = 138543874;
      v19 = v17;
      v20 = 2114;
      v21 = v5;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Set active step view: %{public}@ / %{public}@", buf, 0x20u);

      goto LABEL_10;
    }
  }

LABEL_11:
}

- (BOOL)isActiveTransitDirectionsListItem:(id)a3
{
  v4 = [TransitDirectionsStepView reuseIdentifierForItem:a3];
  v5 = v4 && [(NSString *)self->_activeItemIdentifier isEqualToString:v4];

  return v5;
}

- (void)setStepBackgroundAlpha:(double)a3
{
  self->_stepBackgroundAlpha = a3;
  [(UIView *)self->_activeItemBackgroundView setAlpha:?];
  [(UIView *)self->_highlightBackgroundView setAlpha:a3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_identifiersForOverriddenSeparatorViews;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1.0 - a3;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(NSMapTable *)self->_viewsByIdentifier objectForKey:*(*(&v13 + 1) + 8 * v10), v13];
        v12 = [v11 separatorView];
        [v12 setAlpha:v9];

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  v7 = v5;
  v8 = footerView;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      [(UIView *)self->_footerView removeFromSuperview];
      objc_storeStrong(&self->_footerView, a3);
      v11 = sub_10087773C();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        if (!v12)
        {
LABEL_16:

          [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(TransitDirectionsListView *)self addSubview:v7];
          [(NSLayoutConstraint *)self->_stackViewToBottomConstraint setActive:0];
          LODWORD(v26) = 1148846080;
          v27 = [v7 _maps_constraintsEqualToEdgesOfView:self priority:v26];
          v28 = [v7 topAnchor];
          v29 = [(UIStackView *)self->_stackView bottomAnchor];
          v30 = [v28 constraintEqualToAnchor:v29];
          v31 = [v27 leadingConstraint];
          v32 = [v27 bottomConstraint];
          v33 = [v27 trailingConstraint];
          v34 = [MapsEdgeConstraints edgeConstraintsWithTop:v30 leading:v31 bottom:v32 trailing:v33];

          v35 = [v34 bottomConstraint];
          footerViewToBottomConstraint = self->_footerViewToBottomConstraint;
          self->_footerViewToBottomConstraint = v35;

          v37 = [v34 allConstraints];
          [NSLayoutConstraint activateConstraints:v37];

LABEL_25:
          [(TransitDirectionsListView *)self invalidateIntrinsicContentSize];
          goto LABEL_26;
        }

        v13 = self;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [(TransitDirectionsListView *)v13 performSelector:"accessibilityIdentifier"];
          v17 = v16;
          if (v16 && ![v16 isEqualToString:v15])
          {
            v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

LABEL_10:
            v19 = v18;
            v20 = v7;
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            if (objc_opt_respondsToSelector())
            {
              v23 = [v20 performSelector:"accessibilityIdentifier"];
              v24 = v23;
              if (v23 && ![v23 isEqualToString:v22])
              {
                v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

                goto LABEL_15;
              }
            }

            v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_15:

            *buf = 138543618;
            v46 = v19;
            v47 = 2114;
            v48 = v25;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Adding footer view: %{public}@", buf, 0x16u);

            goto LABEL_16;
          }
        }

        v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
        goto LABEL_10;
      }

      if (!v12)
      {
LABEL_24:

        v44 = self->_footerViewToBottomConstraint;
        self->_footerViewToBottomConstraint = 0;

        [(NSLayoutConstraint *)self->_stackViewToBottomConstraint setActive:1];
        goto LABEL_25;
      }

      v38 = self;
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      if (objc_opt_respondsToSelector())
      {
        v41 = [(TransitDirectionsListView *)v38 performSelector:"accessibilityIdentifier"];
        v42 = v41;
        if (v41 && ![v41 isEqualToString:v40])
        {
          v43 = [NSString stringWithFormat:@"%@<%p, %@>", v40, v38, v42];

          goto LABEL_23;
        }
      }

      v43 = [NSString stringWithFormat:@"%@<%p>", v40, v38];
LABEL_23:

      *buf = 138543362;
      v46 = v43;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Clearing footer view", buf, 0xCu);

      goto LABEL_24;
    }
  }

LABEL_26:
}

- (void)reloadSectionAtIndex:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v58 = a4;
  v7 = a5;
  v8 = sub_10087773C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = self;
    if (!v9)
    {
      v15 = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = v7;
      v13 = [(TransitDirectionsListView *)v9 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v11])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v14];

        v7 = v12;
        goto LABEL_8;
      }

      v7 = v12;
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v71 = v15;
    v72 = 2048;
    v73 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] reloadSectionAtIndex: %lu", buf, 0x16u);
  }

  v60 = [(TransitDirectionsListView *)self _requestStepViewsForSectionAtIndex:a3];
  v61 = sub_100021DB0(v60, &stru_10162C550);
  v16 = [(NSMapTable *)self->_viewsByIndexPath keyEnumerator];
  v17 = [v16 allObjects];
  v18 = [v17 sortedArrayUsingSelector:"compare:"];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (!v20)
  {

    goto LABEL_33;
  }

  v21 = v20;
  v59 = v7;
  range_8 = v19;
  v64 = 0;
  v22 = *v67;
  range = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v67 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v66 + 1) + 8 * i);
      if ([v24 section] == a3)
      {
        v25 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:v24];
        if (![v24 item])
        {
          v26 = [(UIStackView *)self->_stackView arrangedSubviews];
          range = [v26 indexOfObject:v25];
        }

        ++v64;
        [(NSMapTable *)self->_viewsByIndexPath removeObjectForKey:v24];
        viewsByIdentifier = self->_viewsByIdentifier;
        v28 = [v25 reuseIdentifier];
        [(NSMapTable *)viewsByIdentifier removeObjectForKey:v28];

        [(NSMapTable *)self->_indexPathsByView removeObjectForKey:v24];
        v19 = range_8;
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v66 objects:v76 count:16];
  }

  while (v21);

  v7 = v59;
  if (range == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_33:
    v41 = sub_10087773C();
    v31 = v60;
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
LABEL_54:

      v7[2](v7, 0);
      v40 = v61;
      goto LABEL_55;
    }

    v42 = self;
    if (!v42)
    {
      v48 = @"<nil>";
      goto LABEL_53;
    }

    v43 = v7;
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    if (objc_opt_respondsToSelector())
    {
      v46 = [(TransitDirectionsListView *)v42 performSelector:"accessibilityIdentifier"];
      v47 = v46;
      if (v46 && ![v46 isEqualToString:v45])
      {
        v48 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v42, v47];

        goto LABEL_40;
      }
    }

    v48 = [NSString stringWithFormat:@"%@<%p>", v45, v42];
LABEL_40:

    v7 = v43;
LABEL_53:

    *buf = 138543362;
    v71 = v48;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "[%{public}@] - index of first item not found, bailing", buf, 0xCu);

    goto LABEL_54;
  }

  v29 = [(UIStackView *)self->_stackView arrangedSubviews];
  v30 = [v29 mutableCopy];

  v31 = v60;
  if (&v64[range] <= [v30 count])
  {
    [v30 removeObjectsInRange:{range, v64}];
    v40 = v61;
    v49 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", range, [v61 count]);
    [v30 insertObjects:v61 atIndexes:v49];

    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1008793DC;
    v65[3] = &unk_10162C578;
    v65[4] = self;
    [v60 enumerateObjectsUsingBlock:v65];
    if (v64 == [v61 count])
    {
LABEL_50:
      [(UIStackView *)self->_stackView _maps_setArrangedSubviews:v30 animated:v58 completion:v59];
      [(TransitDirectionsListView *)self invalidateIntrinsicContentSize];
      v19 = range_8;
      goto LABEL_51;
    }

    v50 = sub_10087773C();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
LABEL_49:

      goto LABEL_50;
    }

    v51 = self;
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    if (objc_opt_respondsToSelector())
    {
      v54 = [(TransitDirectionsListView *)v51 performSelector:"accessibilityIdentifier"];
      v55 = v54;
      if (v54 && ![v54 isEqualToString:v53])
      {
        v56 = [NSString stringWithFormat:@"%@<%p, %@>", v53, v51, v55];

        v40 = v61;
        goto LABEL_48;
      }

      v40 = v61;
    }

    v56 = [NSString stringWithFormat:@"%@<%p>", v53, v51];
LABEL_48:

    v57 = [v40 count];
    *buf = 138543874;
    v71 = v56;
    v72 = 2048;
    v73 = v64;
    v74 = 2048;
    v75 = v57;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "[%{public}@] - section went from %lu to %lu views", buf, 0x20u);

    goto LABEL_49;
  }

  v32 = sub_10087773C();
  v19 = range_8;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
  {
    v33 = self;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    if (objc_opt_respondsToSelector())
    {
      v36 = [(TransitDirectionsListView *)v33 performSelector:"accessibilityIdentifier"];
      v37 = v36;
      if (v36 && ![v36 isEqualToString:v35])
      {
        v38 = [NSString stringWithFormat:@"%@<%p, %@>", v35, v33, v37];

        goto LABEL_30;
      }
    }

    v38 = [NSString stringWithFormat:@"%@<%p>", v35, v33];
LABEL_30:

    v77.location = range;
    v77.length = v64;
    v39 = NSStringFromRange(v77);
    *buf = 138543618;
    v71 = v38;
    v72 = 2114;
    v73 = v39;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "[%{public}@] invalid replacementRange (%{public}@), bailing", buf, 0x16u);
  }

  v59[2](v59, 0);
  v40 = v61;
LABEL_51:

LABEL_55:
}

- (void)_requestSeparatorForStepView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *&NSDirectionalEdgeInsetsZero.bottom;
  v22 = *&NSDirectionalEdgeInsetsZero.top;
  v23 = v8;
  identifiersForOverriddenSeparatorViews = self->_identifiersForOverriddenSeparatorViews;
  v10 = [v6 reuseIdentifier];
  LOBYTE(identifiersForOverriddenSeparatorViews) = [(NSSet *)identifiersForOverriddenSeparatorViews containsObject:v10];

  if (identifiersForOverriddenSeparatorViews)
  {
    v11 = [v6 separatorView];
    [v11 setHidden:1];

    v12 = [v6 separatorView];
    [v12 setAlpha:1.0];
LABEL_5:

    goto LABEL_6;
  }

  v13 = [(TransitDirectionsListView *)self dataSource];
  v14 = [v6 transitListItem];
  v15 = [v13 transitDirectionsListView:self shouldShowSeparatorForItem:v14 atIndexPath:v7 insets:&v22];

  v16 = v15 ^ 1;
  v17 = [v6 separatorView];
  [v17 setHidden:v16];

  v18 = [v6 separatorView];
  [v18 setAlpha:1.0];

  if ((v16 & 1) == 0)
  {
    v19 = *(&v22 + 1);
    v20 = [v6 separatorView];
    [v20 setLeadingMargin:v19];

    v21 = *(&v23 + 1);
    v12 = [v6 separatorView];
    [v12 setTrailingMargin:v21];
    goto LABEL_5;
  }

LABEL_6:
}

- (id)_requestStepViewForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TransitDirectionsListView *)self dataSource];
  v6 = [v5 transitDirectionsListView:self stepViewForItemAtIndexPath:v4];

  [(TransitDirectionsListView *)self _requestSeparatorForStepView:v6 atIndexPath:v4];
  v7 = [_TransitDirectionsListViewInfo infoWithStepView:v6 atIndexPath:v4];

  return v7;
}

- (id)_requestStepViewsForSectionAtIndex:(int64_t)a3
{
  v5 = [(TransitDirectionsListView *)self dataSource];
  v6 = [v5 transitDirectionsListView:self numberOfItemsInSection:a3];

  v7 = [[NSMutableArray alloc] initWithCapacity:v6];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [NSIndexPath indexPathForItem:i inSection:a3];
      v10 = [(TransitDirectionsListView *)self _requestStepViewForIndexPath:v9];
      [v7 addObject:v10];
    }
  }

  return v7;
}

- (void)reloadSeparators
{
  v3 = [(TransitDirectionsListView *)self allStepViews];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100879920;
  v5[3] = &unk_1016569D8;
  v5[4] = self;
  [v3 enumerateObjectsUsingBlock:v5];

  v4 = [(NSMapTable *)self->_viewsByIdentifier objectForKey:self->_activeItemIdentifier];
  [(TransitDirectionsListView *)self _refreshSeparatorsAroundActiveStepView:v4];
}

- (void)reloadData
{
  v2 = self;
  v3 = [(TransitDirectionsListView *)self dataSource];

  v4 = sub_10087773C();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_117:

      viewsByIndexPath = v2->_viewsByIndexPath;
      v2->_viewsByIndexPath = 0;

      viewsByIdentifier = v2->_viewsByIdentifier;
      v2->_viewsByIdentifier = 0;

      indexPathsByView = v2->_indexPathsByView;
      v2->_indexPathsByView = 0;

      [(TransitDirectionsListView *)v2 clearActiveTransitListItem];
      [(UIStackView *)v2->_stackView _mapkit_setArrangedSubviews:&__NSArray0__struct];
      [(TransitDirectionsListView *)v2 invalidateIntrinsicContentSize];
      return;
    }

    v16 = v2;
    if (!v16)
    {
      v21 = @"<nil>";
      goto LABEL_116;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(TransitDirectionsListView *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_20;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_20:

LABEL_116:
    *buf = 138543362;
    v129 = v21;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Clearing everything, no data source", buf, 0xCu);

    goto LABEL_117;
  }

  v6 = os_signpost_id_generate(v4);
  v7 = v5;
  v8 = v7;
  v116 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "reloadData", "", buf, 2u);
  }

  v115 = v8;

  v9 = sub_10087773C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = v2;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_22;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(TransitDirectionsListView *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_12;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_12:

LABEL_22:
    *buf = 138543362;
    v129 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] reloadData start", buf, 0xCu);
  }

  spid = v6;

  v22 = objc_alloc_init(NSMutableArray);
  v23 = [(TransitDirectionsListView *)v2 dataSource];
  v24 = [v23 numberOfSectionsInTransitDirectionsListView:v2];

  if (v24 >= 1)
  {
    for (i = 0; i != v24; ++i)
    {
      v26 = [(TransitDirectionsListView *)v2 _requestStepViewsForSectionAtIndex:i];
      [v22 addObjectsFromArray:v26];
    }
  }

  v118 = +[NSMapTable strongToWeakObjectsMapTable];
  v27 = +[NSMapTable strongToWeakObjectsMapTable];
  v117 = +[NSMapTable weakToStrongObjectsMapTable];
  v119 = objc_alloc_init(NSMutableArray);
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v22;
  v28 = [obj countByEnumeratingWithState:&v124 objects:v136 count:16];
  v121 = v27;
  if (v28)
  {
    v29 = v28;
    v30 = *v125;
    v120 = v2;
    do
    {
      v31 = 0;
      do
      {
        if (*v125 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v124 + 1) + 8 * v31);
        v33 = [v32 stepView];
        v34 = [v33 reuseIdentifier];

        if (!v34)
        {
          v36 = sub_10087773C();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_64;
          }

          v43 = v2;
          if (v2)
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_47;
            }

            v46 = [(TransitDirectionsListView *)v43 performSelector:"accessibilityIdentifier"];
            v47 = v46;
            if (v46 && ![v46 isEqualToString:v45])
            {
              v48 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v43, v47];
            }

            else
            {

LABEL_47:
              v48 = [NSString stringWithFormat:@"%@<%p>", v45, v43];
            }

            v27 = v121;
          }

          else
          {
            v48 = @"<nil>";
          }

          v61 = [v32 stepView];
          v62 = [v61 transitListItem];
          *buf = 138543618;
          v129 = v48;
          v130 = 2112;
          v131 = v62;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "[%{public}@] - skipping info, no identifier for item: %@", buf, 0x16u);

          v2 = v120;
          goto LABEL_64;
        }

        v35 = [v27 objectForKey:v34];

        if (!v35)
        {
          v49 = [v32 stepView];
          [v119 addObject:v49];

          v50 = [v32 stepView];
          [v27 setObject:v50 forKey:v34];

          v51 = [v32 stepView];
          v52 = [v32 indexPath];
          [v118 setObject:v51 forKey:v52];

          v53 = [v32 indexPath];
          v54 = [v32 stepView];
          [v117 setObject:v53 forKey:v54];

          v36 = sub_10087773C();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          v55 = v2;
          if (v2)
          {
            v56 = objc_opt_class();
            v57 = NSStringFromClass(v56);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_55;
            }

            v58 = [(TransitDirectionsListView *)v55 performSelector:"accessibilityIdentifier"];
            v59 = v58;
            if (v58 && ![v58 isEqualToString:v57])
            {
              v60 = [NSString stringWithFormat:@"%@<%p, %@>", v57, v55, v59];
            }

            else
            {

LABEL_55:
              v60 = [NSString stringWithFormat:@"%@<%p>", v57, v55];
            }
          }

          else
          {
            v60 = @"<nil>";
          }

          v63 = v60;
          v64 = [v32 indexPath];
          v65 = [v32 stepView];

          v66 = objc_opt_class();
          v67 = NSStringFromClass(v66);
          *buf = 138544130;
          v129 = v60;
          v130 = 2114;
          v131 = v64;
          v132 = 2112;
          v133 = v67;
          v134 = 2114;
          v135 = v34;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "[%{public}@] - added %{public}@: %@ : %{public}@", buf, 0x2Au);

          v2 = v120;
          goto LABEL_63;
        }

        v36 = sub_10087773C();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_64;
        }

        v37 = v2;
        if (!v2)
        {
          v42 = @"<nil>";
          goto LABEL_58;
        }

        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        if (objc_opt_respondsToSelector())
        {
          v40 = [(TransitDirectionsListView *)v37 performSelector:"accessibilityIdentifier"];
          v41 = v40;
          if (v40 && ![v40 isEqualToString:v39])
          {
            v42 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41, spid, v115];

            goto LABEL_40;
          }
        }

        v42 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
LABEL_40:

LABEL_58:
        *buf = 138543618;
        v129 = v42;
        v130 = 2112;
        v131 = v34;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "[%{public}@] - skipping info, duplicate item identifier encountered: %@", buf, 0x16u);

LABEL_63:
        v27 = v121;
LABEL_64:

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v68 = [obj countByEnumeratingWithState:&v124 objects:v136 count:16];
      v29 = v68;
    }

    while (v68);
  }

  objc_storeStrong(&v2->_viewsByIndexPath, v118);
  objc_storeStrong(&v2->_viewsByIdentifier, v27);
  objc_storeStrong(&v2->_indexPathsByView, v117);
  v69 = sub_10087773C();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    v70 = v2;
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    if (objc_opt_respondsToSelector())
    {
      v73 = [(TransitDirectionsListView *)v70 performSelector:"accessibilityIdentifier"];
      v74 = v73;
      if (v73 && ![v73 isEqualToString:v72])
      {
        v75 = [NSString stringWithFormat:@"%@<%p, %@>", v72, v70, v74, spid, v115];

        v27 = v121;
        goto LABEL_76;
      }

      v27 = v121;
    }

    v75 = [NSString stringWithFormat:@"%@<%p>", v72, v70];
LABEL_76:

    v76 = [v119 count];
    *buf = 138543618;
    v129 = v75;
    v130 = 2048;
    v131 = v76;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "[%{public}@] - setting %lu views", buf, 0x16u);
  }

  [(UIStackView *)v2->_stackView _maps_setArrangedSubviews:v119];
  if (!v2->_activeItemIdentifier)
  {
    v87 = sub_10087773C();
    if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
LABEL_94:

      [(TransitDirectionsListView *)v2 clearActiveTransitListItem];
      goto LABEL_104;
    }

    v88 = v2;
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    if (objc_opt_respondsToSelector())
    {
      v91 = [(TransitDirectionsListView *)v88 performSelector:"accessibilityIdentifier"];
      v92 = v91;
      if (v91 && ![v91 isEqualToString:v90])
      {
        v93 = [NSString stringWithFormat:@"%@<%p, %@>", v90, v88, v92];

        v27 = v121;
        goto LABEL_93;
      }

      v27 = v121;
    }

    v93 = [NSString stringWithFormat:@"%@<%p>", v90, v88];
LABEL_93:

    *buf = 138543362;
    v129 = v93;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "[%{public}@] - clearing active item", buf, 0xCu);

    goto LABEL_94;
  }

  v77 = [v27 objectForKey:?];
  v78 = sub_10087773C();
  v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG);
  if (!v77)
  {
    if (!v79)
    {
LABEL_102:

      v100 = [(TransitDirectionsListView *)v2 dataSource];
      v101 = [v100 activeItemForTransitDirectionsListView:v2];

      [(TransitDirectionsListView *)v2 setActiveTransitDirectionsListItem:v101];
      goto LABEL_103;
    }

    v94 = v2;
    v95 = objc_opt_class();
    v96 = NSStringFromClass(v95);
    if (objc_opt_respondsToSelector())
    {
      v97 = [(TransitDirectionsListView *)v94 performSelector:"accessibilityIdentifier"];
      v98 = v97;
      if (v97 && ![v97 isEqualToString:v96])
      {
        v99 = [NSString stringWithFormat:@"%@<%p, %@>", v96, v94, v98];

        goto LABEL_101;
      }
    }

    v99 = [NSString stringWithFormat:@"%@<%p>", v96, v94];
LABEL_101:

    *buf = 138543362;
    v129 = v99;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, "[%{public}@] - re-fetching identifier for active item", buf, 0xCu);

    v27 = v121;
    goto LABEL_102;
  }

  if (v79)
  {
    v80 = v2;
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    if (objc_opt_respondsToSelector())
    {
      v83 = [(TransitDirectionsListView *)v80 performSelector:"accessibilityIdentifier"];
      v84 = v83;
      if (v83 && ![v83 isEqualToString:v82])
      {
        v85 = [NSString stringWithFormat:@"%@<%p, %@>", v82, v80, v84];

        goto LABEL_85;
      }
    }

    v85 = [NSString stringWithFormat:@"%@<%p>", v82, v80];
LABEL_85:

    activeItemIdentifier = v2->_activeItemIdentifier;
    *buf = 138543618;
    v129 = v85;
    v130 = 2114;
    v131 = activeItemIdentifier;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, "[%{public}@] - marking existing step view as active: %{public}@", buf, 0x16u);

    v27 = v121;
  }

  [(TransitDirectionsListView *)v2 _setActiveStepView:v77 withIdentifier:v2->_activeItemIdentifier];
LABEL_103:

LABEL_104:
  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_10087AA58;
  v123[3] = &unk_101661B18;
  v123[4] = v2;
  [UIView performWithoutAnimation:v123];
  [(TransitDirectionsListView *)v2 invalidateIntrinsicContentSize];
  v102 = sub_10087773C();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
  {
    v103 = v2;
    v104 = objc_opt_class();
    v105 = NSStringFromClass(v104);
    if (objc_opt_respondsToSelector())
    {
      v106 = [(TransitDirectionsListView *)v103 performSelector:"accessibilityIdentifier"];
      v107 = v106;
      if (v106 && ![v106 isEqualToString:v105])
      {
        v108 = [NSString stringWithFormat:@"%@<%p, %@>", v105, v103, v107];

        goto LABEL_110;
      }
    }

    v108 = [NSString stringWithFormat:@"%@<%p>", v105, v103];
LABEL_110:

    *buf = 138543362;
    v129 = v108;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEBUG, "[%{public}@] reloadData end", buf, 0xCu);
  }

  v109 = v115;
  v110 = v109;
  if (v116 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v109))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v110, OS_SIGNPOST_INTERVAL_END, spid, "reloadData", "", buf, 2u);
  }
}

- (id)stepViewForItem:(id)a3
{
  v4 = [TransitDirectionsStepView reuseIdentifierForItem:a3];
  if (v4)
  {
    v5 = [(NSMapTable *)self->_viewsByIdentifier objectForKey:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stepViewForIndexPath:(id)a3
{
  v3 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)dequeueStepViewForItem:(id)a3
{
  v4 = a3;
  v5 = [TransitDirectionsStepView reuseIdentifierForItem:v4];
  v6 = [(NSMapTable *)self->_viewsByIdentifier objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    v8 = sub_10087773C();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_23:

      goto LABEL_27;
    }

    v9 = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsListView *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_8;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

    v15 = v14;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v4 type];
    if (v18 >= 0x12)
    {
      v19 = [NSString stringWithFormat:@"Unknown (%ld)", v18];
    }

    else
    {
      v19 = off_10162C648[v18];
    }

    *buf = 138544130;
    v36 = v15;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    v40 = v5;
    v41 = 2114;
    v42 = v19;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] Dequeued existing %{public}@ for %{public}@ of type %{public}@", buf, 0x2Au);

    goto LABEL_23;
  }

  v20 = [TransitDirectionsCell collectionCellClassForListItem:v4];
  if (objc_opt_respondsToSelector())
  {
    v21 = [(objc_class *)v20 stepViewClass];
  }

  else
  {
    v21 = TransitDirectionsStepView;
  }

  v7 = [[v21 alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v22 = sub_10087773C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(TransitDirectionsListView *)v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_19;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_19:

    v29 = v28;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v4 type];
    if (v32 >= 0x12)
    {
      v33 = [NSString stringWithFormat:@"Unknown (%ld)", v32];
    }

    else
    {
      v33 = off_10162C648[v32];
    }

    *buf = 138544130;
    v36 = v29;
    v37 = 2114;
    v38 = v31;
    v39 = 2114;
    v40 = v5;
    v41 = 2114;
    v42 = v33;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] Created new %{public}@ for %{public}@ of type %{public}@", buf, 0x2Au);
  }

  [v7 setSelectionDelegate:self];
LABEL_27:

  return v7;
}

- (TransitDirectionsListView)initWithFrame:(CGRect)a3
{
  v45.receiver = self;
  v45.super_class = TransitDirectionsListView;
  v3 = [(TransitDirectionsListView *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitDirectionsListView *)v3 setAccessibilityIdentifier:@"TransitDirectionsListView"];
    v5 = objc_alloc_init(NSMutableSet);
    visibleAdvisories = v4->_visibleAdvisories;
    v4->_visibleAdvisories = v5;

    v4->_stepBackgroundAlpha = 1.0;
    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    activeItemBackgroundView = v4->_activeItemBackgroundView;
    v4->_activeItemBackgroundView = v11;

    [(UIView *)v4->_activeItemBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[UIColor quaternarySystemFillColor];
    [(UIView *)v4->_activeItemBackgroundView setBackgroundColor:v13];

    [(UIView *)v4->_activeItemBackgroundView setHidden:1];
    [(TransitDirectionsListView *)v4 addSubview:v4->_activeItemBackgroundView];
    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    highlightBackgroundView = v4->_highlightBackgroundView;
    v4->_highlightBackgroundView = v14;

    [(UIView *)v4->_highlightBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[UIColor quaternarySystemFillColor];
    [(UIView *)v4->_highlightBackgroundView setBackgroundColor:v16];

    [(UIView *)v4->_highlightBackgroundView setHidden:1];
    [(TransitDirectionsListView *)v4 addSubview:v4->_highlightBackgroundView];
    v17 = [UIStackView alloc];
    [(TransitDirectionsListView *)v4 bounds];
    v18 = [v17 initWithFrame:?];
    stackView = v4->_stackView;
    v4->_stackView = v18;

    [(UIStackView *)v4->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_stackView setDistribution:0];
    [(UIStackView *)v4->_stackView setAlignment:0];
    [(UIStackView *)v4->_stackView setAxis:1];
    [(UIStackView *)v4->_stackView setSpacing:0.0];
    LODWORD(v20) = 1148846080;
    [(UIStackView *)v4->_stackView setContentHuggingPriority:1 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UIStackView *)v4->_stackView setContentCompressionResistancePriority:1 forAxis:v21];
    [(TransitDirectionsListView *)v4 addSubview:v4->_stackView];
    v22 = objc_alloc_init(NSMutableArray);
    v23 = [(UIStackView *)v4->_stackView widthAnchor];
    v24 = [(TransitDirectionsListView *)v4 frameLayoutGuide];
    v25 = [v24 widthAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v22 addObject:v26];

    v27 = [(UIView *)v4->_highlightBackgroundView leadingAnchor];
    v28 = [(TransitDirectionsListView *)v4 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v22 addObject:v29];

    v30 = [(UIView *)v4->_highlightBackgroundView trailingAnchor];
    v31 = [(TransitDirectionsListView *)v4 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v22 addObject:v32];

    v33 = [(UIView *)v4->_activeItemBackgroundView leadingAnchor];
    v34 = [(TransitDirectionsListView *)v4 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v22 addObject:v35];

    v36 = [(UIView *)v4->_activeItemBackgroundView trailingAnchor];
    v37 = [(TransitDirectionsListView *)v4 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v22 addObject:v38];

    LODWORD(v39) = 1148846080;
    v40 = [(UIStackView *)v4->_stackView _maps_constraintsEqualToEdgesOfView:v4 priority:v39];
    v41 = [v40 bottomConstraint];
    stackViewToBottomConstraint = v4->_stackViewToBottomConstraint;
    v4->_stackViewToBottomConstraint = v41;

    v43 = [v40 allConstraints];
    [v22 addObjectsFromArray:v43];

    [NSLayoutConstraint activateConstraints:v22];
    [(TransitDirectionsListView *)v4 _addScrollViewScrollObserver:v4];
  }

  return v4;
}

@end
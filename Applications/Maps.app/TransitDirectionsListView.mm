@interface TransitDirectionsListView
- (BOOL)isActiveTransitDirectionsListItem:(id)item;
- (TransitDirectionsListView)initWithFrame:(CGRect)frame;
- (TransitDirectionsListViewDataSource)dataSource;
- (TransitDirectionsListViewDelegate)listDelegate;
- (id)_allStepViewsForSection:(int64_t)section;
- (id)_allStepViewsInSectionForStepView:(id)view;
- (id)_constraintsForBackgroundView:(id)view foregroundViews:(id)views;
- (id)_indexPathForStepView:(id)view;
- (id)_requestStepViewForIndexPath:(id)path;
- (id)_requestStepViewsForSectionAtIndex:(int64_t)index;
- (id)dequeueStepViewForItem:(id)item;
- (id)stepViewForIndexPath:(id)path;
- (id)stepViewForItem:(id)item;
- (void)_addHighlightForStepView:(id)view;
- (void)_clearHighlight;
- (void)_clearHighlightForStepView:(id)view;
- (void)_refreshSeparatorsAroundActiveStepView:(id)view;
- (void)_requestSeparatorForStepView:(id)view atIndexPath:(id)path;
- (void)_setActiveStepView:(id)view withIdentifier:(id)identifier;
- (void)_updateVisibleAdvisories;
- (void)clearActiveTransitListItem;
- (void)didMoveToWindow;
- (void)reloadData;
- (void)reloadSectionAtIndex:(int64_t)index animated:(BOOL)animated completion:(id)completion;
- (void)reloadSeparators;
- (void)setActiveTransitDirectionsListItem:(id)item;
- (void)setFooterView:(id)view;
- (void)setStepBackgroundAlpha:(double)alpha;
- (void)stepViewHighlighted:(id)highlighted;
- (void)stepViewSelected:(id)selected;
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

- (id)_constraintsForBackgroundView:(id)view foregroundViews:(id)views
{
  viewCopy = view;
  viewsCopy = views;
  if ([viewsCopy count])
  {
    firstObject = [viewsCopy firstObject];
    lastObject = [viewsCopy lastObject];
    arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
    v11 = [arrangedSubviews indexOfObject:lastObject];

    v12 = v11 + 1;
    v13 = objc_alloc_init(NSMutableArray);
    topAnchor = [viewCopy topAnchor];
    v29 = firstObject;
    topAnchor2 = [firstObject topAnchor];
    LODWORD(v16) = 1148846080;
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0 priority:v16];
    [v13 addObject:v17];

    arrangedSubviews2 = [(UIStackView *)self->_stackView arrangedSubviews];
    v19 = [arrangedSubviews2 count];

    if (v12 >= v19)
    {
      bottomAnchor = [viewCopy bottomAnchor];
      bottomAnchor2 = [lastObject bottomAnchor];
      LODWORD(v27) = 1148846080;
      topAnchor3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v27];
      [v13 addObject:topAnchor3];
    }

    else
    {
      arrangedSubviews3 = [(UIStackView *)self->_stackView arrangedSubviews];
      bottomAnchor = [arrangedSubviews3 objectAtIndexedSubscript:v12];

      bottomAnchor2 = [viewCopy bottomAnchor];
      topAnchor3 = [bottomAnchor topAnchor];
      LODWORD(v24) = 1148846080;
      v25 = [bottomAnchor2 constraintEqualToAnchor:topAnchor3 constant:0.0 priority:v24];
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

- (id)_allStepViewsForSection:(int64_t)section
{
  if (section == 0x7FFFFFFFFFFFFFFFLL)
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
    keyEnumerator = [(NSMapTable *)self->_viewsByIndexPath keyEnumerator];
    v8 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 section] == section)
          {
            v13 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:v12];
            [v6 addObject:v13];
          }
        }

        v9 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_allStepViewsInSectionForStepView:(id)view
{
  v4 = [(TransitDirectionsListView *)self _indexPathForStepView:view];
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

- (id)_indexPathForStepView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    keyEnumerator = [(NSMapTable *)self->_viewsByIndexPath keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:v10];

          if (v11 == viewCopy)
          {
            v12 = v10;
            goto LABEL_12;
          }
        }

        v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  allStepViews = [(TransitDirectionsListView *)self allStepViews];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100877658;
  v40[3] = &unk_10162C5E0;
  v41 = &stru_10162C5B8;
  v4 = sub_1000282CC(allStepViews, v40);

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
                listDelegate = [(TransitDirectionsListView *)self listDelegate];
                [listDelegate transitDirectionsListView:self didDisplayAdvisory:v11];
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

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_23;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(TransitDirectionsListView *)selfCopy performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v31, selfCopy, v33];

        goto LABEL_21;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v31, selfCopy];
LABEL_21:

LABEL_23:
    v35 = [(NSMutableSet *)selfCopy->_visibleAdvisories count];
    *buf = 138543618;
    v43 = selfCopy;
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

- (void)_clearHighlightForStepView:(id)view
{
  if (view | self->_highlightedIdentifier)
  {
    reuseIdentifier = [view reuseIdentifier];
    if ([(NSString *)self->_highlightedIdentifier isEqualToString:?])
    {
      [(TransitDirectionsListView *)self _clearHighlight];
    }
  }
}

- (void)_addHighlightForStepView:(id)view
{
  viewCopy = view;
  reuseIdentifier = [viewCopy reuseIdentifier];
  v5 = self->_highlightedIdentifier;
  v6 = reuseIdentifier;
  if (v6 | v5)
  {
    v7 = [v5 isEqual:v6];

    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        objc_storeStrong(&self->_highlightedIdentifier, reuseIdentifier);
        if (self->_highlightBackgroundConstraints)
        {
          [NSLayoutConstraint deactivateConstraints:?];
          highlightBackgroundConstraints = self->_highlightBackgroundConstraints;
          self->_highlightBackgroundConstraints = 0;
        }

        v9 = viewCopy;
        if (viewCopy)
        {
          highlightBackgroundView = self->_highlightBackgroundView;
          v11 = [(TransitDirectionsListView *)self _allStepViewsInSectionForStepView:viewCopy];
          v12 = [(TransitDirectionsListView *)self _constraintsForBackgroundView:highlightBackgroundView foregroundViews:v11];
          v13 = self->_highlightBackgroundConstraints;
          self->_highlightBackgroundConstraints = v12;

          [NSLayoutConstraint activateConstraints:self->_highlightBackgroundConstraints];
          [(TransitDirectionsListView *)self layoutIfNeeded];
          v9 = viewCopy;
        }

        [(UIView *)self->_highlightBackgroundView setHidden:v9 == 0];
      }
    }
  }
}

- (void)stepViewHighlighted:(id)highlighted
{
  highlightedCopy = highlighted;
  listDelegate = [(TransitDirectionsListView *)self listDelegate];
  transitListItem = [highlightedCopy transitListItem];
  v6 = [listDelegate transitDirectionsListView:self canSelectItem:transitListItem];

  if (v6)
  {
    [(TransitDirectionsListView *)self _addHighlightForStepView:highlightedCopy];
  }
}

- (void)stepViewSelected:(id)selected
{
  selectedCopy = selected;
  [(TransitDirectionsListView *)self _clearHighlightForStepView:selectedCopy];
  listDelegate = [(TransitDirectionsListView *)self listDelegate];
  transitListItem = [selectedCopy transitListItem];
  v7 = [listDelegate transitDirectionsListView:self canSelectItem:transitListItem];

  if (v7)
  {
    v8 = sub_10087773C();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      listDelegate2 = [(TransitDirectionsListView *)self listDelegate];
      transitListItem2 = [selectedCopy transitListItem];
      [listDelegate2 transitDirectionsListView:self didSelectItem:transitListItem2];

      goto LABEL_13;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsListView *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_9:

LABEL_11:
    transitListItem3 = [selectedCopy transitListItem];
    *buf = 138543619;
    v19 = selfCopy;
    v20 = 2113;
    v21 = transitListItem3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] didSelectItem: %{private}@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_refreshSeparatorsAroundActiveStepView:(id)view
{
  if (view)
  {
    v25 = [(TransitDirectionsListView *)self _allStepViewsInSectionForStepView:?];
    v4 = [[NSMutableSet alloc] initWithCapacity:2];
    firstObject = [v25 firstObject];
    arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
    v7 = [arrangedSubviews indexOfObject:firstObject];

    if (v7)
    {
      arrangedSubviews2 = [(UIStackView *)self->_stackView arrangedSubviews];
      v9 = [arrangedSubviews2 objectAtIndexedSubscript:v7 - 1];

      separatorView = [v9 separatorView];
      [separatorView setHidden:1];

      [(UIView *)self->_activeItemBackgroundView alpha];
      v12 = 1.0 - v11;
      separatorView2 = [v9 separatorView];
      [separatorView2 setAlpha:v12];

      reuseIdentifier = [v9 reuseIdentifier];
      [v4 addObject:reuseIdentifier];
    }

    lastObject = [v25 lastObject];
    arrangedSubviews3 = [(UIStackView *)self->_stackView arrangedSubviews];
    lastObject2 = [arrangedSubviews3 lastObject];

    if (lastObject != lastObject2)
    {
      separatorView3 = [lastObject separatorView];
      [separatorView3 setHidden:0];

      [(UIView *)self->_activeItemBackgroundView alpha];
      v20 = 1.0 - v19;
      separatorView4 = [lastObject separatorView];
      [separatorView4 setAlpha:v20];

      reuseIdentifier2 = [lastObject reuseIdentifier];
      [v4 addObject:reuseIdentifier2];
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
      firstObject = [v6 firstObject];
      arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
      v9 = [arrangedSubviews indexOfObject:firstObject];

      if (v9)
      {
        arrangedSubviews2 = [(UIStackView *)self->_stackView arrangedSubviews];
        v11 = [arrangedSubviews2 objectAtIndexedSubscript:v9 - 1];

        v12 = [(TransitDirectionsListView *)self _indexPathForStepView:v11];
        [(TransitDirectionsListView *)self _requestSeparatorForStepView:v11 atIndexPath:v12];
      }

      lastObject = [v6 lastObject];
      v14 = [(TransitDirectionsListView *)self _indexPathForStepView:lastObject];
      [(TransitDirectionsListView *)self _requestSeparatorForStepView:lastObject atIndexPath:v14];
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

- (void)_setActiveStepView:(id)view withIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  [(TransitDirectionsListView *)self clearActiveTransitListItem];
  objc_storeStrong(&self->_activeItemIdentifier, identifier);
  if (self->_activeItemBackgroundConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    activeItemBackgroundConstraints = self->_activeItemBackgroundConstraints;
    self->_activeItemBackgroundConstraints = 0;

    identifiersForOverriddenSeparatorViews = self->_identifiersForOverriddenSeparatorViews;
    self->_identifiersForOverriddenSeparatorViews = 0;
  }

  v9 = viewCopy;
  if (viewCopy)
  {
    v10 = [(TransitDirectionsListView *)self _allStepViewsInSectionForStepView:viewCopy];
    [(TransitDirectionsListView *)self _refreshSeparatorsAroundActiveStepView:viewCopy];
    v11 = [(TransitDirectionsListView *)self _constraintsForBackgroundView:self->_activeItemBackgroundView foregroundViews:v10];
    v12 = self->_activeItemBackgroundConstraints;
    self->_activeItemBackgroundConstraints = v11;

    [NSLayoutConstraint activateConstraints:self->_activeItemBackgroundConstraints];
    [(TransitDirectionsListView *)self layoutIfNeeded];

    v9 = viewCopy;
  }

  [(UIView *)self->_activeItemBackgroundView setHidden:v9 == 0];
}

- (void)setActiveTransitDirectionsListItem:(id)item
{
  v4 = [TransitDirectionsStepView reuseIdentifierForItem:item];
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

      selfCopy = self;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      if (objc_opt_respondsToSelector())
      {
        v15 = [(TransitDirectionsListView *)selfCopy performSelector:"accessibilityIdentifier"];
        v16 = v15;
        if (v15 && ![v15 isEqualToString:v14])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

          goto LABEL_9;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_9:

      *buf = 138543874;
      v19 = selfCopy;
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

- (BOOL)isActiveTransitDirectionsListItem:(id)item
{
  v4 = [TransitDirectionsStepView reuseIdentifierForItem:item];
  v5 = v4 && [(NSString *)self->_activeItemIdentifier isEqualToString:v4];

  return v5;
}

- (void)setStepBackgroundAlpha:(double)alpha
{
  self->_stepBackgroundAlpha = alpha;
  [(UIView *)self->_activeItemBackgroundView setAlpha:?];
  [(UIView *)self->_highlightBackgroundView setAlpha:alpha];
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
    v9 = 1.0 - alpha;
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
        separatorView = [v11 separatorView];
        [separatorView setAlpha:v9];

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  v7 = viewCopy;
  v8 = footerView;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      [(UIView *)self->_footerView removeFromSuperview];
      objc_storeStrong(&self->_footerView, view);
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
          topAnchor = [v7 topAnchor];
          bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
          v30 = [topAnchor constraintEqualToAnchor:bottomAnchor];
          leadingConstraint = [v27 leadingConstraint];
          bottomConstraint = [v27 bottomConstraint];
          trailingConstraint = [v27 trailingConstraint];
          v34 = [MapsEdgeConstraints edgeConstraintsWithTop:v30 leading:leadingConstraint bottom:bottomConstraint trailing:trailingConstraint];

          bottomConstraint2 = [v34 bottomConstraint];
          footerViewToBottomConstraint = self->_footerViewToBottomConstraint;
          self->_footerViewToBottomConstraint = bottomConstraint2;

          allConstraints = [v34 allConstraints];
          [NSLayoutConstraint activateConstraints:allConstraints];

LABEL_25:
          [(TransitDirectionsListView *)self invalidateIntrinsicContentSize];
          goto LABEL_26;
        }

        selfCopy = self;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [(TransitDirectionsListView *)selfCopy performSelector:"accessibilityIdentifier"];
          v17 = v16;
          if (v16 && ![v16 isEqualToString:v15])
          {
            selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy, v17];

LABEL_10:
            v19 = selfCopy;
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

        selfCopy = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy];
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

      selfCopy2 = self;
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      if (objc_opt_respondsToSelector())
      {
        v41 = [(TransitDirectionsListView *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v42 = v41;
        if (v41 && ![v41 isEqualToString:v40])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v40, selfCopy2, v42];

          goto LABEL_23;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v40, selfCopy2];
LABEL_23:

      *buf = 138543362;
      v46 = selfCopy2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Clearing footer view", buf, 0xCu);

      goto LABEL_24;
    }
  }

LABEL_26:
}

- (void)reloadSectionAtIndex:(int64_t)index animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v8 = sub_10087773C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = completionCopy;
      v13 = [(TransitDirectionsListView *)selfCopy performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v14];

        completionCopy = v12;
        goto LABEL_8;
      }

      completionCopy = v12;
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v71 = selfCopy;
    v72 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] reloadSectionAtIndex: %lu", buf, 0x16u);
  }

  v60 = [(TransitDirectionsListView *)self _requestStepViewsForSectionAtIndex:index];
  v61 = sub_100021DB0(v60, &stru_10162C550);
  keyEnumerator = [(NSMapTable *)self->_viewsByIndexPath keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v18 = [allObjects sortedArrayUsingSelector:"compare:"];

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
  v59 = completionCopy;
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
      if ([v24 section] == index)
      {
        v25 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:v24];
        if (![v24 item])
        {
          arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
          range = [arrangedSubviews indexOfObject:v25];
        }

        ++v64;
        [(NSMapTable *)self->_viewsByIndexPath removeObjectForKey:v24];
        viewsByIdentifier = self->_viewsByIdentifier;
        reuseIdentifier = [v25 reuseIdentifier];
        [(NSMapTable *)viewsByIdentifier removeObjectForKey:reuseIdentifier];

        [(NSMapTable *)self->_indexPathsByView removeObjectForKey:v24];
        v19 = range_8;
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v66 objects:v76 count:16];
  }

  while (v21);

  completionCopy = v59;
  if (range == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_33:
    v41 = sub_10087773C();
    v31 = v60;
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
LABEL_54:

      completionCopy[2](completionCopy, 0);
      v40 = v61;
      goto LABEL_55;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_53;
    }

    v43 = completionCopy;
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    if (objc_opt_respondsToSelector())
    {
      v46 = [(TransitDirectionsListView *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v47 = v46;
      if (v46 && ![v46 isEqualToString:v45])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v45, selfCopy2, v47];

        goto LABEL_40;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v45, selfCopy2];
LABEL_40:

    completionCopy = v43;
LABEL_53:

    *buf = 138543362;
    v71 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "[%{public}@] - index of first item not found, bailing", buf, 0xCu);

    goto LABEL_54;
  }

  arrangedSubviews2 = [(UIStackView *)self->_stackView arrangedSubviews];
  v30 = [arrangedSubviews2 mutableCopy];

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
      [(UIStackView *)self->_stackView _maps_setArrangedSubviews:v30 animated:animatedCopy completion:v59];
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

    selfCopy3 = self;
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    if (objc_opt_respondsToSelector())
    {
      v54 = [(TransitDirectionsListView *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v55 = v54;
      if (v54 && ![v54 isEqualToString:v53])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v53, selfCopy3, v55];

        v40 = v61;
        goto LABEL_48;
      }

      v40 = v61;
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v53, selfCopy3];
LABEL_48:

    v57 = [v40 count];
    *buf = 138543874;
    v71 = selfCopy3;
    v72 = 2048;
    indexCopy = v64;
    v74 = 2048;
    v75 = v57;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "[%{public}@] - section went from %lu to %lu views", buf, 0x20u);

    goto LABEL_49;
  }

  v32 = sub_10087773C();
  v19 = range_8;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
  {
    selfCopy4 = self;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    if (objc_opt_respondsToSelector())
    {
      v36 = [(TransitDirectionsListView *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v37 = v36;
      if (v36 && ![v36 isEqualToString:v35])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v35, selfCopy4, v37];

        goto LABEL_30;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v35, selfCopy4];
LABEL_30:

    v77.location = range;
    v77.length = v64;
    v39 = NSStringFromRange(v77);
    *buf = 138543618;
    v71 = selfCopy4;
    v72 = 2114;
    indexCopy = v39;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "[%{public}@] invalid replacementRange (%{public}@), bailing", buf, 0x16u);
  }

  v59[2](v59, 0);
  v40 = v61;
LABEL_51:

LABEL_55:
}

- (void)_requestSeparatorForStepView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = *&NSDirectionalEdgeInsetsZero.bottom;
  v22 = *&NSDirectionalEdgeInsetsZero.top;
  v23 = v8;
  identifiersForOverriddenSeparatorViews = self->_identifiersForOverriddenSeparatorViews;
  reuseIdentifier = [viewCopy reuseIdentifier];
  LOBYTE(identifiersForOverriddenSeparatorViews) = [(NSSet *)identifiersForOverriddenSeparatorViews containsObject:reuseIdentifier];

  if (identifiersForOverriddenSeparatorViews)
  {
    separatorView = [viewCopy separatorView];
    [separatorView setHidden:1];

    separatorView2 = [viewCopy separatorView];
    [separatorView2 setAlpha:1.0];
LABEL_5:

    goto LABEL_6;
  }

  dataSource = [(TransitDirectionsListView *)self dataSource];
  transitListItem = [viewCopy transitListItem];
  v15 = [dataSource transitDirectionsListView:self shouldShowSeparatorForItem:transitListItem atIndexPath:pathCopy insets:&v22];

  v16 = v15 ^ 1;
  separatorView3 = [viewCopy separatorView];
  [separatorView3 setHidden:v16];

  separatorView4 = [viewCopy separatorView];
  [separatorView4 setAlpha:1.0];

  if ((v16 & 1) == 0)
  {
    v19 = *(&v22 + 1);
    separatorView5 = [viewCopy separatorView];
    [separatorView5 setLeadingMargin:v19];

    v21 = *(&v23 + 1);
    separatorView2 = [viewCopy separatorView];
    [separatorView2 setTrailingMargin:v21];
    goto LABEL_5;
  }

LABEL_6:
}

- (id)_requestStepViewForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(TransitDirectionsListView *)self dataSource];
  v6 = [dataSource transitDirectionsListView:self stepViewForItemAtIndexPath:pathCopy];

  [(TransitDirectionsListView *)self _requestSeparatorForStepView:v6 atIndexPath:pathCopy];
  v7 = [_TransitDirectionsListViewInfo infoWithStepView:v6 atIndexPath:pathCopy];

  return v7;
}

- (id)_requestStepViewsForSectionAtIndex:(int64_t)index
{
  dataSource = [(TransitDirectionsListView *)self dataSource];
  v6 = [dataSource transitDirectionsListView:self numberOfItemsInSection:index];

  v7 = [[NSMutableArray alloc] initWithCapacity:v6];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [NSIndexPath indexPathForItem:i inSection:index];
      v10 = [(TransitDirectionsListView *)self _requestStepViewForIndexPath:v9];
      [v7 addObject:v10];
    }
  }

  return v7;
}

- (void)reloadSeparators
{
  allStepViews = [(TransitDirectionsListView *)self allStepViews];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100879920;
  v5[3] = &unk_1016569D8;
  v5[4] = self;
  [allStepViews enumerateObjectsUsingBlock:v5];

  v4 = [(NSMapTable *)self->_viewsByIdentifier objectForKey:self->_activeItemIdentifier];
  [(TransitDirectionsListView *)self _refreshSeparatorsAroundActiveStepView:v4];
}

- (void)reloadData
{
  selfCopy = self;
  dataSource = [(TransitDirectionsListView *)self dataSource];

  v4 = sub_10087773C();
  v5 = v4;
  if (!dataSource)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_117:

      viewsByIndexPath = selfCopy->_viewsByIndexPath;
      selfCopy->_viewsByIndexPath = 0;

      viewsByIdentifier = selfCopy->_viewsByIdentifier;
      selfCopy->_viewsByIdentifier = 0;

      indexPathsByView = selfCopy->_indexPathsByView;
      selfCopy->_indexPathsByView = 0;

      [(TransitDirectionsListView *)selfCopy clearActiveTransitListItem];
      [(UIStackView *)selfCopy->_stackView _mapkit_setArrangedSubviews:&__NSArray0__struct];
      [(TransitDirectionsListView *)selfCopy invalidateIntrinsicContentSize];
      return;
    }

    v16 = selfCopy;
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
    v10 = selfCopy;
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
  dataSource2 = [(TransitDirectionsListView *)selfCopy dataSource];
  v24 = [dataSource2 numberOfSectionsInTransitDirectionsListView:selfCopy];

  if (v24 >= 1)
  {
    for (i = 0; i != v24; ++i)
    {
      v26 = [(TransitDirectionsListView *)selfCopy _requestStepViewsForSectionAtIndex:i];
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
    v120 = selfCopy;
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
        stepView = [v32 stepView];
        reuseIdentifier = [stepView reuseIdentifier];

        if (!reuseIdentifier)
        {
          v36 = sub_10087773C();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_64;
          }

          v43 = selfCopy;
          if (selfCopy)
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

          stepView2 = [v32 stepView];
          transitListItem = [stepView2 transitListItem];
          *buf = 138543618;
          v129 = v48;
          v130 = 2112;
          v131 = transitListItem;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "[%{public}@] - skipping info, no identifier for item: %@", buf, 0x16u);

          selfCopy = v120;
          goto LABEL_64;
        }

        v35 = [v27 objectForKey:reuseIdentifier];

        if (!v35)
        {
          stepView3 = [v32 stepView];
          [v119 addObject:stepView3];

          stepView4 = [v32 stepView];
          [v27 setObject:stepView4 forKey:reuseIdentifier];

          stepView5 = [v32 stepView];
          indexPath = [v32 indexPath];
          [v118 setObject:stepView5 forKey:indexPath];

          indexPath2 = [v32 indexPath];
          stepView6 = [v32 stepView];
          [v117 setObject:indexPath2 forKey:stepView6];

          v36 = sub_10087773C();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          v55 = selfCopy;
          if (selfCopy)
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
          indexPath3 = [v32 indexPath];
          stepView7 = [v32 stepView];

          v66 = objc_opt_class();
          v67 = NSStringFromClass(v66);
          *buf = 138544130;
          v129 = v60;
          v130 = 2114;
          v131 = indexPath3;
          v132 = 2112;
          v133 = v67;
          v134 = 2114;
          v135 = reuseIdentifier;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "[%{public}@] - added %{public}@: %@ : %{public}@", buf, 0x2Au);

          selfCopy = v120;
          goto LABEL_63;
        }

        v36 = sub_10087773C();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_64;
        }

        v37 = selfCopy;
        if (!selfCopy)
        {
          v115 = @"<nil>";
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
            v115 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41, spid, v115];

            goto LABEL_40;
          }
        }

        v115 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
LABEL_40:

LABEL_58:
        *buf = 138543618;
        v129 = v115;
        v130 = 2112;
        v131 = reuseIdentifier;
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

  objc_storeStrong(&selfCopy->_viewsByIndexPath, v118);
  objc_storeStrong(&selfCopy->_viewsByIdentifier, v27);
  objc_storeStrong(&selfCopy->_indexPathsByView, v117);
  v69 = sub_10087773C();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    v70 = selfCopy;
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    if (objc_opt_respondsToSelector())
    {
      v73 = [(TransitDirectionsListView *)v70 performSelector:"accessibilityIdentifier"];
      v74 = v73;
      if (v73 && ![v73 isEqualToString:v72])
      {
        v1152 = [NSString stringWithFormat:@"%@<%p, %@>", v72, v70, v74, spid, v115];

        v27 = v121;
        goto LABEL_76;
      }

      v27 = v121;
    }

    v1152 = [NSString stringWithFormat:@"%@<%p>", v72, v70];
LABEL_76:

    v76 = [v119 count];
    *buf = 138543618;
    v129 = v1152;
    v130 = 2048;
    v131 = v76;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "[%{public}@] - setting %lu views", buf, 0x16u);
  }

  [(UIStackView *)selfCopy->_stackView _maps_setArrangedSubviews:v119];
  if (!selfCopy->_activeItemIdentifier)
  {
    v87 = sub_10087773C();
    if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
LABEL_94:

      [(TransitDirectionsListView *)selfCopy clearActiveTransitListItem];
      goto LABEL_104;
    }

    v88 = selfCopy;
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

      dataSource3 = [(TransitDirectionsListView *)selfCopy dataSource];
      v101 = [dataSource3 activeItemForTransitDirectionsListView:selfCopy];

      [(TransitDirectionsListView *)selfCopy setActiveTransitDirectionsListItem:v101];
      goto LABEL_103;
    }

    v94 = selfCopy;
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
    v80 = selfCopy;
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

    activeItemIdentifier = selfCopy->_activeItemIdentifier;
    *buf = 138543618;
    v129 = v85;
    v130 = 2114;
    v131 = activeItemIdentifier;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, "[%{public}@] - marking existing step view as active: %{public}@", buf, 0x16u);

    v27 = v121;
  }

  [(TransitDirectionsListView *)selfCopy _setActiveStepView:v77 withIdentifier:selfCopy->_activeItemIdentifier];
LABEL_103:

LABEL_104:
  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_10087AA58;
  v123[3] = &unk_101661B18;
  v123[4] = selfCopy;
  [UIView performWithoutAnimation:v123];
  [(TransitDirectionsListView *)selfCopy invalidateIntrinsicContentSize];
  v102 = sub_10087773C();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
  {
    v103 = selfCopy;
    v104 = objc_opt_class();
    v105 = NSStringFromClass(v104);
    if (objc_opt_respondsToSelector())
    {
      v106 = [(TransitDirectionsListView *)v103 performSelector:"accessibilityIdentifier"];
      v107 = v106;
      if (v106 && ![v106 isEqualToString:v105])
      {
        v107 = [NSString stringWithFormat:@"%@<%p, %@>", v105, v103, v107];

        goto LABEL_110;
      }
    }

    v107 = [NSString stringWithFormat:@"%@<%p>", v105, v103];
LABEL_110:

    *buf = 138543362;
    v129 = v107;
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

- (id)stepViewForItem:(id)item
{
  v4 = [TransitDirectionsStepView reuseIdentifierForItem:item];
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

- (id)stepViewForIndexPath:(id)path
{
  v3 = [(NSMapTable *)self->_viewsByIndexPath objectForKey:path];
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

- (id)dequeueStepViewForItem:(id)item
{
  itemCopy = item;
  v5 = [TransitDirectionsStepView reuseIdentifierForItem:itemCopy];
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

    selfCopy = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsListView *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

    v15 = selfCopy;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    type = [itemCopy type];
    if (type >= 0x12)
    {
      v19 = [NSString stringWithFormat:@"Unknown (%ld)", type];
    }

    else
    {
      v19 = off_10162C648[type];
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

  v20 = [TransitDirectionsCell collectionCellClassForListItem:itemCopy];
  if (objc_opt_respondsToSelector())
  {
    stepViewClass = [(objc_class *)v20 stepViewClass];
  }

  else
  {
    stepViewClass = TransitDirectionsStepView;
  }

  v7 = [[stepViewClass alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v22 = sub_10087773C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    selfCopy2 = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(TransitDirectionsListView *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy2, v27];

        goto LABEL_19;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy2];
LABEL_19:

    v29 = selfCopy2;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    type2 = [itemCopy type];
    if (type2 >= 0x12)
    {
      v33 = [NSString stringWithFormat:@"Unknown (%ld)", type2];
    }

    else
    {
      v33 = off_10162C648[type2];
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

- (TransitDirectionsListView)initWithFrame:(CGRect)frame
{
  v45.receiver = self;
  v45.super_class = TransitDirectionsListView;
  v3 = [(TransitDirectionsListView *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    widthAnchor = [(UIStackView *)v4->_stackView widthAnchor];
    frameLayoutGuide = [(TransitDirectionsListView *)v4 frameLayoutGuide];
    widthAnchor2 = [frameLayoutGuide widthAnchor];
    v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v22 addObject:v26];

    leadingAnchor = [(UIView *)v4->_highlightBackgroundView leadingAnchor];
    leadingAnchor2 = [(TransitDirectionsListView *)v4 leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v22 addObject:v29];

    trailingAnchor = [(UIView *)v4->_highlightBackgroundView trailingAnchor];
    trailingAnchor2 = [(TransitDirectionsListView *)v4 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v22 addObject:v32];

    leadingAnchor3 = [(UIView *)v4->_activeItemBackgroundView leadingAnchor];
    leadingAnchor4 = [(TransitDirectionsListView *)v4 leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v22 addObject:v35];

    trailingAnchor3 = [(UIView *)v4->_activeItemBackgroundView trailingAnchor];
    trailingAnchor4 = [(TransitDirectionsListView *)v4 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v22 addObject:v38];

    LODWORD(v39) = 1148846080;
    v40 = [(UIStackView *)v4->_stackView _maps_constraintsEqualToEdgesOfView:v4 priority:v39];
    bottomConstraint = [v40 bottomConstraint];
    stackViewToBottomConstraint = v4->_stackViewToBottomConstraint;
    v4->_stackViewToBottomConstraint = bottomConstraint;

    allConstraints = [v40 allConstraints];
    [v22 addObjectsFromArray:allConstraints];

    [NSLayoutConstraint activateConstraints:v22];
    [(TransitDirectionsListView *)v4 _addScrollViewScrollObserver:v4];
  }

  return v4;
}

@end
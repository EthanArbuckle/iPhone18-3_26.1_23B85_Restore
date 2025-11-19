@interface AMUISwitcherViewController
- (AMUISwitcherDataSource)dataSource;
- (AMUISwitcherDelegate)delegate;
- (AMUISwitcherLayout)layout;
- (AMUISwitcherViewController)initWithLayout:(id)a3;
- (BOOL)_beginTransitionIfNeededFromRecord:(id)a3 toRecord:(id)a4;
- (BOOL)_endTransitionIfNeeded;
- (BOOL)_shouldAdjustForRTL;
- (BOOL)isScrollingInteractively;
- (CGSize)_pageSize;
- (NSArray)visibleIndices;
- (NSArray)visibleItems;
- (double)_point:(double)a3 setValue:(double)a4 onAxis:(double)a5;
- (double)_presentationProgressForItemIndex:(int64_t)a3;
- (double)_size:(double)a3 valueOnAxis:(double)a4;
- (double)presentationProgressForIdentifier:(id)a3;
- (double)presentationProgressForItem:(id)a3;
- (id)_accessibilityIdentifierPrefix;
- (id)_switcherLayout;
- (id)acquireUnsettledAssertionForReason:(id)a3;
- (int64_t)_indexOfItem:(id)a3;
- (int64_t)_indexOfItemWithIdentifier:(id)a3;
- (void)_detachItemRecord:(id)a3;
- (void)_noteTransitionFrom:(id)a3 to:(id)a4 progress:(double)a5;
- (void)_noteTransitionProgressIfNeeded;
- (void)_sendTransitionUpdate;
- (void)_updateForUnsettled:(BOOL)a3;
- (void)_updateTrailingSpacerConstraints;
- (void)dealloc;
- (void)reload;
- (void)reloadItemAtIndex:(int64_t)a3;
- (void)reloadItemWithIdentifier:(id)a3;
- (void)scrollViewDidEndScrolling:(id)a3;
- (void)scrollViewDidScroll:(id)a3 withContext:(id *)a4;
- (void)setDataSource:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillMoveToWindow:(id)a3;
@end

@implementation AMUISwitcherViewController

- (AMUISwitcherViewController)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AMUISwitcherViewController;
  v5 = [(AMUISwitcherViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, v4);
  }

  return v6;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_knownItems allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AMUISwitcherViewController *)self _detachItemRecord:*(*(&v11 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(BSCompoundAssertion *)self->_unsettledAssertions invalidate];
  unsettledAssertions = self->_unsettledAssertions;
  self->_unsettledAssertions = 0;

  v10.receiver = self;
  v10.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)reload
{
  v15 = *MEMORY[0x277D85DE8];
  self->_firstLayout = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_knownItems allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AMUISwitcherViewController *)self _detachItemRecord:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_knownItems removeAllObjects];
  [(NSMutableDictionary *)self->_visibleItems removeAllObjects];
  v8 = [(AMUISwitcherViewController *)self viewIfLoaded];
  [v8 setNeedsLayout];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reloadItemWithIdentifier:(id)a3
{
  v4 = [(AMUISwitcherViewController *)self _indexOfItemWithIdentifier:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(AMUISwitcherViewController *)self reloadItemAtIndex:v4];
  }
}

- (void)reloadItemAtIndex:(int64_t)a3
{
  knownItems = self->_knownItems;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v12 = [(NSMutableDictionary *)knownItems objectForKeyedSubscript:v6];

  if (v12)
  {
    [(AMUISwitcherViewController *)self _detachItemRecord:v12];
  }

  v7 = self->_knownItems;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)v7 removeObjectForKey:v8];

  visibleItems = self->_visibleItems;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)visibleItems removeObjectForKey:v10];

  v11 = [(AMUISwitcherViewController *)self viewIfLoaded];
  [v11 setNeedsLayout];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(AMUISwitcherViewController *)self reload];
    [(AMUISwitcherViewController *)self _scrollToIndex:0 animated:0 completion:0];
  }
}

- (NSArray)visibleIndices
{
  v3 = [(AMUISwitcherViewController *)self viewIfLoaded];
  [v3 layoutIfNeeded];

  visibleItems = self->_visibleItems;

  return [(NSMutableDictionary *)visibleItems allKeys];
}

- (NSArray)visibleItems
{
  v3 = [(AMUISwitcherViewController *)self viewIfLoaded];
  [v3 layoutIfNeeded];

  v4 = [(NSMutableDictionary *)self->_visibleItems allValues];
  v5 = [v4 bs_map:&__block_literal_global];

  return v5;
}

- (BOOL)isScrollingInteractively
{
  LODWORD(scrollView) = [(BSUIScrollView *)self->_scrollView isScrolling];
  if (scrollView)
  {
    scrollView = self->_scrollView;
    if (scrollView)
    {
      [(BSUIScrollView *)scrollView currentScrollContext];
      LOBYTE(scrollView) = v5 == 3;
    }
  }

  return scrollView;
}

- (double)presentationProgressForIdentifier:(id)a3
{
  v4 = [(AMUISwitcherViewController *)self _indexOfItemWithIdentifier:a3];

  [(AMUISwitcherViewController *)self _presentationProgressForItemIndex:v4];
  return result;
}

- (double)presentationProgressForItem:(id)a3
{
  v4 = [(AMUISwitcherViewController *)self _indexOfItem:a3];

  [(AMUISwitcherViewController *)self _presentationProgressForItemIndex:v4];
  return result;
}

- (id)acquireUnsettledAssertionForReason:(id)a3
{
  v4 = a3;
  unsettledAssertions = self->_unsettledAssertions;
  if (!unsettledAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ambientSwitcherUnsettled-%p", self];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__AMUISwitcherViewController_acquireUnsettledAssertionForReason___block_invoke;
    v12[3] = &unk_278C75CC0;
    objc_copyWeak(&v13, &location);
    v8 = [v6 assertionWithIdentifier:v7 stateDidChangeHandler:v12];
    v9 = self->_unsettledAssertions;
    self->_unsettledAssertions = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    unsettledAssertions = self->_unsettledAssertions;
  }

  v10 = [(BSCompoundAssertion *)unsettledAssertions acquireForReason:v4];

  return v10;
}

void __65__AMUISwitcherViewController_acquireUnsettledAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 isActive];

  [WeakRetained _updateForUnsettled:v4];
}

- (void)viewDidLoad
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v34 viewDidLoad];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  visibleItems = self->_visibleItems;
  self->_visibleItems = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  knownItems = self->_knownItems;
  self->_knownItems = v5;

  v7 = [(AMUISwitcherViewController *)self view];
  v8 = objc_alloc(MEMORY[0x277CF0D88]);
  [v7 bounds];
  v9 = [v8 initWithFrame:?];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setPagingEnabled:1];
  [v9 setShowsHorizontalScrollIndicator:0];
  [v9 setShowsVerticalScrollIndicator:0];
  [v9 setContentInsetAdjustmentBehavior:2];
  [v9 setBounces:1];
  [v9 setDelegate:self];
  v10 = MEMORY[0x277CCACA8];
  v11 = [(AMUISwitcherViewController *)self _accessibilityIdentifierPrefix];
  v12 = [v10 stringWithFormat:@"%@-scroll-view", v11];
  [v9 setAccessibilityIdentifier:v12];

  scrollView = self->_scrollView;
  self->_scrollView = v9;
  v14 = v9;

  [v7 addSubview:v14];
  [v7 setClipsToBounds:1];
  v15 = [v7 trailingAnchor];
  v16 = [v14 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];
  horizontalTrailingSpacerConstraint = self->_horizontalTrailingSpacerConstraint;
  self->_horizontalTrailingSpacerConstraint = v17;

  v19 = [v7 bottomAnchor];
  v20 = [v14 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];
  verticalTrailingSpacerConstraint = self->_verticalTrailingSpacerConstraint;
  self->_verticalTrailingSpacerConstraint = v21;

  v32 = MEMORY[0x277CCAAD0];
  v33 = v7;
  v23 = [v7 leadingAnchor];
  v24 = [v14 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v35[0] = v25;
  v26 = [v7 topAnchor];
  v27 = [v14 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v29 = self->_horizontalTrailingSpacerConstraint;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = self->_verticalTrailingSpacerConstraint;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v32 activateConstraints:v30];

  [v33 setNeedsUpdateConstraints];
  [(AMUISwitcherViewController *)self reload];
  [(AMUISwitcherViewController *)self _scrollToIndex:0 animated:0 completion:0];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v3 updateViewConstraints];
  [(AMUISwitcherViewController *)self _updateTrailingSpacerConstraints];
}

- (void)viewWillLayoutSubviews
{
  v104.receiver = self;
  v104.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v104 viewWillLayoutSubviews];
  v94 = [(AMUISwitcherViewController *)self view];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [(AMUISwitcherViewController *)self _switcherLayout];
  v93 = WeakRetained;
  v5 = [WeakRetained switcherNumberOfItems:self];
  v6 = [v4 isCircular];
  [(AMUISwitcherViewController *)self _pageSize];
  v8 = v7;
  v10 = v9;
  v11 = [v4 switcherAxis];
  v12 = v11;
  v13 = v5;
  if ((v6 & (v5 > 1)) != 0)
  {
    v13 = 3.0;
  }

  v14 = v10 * v13;
  if (v11)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  if (v11)
  {
    v16 = v8;
  }

  else
  {
    v16 = v8 * v13;
  }

  if (v11)
  {
    v17 = v14;
  }

  else
  {
    v17 = v10;
  }

  [(BSUIScrollView *)self->_scrollView setContentSize:v16, v17, v14];
  v97 = v6 & (v5 > 1);
  if (v97 == 1)
  {
    if (self->_firstLayout)
    {
      v18 = *MEMORY[0x277CBF348];
      v19 = *(MEMORY[0x277CBF348] + 8);
      if (v12)
      {
        v19 = v10;
      }

      else
      {
        v18 = v8;
      }

      [(BSUIScrollView *)self->_scrollView setContentOffset:v18, v19];
      self->_firstLayout = 0;
      goto LABEL_46;
    }

    [(BSUIScrollView *)self->_scrollView contentOffset];
    v21 = v20;
    v23 = v22;
    [(BSUIScrollView *)self->_scrollView contentSize];
    if (v12)
    {
      v26 = v23;
    }

    else
    {
      v26 = v21;
    }

    v27 = v15 + v26;
    if (v12)
    {
      v24 = v25;
    }

    if (v27 > v24)
    {
      v28 = v5 + self->_topItemIndex + 1;
      do
      {
        v28 -= v5;
      }

      while (v28 >= v5);
      self->_topItemIndex = v28;
      [(BSUIScrollView *)self->_scrollView contentOffset];
      v31 = v12 == 0;
      if (v12)
      {
        v32 = v30;
      }

      else
      {
        v32 = v29;
      }

      v33 = v32 - v15;
LABEL_42:
      if (v31)
      {
        v29 = v33;
      }

      else
      {
        v30 = v33;
      }

      [(BSUIScrollView *)self->_scrollView setContentOffset:v29, v30];
      goto LABEL_46;
    }

    [(BSUIScrollView *)self->_scrollView contentOffset];
    if (v12)
    {
      v34 = v35;
    }

    if (v34 < v15)
    {
      topItemIndex = self->_topItemIndex;
      v37 = ((topItemIndex - 1) & ~((topItemIndex - 1) >> 63)) + 1;
      if (v37 == topItemIndex)
      {
        v38 = self->_topItemIndex;
      }

      else
      {
        v38 = topItemIndex + 1;
      }

      v31 = v37 == topItemIndex;
      v39 = (v37 - v38) / v5;
      if (!v31)
      {
        ++v39;
      }

      self->_topItemIndex = topItemIndex + v5 * v39 - 1;
      [(BSUIScrollView *)self->_scrollView contentOffset];
      v31 = v12 == 0;
      if (v12)
      {
        v40 = v30;
      }

      else
      {
        v40 = v29;
      }

      v33 = v15 + v40;
      goto LABEL_42;
    }
  }

LABEL_46:
  [(BSUIScrollView *)self->_scrollView contentOffset];
  v87 = v12;
  if (v12)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  v44 = v5 - 1;
  if (v5 >= 1)
  {
    v45 = 0;
    v46 = v6 & (v5 > 1);
    v96 = (v43 / v15) - v46;
    v85 = v46;
    v95 = ((v15 + v43 + -1.0) / v15) - v46;
    v47 = *MEMORY[0x277CBF348];
    v48 = *(MEMORY[0x277CBF348] + 8);
    v86 = v4;
    while (1)
    {
      v49 = v45;
      if (v97)
      {
        v49 = (v45 - self->_topItemIndex) % v5;
      }

      v50 = v49 + v5 * (((v49 & ~(v49 >> 63)) - (v49 + (v49 >> 63))) / v5 + (v49 >> 63));
      v51 = [(AMUISwitcherViewController *)self _shouldAdjustForRTL]? v44 : v45;
      visibleItems = self->_visibleItems;
      v53 = [MEMORY[0x277CCABB0] numberWithInteger:v51];
      v54 = [(NSMutableDictionary *)visibleItems objectForKeyedSubscript:v53];

      if (v50 >= v96 && v50 <= v95)
      {
        break;
      }

      if (v54)
      {
        v82 = objc_loadWeakRetained((v54 + 56));
        [v82 setHidden:1];
        [(_AMUISwitcherVisibleItemRecord *)v54 setPresentationProgress:?];
        v83 = self->_visibleItems;
        v62 = [MEMORY[0x277CCABB0] numberWithInteger:v51];
        v84 = v83;
        v75 = v82;
        [(NSMutableDictionary *)v84 removeObjectForKey:v62];
LABEL_85:
      }

      ++v45;
      if (--v44 == -1)
      {
        goto LABEL_87;
      }
    }

    if (!v54)
    {
      v91 = [v93 switcher:self itemAtIndex:v51];
      v54 = [_AMUISwitcherVisibleItemRecord recordWithItem:v91 index:v51 forSwitcher:self];
      v56 = self->_visibleItems;
      v57 = [MEMORY[0x277CCABB0] numberWithInteger:v51];
      [(NSMutableDictionary *)v56 setObject:v54 forKeyedSubscript:v57];

      knownItems = self->_knownItems;
      v59 = [MEMORY[0x277CCABB0] numberWithInteger:v51];
      [(NSMutableDictionary *)knownItems setObject:v54 forKeyedSubscript:v59];

      if (!v54)
      {

        v61 = 0;
        v62 = 0;
        v90 = 1;
        goto LABEL_69;
      }

      v60 = objc_loadWeakRetained((v54 + 64));
      if (v60)
      {
        [(AMUISwitcherViewController *)self addChildViewController:v60];
        [v60 didMoveToParentViewController:self];
      }
    }

    v61 = objc_loadWeakRetained((v54 + 48));
    v62 = objc_loadWeakRetained((v54 + 56));
    v90 = 0;
LABEL_69:
    v89 = MEMORY[0x277CCACA8];
    v88 = [(AMUISwitcherViewController *)self _accessibilityIdentifierPrefix];
    v92 = v61;
    v63 = [v61 identifier];
    v64 = [v63 description];
    v65 = [v89 stringWithFormat:@"%@-item, identifier:%@", v88, v64];

    [v62 setAccessibilityIdentifier:v65];
    v66 = [v62 superview];
    scrollView = self->_scrollView;

    if (v66 != scrollView)
    {
      [(BSUIScrollView *)self->_scrollView addSubview:v62];
    }

    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v4 = v86;
    if (v62)
    {
      [v62 transform];
    }

    v68 = *(MEMORY[0x277CBF2C0] + 16);
    v98 = *MEMORY[0x277CBF2C0];
    v99 = v68;
    v100 = *(MEMORY[0x277CBF2C0] + 32);
    [v62 setTransform:&v98];
    [v62 frame];
    [v94 bounds];
    v70 = v69;
    v72 = v71;
    v73 = [(AMUISwitcherViewController *)self _shouldAdjustForRTL];
    v74 = 0.0;
    v75 = v92;
    if (v73)
    {
      [v86 spacing];
    }

    v76 = (v50 + v85);
    v77 = v74 + v76 * v15;
    if (v87)
    {
      v78 = v47;
    }

    else
    {
      v78 = v74 + v76 * v15;
    }

    if (v87)
    {
      v79 = v74 + v76 * v15;
    }

    else
    {
      v79 = v48;
    }

    v80 = 1.0 - fmin(fmax(vabdd_f64(v77 - v74, v43) / v15, 0.0), 1.0);
    [v62 setFrame:{v78, v79, v70, v72}];
    v98 = v101;
    v99 = v102;
    v100 = v103;
    [v62 setTransform:&v98];
    [v86 switcher:self updateItem:v92 view:v62 forPresentationProgress:v80];
    v81 = [(BSCompoundAssertion *)self->_unsettledAssertions isActive];
    if ((v90 & 1) == 0)
    {
      *(v54 + 16) = v81;
      [v54 _updateAppearState];
    }

    [(_AMUISwitcherVisibleItemRecord *)v54 setPresentationProgress:v80];
    [v62 setHidden:0];

    goto LABEL_85;
  }

LABEL_87:
  [(AMUISwitcherViewController *)self _sendTransitionUpdate];
}

- (double)_size:(double)a3 valueOnAxis:(double)a4
{
  if (a2)
  {
    result = a4;
  }

  if (!a1)
  {
    return 0.0;
  }

  return result;
}

- (double)_point:(double)a3 setValue:(double)a4 onAxis:(double)a5
{
  if (!a2)
  {
    result = a5;
  }

  if (!a1)
  {
    return 0.0;
  }

  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v15 viewWillDisappear:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_visibleItems allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
        if (v9 && *(v9 + 32))
        {
          [_AMUISwitcherVisibleItemRecord sendCallbackForState:v9 animated:1];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v14 viewDidDisappear:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableDictionary *)self->_visibleItems allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [_AMUISwitcherVisibleItemRecord sendCallbackForState:0 animated:?];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v17 viewWillAppear:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_visibleItems allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          if (*(v9 + 32) == 3)
          {
            v10 = 2;
          }

          else
          {
            v10 = *(v9 + 32);
          }
        }

        else
        {
          v10 = 0;
        }

        [_AMUISwitcherVisibleItemRecord sendCallbackForState:v9 animated:v10];
        ++v8;
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = AMUISwitcherViewController;
  [(AMUISwitcherViewController *)&v17 viewDidAppear:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_visibleItems allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 32);
        }

        else
        {
          v10 = 0;
        }

        [_AMUISwitcherVisibleItemRecord sendCallbackForState:v9 animated:v10];
        ++v8;
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)viewWillMoveToWindow:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableDictionary *)self->_visibleItems allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (v10)
        {
          WeakRetained = objc_loadWeakRetained((v10 + 48));
        }

        else
        {
          WeakRetained = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained switcher:self willMoveToWindow:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = v12;
    }

    while (v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableDictionary *)self->_visibleItems allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (v11)
        {
          WeakRetained = objc_loadWeakRetained((v11 + 48));
        }

        else
        {
          WeakRetained = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained switcher:self didMoveToWindow:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v13 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v8 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)scrollViewDidScroll:(id)a3 withContext:(id *)a4
{
  v6 = [(AMUISwitcherViewController *)self view];
  [v6 setNeedsLayout];

  self->_lastScrollMethod = a4->var0;
}

- (void)scrollViewDidEndScrolling:(id)a3
{
  lastScrollMethod = self->_lastScrollMethod;
  self->_lastScrollMethod = 0;
  v7 = [(AMUISwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AMUISwitcherViewController *)self visibleItems];
    v6 = [v5 firstObject];

    if (v6)
    {
      [v7 switcher:self didSettleOnItem:v6 interactive:lastScrollMethod == 3];
    }
  }
}

- (id)_accessibilityIdentifierPrefix
{
  v2 = [(AMUISwitcherViewController *)self _switcherLayout];
  v3 = [v2 switcherAxis];
  v4 = @"vertical";
  if (!v3)
  {
    v4 = @"horizontal";
  }

  v5 = v4;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"amui-%@-switcher", v5];

  return v6;
}

- (id)_switcherLayout
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_layout);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v2 = WeakRetained;
  }

  v5 = v2;

  return v2;
}

uint64_t __65__AMUISwitcherViewController__scrollToIndex_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)_indexOfItemWithIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained switcher:self indexOfItemWithIdentifier:v4];
  }

  else
  {
    v7 = [WeakRetained switcherNumberOfItems:self];
    if (v7 < 1)
    {
LABEL_7:
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
      v6 = 0;
      while (1)
      {
        v9 = [WeakRetained switcher:self itemAtIndex:v6];
        v10 = [v9 identifier];
        v11 = BSEqualObjects();

        if (v11)
        {
          break;
        }

        if (v8 == ++v6)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return v6;
}

- (int64_t)_indexOfItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained switcher:self indexOfItem:v4];
  }

  else
  {
    v7 = [WeakRetained switcherNumberOfItems:self];
    if (v7 < 1)
    {
LABEL_7:
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
      v6 = 0;
      while (1)
      {
        v9 = [WeakRetained switcher:self itemAtIndex:v6];
        v10 = BSEqualObjects();

        if (v10)
        {
          break;
        }

        if (v8 == ++v6)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return v6;
}

- (void)_updateTrailingSpacerConstraints
{
  v8 = [(AMUISwitcherViewController *)self _switcherLayout];
  [v8 spacing];
  v4 = -v3;
  v5 = [v8 switcherAxis];
  if (v5)
  {
    v6 = &OBJC_IVAR___AMUISwitcherViewController__verticalTrailingSpacerConstraint;
  }

  else
  {
    v6 = &OBJC_IVAR___AMUISwitcherViewController__horizontalTrailingSpacerConstraint;
  }

  if (v5)
  {
    v7 = &OBJC_IVAR___AMUISwitcherViewController__horizontalTrailingSpacerConstraint;
  }

  else
  {
    v7 = &OBJC_IVAR___AMUISwitcherViewController__verticalTrailingSpacerConstraint;
  }

  [*(&self->super.super.super.isa + *v6) setConstant:v4];
  [*(&self->super.super.super.isa + *v7) setConstant:0.0];
}

- (void)_noteTransitionFrom:(id)a3 to:(id)a4 progress:(double)a5
{
  v10 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained switcher:self transitioningFromItem:v10 toItem:v8 progress:a5];
  }
}

- (void)_sendTransitionUpdate
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = objc_loadWeakRetained((a2 + 48));
  v5 = *(a2 + 24);
  [OUTLINED_FUNCTION_2() _noteTransitionFrom:? to:? progress:?];
}

- (BOOL)_beginTransitionIfNeededFromRecord:(id)a3 toRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  currentTransition = self->_currentTransition;
  if (!currentTransition)
  {
    goto LABEL_2;
  }

  if (([(_AMUISwitcherTransitionContext *)currentTransition hasSameItemsAsFromRecord:v6 toRecord:v7]& 1) == 0)
  {
    [(AMUISwitcherViewController *)self _endTransitionIfNeeded];
  }

  if (self->_currentTransition)
  {
    v19 = 0;
  }

  else
  {
LABEL_2:
    v9 = [(AMUISwitcherViewController *)self delegate];
    v10 = [(AMUISwitcherViewController *)self _switcherLayout];
    v11 = [v10 switcherAxis];

    scrollView = self->_scrollView;
    if (v11)
    {
      [(BSUIScrollView *)scrollView _verticalVelocity];
    }

    else
    {
      [(BSUIScrollView *)scrollView _horizontalVelocity];
    }

    v14 = v13;
    v15 = [(AMUISwitcherViewController *)self _shouldAdjustForRTL];
    v16 = -v14;
    if (!v15)
    {
      v16 = v14;
    }

    v17 = [_AMUISwitcherTransitionContext contextWithFromRecord:v6 toRecord:v7 direction:v16 < 0.0 interactive:self->_lastScrollMethod == 3];
    v18 = self->_currentTransition;
    self->_currentTransition = v17;

    if (objc_opt_respondsToSelector())
    {
      [v9 switcher:self transitionDidBegin:self->_currentTransition];
    }

    v19 = 1;
  }

  return v19;
}

- (BOOL)_endTransitionIfNeeded
{
  currentTransition = self->_currentTransition;
  if (currentTransition)
  {
    v4 = [(AMUISwitcherViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 switcher:self transitionDidEnd:self->_currentTransition];
    }

    v5 = self->_currentTransition;
    self->_currentTransition = 0;
  }

  return currentTransition != 0;
}

- (void)_noteTransitionProgressIfNeeded
{
  if (self->_currentTransition)
  {
    v8 = [(AMUISwitcherViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      currentTransition = self->_currentTransition;
      if (currentTransition)
      {
        toRecord = currentTransition->_toRecord;
        if (toRecord)
        {
          presentationProgress = toRecord->_presentationProgress;
        }

        else
        {
          fromRecord = currentTransition->_fromRecord;
          if (fromRecord)
          {
            v7 = fromRecord->_presentationProgress;
          }

          else
          {
            v7 = 0.0;
          }

          presentationProgress = 1.0 - v7;
        }
      }

      else
      {
        presentationProgress = 0.0;
      }

      [v8 switcher:self transitionDidUpdate:presentationProgress withProgress:?];
    }
  }
}

- (CGSize)_pageSize
{
  v3 = [(AMUISwitcherViewController *)self _switcherLayout];
  [v3 spacing];
  v5 = v4;
  v6 = [(AMUISwitcherViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [v3 switcherAxis];
  v12 = v5 + v10;
  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v5 + v8;
  }

  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  v15 = v13;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)_detachItemRecord:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(v4 + 7);
    v6 = objc_loadWeakRetained(v11 + 8);
    v7 = objc_loadWeakRetained(v11 + 6);
    *(v11 + 16) = 0;
    [v11 _updateAppearState];
    v11[1] = 0;
    [v11 _updateAppearState];
  }

  else
  {
    [AMUISwitcherViewController _detachItemRecord:];
    v6 = 0;
    WeakRetained = 0;
    v7 = 0;
  }

  v8 = [WeakRetained superview];
  scrollView = self->_scrollView;

  if (v8 == scrollView)
  {
    [WeakRetained removeFromSuperview];
  }

  v10 = [v6 parentViewController];

  if (v10 == self)
  {
    [(AMUISwitcherViewController *)self bs_removeChildViewController:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 invalidate];
  }
}

- (double)_presentationProgressForItemIndex:(int64_t)a3
{
  v3 = 0.0;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    visibleItems = self->_visibleItems;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v6 = [(NSMutableDictionary *)visibleItems objectForKeyedSubscript:v5];

    if (v6)
    {
      v3 = v6[3];
    }
  }

  return v3;
}

- (BOOL)_shouldAdjustForRTL
{
  v2 = [(AMUISwitcherViewController *)self _switcherLayout];
  if ([v2 switcherAxis])
  {
    v3 = 0;
  }

  else
  {
    v3 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  }

  return v3;
}

- (void)_updateForUnsettled:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_visibleItems allValues];
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
        if (v9)
        {
          v9[16] = a3;
          [v9 _updateAppearState];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (AMUISwitcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (AMUISwitcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMUISwitcherLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

id __42__AMUISwitcherViewController_visibleItems__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_0();
  }

  WeakRetained = objc_loadWeakRetained((a2 + 48));

  return WeakRetained;
}

@end
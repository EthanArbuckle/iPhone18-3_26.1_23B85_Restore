@interface MFConversationCellConfigurator
+ (id)log;
- (BOOL)animatePendingHeightChangesIfNecessary;
- (BOOL)isMessageItemAtIndexPath:(id)a3;
- (BOOL)isSummaryItemAtIndexPath:(id)a3;
- (BOOL)updateSemiExpandedToFullyExpandedIfNecessaryAtIndexPath:(id)a3 renderedHeight:(double)a4;
- (CGSize)sizeForItemAtIndexPath:(id)a3;
- (MFConversationCellConfigurator)initWithCollectionView:(id)a3;
- (MFConversationCellConfiguratorDelegate)delegate;
- (UIViewPropertyAnimator)heightChangeAnimator;
- (id)unconfiguredCellForItemAtIndexPath:(id)a3;
- (int64_t)expansionStatusForMessageAtIndexPath:(id)a3;
- (void)_setCellAtIndexPath:(id)a3 highlighted:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)configureCell:(id)a3 forItemAtIndexPath:(id)a4 itemID:(id)a5 manualSummaryViewModel:(id)a6;
- (void)configureCell:(id)a3 forItemAtIndexPath:(id)a4 itemID:(id)a5 messageFuture:(id)a6 contentRequest:(id)a7;
- (void)enumerateCollapsedCellsWithBlock:(id)a3;
- (void)enumerateExpandedCellsWithBlock:(id)a3;
- (void)enumeratePreparedCellsWithBlock:(id)a3;
- (void)expandCellAtIndexPath:(id)a3 animated:(BOOL)a4 highlightFirst:(BOOL)a5 expansionStatus:(int64_t)a6;
- (void)expansionTracker:(id)a3 didChangeCollapsingAllowed:(BOOL)a4;
- (void)resetCaches;
- (void)setDisplayMetrics:(id)a3;
@end

@implementation MFConversationCellConfigurator

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B754C;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD478 != -1)
  {
    dispatch_once(&qword_1006DD478, block);
  }

  v2 = qword_1006DD470;

  return v2;
}

- (MFConversationCellConfigurator)initWithCollectionView:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MFConversationCellConfigurator;
  v6 = [(MFConversationCellConfigurator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionView, a3);
    v8 = [[MFConversationViewCellExpansionTracker alloc] initWithDelegate:v7];
    expansionTracker = v7->_expansionTracker;
    v7->_expansionTracker = v8;

    v10 = objc_alloc_init(MFConversationViewCellSizeTracker);
    sizeTracker = v7->_sizeTracker;
    v7->_sizeTracker = v10;

    [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kExpandedMessageCell"];
    [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kCollapsedMessageCell"];
    [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kCollapsedSubjectMessageCell"];
    [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSummaryMessageCell"];
  }

  return v7;
}

- (id)unconfiguredCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(MFConversationCellConfigurator *)self isSummaryItemAtIndexPath:v4])
  {
    v5 = @"kSummaryMessageCell";
  }

  else if ([(MFConversationCellConfigurator *)self messageAtIndexPathIsExpandedOrSemiExpanded:v4])
  {
    v5 = @"kExpandedMessageCell";
  }

  else
  {
    v6 = [(MFConversationCellConfigurator *)self delegate];
    v7 = [v6 collapsedCellsShowsSubjectForCellConfigurator:self];

    if (v7)
    {
      v5 = @"kCollapsedSubjectMessageCell";
    }

    else
    {
      v5 = @"kCollapsedMessageCell";
    }
  }

  v8 = [(MFConversationCellConfigurator *)self collectionView];
  v9 = [v8 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:v4];

  return v9;
}

- (void)configureCell:(id)a3 forItemAtIndexPath:(id)a4 itemID:(id)a5 messageFuture:(id)a6 contentRequest:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v15)
  {
    v17 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *location = 134218498;
      *&location[4] = v12;
      v32 = 2114;
      v33 = v14;
      v34 = 2112;
      v35 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Fail to configure cell with nil messageFuture - cell:%p itemID: %{public}@ contentRequest: %@", location, 0x20u);
    }
  }

  [v12 setItemID:v14];
  v18 = [(MFConversationCellConfigurator *)self displayMetrics];
  [v12 setDisplayMetrics:v18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v12;
    v20 = [(MFConversationCellConfigurator *)self contactStore];
    [v19 setContactStore:v20];

    objc_initWeak(location, self);
    v21 = +[EFScheduler mainThreadScheduler];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001B7BE4;
    v26[3] = &unk_100653A28;
    objc_copyWeak(&v30, location);
    v22 = v19;
    v27 = v22;
    v28 = v13;
    v23 = v16;
    v29 = v23;
    [v15 onScheduler:v21 addSuccessBlock:v26];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001B8298;
    v24[3] = &unk_10064D028;
    v25 = v23;
    [v15 addFailureBlock:v24];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }
}

- (void)configureCell:(id)a3 forItemAtIndexPath:(id)a4 itemID:(id)a5 manualSummaryViewModel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v10 setItemID:v12];
  v14 = [(MFConversationCellConfigurator *)self displayMetrics];
  [v10 setDisplayMetrics:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [ConversationCellViewModel alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001B84F0;
    v18[3] = &unk_100653A50;
    v19 = v13;
    v16 = [(ConversationCellViewModel *)v15 initWithBuilder:v18];
    [v10 setViewModel:v16];

    v17 = [(MFConversationCellConfigurator *)self delegate];
    [v17 cellConfigurator:self didConfigureCell:v10 atIndexPath:v11];
  }
}

- (int64_t)expansionStatusForMessageAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationCellConfigurator *)self delegate];
  v6 = [v5 cellConfigurator:self messageItemIDAtIndexPath:v4];
  if (!v6)
  {
    v11 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10048B33C(v4, v11);
    }

    goto LABEL_7;
  }

  v7 = [(MFConversationCellConfigurator *)self expansionTracker];
  v8 = [v7 expansionStatusForCellWithItemID:v6];

  if (!v8)
  {
    v9 = [v5 cellConfigurator:self expansionStatusForMessageAtIndexPath:v4];
    v10 = [(MFConversationCellConfigurator *)self expansionTracker];
    [v10 setMessageWithItemID:v6 expansionStatus:v9];

    v11 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = 0;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Determined expansion status:%ld itemID:%{public}@ indexPath:%{public}@", &v13, 0x20u);
    }

LABEL_7:

    v8 = 0;
  }

  return v8;
}

- (BOOL)isMessageItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationCellConfigurator *)self delegate];
  v6 = [v5 cellConfigurator:self messageItemIDAtIndexPath:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isSummaryItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationCellConfigurator *)self delegate];
  v6 = [v5 cellConfigurator:self messageItemIDAtIndexPath:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGSize)sizeForItemAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(MFConversationCellConfigurator *)self delegate];
  v7 = v6;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (v6)
  {
    v10 = [v6 cellConfigurator:self messageItemIDAtIndexPath:v5];
    if (!v10)
    {
      v29 = +[NSAssertionHandler currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"MFConversationCellConfigurator.m" lineNumber:204 description:@"messageItemID cannot be nil."];
    }

    v11 = [(MFConversationCellConfigurator *)self sizeTracker];
    [v11 displaySizeForCellWithItemID:v10];
    v13 = v12;
    v15 = v14;

    if ([(MFConversationCellConfigurator *)self isSummaryItemAtIndexPath:v5])
    {
      v16 = [(MFConversationCellConfigurator *)self sizeTracker];
      [v16 intrinsicSizeForCellWithItemID:v10];
      v18 = v17;
      v20 = v19;

      if (v20 == height && v18 == CGSizeZero.width)
      {
        v15 = 0.0;
      }
    }

    else
    {
      v22 = [(MFConversationCellConfigurator *)self expansionTracker];
      v23 = [v22 expansionStatusForCellWithItemID:v10];

      if (!v23)
      {
        v23 = [v7 cellConfigurator:self expansionStatusForMessageAtIndexPath:v5];
        v24 = [(MFConversationCellConfigurator *)self expansionTracker];
        [v24 setMessageWithItemID:v10 expansionStatus:v23];
      }

      if (v23 == 1)
      {
        v25 = [(MFConversationCellConfigurator *)self displayMetrics];
        [MFCollapsedMessageCell defaultHeightWithDisplayMetrics:v25];
        v15 = v26;
      }
    }

    width = v13;
    height = v15;
  }

  v27 = width;
  v28 = height;
  result.height = v28;
  result.width = v27;
  return result;
}

- (void)setDisplayMetrics:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_displayMetrics] & 1) == 0)
  {
    objc_storeStrong(&self->_displayMetrics, a3);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001B8B98;
    v6[3] = &unk_10064DE30;
    v7 = v5;
    [(MFConversationCellConfigurator *)self enumeratePreparedCellsWithBlock:v6];
  }
}

- (void)enumeratePreparedCellsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationCellConfigurator *)self collectionView];
  if ([v5 numberOfSections])
  {
    v6 = [v5 numberOfItemsInSection:0];
    if (v6)
    {
      v7 = [v5 preparedCells];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1001B8CD4;
      v8[3] = &unk_100653A78;
      v9 = v5;
      v11 = v6;
      v10 = v4;
      [v7 enumerateObjectsUsingBlock:v8];
    }
  }
}

- (void)enumerateExpandedCellsWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B8ED0;
  v5[3] = &unk_100653AA0;
  v6 = a3;
  v4 = v6;
  [(MFConversationCellConfigurator *)self enumeratePreparedCellsWithBlock:v5];
}

- (void)enumerateCollapsedCellsWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B9028;
  v5[3] = &unk_100653AA0;
  v6 = a3;
  v4 = v6;
  [(MFConversationCellConfigurator *)self enumeratePreparedCellsWithBlock:v5];
}

- (void)resetCaches
{
  v3 = [(MFConversationCellConfigurator *)self expansionTracker];
  [v3 resetRecord];

  v4 = [(MFConversationCellConfigurator *)self sizeTracker];
  [v4 resetAllCellSizes];

  [(MFConversationCellConfigurator *)self setLastAnimatedExpansionTimestamp:0];
}

- (UIViewPropertyAnimator)heightChangeAnimator
{
  heightChangeAnimator = self->_heightChangeAnimator;
  if (!heightChangeAnimator)
  {
    v4 = [[UIViewPropertyAnimator alloc] initWithDuration:0 dampingRatio:0.5 animations:1.0];
    v5 = self->_heightChangeAnimator;
    self->_heightChangeAnimator = v4;

    heightChangeAnimator = self->_heightChangeAnimator;
  }

  return heightChangeAnimator;
}

- (void)_setCellAtIndexPath:(id)a3 highlighted:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [(MFConversationCellConfigurator *)self collectionView];
  v13 = [v12 cellForItemAtIndexPath:v10];

  if (v13 && ([v13 disallowsHighlighting] & 1) == 0)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1001B9364;
    v20 = &unk_10064D9D8;
    v22 = v8;
    v21 = v13;
    v14 = objc_retainBlock(&v17);
    v15 = v14;
    if (v7)
    {
      v16 = 0.4;
      if (v8)
      {
        v16 = 0.45;
      }

      [UIView animateWithDuration:0 delay:v14 usingSpringWithDamping:v11 initialSpringVelocity:v16 options:0.0 animations:1.0 completion:0.0, v17, v18, v19, v20];
    }

    else
    {
      (v14[2])(v14);
      if (v11)
      {
        v11[2](v11, 1);
      }
    }
  }
}

- (void)expandCellAtIndexPath:(id)a3 animated:(BOOL)a4 highlightFirst:(BOOL)a5 expansionStatus:(int64_t)a6
{
  v28 = a5;
  v7 = a4;
  v10 = a3;
  v11 = +[MFConversationCellConfigurator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "cellConfigurator expandCellAtIndexPath:%@", buf, 0xCu);
  }

  v12 = [(MFConversationCellConfigurator *)self delegate];
  v29 = [(MFConversationCellConfigurator *)self collectionView];
  v13 = [v12 cellConfigurator:self messageItemIDAtIndexPath:v10];
  if (!v13)
  {
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MFConversationCellConfigurator.m" lineNumber:349 description:@"messageItemID cannot be nil."];
  }

  v14 = [v12 cellConfigurator:self targetHeightForExpandingCellAtIndexPath:v10];
  if (v14)
  {
    v15 = [(MFConversationCellConfigurator *)self sizeTracker];
    [v29 frame];
    v17 = v16;
    [v14 floatValue];
    [v15 setIntrinsicSize:v13 forCellWithItemID:{v17, v18}];
  }

  v19 = [(MFConversationCellConfigurator *)self expansionTracker];
  [v19 setMessageWithItemID:v13 expansionStatus:a6];

  v20 = [v29 collectionViewLayout];
  [v20 setExpandingIndexPath:v10];
  objc_initWeak(buf, self);
  v21 = [(MFConversationCellConfigurator *)self heightChangeAnimator];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001B9964;
  v39[3] = &unk_100653AC8;
  objc_copyWeak(&v41, buf);
  v22 = v20;
  v40 = v22;
  [v21 addCompletion:v39];

  [(MFConversationCellConfigurator *)self setAnimatingHeightChange:1];
  objc_initWeak(&location, v12);
  v23 = [(MFConversationCellConfigurator *)self heightChangeAnimator];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001B99E0;
  v32[3] = &unk_100653AF0;
  objc_copyWeak(&v35, buf);
  objc_copyWeak(&v36, &location);
  v24 = v22;
  v33 = v24;
  v25 = v10;
  v34 = v25;
  v37 = v7;
  [v23 addAnimations:v32];

  if (v7 && v28)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001B9AF8;
    v30[3] = &unk_10064D928;
    objc_copyWeak(&v31, buf);
    [(MFConversationCellConfigurator *)self _setCellAtIndexPath:v25 highlighted:1 animated:1 completion:v30];
    objc_destroyWeak(&v31);
  }

  else
  {
    v26 = [(MFConversationCellConfigurator *)self heightChangeAnimator];
    [v26 startAnimation];
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);
}

- (BOOL)updateSemiExpandedToFullyExpandedIfNecessaryAtIndexPath:(id)a3 renderedHeight:(double)a4
{
  v6 = a3;
  v7 = [(MFConversationCellConfigurator *)self delegate];
  v8 = [(MFConversationCellConfigurator *)self sizeTracker];
  v9 = [v8 delegate];
  v10 = 0;
  if ([(MFConversationCellConfigurator *)self expansionStatusForMessageAtIndexPath:v6]== 2 && v7 && v9)
  {
    v11 = [v7 cellConfigurator:self messageItemIDAtIndexPath:v6];
    if (v11 && ([v9 defaultSemiExpandedHeightForTracker:v8], v12 >= a4))
    {
      v13 = [(MFConversationCellConfigurator *)self expansionTracker];
      [v13 setMessageWithItemID:v11 expansionStatus:3];

      v14 = +[MFConversationCellConfigurator log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = v11;
        v18 = 2048;
        v19 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updating SemiExpanded to Expanded for itemID:%{public}@ based on renderedHeight:%f", &v16, 0x16u);
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)animatePendingHeightChangesIfNecessary
{
  v3 = [(MFConversationCellConfigurator *)self lastAnimatedExpansionTimestamp];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  if (![(MFConversationCellConfigurator *)self animatingHeightChange]&& (v5 >= 0.0 || v5 <= -1.0))
  {
    return 0;
  }

  v8 = [(MFConversationCellConfigurator *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  objc_initWeak(&location, self);
  v10 = [(MFConversationCellConfigurator *)self heightChangeAnimator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B9EE4;
  v11[3] = &unk_10064C838;
  objc_copyWeak(&v12, &location);
  [v10 addAnimations:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return 1;
}

- (void)expansionTracker:(id)a3 didChangeCollapsingAllowed:(BOOL)a4
{
  v5 = [(MFConversationCellConfigurator *)self delegate:a3];
  [v5 cellConfigurator:self didInvalidateConfigurationForCellsAtIndexPaths:0];
}

- (MFConversationCellConfiguratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface MFConversationCellConfigurator
+ (id)log;
- (BOOL)animatePendingHeightChangesIfNecessary;
- (BOOL)isMessageItemAtIndexPath:(id)path;
- (BOOL)isSummaryItemAtIndexPath:(id)path;
- (BOOL)updateSemiExpandedToFullyExpandedIfNecessaryAtIndexPath:(id)path renderedHeight:(double)height;
- (CGSize)sizeForItemAtIndexPath:(id)path;
- (MFConversationCellConfigurator)initWithCollectionView:(id)view;
- (MFConversationCellConfiguratorDelegate)delegate;
- (UIViewPropertyAnimator)heightChangeAnimator;
- (id)unconfiguredCellForItemAtIndexPath:(id)path;
- (int64_t)expansionStatusForMessageAtIndexPath:(id)path;
- (void)_setCellAtIndexPath:(id)path highlighted:(BOOL)highlighted animated:(BOOL)animated completion:(id)completion;
- (void)configureCell:(id)cell forItemAtIndexPath:(id)path itemID:(id)d manualSummaryViewModel:(id)model;
- (void)configureCell:(id)cell forItemAtIndexPath:(id)path itemID:(id)d messageFuture:(id)future contentRequest:(id)request;
- (void)enumerateCollapsedCellsWithBlock:(id)block;
- (void)enumerateExpandedCellsWithBlock:(id)block;
- (void)enumeratePreparedCellsWithBlock:(id)block;
- (void)expandCellAtIndexPath:(id)path animated:(BOOL)animated highlightFirst:(BOOL)first expansionStatus:(int64_t)status;
- (void)expansionTracker:(id)tracker didChangeCollapsingAllowed:(BOOL)allowed;
- (void)resetCaches;
- (void)setDisplayMetrics:(id)metrics;
@end

@implementation MFConversationCellConfigurator

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B754C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD478 != -1)
  {
    dispatch_once(&qword_1006DD478, block);
  }

  v2 = qword_1006DD470;

  return v2;
}

- (MFConversationCellConfigurator)initWithCollectionView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = MFConversationCellConfigurator;
  v6 = [(MFConversationCellConfigurator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionView, view);
    v8 = [[MFConversationViewCellExpansionTracker alloc] initWithDelegate:v7];
    expansionTracker = v7->_expansionTracker;
    v7->_expansionTracker = v8;

    v10 = objc_alloc_init(MFConversationViewCellSizeTracker);
    sizeTracker = v7->_sizeTracker;
    v7->_sizeTracker = v10;

    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kExpandedMessageCell"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kCollapsedMessageCell"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kCollapsedSubjectMessageCell"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSummaryMessageCell"];
  }

  return v7;
}

- (id)unconfiguredCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(MFConversationCellConfigurator *)self isSummaryItemAtIndexPath:pathCopy])
  {
    v5 = @"kSummaryMessageCell";
  }

  else if ([(MFConversationCellConfigurator *)self messageAtIndexPathIsExpandedOrSemiExpanded:pathCopy])
  {
    v5 = @"kExpandedMessageCell";
  }

  else
  {
    delegate = [(MFConversationCellConfigurator *)self delegate];
    v7 = [delegate collapsedCellsShowsSubjectForCellConfigurator:self];

    if (v7)
    {
      v5 = @"kCollapsedSubjectMessageCell";
    }

    else
    {
      v5 = @"kCollapsedMessageCell";
    }
  }

  collectionView = [(MFConversationCellConfigurator *)self collectionView];
  v9 = [collectionView dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:pathCopy];

  return v9;
}

- (void)configureCell:(id)cell forItemAtIndexPath:(id)path itemID:(id)d messageFuture:(id)future contentRequest:(id)request
{
  cellCopy = cell;
  pathCopy = path;
  dCopy = d;
  futureCopy = future;
  requestCopy = request;
  if (!futureCopy)
  {
    v17 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *location = 134218498;
      *&location[4] = cellCopy;
      v32 = 2114;
      v33 = dCopy;
      v34 = 2112;
      v35 = requestCopy;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Fail to configure cell with nil messageFuture - cell:%p itemID: %{public}@ contentRequest: %@", location, 0x20u);
    }
  }

  [cellCopy setItemID:dCopy];
  displayMetrics = [(MFConversationCellConfigurator *)self displayMetrics];
  [cellCopy setDisplayMetrics:displayMetrics];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = cellCopy;
    contactStore = [(MFConversationCellConfigurator *)self contactStore];
    [v19 setContactStore:contactStore];

    objc_initWeak(location, self);
    v21 = +[EFScheduler mainThreadScheduler];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001B7BE4;
    v26[3] = &unk_100653A28;
    objc_copyWeak(&v30, location);
    v22 = v19;
    v27 = v22;
    v28 = pathCopy;
    v23 = requestCopy;
    v29 = v23;
    [futureCopy onScheduler:v21 addSuccessBlock:v26];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001B8298;
    v24[3] = &unk_10064D028;
    v25 = v23;
    [futureCopy addFailureBlock:v24];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }
}

- (void)configureCell:(id)cell forItemAtIndexPath:(id)path itemID:(id)d manualSummaryViewModel:(id)model
{
  cellCopy = cell;
  pathCopy = path;
  dCopy = d;
  modelCopy = model;
  [cellCopy setItemID:dCopy];
  displayMetrics = [(MFConversationCellConfigurator *)self displayMetrics];
  [cellCopy setDisplayMetrics:displayMetrics];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [ConversationCellViewModel alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001B84F0;
    v18[3] = &unk_100653A50;
    v19 = modelCopy;
    v16 = [(ConversationCellViewModel *)v15 initWithBuilder:v18];
    [cellCopy setViewModel:v16];

    delegate = [(MFConversationCellConfigurator *)self delegate];
    [delegate cellConfigurator:self didConfigureCell:cellCopy atIndexPath:pathCopy];
  }
}

- (int64_t)expansionStatusForMessageAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(MFConversationCellConfigurator *)self delegate];
  v6 = [delegate cellConfigurator:self messageItemIDAtIndexPath:pathCopy];
  if (!v6)
  {
    v11 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10048B33C(pathCopy, v11);
    }

    goto LABEL_7;
  }

  expansionTracker = [(MFConversationCellConfigurator *)self expansionTracker];
  v8 = [expansionTracker expansionStatusForCellWithItemID:v6];

  if (!v8)
  {
    v9 = [delegate cellConfigurator:self expansionStatusForMessageAtIndexPath:pathCopy];
    expansionTracker2 = [(MFConversationCellConfigurator *)self expansionTracker];
    [expansionTracker2 setMessageWithItemID:v6 expansionStatus:v9];

    v11 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = 0;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = pathCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Determined expansion status:%ld itemID:%{public}@ indexPath:%{public}@", &v13, 0x20u);
    }

LABEL_7:

    v8 = 0;
  }

  return v8;
}

- (BOOL)isMessageItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(MFConversationCellConfigurator *)self delegate];
  v6 = [delegate cellConfigurator:self messageItemIDAtIndexPath:pathCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isSummaryItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(MFConversationCellConfigurator *)self delegate];
  v6 = [delegate cellConfigurator:self messageItemIDAtIndexPath:pathCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGSize)sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(MFConversationCellConfigurator *)self delegate];
  v7 = delegate;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (delegate)
  {
    v10 = [delegate cellConfigurator:self messageItemIDAtIndexPath:pathCopy];
    if (!v10)
    {
      v29 = +[NSAssertionHandler currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"MFConversationCellConfigurator.m" lineNumber:204 description:@"messageItemID cannot be nil."];
    }

    sizeTracker = [(MFConversationCellConfigurator *)self sizeTracker];
    [sizeTracker displaySizeForCellWithItemID:v10];
    v13 = v12;
    v15 = v14;

    if ([(MFConversationCellConfigurator *)self isSummaryItemAtIndexPath:pathCopy])
    {
      sizeTracker2 = [(MFConversationCellConfigurator *)self sizeTracker];
      [sizeTracker2 intrinsicSizeForCellWithItemID:v10];
      v18 = v17;
      v20 = v19;

      if (v20 == height && v18 == CGSizeZero.width)
      {
        v15 = 0.0;
      }
    }

    else
    {
      expansionTracker = [(MFConversationCellConfigurator *)self expansionTracker];
      v23 = [expansionTracker expansionStatusForCellWithItemID:v10];

      if (!v23)
      {
        v23 = [v7 cellConfigurator:self expansionStatusForMessageAtIndexPath:pathCopy];
        expansionTracker2 = [(MFConversationCellConfigurator *)self expansionTracker];
        [expansionTracker2 setMessageWithItemID:v10 expansionStatus:v23];
      }

      if (v23 == 1)
      {
        displayMetrics = [(MFConversationCellConfigurator *)self displayMetrics];
        [MFCollapsedMessageCell defaultHeightWithDisplayMetrics:displayMetrics];
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

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (([metricsCopy isEqual:self->_displayMetrics] & 1) == 0)
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001B8B98;
    v6[3] = &unk_10064DE30;
    v7 = metricsCopy;
    [(MFConversationCellConfigurator *)self enumeratePreparedCellsWithBlock:v6];
  }
}

- (void)enumeratePreparedCellsWithBlock:(id)block
{
  blockCopy = block;
  collectionView = [(MFConversationCellConfigurator *)self collectionView];
  if ([collectionView numberOfSections])
  {
    v6 = [collectionView numberOfItemsInSection:0];
    if (v6)
    {
      preparedCells = [collectionView preparedCells];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1001B8CD4;
      v8[3] = &unk_100653A78;
      v9 = collectionView;
      v11 = v6;
      v10 = blockCopy;
      [preparedCells enumerateObjectsUsingBlock:v8];
    }
  }
}

- (void)enumerateExpandedCellsWithBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B8ED0;
  v5[3] = &unk_100653AA0;
  blockCopy = block;
  v4 = blockCopy;
  [(MFConversationCellConfigurator *)self enumeratePreparedCellsWithBlock:v5];
}

- (void)enumerateCollapsedCellsWithBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B9028;
  v5[3] = &unk_100653AA0;
  blockCopy = block;
  v4 = blockCopy;
  [(MFConversationCellConfigurator *)self enumeratePreparedCellsWithBlock:v5];
}

- (void)resetCaches
{
  expansionTracker = [(MFConversationCellConfigurator *)self expansionTracker];
  [expansionTracker resetRecord];

  sizeTracker = [(MFConversationCellConfigurator *)self sizeTracker];
  [sizeTracker resetAllCellSizes];

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

- (void)_setCellAtIndexPath:(id)path highlighted:(BOOL)highlighted animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  pathCopy = path;
  completionCopy = completion;
  collectionView = [(MFConversationCellConfigurator *)self collectionView];
  v13 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v13 && ([v13 disallowsHighlighting] & 1) == 0)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1001B9364;
    v20 = &unk_10064D9D8;
    v22 = highlightedCopy;
    v21 = v13;
    v14 = objc_retainBlock(&v17);
    v15 = v14;
    if (animatedCopy)
    {
      v16 = 0.4;
      if (highlightedCopy)
      {
        v16 = 0.45;
      }

      [UIView animateWithDuration:0 delay:v14 usingSpringWithDamping:completionCopy initialSpringVelocity:v16 options:0.0 animations:1.0 completion:0.0, v17, v18, v19, v20];
    }

    else
    {
      (v14[2])(v14);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }
  }
}

- (void)expandCellAtIndexPath:(id)path animated:(BOOL)animated highlightFirst:(BOOL)first expansionStatus:(int64_t)status
{
  firstCopy = first;
  animatedCopy = animated;
  pathCopy = path;
  v11 = +[MFConversationCellConfigurator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = pathCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "cellConfigurator expandCellAtIndexPath:%@", buf, 0xCu);
  }

  delegate = [(MFConversationCellConfigurator *)self delegate];
  collectionView = [(MFConversationCellConfigurator *)self collectionView];
  v13 = [delegate cellConfigurator:self messageItemIDAtIndexPath:pathCopy];
  if (!v13)
  {
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MFConversationCellConfigurator.m" lineNumber:349 description:@"messageItemID cannot be nil."];
  }

  v14 = [delegate cellConfigurator:self targetHeightForExpandingCellAtIndexPath:pathCopy];
  if (v14)
  {
    sizeTracker = [(MFConversationCellConfigurator *)self sizeTracker];
    [collectionView frame];
    v17 = v16;
    [v14 floatValue];
    [sizeTracker setIntrinsicSize:v13 forCellWithItemID:{v17, v18}];
  }

  expansionTracker = [(MFConversationCellConfigurator *)self expansionTracker];
  [expansionTracker setMessageWithItemID:v13 expansionStatus:status];

  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout setExpandingIndexPath:pathCopy];
  objc_initWeak(buf, self);
  heightChangeAnimator = [(MFConversationCellConfigurator *)self heightChangeAnimator];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001B9964;
  v39[3] = &unk_100653AC8;
  objc_copyWeak(&v41, buf);
  v22 = collectionViewLayout;
  v40 = v22;
  [heightChangeAnimator addCompletion:v39];

  [(MFConversationCellConfigurator *)self setAnimatingHeightChange:1];
  objc_initWeak(&location, delegate);
  heightChangeAnimator2 = [(MFConversationCellConfigurator *)self heightChangeAnimator];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001B99E0;
  v32[3] = &unk_100653AF0;
  objc_copyWeak(&v35, buf);
  objc_copyWeak(&v36, &location);
  v24 = v22;
  v33 = v24;
  v25 = pathCopy;
  v34 = v25;
  v37 = animatedCopy;
  [heightChangeAnimator2 addAnimations:v32];

  if (animatedCopy && firstCopy)
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
    heightChangeAnimator3 = [(MFConversationCellConfigurator *)self heightChangeAnimator];
    [heightChangeAnimator3 startAnimation];
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);
}

- (BOOL)updateSemiExpandedToFullyExpandedIfNecessaryAtIndexPath:(id)path renderedHeight:(double)height
{
  pathCopy = path;
  delegate = [(MFConversationCellConfigurator *)self delegate];
  sizeTracker = [(MFConversationCellConfigurator *)self sizeTracker];
  delegate2 = [sizeTracker delegate];
  v10 = 0;
  if ([(MFConversationCellConfigurator *)self expansionStatusForMessageAtIndexPath:pathCopy]== 2 && delegate && delegate2)
  {
    v11 = [delegate cellConfigurator:self messageItemIDAtIndexPath:pathCopy];
    if (v11 && ([delegate2 defaultSemiExpandedHeightForTracker:sizeTracker], v12 >= height))
    {
      expansionTracker = [(MFConversationCellConfigurator *)self expansionTracker];
      [expansionTracker setMessageWithItemID:v11 expansionStatus:3];

      v14 = +[MFConversationCellConfigurator log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = v11;
        v18 = 2048;
        heightCopy = height;
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
  lastAnimatedExpansionTimestamp = [(MFConversationCellConfigurator *)self lastAnimatedExpansionTimestamp];
  [lastAnimatedExpansionTimestamp timeIntervalSinceNow];
  v5 = v4;

  if (![(MFConversationCellConfigurator *)self animatingHeightChange]&& (v5 >= 0.0 || v5 <= -1.0))
  {
    return 0;
  }

  collectionView = [(MFConversationCellConfigurator *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  objc_initWeak(&location, self);
  heightChangeAnimator = [(MFConversationCellConfigurator *)self heightChangeAnimator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B9EE4;
  v11[3] = &unk_10064C838;
  objc_copyWeak(&v12, &location);
  [heightChangeAnimator addAnimations:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return 1;
}

- (void)expansionTracker:(id)tracker didChangeCollapsingAllowed:(BOOL)allowed
{
  v5 = [(MFConversationCellConfigurator *)self delegate:tracker];
  [v5 cellConfigurator:self didInvalidateConfigurationForCellsAtIndexPaths:0];
}

- (MFConversationCellConfiguratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
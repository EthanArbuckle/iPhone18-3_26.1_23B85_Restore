@interface RoutePlanningOutlineController
+ (UICollectionViewLayout)defaultCollectionViewLayout;
+ (id)defaultLayoutSectionInLayoutEnvironment:(id)environment;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (RoutePlanningOutlineController)initWithCollectionView:(id)view;
- (id)_blurredBackgroundView;
- (id)_findVisualEffectView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)outlineSectionAtIndex:(int64_t)index;
- (int64_t)_localSectionForGlobalSectionIndex:(int64_t)index forSection:(id)section;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)indexOfFirstPopulatedSection;
- (int64_t)sectionIndexForOutlineSection:(id)section;
- (void)_recalculateSectionCounts;
- (void)_reloadHeaderLayoutItem;
- (void)_removeHeaderLayoutItem;
- (void)_resetElevationGraphs;
- (void)_updateVisibleOutlineSections;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performBatchSectionUpdates:(id)updates;
- (void)prepareOutlineSections;
- (void)setCollectionView:(id)view;
- (void)setHeaderView:(id)view;
- (void)setHideContent:(BOOL)content;
@end

@implementation RoutePlanningOutlineController

- (int64_t)sectionIndexForOutlineSection:(id)section
{
  sectionStartIndexByIdentifier = self->_sectionStartIndexByIdentifier;
  sectionIdentifier = [section sectionIdentifier];
  v5 = [(NSMutableDictionary *)sectionStartIndexByIdentifier objectForKeyedSubscript:sectionIdentifier];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  if ([kindCopy isEqualToString:UICollectionElementKindSectionFooter])
  {
    v11 = +[_TtC4Maps29RoutingAdvisoryInfoFooterView reuseIdentifier];
    v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v11 forIndexPath:pathCopy];

    [v12 frame];
    [v12 setFrame:?];
    [v12 setAlpha:0.0];
  }

  else
  {
    v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:kindCopy forIndexPath:pathCopy];
    v13 = [kindCopy isEqualToString:@"RoutePlanningOutlineHeaderView"];

    if (v13)
    {
      headerView = [(RoutePlanningOutlineController *)self headerView];

      if (headerView)
      {
        headerView2 = [(RoutePlanningOutlineController *)self headerView];
        [v12 addSubview:headerView2];

        headerView3 = [(RoutePlanningOutlineController *)self headerView];
        LODWORD(v17) = 1148846080;
        v18 = [headerView3 _maps_constraintsEqualToEdgesOfView:v12 priority:v17];
        allConstraints = [v18 allConstraints];
        [NSLayoutConstraint activateConstraints:allConstraints];
      }
    }
  }

  return v12;
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  v7 = [v6 selectionFollowsFocusForItemAtIndexPath:pathCopy];

  return v7;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  v9 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  [v9 willDisplayCell:cellCopy forIndexPath:pathCopy];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  [v6 didSelectItemAtIndexPath:pathCopy];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  v7 = [v6 shouldSelectItemAtIndexPath:pathCopy];

  return v7;
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  [v6 didUnhighlightItemAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  [v6 didHighlightItemAtIndexPath:pathCopy];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  v7 = [v6 shouldHighlightItemAtIndexPath:pathCopy];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v6 = [(RoutePlanningOutlineController *)self outlineSectionAtIndex:section];
  v7 = [v6 numberOfItemsInSection:{-[RoutePlanningOutlineController _localSectionForGlobalSectionIndex:forSection:](self, "_localSectionForGlobalSectionIndex:forSection:", section, v6)}];

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [pathCopy section]);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100BDEA20;
  v20 = sub_100BDEA30;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100BDEA38;
  v12[3] = &unk_101660778;
  v8 = v15 = &v16;
  v13 = v8;
  v9 = pathCopy;
  v14 = v9;
  [UIView performWithoutAnimation:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (int64_t)_localSectionForGlobalSectionIndex:(int64_t)index forSection:(id)section
{
  sectionStartIndexByIdentifier = self->_sectionStartIndexByIdentifier;
  sectionIdentifier = [section sectionIdentifier];
  v7 = [(NSMutableDictionary *)sectionStartIndexByIdentifier objectForKeyedSubscript:sectionIdentifier];
  integerValue = [v7 integerValue];

  return index - integerValue;
}

- (int64_t)indexOfFirstPopulatedSection
{
  if (self->_numberOfSections < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = 0;
  while (1)
  {
    collectionView = [(RoutePlanningOutlineController *)self collectionView];
    v5 = [(RoutePlanningOutlineController *)self collectionView:collectionView numberOfItemsInSection:v3];

    if (v5 > 0)
    {
      break;
    }

    if (++v3 >= self->_numberOfSections)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (id)outlineSectionAtIndex:(int64_t)index
{
  allKeys = [(NSMutableDictionary *)self->_sectionIdentifiersByStartIndex allKeys];
  v6 = [allKeys sortedArrayUsingSelector:"compare:"];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    obj = v7;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      integerValue = [v12 integerValue];
      v14 = [(NSMutableDictionary *)self->_sectionIdentifiersByStartIndex objectForKeyedSubscript:v12];
      v15 = [(NSMutableDictionary *)self->_sectionCountByIdentifier objectForKeyedSubscript:v14];
      integerValue2 = [v15 integerValue];

      if (integerValue <= index && integerValue + integerValue2 > index)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v22 = [(NSMutableDictionary *)self->_sectionsByIdentifier objectForKeyedSubscript:v14];

    v7 = obj;
    if (!v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_13:

LABEL_14:
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      index = [NSString stringWithFormat:@"Invalid index passed to outlineSectionAtIndex: %ld", index];
      *buf = 136316162;
      v30 = "[RoutePlanningOutlineController outlineSectionAtIndex:]";
      v31 = 2080;
      v32 = "RoutePlanningOutlineController.m";
      v33 = 1024;
      v34 = 358;
      v35 = 2080;
      v36 = "section";
      v37 = 2112;
      v38 = index;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v22 = 0;
  }

  return v22;
}

- (void)performBatchSectionUpdates:(id)updates
{
  ++self->_batchUpdateCounter;
  updatesCopy = updates;
  v5 = sub_1007995B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    batchUpdateCounter = self->_batchUpdateCounter;
    v13 = 134217984;
    v14 = batchUpdateCounter;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Incrementing batch update counter to %lu", &v13, 0xCu);
  }

  updatesCopy[2](updatesCopy);
  --self->_batchUpdateCounter;
  v7 = sub_1007995B8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->_batchUpdateCounter;
    v13 = 134217984;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Decrementing batch update counter to %lu", &v13, 0xCu);
  }

  if (!self->_batchUpdateCounter)
  {
    v9 = sub_1007995B8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Reloading sections after batch updates", &v13, 2u);
    }

    [(RoutePlanningOutlineController *)self _updateVisibleOutlineSections];
    collectionView = [(RoutePlanningOutlineController *)self collectionView];
    [collectionView _maps_reloadDataWithoutFocus];

    postReloadHandler = [(RoutePlanningOutlineController *)self postReloadHandler];

    if (postReloadHandler)
    {
      postReloadHandler2 = [(RoutePlanningOutlineController *)self postReloadHandler];
      postReloadHandler2[2]();
    }
  }
}

- (void)_recalculateSectionCounts
{
  if (!self->_batchUpdateCounter)
  {
    [(NSMutableDictionary *)self->_sectionCountByIdentifier removeAllObjects];
    [(NSMutableDictionary *)self->_sectionStartIndexByIdentifier removeAllObjects];
    [(NSMutableDictionary *)self->_sectionIdentifiersByStartIndex removeAllObjects];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    visibleOutlineSections = self->_visibleOutlineSections;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100BDF260;
    v8[3] = &unk_10164D178;
    v8[4] = self;
    v8[5] = &v9;
    [(NSArray *)visibleOutlineSections enumerateObjectsUsingBlock:v8];
    self->_numberOfSections = v10[3];
    v4 = sub_1007995B8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      numberOfSections = self->_numberOfSections;
      sectionCountByIdentifier = self->_sectionCountByIdentifier;
      sectionStartIndexByIdentifier = self->_sectionStartIndexByIdentifier;
      *buf = 134218498;
      v14 = numberOfSections;
      v15 = 2112;
      v16 = sectionCountByIdentifier;
      v17 = 2112;
      v18 = sectionStartIndexByIdentifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recalculated %lu section counts (\ncount: %@\nstartIndex: %@", buf, 0x20u);
    }

    _Block_object_dispose(&v9, 8);
  }
}

- (void)_updateVisibleOutlineSections
{
  if (!self->_batchUpdateCounter)
  {
    if ([(RoutePlanningOutlineController *)self hideContent])
    {
      visibleOutlineSections = self->_visibleOutlineSections;
      self->_visibleOutlineSections = &__NSArray0__struct;
    }

    else
    {
      outlineSections = self->_outlineSections;
      visibleOutlineSections = [NSPredicate predicateWithBlock:&stru_10164D150];
      v5 = [(NSArray *)outlineSections filteredArrayUsingPredicate:visibleOutlineSections];
      v6 = self->_visibleOutlineSections;
      self->_visibleOutlineSections = v5;
    }

    v7 = sub_1007995B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSArray *)self->_visibleOutlineSections count];
      v9 = [(NSArray *)self->_outlineSections count];
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu/%lu sections should be visible", &v10, 0x16u);
    }

    [(RoutePlanningOutlineController *)self _recalculateSectionCounts];
    [(RoutePlanningOutlineController *)self didUpdateVisibleOutlineSections];
  }
}

- (void)prepareOutlineSections
{
  v3 = sub_1007995B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will prepare outline sections...", buf, 2u);
  }

  [(NSMutableDictionary *)self->_sectionsByIdentifier removeAllObjects];
  outlineSections = self->_outlineSections;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100BDF5D8;
  v5[3] = &unk_10164D110;
  v5[4] = self;
  [(NSArray *)outlineSections enumerateObjectsUsingBlock:v5];
  [(RoutePlanningOutlineController *)self _updateVisibleOutlineSections];
}

- (void)_resetElevationGraphs
{
  if ([(UICollectionView *)self->_collectionView numberOfSections]>= 1)
  {
    v3 = 0;
    do
    {
      if ([(UICollectionView *)self->_collectionView numberOfItemsInSection:v3]>= 1)
      {
        v4 = 0;
        do
        {
          v5 = [NSIndexPath indexPathForItem:v4 inSection:v3];
          v6 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v5];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 _reloadElevationChart];
          }

          ++v4;
        }

        while (v4 < [(UICollectionView *)self->_collectionView numberOfItemsInSection:v3]);
      }

      ++v3;
    }

    while (v3 < [(UICollectionView *)self->_collectionView numberOfSections]);
  }

  [(RoutePlanningOutlineController *)self performBatchSectionUpdates:&stru_10164D0E8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &off_10164D0E0)
  {
    [(RoutePlanningOutlineController *)self _resetElevationGraphs];
  }

  else if (context == &off_10164D0B8)
  {
    [(RoutePlanningOutlineController *)self _reloadHeaderLayoutItem];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = RoutePlanningOutlineController;
    [(RoutePlanningOutlineController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)_findVisualEffectView
{
  if ([(RoutePlanningOutlineController *)self _shouldUseBlurredBackground])
  {
    v3 = self->_collectionView;
    if (v3)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview = [(UICollectionView *)v3 superview];

        v3 = superview;
      }

      while (superview);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_blurredBackgroundView
{
  backgroundView = [(UICollectionView *)self->_collectionView backgroundView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backgroundView2 = [(UICollectionView *)self->_collectionView backgroundView];
  }

  else
  {
    backgroundView2 = 0;
  }

  return backgroundView2;
}

- (void)setHideContent:(BOOL)content
{
  if (self->_hideContent != content)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100BDFA20;
    v5[3] = &unk_101661AE0;
    contentCopy = content;
    v5[4] = self;
    [(RoutePlanningOutlineController *)self performBatchSectionUpdates:v5];
  }
}

- (void)_removeHeaderLayoutItem
{
  collectionViewLayout = [(RoutePlanningOutlineController *)self collectionViewLayout];
  configuration = [collectionViewLayout configuration];
  [configuration setBoundarySupplementaryItems:&__NSArray0__struct];
  [collectionViewLayout setConfiguration:configuration];
}

- (void)_reloadHeaderLayoutItem
{
  headerView = self->_headerView;
  if (headerView)
  {
    [(UIView *)headerView intrinsicContentSize];
    if (v4 == UIViewNoIntrinsicMetric)
    {
      v5 = self->_headerView;
      collectionView = [(RoutePlanningOutlineController *)self collectionView];
      [collectionView bounds];
      [(UIView *)v5 _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v23)];
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    collectionViewLayout = [(RoutePlanningOutlineController *)self collectionViewLayout];
    configuration = [collectionViewLayout configuration];
    boundarySupplementaryItems = [configuration boundarySupplementaryItems];
    firstObject = [boundarySupplementaryItems firstObject];

    if (!firstObject || ([firstObject layoutSize], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "heightDimension"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "dimension"), v16 = vabdd_f64(v15, v8), v14, v13, v16 > 2.22044605e-16))
    {
      v17 = [NSCollectionLayoutDimension estimatedDimension:v8];
      v18 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v19 = [NSCollectionLayoutSize sizeWithWidthDimension:v18 heightDimension:v17];

      v20 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v19 elementKind:@"RoutePlanningOutlineHeaderView" alignment:1 absoluteOffset:0.0, -16.0];
      v22 = v20;
      v21 = [NSArray arrayWithObjects:&v22 count:1];
      [configuration setBoundarySupplementaryItems:v21];

      [collectionViewLayout setConfiguration:configuration];
    }
  }
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView == viewCopy)
  {
    [(RoutePlanningOutlineController *)self _reloadHeaderLayoutItem];
  }

  else
  {
    if (headerView)
    {
      [(UIView *)self->_headerView removeObserver:self forKeyPath:@"bounds" context:&off_10164D0B8];
    }

    objc_storeStrong(&self->_headerView, view);
    v6 = viewCopy;
    if (viewCopy)
    {
      [(RoutePlanningOutlineController *)self _reloadHeaderLayoutItem];
      [(UIView *)viewCopy addObserver:self forKeyPath:@"bounds" options:0 context:&off_10164D0B8];
    }

    else
    {
      if (!headerView)
      {
        goto LABEL_10;
      }

      [(RoutePlanningOutlineController *)self _removeHeaderLayoutItem];
    }
  }

  v6 = viewCopy;
LABEL_10:
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_collectionView == viewCopy)
  {
    if (!viewCopy)
    {
      goto LABEL_7;
    }

    dataSource = [(UICollectionView *)viewCopy dataSource];
    v12 = dataSource;
    if (dataSource == self)
    {
      delegate = [(UICollectionView *)v6 delegate];

      if (delegate == self)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  objc_storeStrong(&self->_collectionView, view);
  if (self->_collectionView)
  {
    v7 = sub_1007995B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Adopting collection view", v14, 2u);
    }

    [(UICollectionView *)self->_collectionView setDataSource:self];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"RoutePlanningOutlineHeaderView" withReuseIdentifier:@"RoutePlanningOutlineHeaderView"];
    collectionView = self->_collectionView;
    v9 = objc_opt_class();
    v10 = +[_TtC4Maps29RoutingAdvisoryInfoFooterView reuseIdentifier];
    [(UICollectionView *)collectionView registerClass:v9 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v10];
  }

  [(RoutePlanningOutlineController *)self prepareOutlineSections];
  [(RoutePlanningOutlineController *)self _recalculateSectionCounts];
  [(UICollectionView *)self->_collectionView _maps_reloadDataWithoutFocus];
LABEL_7:
}

- (void)dealloc
{
  [(UIView *)self->_headerView removeObserver:self forKeyPath:@"bounds" context:&off_10164D0B8];
  v3.receiver = self;
  v3.super_class = RoutePlanningOutlineController;
  [(RoutePlanningOutlineController *)&v3 dealloc];
}

- (RoutePlanningOutlineController)initWithCollectionView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = RoutePlanningOutlineController;
  v5 = [(RoutePlanningOutlineController *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    sectionsByIdentifier = v5->_sectionsByIdentifier;
    v5->_sectionsByIdentifier = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    sectionCountByIdentifier = v5->_sectionCountByIdentifier;
    v5->_sectionCountByIdentifier = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    sectionStartIndexByIdentifier = v5->_sectionStartIndexByIdentifier;
    v5->_sectionStartIndexByIdentifier = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    sectionIdentifiersByStartIndex = v5->_sectionIdentifiersByStartIndex;
    v5->_sectionIdentifiersByStartIndex = v12;

    [(RoutePlanningOutlineController *)v5 setCollectionView:viewCopy];
  }

  return v5;
}

+ (UICollectionViewLayout)defaultCollectionViewLayout
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100BE0214;
  v5[3] = &unk_10164D0C0;
  v5[4] = self;
  v2 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v5];
  v3 = objc_opt_class();
  objc_setAssociatedObject(v3, "defaultCollectionViewLayout", v2, 1);

  return v2;
}

+ (id)defaultLayoutSectionInLayoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:environmentCopy];
  [v4 setEstimatedRowHeight:_UICollectionViewListLayoutSectionAutomaticDimension];
  [v4 setSeparatorStyle:0];
  v5 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v4 layoutEnvironment:environmentCopy];

  return v5;
}

@end
@interface RoutePlanningRouteStepsOutlineSection
- (BOOL)shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)shouldSelectItemAtIndexPath:(id)path;
- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)path;
- (TransitDirectionsStepsListDelegate)stepsListDelegate;
- (id)cellForItemAtIndexPath:(id)path;
- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (void)_configureCell:(id)cell forIndexPath:(id)path;
- (void)didHighlightItemAtIndexPath:(id)path;
- (void)didSelectItemAtIndexPath:(id)path;
- (void)didUnhighlightItemAtIndexPath:(id)path;
- (void)setCurrentRoute:(BOOL)route;
- (void)setRoute:(id)route;
- (void)setStepsListDelegate:(id)delegate;
@end

@implementation RoutePlanningRouteStepsOutlineSection

- (TransitDirectionsStepsListDelegate)stepsListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepsListDelegate);

  return WeakRetained;
}

- (void)didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView didSelectItemAtIndexPath:pathCopy];
  }
}

- (BOOL)shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView shouldSelectItemAtIndexPath:pathCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RoutePlanningRouteStepsOutlineSection;
    v5 = [(RoutePlanningOutlineSection *)&v8 shouldSelectItemAtIndexPath:pathCopy];
  }

  v6 = v5;

  return v6;
}

- (void)didUnhighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView didUnhighlightItemAtIndexPath:pathCopy];
  }
}

- (void)didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView didHighlightItemAtIndexPath:pathCopy];
  }
}

- (BOOL)shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView shouldHighlightItemAtIndexPath:pathCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RoutePlanningRouteStepsOutlineSection;
    v5 = [(RoutePlanningOutlineSection *)&v8 shouldHighlightItemAtIndexPath:pathCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_configureCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cellCopy;
    item = [pathCopy item];
    if (item == -[RoutePlanningRouteStepsOutlineSection numberOfItemsInSection:](self, "numberOfItemsInSection:", [pathCopy section]) - 1)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    [v7 _setBackgroundViewConfigurationGrouping:v9];
  }

  [cellCopy setMaps_suppressBackgroundColors:{-[RoutePlanningRouteStepsOutlineSection isCurrentRoute](self, "isCurrentRoute") ^ 1}];
}

- (id)cellForItemAtIndexPath:(id)path
{
  stepsListDataSource = self->_stepsListDataSource;
  collectionView = self->super._collectionView;
  pathCopy = path;
  v7 = [(DirectionsStepsListDataSource *)stepsListDataSource collectionView:collectionView cellForItemAtIndexPath:pathCopy];
  [(RoutePlanningRouteStepsOutlineSection *)self _configureCell:v7 forIndexPath:pathCopy];

  return v7;
}

- (void)setStepsListDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_stepsListDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_stepsListDelegate, obj);
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource setDelegate:obj];
  }
}

- (void)setCurrentRoute:(BOOL)route
{
  if (self->_currentRoute != route)
  {
    routeCopy = route;
    self->_currentRoute = route;
    host = [(RoutePlanningOutlineSection *)self host];
    v6 = [host sectionIndexForOutlineSection:self];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    indexPathsForVisibleItems = [(UICollectionView *)self->super._collectionView indexPathsForVisibleItems];
    v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(indexPathsForVisibleItems);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 section] == v6)
          {
            v13 = [(UICollectionView *)self->super._collectionView cellForItemAtIndexPath:v12];
            [v13 setMaps_suppressBackgroundColors:!routeCopy];
          }
        }

        v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  route = self->_route;
  v7 = routeCopy;
  routeCopy2 = route;
  if (v7 | routeCopy2)
  {
    v9 = routeCopy2;
    v10 = [v7 isEqual:routeCopy2];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_route, route);
      stepsListDataSource = self->_stepsListDataSource;
      if (stepsListDataSource)
      {
        [(DirectionsStepsListDataSource *)stepsListDataSource setCollectionView:0];
        v12 = self->_stepsListDataSource;
        self->_stepsListDataSource = 0;
      }

      if (v7)
      {
        transportType = [v7 transportType];
        v14 = off_1015F6670;
        if (transportType != 1)
        {
          v14 = off_1015F6228;
        }

        v15 = objc_alloc_init(*v14);
        v16 = self->_stepsListDataSource;
        self->_stepsListDataSource = v15;

        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setAllowStepSelection:1];
        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setFlattenToSingleSection:1];
        stepsListDelegate = [(RoutePlanningRouteStepsOutlineSection *)self stepsListDelegate];
        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setDelegate:stepsListDelegate];

        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setOptions:15];
        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setRoute:v7];
        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setCollectionView:self->super._collectionView];
        objc_initWeak(&location, self);
        v20 = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_1009C819C;
        v23 = &unk_101661B98;
        objc_copyWeak(&v24, &location);
        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setReloadHandler:&v20];
        v18 = [(RoutePlanningOutlineSection *)self host:v20];
        [v18 outlineSectionRequiresReload:self];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      else
      {
        host = [(RoutePlanningOutlineSection *)self host];
        [host outlineSectionRequiresReload:self];
      }
    }
  }
}

- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)path
{
  pathCopy = path;
  v5 = _UICollectionViewListLayoutSectionAutomaticDimension;
  *&v19 = _UICollectionViewListLayoutSectionAutomaticDimension;
  *(&v19 + 1) = _UICollectionViewListLayoutSectionAutomaticDimension;
  *&v20 = _UICollectionViewListLayoutSectionAutomaticDimension;
  *(&v20 + 1) = _UICollectionViewListLayoutSectionAutomaticDimension;
  if (sub_10000FA08(self->super._collectionView) == 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = _UICollectionViewListSectionSeparatorInsetHidden[0];
    v6 = _UICollectionViewListSectionSeparatorInsetHidden[1];
    v7 = _UICollectionViewListSectionSeparatorInsetHidden[2];
    v8 = _UICollectionViewListSectionSeparatorInsetHidden[3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (([(DirectionsStepsListDataSource *)self->_stepsListDataSource shouldShowSeparatorForItemAtIndexPath:pathCopy insets:&v19]& 1) == 0)
      {
        v9 = *&_UICollectionViewListSectionSeparatorInsetHidden[2];
        v19 = *_UICollectionViewListSectionSeparatorInsetHidden;
        v20 = v9;
      }

      v6 = *(&v19 + 1);
      v5 = *&v19;
      v8 = *(&v20 + 1);
      v7 = *&v20;
    }

    else
    {
      v10 = [pathCopy row];
      if (v10 >= (-[DirectionsStepsListDataSource collectionView:numberOfItemsInSection:](self->_stepsListDataSource, "collectionView:numberOfItemsInSection:", self->super._collectionView, [pathCopy section]) - 1))
      {
        v6 = v5;
      }

      else
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        traitCollection = [(UICollectionView *)self->super._collectionView traitCollection];
        +[DirectionsStepTableViewCell cellMetricsForIdiom:](DirectionsStepTableViewCell, "cellMetricsForIdiom:", [traitCollection userInterfaceIdiom]);
        v6 = v18 + v16 + v17;
      }

      v7 = v5;
      v8 = v5;
    }
  }

  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = RoutePlanningRouteStepsOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v13 listLayoutSectionConfigurationAtIndex:index layoutEnvironment:environmentCopy];
  v8 = _UICollectionViewListLayoutSectionAutomaticDimension;
  [v7 setEstimatedRowHeight:_UICollectionViewListLayoutSectionAutomaticDimension];
  [v7 setRowHeight:v8];
  [v7 setSeparatorStyle:1];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009C85DC;
  v10[3] = &unk_10165D6A8;
  objc_copyWeak(&v11, &location);
  [v7 setSeparatorInsetProvider:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  v6.receiver = self;
  v6.super_class = RoutePlanningRouteStepsOutlineSection;
  v4 = [(RoutePlanningOutlineSection *)&v6 layoutSectionAtIndex:index layoutEnvironment:environment];
  [v4 setContentInsets:{0.0, 10.0, 0.0, 10.0}];

  return v4;
}

@end
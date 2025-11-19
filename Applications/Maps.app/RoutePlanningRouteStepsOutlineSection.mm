@interface RoutePlanningRouteStepsOutlineSection
- (BOOL)shouldHighlightItemAtIndexPath:(id)a3;
- (BOOL)shouldSelectItemAtIndexPath:(id)a3;
- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)a3;
- (TransitDirectionsStepsListDelegate)stepsListDelegate;
- (id)cellForItemAtIndexPath:(id)a3;
- (id)layoutSectionAtIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)_configureCell:(id)a3 forIndexPath:(id)a4;
- (void)didHighlightItemAtIndexPath:(id)a3;
- (void)didSelectItemAtIndexPath:(id)a3;
- (void)didUnhighlightItemAtIndexPath:(id)a3;
- (void)setCurrentRoute:(BOOL)a3;
- (void)setRoute:(id)a3;
- (void)setStepsListDelegate:(id)a3;
@end

@implementation RoutePlanningRouteStepsOutlineSection

- (TransitDirectionsStepsListDelegate)stepsListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepsListDelegate);

  return WeakRetained;
}

- (void)didSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView didSelectItemAtIndexPath:v4];
  }
}

- (BOOL)shouldSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView shouldSelectItemAtIndexPath:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RoutePlanningRouteStepsOutlineSection;
    v5 = [(RoutePlanningOutlineSection *)&v8 shouldSelectItemAtIndexPath:v4];
  }

  v6 = v5;

  return v6;
}

- (void)didUnhighlightItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView didUnhighlightItemAtIndexPath:v4];
  }
}

- (void)didHighlightItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView didHighlightItemAtIndexPath:v4];
  }
}

- (BOOL)shouldHighlightItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DirectionsStepsListDataSource *)self->_stepsListDataSource collectionView:self->super._collectionView shouldHighlightItemAtIndexPath:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RoutePlanningRouteStepsOutlineSection;
    v5 = [(RoutePlanningOutlineSection *)&v8 shouldHighlightItemAtIndexPath:v4];
  }

  v6 = v5;

  return v6;
}

- (void)_configureCell:(id)a3 forIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = [v6 item];
    if (v8 == -[RoutePlanningRouteStepsOutlineSection numberOfItemsInSection:](self, "numberOfItemsInSection:", [v6 section]) - 1)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    [v7 _setBackgroundViewConfigurationGrouping:v9];
  }

  [v10 setMaps_suppressBackgroundColors:{-[RoutePlanningRouteStepsOutlineSection isCurrentRoute](self, "isCurrentRoute") ^ 1}];
}

- (id)cellForItemAtIndexPath:(id)a3
{
  stepsListDataSource = self->_stepsListDataSource;
  collectionView = self->super._collectionView;
  v6 = a3;
  v7 = [(DirectionsStepsListDataSource *)stepsListDataSource collectionView:collectionView cellForItemAtIndexPath:v6];
  [(RoutePlanningRouteStepsOutlineSection *)self _configureCell:v7 forIndexPath:v6];

  return v7;
}

- (void)setStepsListDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_stepsListDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_stepsListDelegate, obj);
    [(DirectionsStepsListDataSource *)self->_stepsListDataSource setDelegate:obj];
  }
}

- (void)setCurrentRoute:(BOOL)a3
{
  if (self->_currentRoute != a3)
  {
    v3 = a3;
    self->_currentRoute = a3;
    v5 = [(RoutePlanningOutlineSection *)self host];
    v6 = [v5 sectionIndexForOutlineSection:self];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(UICollectionView *)self->super._collectionView indexPathsForVisibleItems];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 section] == v6)
          {
            v13 = [(UICollectionView *)self->super._collectionView cellForItemAtIndexPath:v12];
            [v13 setMaps_suppressBackgroundColors:!v3];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  route = self->_route;
  v7 = v5;
  v8 = route;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_route, a3);
      stepsListDataSource = self->_stepsListDataSource;
      if (stepsListDataSource)
      {
        [(DirectionsStepsListDataSource *)stepsListDataSource setCollectionView:0];
        v12 = self->_stepsListDataSource;
        self->_stepsListDataSource = 0;
      }

      if (v7)
      {
        v13 = [v7 transportType];
        v14 = off_1015F6670;
        if (v13 != 1)
        {
          v14 = off_1015F6228;
        }

        v15 = objc_alloc_init(*v14);
        v16 = self->_stepsListDataSource;
        self->_stepsListDataSource = v15;

        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setAllowStepSelection:1];
        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setFlattenToSingleSection:1];
        v17 = [(RoutePlanningRouteStepsOutlineSection *)self stepsListDelegate];
        [(DirectionsStepsListDataSource *)self->_stepsListDataSource setDelegate:v17];

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
        v19 = [(RoutePlanningOutlineSection *)self host];
        [v19 outlineSectionRequiresReload:self];
      }
    }
  }
}

- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)a3
{
  v4 = a3;
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
      if (([(DirectionsStepsListDataSource *)self->_stepsListDataSource shouldShowSeparatorForItemAtIndexPath:v4 insets:&v19]& 1) == 0)
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
      v10 = [v4 row];
      if (v10 >= (-[DirectionsStepsListDataSource collectionView:numberOfItemsInSection:](self->_stepsListDataSource, "collectionView:numberOfItemsInSection:", self->super._collectionView, [v4 section]) - 1))
      {
        v6 = v5;
      }

      else
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        v11 = [(UICollectionView *)self->super._collectionView traitCollection];
        +[DirectionsStepTableViewCell cellMetricsForIdiom:](DirectionsStepTableViewCell, "cellMetricsForIdiom:", [v11 userInterfaceIdiom]);
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

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = RoutePlanningRouteStepsOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v13 listLayoutSectionConfigurationAtIndex:a3 layoutEnvironment:v6];
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

- (id)layoutSectionAtIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6.receiver = self;
  v6.super_class = RoutePlanningRouteStepsOutlineSection;
  v4 = [(RoutePlanningOutlineSection *)&v6 layoutSectionAtIndex:a3 layoutEnvironment:a4];
  [v4 setContentInsets:{0.0, 10.0, 0.0, 10.0}];

  return v4;
}

@end
@interface RoutePlanningRouteOverviewOutlineSection
- (BOOL)wantsDefaultPaddingAboveSection;
- (RouteOverviewCellDelegate)routeCellDelegate;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningRouteOverviewOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4;
- (double)estimatedItemHeight;
- (id)_existingCell;
- (id)cellForItemAtIndexPath:(id)a3;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (void)_configureCell:(id)a3;
- (void)_configureMapsRoutePlanningCell:(id)a3;
- (void)performWhileSuppressingCellReloads:(id)a3;
- (void)reloadExistingCell;
- (void)setAllowPersistentHighlight:(BOOL)a3;
- (void)setAutomaticSharingContacts:(id)a3;
- (void)setCurrentRoute:(BOOL)a3;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setHasSelectedStep:(BOOL)a3;
- (void)setLastRoute:(BOOL)a3;
- (void)setRoute:(id)a3;
- (void)setShowDetailButton:(BOOL)a3;
@end

@implementation RoutePlanningRouteOverviewOutlineSection

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (RouteOverviewCellDelegate)routeCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routeCellDelegate);

  return WeakRetained;
}

- (id)_existingCell
{
  v3 = [(RoutePlanningOutlineSection *)self host];
  v4 = [v3 sectionIndexForOutlineSection:self];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [NSIndexPath indexPathForItem:0 inSection:v4];
    v5 = [(UICollectionView *)self->super._collectionView cellForItemAtIndexPath:v6];
  }

  return v5;
}

- (void)_configureMapsRoutePlanningCell:(id)a3
{
  v14 = a3;
  v4 = [(RoutePlanningRouteOverviewOutlineSection *)self routeCellDelegate];
  [v14 setDelegate:v4];

  v5 = [(RoutePlanningRouteOverviewOutlineSection *)self route];
  [v14 setRoute:v5];

  if ([(RoutePlanningRouteOverviewOutlineSection *)self allowsPersistentHighlight])
  {
    v6 = [(RoutePlanningRouteOverviewOutlineSection *)self isCurrentRoute];
  }

  else
  {
    v6 = 0;
  }

  [v14 setShouldHighlight:v6];
  v7 = [(RoutePlanningRouteOverviewOutlineSection *)self automaticSharingContacts];
  [v14 setAutoSharingContacts:v7];

  [v14 setShowPreviewRouteButton:{-[RoutePlanningRouteOverviewOutlineSection showsDetailButton](self, "showsDetailButton")}];
  v8 = [(RoutePlanningRouteOverviewOutlineSection *)self route];
  v9 = [v8 origin];
  if ([v9 isCurrentLocation])
  {
    v10 = +[GEOCountryConfiguration sharedConfiguration];
    if ([v10 currentCountrySupportsNavigation])
    {
      v11 = [(RoutePlanningRouteOverviewOutlineSection *)self dataCoordinator];
      v12 = [v11 timing];
      if ([v12 isDepartNow])
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    v13 = 3;
  }

  [v14 setActionButtonType:v13];
  [v14 draw];
}

- (void)_configureCell:(id)a3
{
  v11 = a3;
  v4 = [(RoutePlanningRouteOverviewOutlineSection *)self route];
  v5 = sub_10000FA08(self->super._collectionView) == 5;
  v6 = [(RoutePlanningRouteOverviewOutlineSection *)self automaticSharingContacts];
  v7 = [(RoutePlanningRouteOverviewOutlineSection *)self dataCoordinator];
  [RouteOverviewCellComposer configureCell:v11 forRoute:v4 isMac:v5 automaticSharingContacts:v6 dataCoordinator:v7];

  [v11 setDetailsButtonRotated:{-[RoutePlanningRouteOverviewOutlineSection isExpanded](self, "isExpanded")}];
  if ([(RoutePlanningRouteOverviewOutlineSection *)self allowsPersistentHighlight])
  {
    v8 = [(RoutePlanningRouteOverviewOutlineSection *)self isCurrentRoute];
  }

  else
  {
    v8 = 0;
  }

  [v11 setSelectionBackgroundVisible:v8];
  [v11 setDetailsButtonVisible:{-[RoutePlanningRouteOverviewOutlineSection showsDetailButton](self, "showsDetailButton")}];
  [v11 setHasSelectedStep:{-[RoutePlanningRouteOverviewOutlineSection hasSelectedStep](self, "hasSelectedStep")}];
  v9 = [(RoutePlanningRouteOverviewOutlineSection *)self routeCellDelegate];
  [v11 setDelegate:v9];

  if (sub_10000FA08(v11) != 5)
  {
    if ([(RoutePlanningRouteOverviewOutlineSection *)self isFirstRoute]&& [(RoutePlanningRouteOverviewOutlineSection *)self isLastRoute])
    {
      v10 = 1;
    }

    else if ([(RoutePlanningRouteOverviewOutlineSection *)self isFirstRoute])
    {
      v10 = 2;
    }

    else if ([(RoutePlanningRouteOverviewOutlineSection *)self isLastRoute])
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    [v11 setOverrideCellGrouping:v10];
  }

  [v11 setDetailsButtonRotated:{-[RoutePlanningRouteOverviewOutlineSection isExpanded](self, "isExpanded")}];
}

- (void)reloadExistingCell
{
  if (!self->_suppressReloads)
  {
    v7 = [(RoutePlanningRouteOverviewOutlineSection *)self _existingCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RoutePlanningRouteOverviewOutlineSection *)self _configureCell:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v7;
        if ([(RoutePlanningRouteOverviewOutlineSection *)self allowsPersistentHighlight])
        {
          v5 = [(RoutePlanningRouteOverviewOutlineSection *)self isCurrentRoute];
        }

        else
        {
          v5 = 0;
        }

        [v4 setShouldHighlight:v5];
        [v4 setShowPreviewRouteButton:{-[RoutePlanningRouteOverviewOutlineSection showsDetailButton](self, "showsDetailButton")}];
        v6 = [(RoutePlanningRouteOverviewOutlineSection *)self automaticSharingContacts];
        [v4 setAutoSharingContacts:v6];

        [v4 draw];
      }
    }
  }
}

- (void)setLastRoute:(BOOL)a3
{
  if (self->_lastRoute != a3)
  {
    self->_lastRoute = a3;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setAutomaticSharingContacts:(id)a3
{
  v5 = a3;
  v6 = self->_automaticSharingContacts;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_automaticSharingContacts, a3);
      [(RoutePlanningRouteOverviewOutlineSection *)self _resetCachedRowHeight];
      [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
      v7 = v9;
    }
  }
}

- (void)setHasSelectedStep:(BOOL)a3
{
  if (self->_hasSelectedStep != a3)
  {
    self->_hasSelectedStep = a3;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setShowDetailButton:(BOOL)a3
{
  if (self->_showDetailButton != a3)
  {
    self->_showDetailButton = a3;
    [(RoutePlanningRouteOverviewOutlineSection *)self _resetCachedRowHeight];

    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setAllowPersistentHighlight:(BOOL)a3
{
  if (self->_allowPersistentHighlight != a3)
  {
    self->_allowPersistentHighlight = a3;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setCurrentRoute:(BOOL)a3
{
  if (self->_currentRoute != a3)
  {
    self->_currentRoute = a3;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (id)cellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    collectionView = self->super._collectionView;
    v6 = +[_TtC4Maps21MapsRoutePlanningCell reuseIdentifier];
    v7 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v4];

    [(RoutePlanningRouteOverviewOutlineSection *)self _configureMapsRoutePlanningCell:v7];
  }

  else
  {
    if (+[UIFont accessibilityTextEnabled])
    {
      v8 = @"RouteOverviewAX";
    }

    else
    {
      v8 = @"RouteOverview";
    }

    v7 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v4];

    [(RoutePlanningRouteOverviewOutlineSection *)self _configureCell:v7];
  }

  return v7;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(RoutePlanningRouteOverviewOutlineSection *)self route];

  return v3 != 0;
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_expanded != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_expanded = a3;
    v9 = [(RoutePlanningRouteOverviewOutlineSection *)self _existingCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v8 setDetailsButtonRotated:v6 animated:v5];
  }
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  route = self->_route;
  v11 = v5;
  v7 = route;
  v8 = v11;
  if (v11 | v7)
  {
    v9 = [v11 isEqual:v7];

    v8 = v11;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_route, a3);
      [(RoutePlanningRouteOverviewOutlineSection *)self _resetCachedRowHeight];
      v10 = [(RoutePlanningOutlineSection *)self host];
      [v10 outlineSectionRequiresReload:self];

      v8 = v11;
    }
  }
}

- (BOOL)wantsDefaultPaddingAboveSection
{
  if ([(RoutePlanningRouteOverviewOutlineSection *)self isFirstRoute])
  {
    return 1;
  }

  return _UISolariumEnabled();
}

- (double)estimatedItemHeight
{
  if (self->_route)
  {
    [(UICollectionView *)self->super._collectionView bounds];
    Width = CGRectGetWidth(v20);
    if (self->_cachedRowHeight <= 2.22044605e-16 || vabdd_f64(Width, self->_lastCachedWidthForRowHeight) > 2.22044605e-16)
    {
      self->_lastCachedWidthForRowHeight = Width;
      if (_UISolariumEnabled())
      {
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = sub_1009C945C;
        v17 = sub_1009C946C;
        v18 = [[_TtC4Maps21MapsRoutePlanningCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        v4 = v14[5];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1009C9474;
        v12[3] = &unk_101661600;
        v12[4] = self;
        v12[5] = &v13;
        [v4 _maps_compressedSizeForWidth:v12 withBlock:Width];
        self->_cachedRowHeight = v5;
        _Block_object_dispose(&v13, 8);
      }

      else
      {
        v7 = [[RouteOverviewCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1009C94C4;
        v10[3] = &unk_101661A90;
        v10[4] = self;
        v11 = v7;
        v8 = v7;
        [(RouteOverviewCell *)v8 _maps_compressedSizeForWidth:v10 withBlock:Width];
        self->_cachedRowHeight = v9;
      }
    }

    return self->_cachedRowHeight;
  }

  else
  {

    +[RouteOverviewCell minimumHeight];
  }

  return result;
}

- (void)performWhileSuppressingCellReloads:(id)a3
{
  if (a3)
  {
    ++self->_suppressReloads;
    (*(a3 + 2))(a3, a2);
    --self->_suppressReloads;
  }
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = RoutePlanningRouteOverviewOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v15 listLayoutSectionConfigurationAtIndex:a3 layoutEnvironment:v6];
  [v7 setSeparatorStyle:_UISolariumEnabled() ^ 1];
  v8 = [v6 traitCollection];
  v9 = [v8 userInterfaceIdiom] == 5;

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1009C9678;
  v11[3] = &unk_101631280;
  v13 = v9;
  objc_copyWeak(&v12, &location);
  [v7 setSeparatorInsetProvider:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v7;
}

- (RoutePlanningRouteOverviewOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RoutePlanningRouteOverviewOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v11 initWithCollectionView:v6 sectionIdentifier:a4];
  if (v7)
  {
    [DynamicTypeWizard makeObject:v7 performSelector:"_resetCachedRowHeight" whenSizeCategoryChangesWithOrder:1];
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RouteOverview"];
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RouteOverviewAX"];
    v8 = objc_opt_class();
    v9 = +[_TtC4Maps21MapsRoutePlanningCell reuseIdentifier];
    [v6 registerClass:v8 forCellWithReuseIdentifier:v9];
  }

  return v7;
}

@end
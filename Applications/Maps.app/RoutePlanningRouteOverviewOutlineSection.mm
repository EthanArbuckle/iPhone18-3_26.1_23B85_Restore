@interface RoutePlanningRouteOverviewOutlineSection
- (BOOL)wantsDefaultPaddingAboveSection;
- (RouteOverviewCellDelegate)routeCellDelegate;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningRouteOverviewOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier;
- (double)estimatedItemHeight;
- (id)_existingCell;
- (id)cellForItemAtIndexPath:(id)path;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (void)_configureCell:(id)cell;
- (void)_configureMapsRoutePlanningCell:(id)cell;
- (void)performWhileSuppressingCellReloads:(id)reloads;
- (void)reloadExistingCell;
- (void)setAllowPersistentHighlight:(BOOL)highlight;
- (void)setAutomaticSharingContacts:(id)contacts;
- (void)setCurrentRoute:(BOOL)route;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setHasSelectedStep:(BOOL)step;
- (void)setLastRoute:(BOOL)route;
- (void)setRoute:(id)route;
- (void)setShowDetailButton:(BOOL)button;
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
  host = [(RoutePlanningOutlineSection *)self host];
  v4 = [host sectionIndexForOutlineSection:self];

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

- (void)_configureMapsRoutePlanningCell:(id)cell
{
  cellCopy = cell;
  routeCellDelegate = [(RoutePlanningRouteOverviewOutlineSection *)self routeCellDelegate];
  [cellCopy setDelegate:routeCellDelegate];

  route = [(RoutePlanningRouteOverviewOutlineSection *)self route];
  [cellCopy setRoute:route];

  if ([(RoutePlanningRouteOverviewOutlineSection *)self allowsPersistentHighlight])
  {
    isCurrentRoute = [(RoutePlanningRouteOverviewOutlineSection *)self isCurrentRoute];
  }

  else
  {
    isCurrentRoute = 0;
  }

  [cellCopy setShouldHighlight:isCurrentRoute];
  automaticSharingContacts = [(RoutePlanningRouteOverviewOutlineSection *)self automaticSharingContacts];
  [cellCopy setAutoSharingContacts:automaticSharingContacts];

  [cellCopy setShowPreviewRouteButton:{-[RoutePlanningRouteOverviewOutlineSection showsDetailButton](self, "showsDetailButton")}];
  route2 = [(RoutePlanningRouteOverviewOutlineSection *)self route];
  origin = [route2 origin];
  if ([origin isCurrentLocation])
  {
    v10 = +[GEOCountryConfiguration sharedConfiguration];
    if ([v10 currentCountrySupportsNavigation])
    {
      dataCoordinator = [(RoutePlanningRouteOverviewOutlineSection *)self dataCoordinator];
      timing = [dataCoordinator timing];
      if ([timing isDepartNow])
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

  [cellCopy setActionButtonType:v13];
  [cellCopy draw];
}

- (void)_configureCell:(id)cell
{
  cellCopy = cell;
  route = [(RoutePlanningRouteOverviewOutlineSection *)self route];
  v5 = sub_10000FA08(self->super._collectionView) == 5;
  automaticSharingContacts = [(RoutePlanningRouteOverviewOutlineSection *)self automaticSharingContacts];
  dataCoordinator = [(RoutePlanningRouteOverviewOutlineSection *)self dataCoordinator];
  [RouteOverviewCellComposer configureCell:cellCopy forRoute:route isMac:v5 automaticSharingContacts:automaticSharingContacts dataCoordinator:dataCoordinator];

  [cellCopy setDetailsButtonRotated:{-[RoutePlanningRouteOverviewOutlineSection isExpanded](self, "isExpanded")}];
  if ([(RoutePlanningRouteOverviewOutlineSection *)self allowsPersistentHighlight])
  {
    isCurrentRoute = [(RoutePlanningRouteOverviewOutlineSection *)self isCurrentRoute];
  }

  else
  {
    isCurrentRoute = 0;
  }

  [cellCopy setSelectionBackgroundVisible:isCurrentRoute];
  [cellCopy setDetailsButtonVisible:{-[RoutePlanningRouteOverviewOutlineSection showsDetailButton](self, "showsDetailButton")}];
  [cellCopy setHasSelectedStep:{-[RoutePlanningRouteOverviewOutlineSection hasSelectedStep](self, "hasSelectedStep")}];
  routeCellDelegate = [(RoutePlanningRouteOverviewOutlineSection *)self routeCellDelegate];
  [cellCopy setDelegate:routeCellDelegate];

  if (sub_10000FA08(cellCopy) != 5)
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

    [cellCopy setOverrideCellGrouping:v10];
  }

  [cellCopy setDetailsButtonRotated:{-[RoutePlanningRouteOverviewOutlineSection isExpanded](self, "isExpanded")}];
}

- (void)reloadExistingCell
{
  if (!self->_suppressReloads)
  {
    _existingCell = [(RoutePlanningRouteOverviewOutlineSection *)self _existingCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RoutePlanningRouteOverviewOutlineSection *)self _configureCell:_existingCell];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = _existingCell;
        if ([(RoutePlanningRouteOverviewOutlineSection *)self allowsPersistentHighlight])
        {
          isCurrentRoute = [(RoutePlanningRouteOverviewOutlineSection *)self isCurrentRoute];
        }

        else
        {
          isCurrentRoute = 0;
        }

        [v4 setShouldHighlight:isCurrentRoute];
        [v4 setShowPreviewRouteButton:{-[RoutePlanningRouteOverviewOutlineSection showsDetailButton](self, "showsDetailButton")}];
        automaticSharingContacts = [(RoutePlanningRouteOverviewOutlineSection *)self automaticSharingContacts];
        [v4 setAutoSharingContacts:automaticSharingContacts];

        [v4 draw];
      }
    }
  }
}

- (void)setLastRoute:(BOOL)route
{
  if (self->_lastRoute != route)
  {
    self->_lastRoute = route;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setAutomaticSharingContacts:(id)contacts
{
  contactsCopy = contacts;
  v6 = self->_automaticSharingContacts;
  v7 = contactsCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_automaticSharingContacts, contacts);
      [(RoutePlanningRouteOverviewOutlineSection *)self _resetCachedRowHeight];
      [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
      v7 = v9;
    }
  }
}

- (void)setHasSelectedStep:(BOOL)step
{
  if (self->_hasSelectedStep != step)
  {
    self->_hasSelectedStep = step;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setShowDetailButton:(BOOL)button
{
  if (self->_showDetailButton != button)
  {
    self->_showDetailButton = button;
    [(RoutePlanningRouteOverviewOutlineSection *)self _resetCachedRowHeight];

    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setAllowPersistentHighlight:(BOOL)highlight
{
  if (self->_allowPersistentHighlight != highlight)
  {
    self->_allowPersistentHighlight = highlight;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (void)setCurrentRoute:(BOOL)route
{
  if (self->_currentRoute != route)
  {
    self->_currentRoute = route;
    [(RoutePlanningRouteOverviewOutlineSection *)self reloadExistingCell];
  }
}

- (id)cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (_UISolariumEnabled())
  {
    collectionView = self->super._collectionView;
    v6 = +[_TtC4Maps21MapsRoutePlanningCell reuseIdentifier];
    v7 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:pathCopy];

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

    v7 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

    [(RoutePlanningRouteOverviewOutlineSection *)self _configureCell:v7];
  }

  return v7;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  route = [(RoutePlanningRouteOverviewOutlineSection *)self route];

  return route != 0;
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  if (self->_expanded != expanded)
  {
    animatedCopy = animated;
    expandedCopy = expanded;
    self->_expanded = expanded;
    _existingCell = [(RoutePlanningRouteOverviewOutlineSection *)self _existingCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = _existingCell;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v8 setDetailsButtonRotated:expandedCopy animated:animatedCopy];
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  route = self->_route;
  v11 = routeCopy;
  routeCopy2 = route;
  v8 = v11;
  if (v11 | routeCopy2)
  {
    v9 = [v11 isEqual:routeCopy2];

    v8 = v11;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_route, route);
      [(RoutePlanningRouteOverviewOutlineSection *)self _resetCachedRowHeight];
      host = [(RoutePlanningOutlineSection *)self host];
      [host outlineSectionRequiresReload:self];

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

- (void)performWhileSuppressingCellReloads:(id)reloads
{
  if (reloads)
  {
    ++self->_suppressReloads;
    (*(reloads + 2))(reloads, a2);
    --self->_suppressReloads;
  }
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = RoutePlanningRouteOverviewOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v15 listLayoutSectionConfigurationAtIndex:index layoutEnvironment:environmentCopy];
  [v7 setSeparatorStyle:_UISolariumEnabled() ^ 1];
  traitCollection = [environmentCopy traitCollection];
  v9 = [traitCollection userInterfaceIdiom] == 5;

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

- (RoutePlanningRouteOverviewOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = RoutePlanningRouteOverviewOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v11 initWithCollectionView:viewCopy sectionIdentifier:identifier];
  if (v7)
  {
    [DynamicTypeWizard makeObject:v7 performSelector:"_resetCachedRowHeight" whenSizeCategoryChangesWithOrder:1];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RouteOverview"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RouteOverviewAX"];
    v8 = objc_opt_class();
    v9 = +[_TtC4Maps21MapsRoutePlanningCell reuseIdentifier];
    [viewCopy registerClass:v8 forCellWithReuseIdentifier:v9];
  }

  return v7;
}

@end
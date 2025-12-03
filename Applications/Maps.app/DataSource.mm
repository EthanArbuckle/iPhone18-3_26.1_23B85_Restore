@interface DataSource
- (DataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location;
- (DataSource)initWithTableView:(id)view updateLocation:(BOOL)location;
- (DataSourceDelegate)delegate;
- (UICollectionView)collectionView;
- (UITableView)tableView;
- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path;
- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)visibleCells;
- (int)flattenedIndexWithIndexPath:(id)path;
- (int)listInteractionSessionType;
- (void)addEKAnalyticsForEntry:(id)entry tapped:(BOOL)tapped;
- (void)commonInitWithUpdateLocation:(BOOL)location;
- (void)preferredContentSizeChanged:(id)changed;
- (void)proactiveAnalyticElementsAtIndex:(int)index action:(int)action elementsBlock:(id)block;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)selectAtIndexPath:(id)path;
- (void)sendAnalyticsForDataAtIndexPath:(id)path object:(id)object childPlaceIndexPath:(id)indexPath childPlaceObject:(id)placeObject action:(int)action eventValue:(id)value populateSearchTapEvent:(BOOL)event;
- (void)sendAnalyticsObject:(id)object geoMapItem:(id)item atIndexPath:(id)path action:(int)action eventValue:(id)value;
- (void)setActive:(BOOL)active;
- (void)tableView:(id)view dragSessionDidEnd:(id)end;
- (void)tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableViewDidFinishReload:(id)reload;
- (void)updatePreviewDrag;
- (void)updateSavedLocation:(id)location;
@end

@implementation DataSource

- (DataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (void)updateSavedLocation:(id)location
{
  locationCopy = location;
  v4 = +[MKLocationManager sharedLocationManager];
  if ([v4 isAuthorizedForPreciseLocation])
  {
    currentLocation = [locationCopy currentLocation];
  }

  else
  {
    currentLocation = 0;
  }

  v6 = [(GEOLocation *)self->_currentLocation isEqual:currentLocation];
  currentLocation = self->_currentLocation;
  self->_currentLocation = currentLocation;

  if ((v6 & 1) == 0)
  {
    [(DataSource *)self locationDidUpdate];
  }
}

- (void)preferredContentSizeChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained reloadData];
}

- (id)visibleCells
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  visibleCells = [WeakRetained visibleCells];

  return visibleCells;
}

- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  theme = [viewCopy theme];

  controlBackgroundColor = [theme controlBackgroundColor];
  [v5 setBackgroundColor:controlBackgroundColor];

  return v5;
}

- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  pathCopy = path;
  v7 = +[MapsDragAndDropManager sharedManager];
  canStartNewDrag = [v7 canStartNewDrag];

  if (canStartNewDrag)
  {
    v9 = [(DataSource *)self objectAtIndexPath:pathCopy];
    v10 = [DragAndDropMapItem dragAndDropItemWithObject:v9];
    v11 = v10;
    if (v10 && ([v10 setObserver:self], objc_storeStrong(&self->_dragItem, v11), v12 = objc_msgSend(pathCopy, "row"), -[DragAndDropMapItem analyticsHelper](self->_dragItem, "analyticsHelper"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "actionDetails"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setResultIndex:", v12), v14, v13, v15 = [DragAndDropPreview alloc], WeakRetained = objc_loadWeakRetained(&self->_tableView), objc_msgSend(WeakRetained, "traitCollection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[DragAndDropPreview initWithDragAndDropMapItem:traitCollection:](v15, "initWithDragAndDropMapItem:traitCollection:", v11, v17), previewView = self->_previewView, self->_previewView = v18, previewView, v17, WeakRetained, -[DragAndDropPreview setContentUpdateDelegate:](self->_previewView, "setContentUpdateDelegate:", self), objc_msgSend(v11, "itemProviderWriting"), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v21 = v20;
      itemProvider = [v11 itemProvider];
      v23 = [[UIDragItem alloc] initWithItemProvider:itemProvider];
      v26 = v23;
      v24 = [NSArray arrayWithObjects:&v26 count:1];
    }

    else
    {
      v24 = &__NSArray0__struct;
    }
  }

  else
  {
    v24 = &__NSArray0__struct;
  }

  return v24;
}

- (void)tableView:(id)view dragSessionDidEnd:(id)end
{
  v12 = [(DragAndDropMapItem *)self->_dragItem analyticsHelper:view];
  v5 = +[MKMapService sharedService];
  targetForDragAnalytics = [(DataSource *)self targetForDragAnalytics];
  eventValue = [v12 eventValue];
  actionDetails = [v12 actionDetails];
  [v5 captureUserAction:17003 onTarget:targetForDragAnalytics eventValue:eventValue placeActionDetails:actionDetails];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  dragItem = self->_dragItem;
  self->_dragItem = 0;

  v11 = +[MapsDragAndDropManager sharedManager];
  [v11 setDragSession:0];
}

- (void)tableView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  viewCopy = view;
  v8 = [MapsDragLocalContext alloc];
  window = [viewCopy window];

  windowScene = [window windowScene];
  v11 = [(MapsDragLocalContext *)v8 initWithWindowScene:windowScene];
  [beginCopy setLocalContext:v11];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = beginCopy;
  v13 = beginCopy;

  v14 = +[MapsDragAndDropManager sharedManager];
  [v14 setDragSession:v13];

  [(DataSource *)self updatePreviewDrag];
  analyticsHelper = [(DragAndDropMapItem *)self->_dragItem analyticsHelper];
  v15 = +[MKMapService sharedService];

  targetForDragAnalytics = [(DataSource *)self targetForDragAnalytics];
  eventValue = [analyticsHelper eventValue];
  actionDetails = [analyticsHelper actionDetails];
  [v15 captureUserAction:17001 onTarget:targetForDragAnalytics eventValue:eventValue placeActionDetails:actionDetails];
}

- (void)updatePreviewDrag
{
  if (self->_currentDragSession)
  {
    previewView = self->_previewView;
    if (previewView)
    {
      renderPreviewImage = [(DragAndDropPreview *)previewView renderPreviewImage];
      [renderPreviewImage dragPreview];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100806A8C;
      v10 = v9[3] = &unk_10164EFF0;
      currentDragSession = self->_currentDragSession;
      v6 = v10;
      items = [(UIDragSession *)currentDragSession items];
      firstObject = [items firstObject];
      [firstObject setPreviewProvider:v9];
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cell = [(DataSource *)self objectAtIndexPath:path, cell];
  if (cell)
  {
    v9 = cell;
    analyticsContext = [(DataSource *)self analyticsContext];
    v8 = [analyticsContext matchInfoForObject:v9];

    [v8 setShownToUser:1];
    cell = v9;
  }
}

- (void)proactiveAnalyticElementsAtIndex:(int)index action:(int)action elementsBlock:(id)block
{
  blockCopy = block;
  [(NSDate *)self->_dateActive timeIntervalSinceNow];
  v9 = v8;
  proactiveItems = [self->_currentListInteractionSession proactiveItems];
  v11 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [proactiveItems allKeys];
  v13 = [allKeys sortedArrayUsingSelector:"compare:"];

  obj = v13;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v28;
    v25 = -1;
    while (1)
    {
      v18 = 0;
      v24 = v16;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v27 + 1) + 8 * v18);
        v20 = [proactiveItems objectForKeyedSubscript:v19];
        if (index < 0 || [v19 integerValue] != index)
        {
          v21 = v20;
          goto LABEL_24;
        }

        v21 = [v20 copy];

        if (action <= 2009)
        {
          if (action != 2007)
          {
            if (action == 2008)
            {
              [v21 setShared:1];
            }

            else if (action == 2009)
            {
              [v21 setDeleted:1];
            }

            goto LABEL_23;
          }

LABEL_21:
          [v21 setTapped:1];
          goto LABEL_23;
        }

        if (action > 6026)
        {
          if (action != 6027 && action != 6034)
          {
            goto LABEL_23;
          }
        }

        else if (action != 2010)
        {
          if (action != 2018)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        [v21 setEdited:1];
LABEL_23:
        v25 = v16;
LABEL_24:
        [v11 addObject:v21];
        ++v16;

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v16 = v24 + v15;
      v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  v25 = -1;
LABEL_28:

  v22 = [v11 copy];
  blockCopy[2](blockCopy, v25, 2, v22, -v9);
}

- (int)flattenedIndexWithIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if ([pathCopy section] >= 1)
  {
    v6 = 0;
    do
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableView);
      v5 = &v5[[WeakRetained numberOfRowsInSection:v6]];

      ++v6;
    }

    while ([pathCopy section] > v6);
  }

  return v5;
}

- (void)sendAnalyticsObject:(id)object geoMapItem:(id)item atIndexPath:(id)path action:(int)action eventValue:(id)value
{
  objectCopy = object;
  itemCopy = item;
  pathCopy = path;
  valueCopy = value;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100807114;
  v34[3] = &unk_10162AFE0;
  v16 = pathCopy;
  actionCopy = action;
  v35 = v16;
  selfCopy = self;
  v17 = valueCopy;
  v37 = v17;
  v18 = objc_retainBlock(v34);
  v19 = v18;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100807280;
  v32 = sub_100807290;
  v33 = 0;
  if (itemCopy)
  {
    (v18[2])(v18, itemCopy);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objectCopy;
      historyEntry = [v20 historyEntry];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100807298;
      v25[3] = &unk_10162B008;
      v26 = v19;
      v27 = &v28;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1008072B4;
      v22[3] = &unk_10162B030;
      v24 = &v28;
      v23 = v26;
      [historyEntry ifSearch:v25 ifRoute:0 ifPlaceDisplay:v22 ifTransitLineItem:0];
    }

    else
    {
      v19[2](v19, v29[5]);
    }
  }

  _Block_object_dispose(&v28, 8);
}

- (void)sendAnalyticsForDataAtIndexPath:(id)path object:(id)object childPlaceIndexPath:(id)indexPath childPlaceObject:(id)placeObject action:(int)action eventValue:(id)value populateSearchTapEvent:(BOOL)event
{
  pathCopy = path;
  objectCopy = object;
  indexPathCopy = indexPath;
  placeObjectCopy = placeObject;
  valueCopy = value;
  v19 = pathCopy;
  v20 = valueCopy;
  if (pathCopy)
  {
    v21 = [(DataSource *)self flattenedIndexWithIndexPath:pathCopy];
    v19 = pathCopy;
    v22 = v21;
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
  }

  [(DataSource *)self selectAtIndexPath:v19];
  objc_opt_class();
  actionCopy = action;
  if (objc_opt_isKindOfClass())
  {
    _geoMapItem = [objectCopy _geoMapItem];
LABEL_8:
    v40 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_7:
    mapItem = [objectCopy mapItem];
    _geoMapItem = [mapItem _geoMapItem];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _geoMapItem = [objectCopy geoMapItem];
    v40 = !self->_eventProactiveSuggestionInteractionSent;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v40 = 0;
    _geoMapItem = 0;
  }

LABEL_9:
  _hikeAssociatedInfo = [_geoMapItem _hikeAssociatedInfo];

  if (_hikeAssociatedInfo)
  {
    v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [_geoMapItem _muid]);

    v20 = v26;
  }

  v27 = v22;
  if (v22 == -1)
  {
    v40 = !self->_eventProactiveSuggestionInteractionSent;
  }

  v28 = +[GEOAPSharedStateData sharedData];
  Current = CFAbsoluteTimeGetCurrent();
  v30 = indexPathCopy;
  if (placeObjectCopy)
  {
    [v28 populateWithChildPlace:placeObjectCopy timestamp:objc_msgSend(indexPathCopy resultIndex:{"row"), Current}];
  }

  else
  {
    [v28 populateWithPlace:_geoMapItem timestamp:v27 resultIndex:Current];

    v31 = v20;
    if (!event)
    {
      goto LABEL_21;
    }

    searchSection = [objectCopy searchSection];
    sectionType = [searchSection sectionType];

    if (sectionType == 2)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v38 = v34;
    v28 = +[GEOAPSharedStateData sharedData];
    _muid = [_geoMapItem _muid];
    _place = [_geoMapItem _place];
    [v28 populateTapEventForResultIndex:v27 resultType:v38 businessId:_muid localSearchProviderId:objc_msgSend(_place isEnrichedItem:{"localSearchProviderID"), 0}];
  }

  v31 = v20;
LABEL_21:
  if (actionCopy)
  {
    [(DataSource *)self sendAnalyticsObject:objectCopy geoMapItem:_geoMapItem atIndexPath:pathCopy action:actionCopy eventValue:v31];
  }

  if (v40)
  {
    self->_eventProactiveSuggestionInteractionSent = 1;
    [(DataSource *)self proactiveAnalyticElementsAtIndex:v27 action:actionCopy elementsBlock:&stru_10162AFB8];
  }

  v37 = +[GEOAPSharedStateData sharedData];
  [v37 clearPlaceCardStateData];
}

- (void)addEKAnalyticsForEntry:(id)entry tapped:(BOOL)tapped
{
  tappedCopy = tapped;
  entryCopy = entry;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (tappedCopy)
    {
      v5 = MapsSuggestionsEngineForMapsProcess();
      [v5 feedbackForEntry:entryCopy action:1];

      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    if ([entryCopy containsKey:@"MapsSuggestionsCoreSuggestionsUniqueKey"])
    {
      v7 = [entryCopy stringForKey:@"MapsSuggestionsCoreSuggestionsUniqueKey"];
      v8 = +[SGSuggestionsService serviceForEvents];
      [v8 logEventInteractionForEventWithUniqueKey:v7 interface:16 actionType:v6];
    }
  }
}

- (void)selectAtIndexPath:(id)path
{
  [self->_currentListInteractionSession updateWithSelection:path];

  [(DataSource *)self sendCurrentListSession];
}

- (int)listInteractionSessionType
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 listForDataSource:self];

  return v6;
}

- (void)tableViewDidFinishReload:(id)reload
{
  reloadCopy = reload;
  if (self->_currentListInteractionSession)
  {
    [(DataSource *)self sendCurrentListSession];
  }

  v4 = [ListInteractionSession alloc];
  objectsForAnalytics = [(DataSource *)self objectsForAnalytics];
  v6 = [(ListInteractionSession *)v4 initWithObjects:objectsForAnalytics forType:[(DataSource *)self listInteractionSessionType] startDate:self->_dateActive proactiveStartTimes:self->_proactiveItemAddDates];
  currentListInteractionSession = self->_currentListInteractionSession;
  self->_currentListInteractionSession = v6;

  [self->_currentListInteractionSession updateWithTableView:reloadCopy];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  delegate = [(DataSource *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  delegate = [(DataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 scrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  delegate = [(DataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 scrollViewDidScroll:scrollCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self->_currentListInteractionSession updateWithTableView:scrollCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  delegate = [(DataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    window = [draggingCopy window];
    [window endEditing:1];
  }

  delegate = [(DataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)setActive:(BOOL)active
{
  self->_active = active;
  if (active)
  {
    self->_eventProactiveSuggestionInteractionSent = 0;
    v4 = +[NSMutableDictionary dictionary];
    proactiveItemAddDates = self->_proactiveItemAddDates;
    self->_proactiveItemAddDates = v4;

    v6 = +[NSDate date];
    dateActive = self->_dateActive;
    self->_dateActive = v6;
  }
}

- (void)commonInitWithUpdateLocation:(BOOL)location
{
  if (location)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100807F08;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (DataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location
{
  locationCopy = location;
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = DataSource;
  v7 = [(DataSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_collectionView, viewCopy);
    [(DataSource *)v8 commonInitWithUpdateLocation:locationCopy];
  }

  return v8;
}

- (DataSource)initWithTableView:(id)view updateLocation:(BOOL)location
{
  locationCopy = location;
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = DataSource;
  v7 = [(DataSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_tableView, viewCopy);
    [(DataSource *)v8 commonInitWithUpdateLocation:locationCopy];
  }

  return v8;
}

@end
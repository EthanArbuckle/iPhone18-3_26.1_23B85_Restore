@interface DataSource
- (DataSource)initWithCollectionView:(id)a3 updateLocation:(BOOL)a4;
- (DataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4;
- (DataSourceDelegate)delegate;
- (UICollectionView)collectionView;
- (UITableView)tableView;
- (id)tableView:(id)a3 dragPreviewParametersForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)visibleCells;
- (int)flattenedIndexWithIndexPath:(id)a3;
- (int)listInteractionSessionType;
- (void)addEKAnalyticsForEntry:(id)a3 tapped:(BOOL)a4;
- (void)commonInitWithUpdateLocation:(BOOL)a3;
- (void)preferredContentSizeChanged:(id)a3;
- (void)proactiveAnalyticElementsAtIndex:(int)a3 action:(int)a4 elementsBlock:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)selectAtIndexPath:(id)a3;
- (void)sendAnalyticsForDataAtIndexPath:(id)a3 object:(id)a4 childPlaceIndexPath:(id)a5 childPlaceObject:(id)a6 action:(int)a7 eventValue:(id)a8 populateSearchTapEvent:(BOOL)a9;
- (void)sendAnalyticsObject:(id)a3 geoMapItem:(id)a4 atIndexPath:(id)a5 action:(int)a6 eventValue:(id)a7;
- (void)setActive:(BOOL)a3;
- (void)tableView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableViewDidFinishReload:(id)a3;
- (void)updatePreviewDrag;
- (void)updateSavedLocation:(id)a3;
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

- (void)updateSavedLocation:(id)a3
{
  v8 = a3;
  v4 = +[MKLocationManager sharedLocationManager];
  if ([v4 isAuthorizedForPreciseLocation])
  {
    v5 = [v8 currentLocation];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(GEOLocation *)self->_currentLocation isEqual:v5];
  currentLocation = self->_currentLocation;
  self->_currentLocation = v5;

  if ((v6 & 1) == 0)
  {
    [(DataSource *)self locationDidUpdate];
  }
}

- (void)preferredContentSizeChanged:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained reloadData];
}

- (id)visibleCells
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v3 = [WeakRetained visibleCells];

  return v3;
}

- (id)tableView:(id)a3 dragPreviewParametersForRowAtIndexPath:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  v6 = [v4 theme];

  v7 = [v6 controlBackgroundColor];
  [v5 setBackgroundColor:v7];

  return v5;
}

- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  v7 = +[MapsDragAndDropManager sharedManager];
  v8 = [v7 canStartNewDrag];

  if (v8)
  {
    v9 = [(DataSource *)self objectAtIndexPath:v6];
    v10 = [DragAndDropMapItem dragAndDropItemWithObject:v9];
    v11 = v10;
    if (v10 && ([v10 setObserver:self], objc_storeStrong(&self->_dragItem, v11), v12 = objc_msgSend(v6, "row"), -[DragAndDropMapItem analyticsHelper](self->_dragItem, "analyticsHelper"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "actionDetails"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setResultIndex:", v12), v14, v13, v15 = [DragAndDropPreview alloc], WeakRetained = objc_loadWeakRetained(&self->_tableView), objc_msgSend(WeakRetained, "traitCollection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[DragAndDropPreview initWithDragAndDropMapItem:traitCollection:](v15, "initWithDragAndDropMapItem:traitCollection:", v11, v17), previewView = self->_previewView, self->_previewView = v18, previewView, v17, WeakRetained, -[DragAndDropPreview setContentUpdateDelegate:](self->_previewView, "setContentUpdateDelegate:", self), objc_msgSend(v11, "itemProviderWriting"), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v21 = v20;
      v22 = [v11 itemProvider];
      v23 = [[UIDragItem alloc] initWithItemProvider:v22];
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

- (void)tableView:(id)a3 dragSessionDidEnd:(id)a4
{
  v12 = [(DragAndDropMapItem *)self->_dragItem analyticsHelper:a3];
  v5 = +[MKMapService sharedService];
  v6 = [(DataSource *)self targetForDragAnalytics];
  v7 = [v12 eventValue];
  v8 = [v12 actionDetails];
  [v5 captureUserAction:17003 onTarget:v6 eventValue:v7 placeActionDetails:v8];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  dragItem = self->_dragItem;
  self->_dragItem = 0;

  v11 = +[MapsDragAndDropManager sharedManager];
  [v11 setDragSession:0];
}

- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [MapsDragLocalContext alloc];
  v9 = [v7 window];

  v10 = [v9 windowScene];
  v11 = [(MapsDragLocalContext *)v8 initWithWindowScene:v10];
  [v6 setLocalContext:v11];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = v6;
  v13 = v6;

  v14 = +[MapsDragAndDropManager sharedManager];
  [v14 setDragSession:v13];

  [(DataSource *)self updatePreviewDrag];
  v19 = [(DragAndDropMapItem *)self->_dragItem analyticsHelper];
  v15 = +[MKMapService sharedService];

  v16 = [(DataSource *)self targetForDragAnalytics];
  v17 = [v19 eventValue];
  v18 = [v19 actionDetails];
  [v15 captureUserAction:17001 onTarget:v16 eventValue:v17 placeActionDetails:v18];
}

- (void)updatePreviewDrag
{
  if (self->_currentDragSession)
  {
    previewView = self->_previewView;
    if (previewView)
    {
      v4 = [(DragAndDropPreview *)previewView renderPreviewImage];
      [v4 dragPreview];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100806A8C;
      v10 = v9[3] = &unk_10164EFF0;
      currentDragSession = self->_currentDragSession;
      v6 = v10;
      v7 = [(UIDragSession *)currentDragSession items];
      v8 = [v7 firstObject];
      [v8 setPreviewProvider:v9];
    }
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = [(DataSource *)self objectAtIndexPath:a5, a4];
  if (v6)
  {
    v9 = v6;
    v7 = [(DataSource *)self analyticsContext];
    v8 = [v7 matchInfoForObject:v9];

    [v8 setShownToUser:1];
    v6 = v9;
  }
}

- (void)proactiveAnalyticElementsAtIndex:(int)a3 action:(int)a4 elementsBlock:(id)a5
{
  v23 = a5;
  [(NSDate *)self->_dateActive timeIntervalSinceNow];
  v9 = v8;
  v10 = [self->_currentListInteractionSession proactiveItems];
  v11 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [v10 allKeys];
  v13 = [v12 sortedArrayUsingSelector:"compare:"];

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
        v20 = [v10 objectForKeyedSubscript:v19];
        if (a3 < 0 || [v19 integerValue] != a3)
        {
          v21 = v20;
          goto LABEL_24;
        }

        v21 = [v20 copy];

        if (a4 <= 2009)
        {
          if (a4 != 2007)
          {
            if (a4 == 2008)
            {
              [v21 setShared:1];
            }

            else if (a4 == 2009)
            {
              [v21 setDeleted:1];
            }

            goto LABEL_23;
          }

LABEL_21:
          [v21 setTapped:1];
          goto LABEL_23;
        }

        if (a4 > 6026)
        {
          if (a4 != 6027 && a4 != 6034)
          {
            goto LABEL_23;
          }
        }

        else if (a4 != 2010)
        {
          if (a4 != 2018)
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
  v23[2](v23, v25, 2, v22, -v9);
}

- (int)flattenedIndexWithIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if ([v4 section] >= 1)
  {
    v6 = 0;
    do
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableView);
      v5 = &v5[[WeakRetained numberOfRowsInSection:v6]];

      ++v6;
    }

    while ([v4 section] > v6);
  }

  return v5;
}

- (void)sendAnalyticsObject:(id)a3 geoMapItem:(id)a4 atIndexPath:(id)a5 action:(int)a6 eventValue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100807114;
  v34[3] = &unk_10162AFE0;
  v16 = v14;
  v38 = a6;
  v35 = v16;
  v36 = self;
  v17 = v15;
  v37 = v17;
  v18 = objc_retainBlock(v34);
  v19 = v18;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100807280;
  v32 = sub_100807290;
  v33 = 0;
  if (v13)
  {
    (v18[2])(v18, v13);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v12;
      v21 = [v20 historyEntry];
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
      [v21 ifSearch:v25 ifRoute:0 ifPlaceDisplay:v22 ifTransitLineItem:0];
    }

    else
    {
      v19[2](v19, v29[5]);
    }
  }

  _Block_object_dispose(&v28, 8);
}

- (void)sendAnalyticsForDataAtIndexPath:(id)a3 object:(id)a4 childPlaceIndexPath:(id)a5 childPlaceObject:(id)a6 action:(int)a7 eventValue:(id)a8 populateSearchTapEvent:(BOOL)a9
{
  v41 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = v41;
  v20 = v18;
  if (v41)
  {
    v21 = [(DataSource *)self flattenedIndexWithIndexPath:v41];
    v19 = v41;
    v22 = v21;
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
  }

  [(DataSource *)self selectAtIndexPath:v19];
  objc_opt_class();
  v39 = a7;
  if (objc_opt_isKindOfClass())
  {
    v23 = [v15 _geoMapItem];
LABEL_8:
    v40 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_7:
    v24 = [v15 mapItem];
    v23 = [v24 _geoMapItem];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v15 geoMapItem];
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
    v23 = 0;
  }

LABEL_9:
  v25 = [v23 _hikeAssociatedInfo];

  if (v25)
  {
    v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v23 _muid]);

    v20 = v26;
  }

  v27 = v22;
  if (v22 == -1)
  {
    v40 = !self->_eventProactiveSuggestionInteractionSent;
  }

  v28 = +[GEOAPSharedStateData sharedData];
  Current = CFAbsoluteTimeGetCurrent();
  v30 = v16;
  if (v17)
  {
    [v28 populateWithChildPlace:v17 timestamp:objc_msgSend(v16 resultIndex:{"row"), Current}];
  }

  else
  {
    [v28 populateWithPlace:v23 timestamp:v27 resultIndex:Current];

    v31 = v20;
    if (!a9)
    {
      goto LABEL_21;
    }

    v32 = [v15 searchSection];
    v33 = [v32 sectionType];

    if (v33 == 2)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v38 = v34;
    v28 = +[GEOAPSharedStateData sharedData];
    v35 = [v23 _muid];
    v36 = [v23 _place];
    [v28 populateTapEventForResultIndex:v27 resultType:v38 businessId:v35 localSearchProviderId:objc_msgSend(v36 isEnrichedItem:{"localSearchProviderID"), 0}];
  }

  v31 = v20;
LABEL_21:
  if (v39)
  {
    [(DataSource *)self sendAnalyticsObject:v15 geoMapItem:v23 atIndexPath:v41 action:v39 eventValue:v31];
  }

  if (v40)
  {
    self->_eventProactiveSuggestionInteractionSent = 1;
    [(DataSource *)self proactiveAnalyticElementsAtIndex:v27 action:v39 elementsBlock:&stru_10162AFB8];
  }

  v37 = +[GEOAPSharedStateData sharedData];
  [v37 clearPlaceCardStateData];
}

- (void)addEKAnalyticsForEntry:(id)a3 tapped:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4)
    {
      v5 = MapsSuggestionsEngineForMapsProcess();
      [v5 feedbackForEntry:v9 action:1];

      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    if ([v9 containsKey:@"MapsSuggestionsCoreSuggestionsUniqueKey"])
    {
      v7 = [v9 stringForKey:@"MapsSuggestionsCoreSuggestionsUniqueKey"];
      v8 = +[SGSuggestionsService serviceForEvents];
      [v8 logEventInteractionForEventWithUniqueKey:v7 interface:16 actionType:v6];
    }
  }
}

- (void)selectAtIndexPath:(id)a3
{
  [self->_currentListInteractionSession updateWithSelection:a3];

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

- (void)tableViewDidFinishReload:(id)a3
{
  v8 = a3;
  if (self->_currentListInteractionSession)
  {
    [(DataSource *)self sendCurrentListSession];
  }

  v4 = [ListInteractionSession alloc];
  v5 = [(DataSource *)self objectsForAnalytics];
  v6 = [(ListInteractionSession *)v4 initWithObjects:v5 forType:[(DataSource *)self listInteractionSessionType] startDate:self->_dateActive proactiveStartTimes:self->_proactiveItemAddDates];
  currentListInteractionSession = self->_currentListInteractionSession;
  self->_currentListInteractionSession = v6;

  [self->_currentListInteractionSession updateWithTableView:v8];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(DataSource *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(DataSource *)self delegate];
    [v8 scrollViewDidEndDragging:v9 willDecelerate:v4];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v7 = a3;
  v4 = [(DataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DataSource *)self delegate];
    [v6 scrollViewDidEndDecelerating:v7];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(DataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DataSource *)self delegate];
    [v6 scrollViewDidScroll:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self->_currentListInteractionSession updateWithTableView:v7];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v9 = [(DataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(DataSource *)self delegate];
    [v11 scrollViewWillEndDragging:v12 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v10 = a3;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 5)
  {
    v6 = [v10 window];
    [v6 endEditing:1];
  }

  v7 = [(DataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(DataSource *)self delegate];
    [v9 scrollViewWillBeginDragging:v10];
  }
}

- (void)setActive:(BOOL)a3
{
  self->_active = a3;
  if (a3)
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

- (void)commonInitWithUpdateLocation:(BOOL)a3
{
  if (a3)
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

- (DataSource)initWithCollectionView:(id)a3 updateLocation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DataSource;
  v7 = [(DataSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_collectionView, v6);
    [(DataSource *)v8 commonInitWithUpdateLocation:v4];
  }

  return v8;
}

- (DataSource)initWithTableView:(id)a3 updateLocation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DataSource;
  v7 = [(DataSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_tableView, v6);
    [(DataSource *)v8 commonInitWithUpdateLocation:v4];
  }

  return v8;
}

@end
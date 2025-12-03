@interface SearchResultsDataSource
- (BOOL)_showBottomRoundedCorners:(id)corners rows:(int64_t)rows;
- (BOOL)_showTopRoundedCorners:(id)corners rows:(int64_t)rows;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (ErrorModeView)structuredRAPAffordance;
- (MKCollectionCarouselRoutingDelegate)collectionCarouselRoutingDelegate;
- (NSDictionary)itemCountInVenue;
- (NSIndexPath)indexPathForRelatedCollectionSection;
- (SearchResultsDataSource)initWithTableView:(id)view;
- (ShareDelegate)shareDelegate;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)curatedGuideCellViewModelForSearchResult:(id)result indexPath:(id)path;
- (id)etaProviderForMapItem:(id)item;
- (id)impressionElementForSearchResult:(id)result indexPath:(id)path;
- (id)objectsForAnalytics;
- (id)personalizedItemForQuickActionMenuWithCell:(id)cell;
- (id)placeSummaryTemplateAtIndexPath:(id)path;
- (id)placeSummaryTemplateForSearchResult:(id)result indexPath:(id)path;
- (id)shareContextualActionAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)visibleImpressionElements;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)addMetricsForGuideSummaryViewModel:(id)model atIndexPath:(id)path;
- (void)addMetricsForPlaceSummaryTemplate:(id)template indexPath:(id)path;
- (void)adjustRAPAffordanceFrameWithTopPadding:(double)padding;
- (void)buildAndCacheCuratedGuideViewModels;
- (void)cachePlaceSummaryTemplates;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)createEVChargersRefreshDownloader;
- (void)dealloc;
- (void)didTapOnAccessoryEntityCallWithCell:(id)cell;
- (void)didTapOnAccessoryEntityDirectionsWithCell:(id)cell;
- (void)didTapOnAccessoryEntityFlyoverWithCell:(id)cell;
- (void)didTapOnAccessoryEntityLookAroundWithCell:(id)cell;
- (void)didTapOnAccessoryEntityWebsiteWithCell:(id)cell;
- (void)didTapOnAddStop:(id)stop;
- (void)didTapOnContainmentParentMapItem:(id)item cell:(id)cell;
- (void)didTapOnCuratedGuide:(id)guide cell:(id)cell;
- (void)didTapOnCuratedGuides:(id)guides cell:(id)cell;
- (void)didTapOnPhotoCarousel:(id)carousel photoIndex:(int64_t)index;
- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)identifier cell:(id)cell;
- (void)didTapOnUserGeneratedGuide:(id)guide cell:(id)cell;
- (void)didTapOnUserLibrary:(id)library mapItem:(id)item;
- (void)iterateThroughIndexPathsAndExecuteBlock:(id)block;
- (void)locationDidUpdate;
- (void)notifyDelegateDidCachePlaceSummaryTemplates;
- (void)refreshEVChargers:(id)chargers;
- (void)relatedSectionRouteToCuratedCollection:(id)collection;
- (void)relatedSectionTableViewCellDidScrollBackward;
- (void)relatedSectionTableViewCellDidScrollForward;
- (void)relatedSectionTappedOnCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved;
- (void)resetMapServiceTicket;
- (void)setContent:(id)content;
- (void)setContent:(id)content openAt:(id)at;
- (void)setEnableStructuredRAPAffordance:(BOOL)affordance;
- (void)setGuideSummaryLayoutMetadata:(id)metadata;
- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)results;
- (void)setIsPresentingVenueClusterResults:(BOOL)results;
- (void)setPlaceSummaryMetadata:(id)metadata;
- (void)shareRowAtIndexPath:(id)path completion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation SearchResultsDataSource

- (MKCollectionCarouselRoutingDelegate)collectionCarouselRoutingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionCarouselRoutingDelegate);

  return WeakRetained;
}

- (ShareDelegate)shareDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);

  return WeakRetained;
}

- (NSIndexPath)indexPathForRelatedCollectionSection
{
  indexPathForRelatedCollectionSection = self->_indexPathForRelatedCollectionSection;
  if (!indexPathForRelatedCollectionSection)
  {
    content = [(SearchResultsDataSource *)self content];
    numberOfSections = [content numberOfSections];

    if (numberOfSections < 1)
    {
      goto LABEL_13;
    }

    v6 = 0;
    while (1)
    {
      content2 = [(SearchResultsDataSource *)self content];
      v8 = [content2 numberOfRowsInSection:v6];

      if (v8 < 1)
      {
        goto LABEL_12;
      }

      v9 = 0;
      while (1)
      {
        v10 = [NSIndexPath indexPathForRow:v9 inSection:v6];
        content3 = [(SearchResultsDataSource *)self content];
        v12 = [content3 objectAtIndexPath:v10];

        if ([v12 type] == 11)
        {
          break;
        }

LABEL_9:

        ++v9;
        content4 = [(SearchResultsDataSource *)self content];
        v15 = [content4 numberOfRowsInSection:v6];

        if (v9 >= v15)
        {
          goto LABEL_12;
        }
      }

      searchSection = [v12 searchSection];
      if ([searchSection sectionType] != 2)
      {
        break;
      }

      v16 = self->_indexPathForRelatedCollectionSection;
      self->_indexPathForRelatedCollectionSection = v10;

LABEL_12:
      ++v6;
      content5 = [(SearchResultsDataSource *)self content];
      numberOfSections2 = [content5 numberOfSections];

      if (v6 >= numberOfSections2)
      {
LABEL_13:
        indexPathForRelatedCollectionSection = self->_indexPathForRelatedCollectionSection;
        goto LABEL_14;
      }
    }

    goto LABEL_9;
  }

LABEL_14:
  v19 = indexPathForRelatedCollectionSection;

  return v19;
}

- (void)relatedSectionRouteToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  collectionCarouselRoutingDelegate = [(SearchResultsDataSource *)self collectionCarouselRoutingDelegate];
  [collectionCarouselRoutingDelegate routeToCuratedCollection:collectionCopy];
}

- (void)relatedSectionTappedOnCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved
{
  savedCopy = saved;
  idCopy = id;
  curatedCollectionsAnalyticsManager = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  muid = [idCopy muid];

  indexPathForRelatedCollectionSection = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  [curatedCollectionsAnalyticsManager carouselCollectionTappedWithMuid:muid verticalIndex:objc_msgSend(indexPathForRelatedCollectionSection horizontalIndex:"row") isCurrentlySaved:{index, savedCopy}];
}

- (void)relatedSectionTableViewCellDidScrollBackward
{
  curatedCollectionsAnalyticsManager = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  indexPathForRelatedCollectionSection = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  [curatedCollectionsAnalyticsManager carouselScrolledBackwardAtVerticalIndex:{objc_msgSend(indexPathForRelatedCollectionSection, "row")}];
}

- (void)relatedSectionTableViewCellDidScrollForward
{
  curatedCollectionsAnalyticsManager = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  indexPathForRelatedCollectionSection = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  [curatedCollectionsAnalyticsManager carouselScrolledForwardAtVerticalIndex:{objc_msgSend(indexPathForRelatedCollectionSection, "row")}];
}

- (void)resetMapServiceTicket
{
  mapServiceTicket = [(SearchResultsDataSource *)self mapServiceTicket];
  [mapServiceTicket cancel];

  [(SearchResultsDataSource *)self setMapServiceTicket:0];
}

- (void)didTapOnPhotoCarousel:(id)carousel photoIndex:(int64_t)index
{
  carouselCopy = carousel;
  tableView = [(DataSource *)self tableView];
  v12 = [tableView indexPathForCell:carouselCopy];

  v7 = [(SearchResultsDataSource *)self objectAtIndexPath:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = objc_alloc_init(SearchSessionAnalytics);
    [(SearchSessionAnalytics *)v9 setAction:2007];
    [(SearchSessionAnalytics *)v9 setTarget:101];
    v10 = +[SearchSessionAnalyticsAggregator sharedAggregator];
    [v10 collectSearchSessionAnalytics:v9];

    [(DataSource *)self sendAnalyticsForDataAtIndexPath:v12 object:v8 action:[(SearchSessionAnalytics *)v9 action] populateSearchTapEvent:1];
    delegate = [(DataSource *)self delegate];
    [delegate dataSource:self itemTapped:v8];
  }
}

- (void)didTapOnUserLibrary:(id)library mapItem:(id)item
{
  itemCopy = item;
  delegate = [(DataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnUserLibraryMapItem:itemCopy];
  }
}

- (void)didTapOnAddStop:(id)stop
{
  stopCopy = stop;
  tableView = [(DataSource *)self tableView];
  v13 = [tableView indexPathForCell:stopCopy];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = v6;
      delegate2 = [(DataSource *)self delegate];
      [delegate2 didTapOnAddStopWithSearchResult:v9 atIndexPath:v13];
    }

    else
    {
      delegate3 = [(DataSource *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

      delegate2 = [(DataSource *)self delegate];
      [delegate2 didTapOnAddStopAtIndex:{objc_msgSend(v13, "row")}];
    }
  }

LABEL_7:
}

- (id)etaProviderForMapItem:(id)item
{
  itemCopy = item;
  etaProviders = [(SearchResultsDataSource *)self etaProviders];
  _identifier = [itemCopy _identifier];
  v7 = [etaProviders objectForKey:_identifier];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [[MKETAProvider alloc] initWithMapItem:itemCopy];
    etaProviders2 = [(SearchResultsDataSource *)self etaProviders];
    _identifier2 = [itemCopy _identifier];
    [etaProviders2 setObject:v8 forKey:_identifier2];
  }

  return v8;
}

- (id)personalizedItemForQuickActionMenuWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v6 = [tableView indexPathForCell:cellCopy];

  v7 = [(SearchResultsDataSource *)self objectAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)identifier cell:(id)cell
{
  identifierCopy = identifier;
  cellCopy = cell;
  [(SearchResultsDataSource *)self resetMapServiceTicket];
  v8 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:identifierCopy];
  v9 = +[MKMapService sharedService];
  v16 = v8;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v11 = [v9 ticketForIdentifiers:v10 traits:0];
  [(SearchResultsDataSource *)self setMapServiceTicket:v11];

  objc_initWeak(&location, self);
  mapServiceTicket = [(SearchResultsDataSource *)self mapServiceTicket];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10092E884;
  v13[3] = &unk_10165F290;
  objc_copyWeak(&v14, &location);
  [mapServiceTicket submitWithHandler:v13 networkActivity:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)didTapOnContainmentParentMapItem:(id)item cell:(id)cell
{
  itemCopy = item;
  delegate = [(DataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnContainmentParentMapItem:itemCopy];
  }
}

- (void)didTapOnAccessoryEntityFlyoverWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 didTapOnFlyoverWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityWebsiteWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 didTapOnWebsiteWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityCallWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 didTapOnCallWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityLookAroundWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 didTapOnLookAroundWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityDirectionsWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 didTapOnDirectionsWithSearchResult:v6];
    }
  }
}

- (void)didTapOnCuratedGuides:(id)guides cell:(id)cell
{
  guidesCopy = guides;
  cellCopy = cell;
  delegate = [(DataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnCuratedGuides:guidesCopy];
  }

  tableView = [(DataSource *)self tableView];
  v23 = cellCopy;
  v12 = [tableView indexPathForCell:cellCopy];

  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(guidesCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = guidesCopy;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        collectionIdentifier = [*(*(&v24 + 1) + 8 * v18) collectionIdentifier];
        v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [collectionIdentifier muid]);
        [v13 addObject:v20];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  curatedCollectionsAnalyticsManager = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  v22 = [v13 copy];
  [curatedCollectionsAnalyticsManager placeContextMultipleCollectionsTappedWithMuids:v22 verticalIndex:{objc_msgSend(v12, "row")}];
}

- (void)didTapOnCuratedGuide:(id)guide cell:(id)cell
{
  guideCopy = guide;
  cellCopy = cell;
  delegate = [(DataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnCuratedGuide:guideCopy];
  }

  tableView = [(DataSource *)self tableView];
  v11 = [tableView indexPathForCell:cellCopy];

  collectionIdentifier = [guideCopy collectionIdentifier];
  muid = [collectionIdentifier muid];

  v14 = +[CuratedCollectionSyncManager sharedManager];
  v15 = [v14 collectionIsSaved:guideCopy];

  curatedCollectionsAnalyticsManager = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  [curatedCollectionsAnalyticsManager placeContextSingleCollectionTappedWithMuid:muid isCurrentlySaved:v15 verticalIndex:{objc_msgSend(v11, "row")}];
}

- (void)didTapOnUserGeneratedGuide:(id)guide cell:(id)cell
{
  guideCopy = guide;
  delegate = [(DataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnUserGeneratedGuide:guideCopy];
  }
}

- (void)setEnableStructuredRAPAffordance:(BOOL)affordance
{
  affordanceCopy = affordance;
  self->_enableStructuredRAPAffordance = affordance;
  if (affordance)
  {
    structuredRAPAffordance = [(SearchResultsDataSource *)self structuredRAPAffordance];
  }

  else
  {
    structuredRAPAffordance = 0;
  }

  tableView = [(DataSource *)self tableView];
  [tableView setTableFooterView:structuredRAPAffordance];

  if (affordanceCopy)
  {
  }
}

- (void)adjustRAPAffordanceFrameWithTopPadding:(double)padding
{
  tableView = [(DataSource *)self tableView];
  [tableView frame];
  v6 = v5;
  [(ErrorModeView *)self->_structuredRAPAffordance fittingHeight];
  [(ErrorModeView *)self->_structuredRAPAffordance setFrame:0.0, 0.0, v6, v7 + padding];
}

- (ErrorModeView)structuredRAPAffordance
{
  structuredRAPAffordance = self->_structuredRAPAffordance;
  if (structuredRAPAffordance)
  {
    v3 = structuredRAPAffordance;
  }

  else
  {
    v5 = objc_alloc_init(ErrorModeView);
    v6 = self->_structuredRAPAffordance;
    self->_structuredRAPAffordance = v5;

    [(ErrorModeView *)self->_structuredRAPAffordance setSpacing:0.0];
    v7 = self->_structuredRAPAffordance;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Something Missing?" value:@"localized string not found" table:0];
    [(ErrorModeView *)v7 setTitle:v9 andMessage:0];

    objc_initWeak(&location, self);
    v10 = self->_structuredRAPAffordance;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Add a Missing Place" value:@"localized string not found" table:0];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10092F574;
    v17 = &unk_10165D828;
    objc_copyWeak(&v18, &location);
    [(ErrorModeView *)v10 setButtonTitle:v12 handler:&v14];

    [(ErrorModeView *)self->_structuredRAPAffordance setTopPadding:26.0, v14, v15, v16, v17];
    [(SearchResultsDataSource *)self adjustRAPAffordanceFrameWithTopPadding:26.0];
    v3 = self->_structuredRAPAffordance;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)shareRowAtIndexPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v7 = [(SearchResultsDataSource *)self objectAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    tableView = [(DataSource *)self tableView];
    v10 = [tableView cellForRowAtIndexPath:pathCopy];
    v11 = [MUPresentationOptions optionsWithSender:v10];

    placeCollection = [v8 placeCollection];

    if (placeCollection)
    {
      v13 = [CuratedCollectionShareItemSource alloc];
      placeCollection2 = [v8 placeCollection];
      shareDelegate2 = [(CuratedCollectionShareItemSource *)v13 initWithPlaceCollection:placeCollection2 refinedMapItems:&__NSArray0__struct];

      shareDelegate = [(SearchResultsDataSource *)self shareDelegate];
      [shareDelegate shareItem:shareDelegate2 presentationOptions:v11 completion:completionCopy];
    }

    else
    {
      shareDelegate2 = [(SearchResultsDataSource *)self shareDelegate];
      shareDelegate = [v8 unknownContact];
      v17 = [ShareItem shareItemWithSearchResult:v8 contact:shareDelegate includePrintActivity:1];
      [(CuratedCollectionShareItemSource *)shareDelegate2 shareItem:v17 presentationOptions:v11 completion:completionCopy];
    }

    [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v8 action:2008];
    v18 = objc_alloc_init(SearchSessionAnalytics);
    [(SearchSessionAnalytics *)v18 setAction:2008];
    [(SearchSessionAnalytics *)v18 setTarget:101];
    v19 = +[SearchSessionAnalyticsAggregator sharedAggregator];
    [v19 collectSearchSessionAnalytics:v18];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)locationDidUpdate
{
  currentLocation = [(DataSource *)self currentLocation];

  if (currentLocation)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10092F8A0;
    v4[3] = &unk_10165E380;
    v4[4] = self;
    [(SearchResultsDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v4];
  }
}

- (void)iterateThroughIndexPathsAndExecuteBlock:(id)block
{
  blockCopy = block;
  content = [(SearchResultsDataSource *)self content];
  numberOfSections = [content numberOfSections];

  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      content2 = [(SearchResultsDataSource *)self content];
      v8 = [content2 numberOfRowsInSection:i];

      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          v10 = [NSIndexPath indexPathForRow:j inSection:i];
          blockCopy[2](blockCopy, v10);
        }
      }
    }
  }
}

- (id)placeSummaryTemplateAtIndexPath:(id)path
{
  pathCopy = path;
  placeSummaryTemplateViewModels = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
  v6 = [placeSummaryTemplateViewModels objectForKey:pathCopy];

  return v6;
}

- (void)notifyDelegateDidCachePlaceSummaryTemplates
{
  delegate = [(DataSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      delegate2 = [(DataSource *)self delegate];
      [delegate2 didCachePlaceSummaryTemplates];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10092FC8C;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)cachePlaceSummaryTemplates
{
  v3 = sub_100067540();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SearchResultsCachePlaceSummary", "", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10092FE00;
  v5[3] = &unk_10165E380;
  v5[4] = self;
  [(SearchResultsDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v5];
  [(SearchResultsDataSource *)self notifyDelegateDidCachePlaceSummaryTemplates];
  v4 = sub_100067540();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SearchResultsCachePlaceSummary", "", buf, 2u);
  }
}

- (BOOL)_showBottomRoundedCorners:(id)corners rows:(int64_t)rows
{
  cornersCopy = corners;
  v7 = [cornersCopy section] + 1;
  content = [(SearchResultsDataSource *)self content];
  numberOfSections = [content numberOfSections];

  if (v7 >= numberOfSections)
  {
    v12 = 0;
  }

  else
  {
    content2 = [(SearchResultsDataSource *)self content];
    v11 = [content2 titleForHeaderInSection:v7];

    if (v11)
    {
      v12 = [v11 length] != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  section = [cornersCopy section];
  content3 = [(SearchResultsDataSource *)self content];
  numberOfSections2 = [content3 numberOfSections];

  item = [cornersCopy item];
  return item == (rows - 1) && (section == numberOfSections2 - 1 || v12);
}

- (BOOL)_showTopRoundedCorners:(id)corners rows:(int64_t)rows
{
  cornersCopy = corners;
  content = [(SearchResultsDataSource *)self content];
  v7 = [content titleForHeaderInSection:{objc_msgSend(cornersCopy, "section")}];

  if (v7)
  {
    v8 = [v7 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  if ([cornersCopy item])
  {
    v9 = 0;
  }

  else
  {
    v9 = [cornersCopy section] == 0 || v8;
  }

  return v9;
}

- (void)addMetricsForPlaceSummaryTemplate:(id)template indexPath:(id)path
{
  templateCopy = template;
  pathCopy = path;
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    tableView = [(DataSource *)self tableView];
    if (sub_10000FA08(tableView) == 5)
    {
      v8 = _UISolariumEnabled();

      if ((v8 & 1) == 0)
      {
        if (self->_isShowingClusterResults)
        {
          v9 = 8.0;
        }

        else
        {
          v9 = 0.0;
        }

        if (self->_isShowingClusterResults)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = 16.0;
        }

        v11 = [_TtC4Maps19PlaceSummaryMetrics alloc];
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
        v15 = 0.0;
        v16 = 0.0;
        v17 = v9;
        v18 = v10;
        v19 = v10;
        goto LABEL_11;
      }
    }

    else
    {
    }

    tableView2 = [(DataSource *)self tableView];
    if (sub_10000FA08(tableView2) == 5)
    {
      v22 = 12.0;
    }

    else
    {
      v22 = 26.0;
    }

    if ([(SearchResultsDataSource *)self placeSummaryUsesRichLayout])
    {
      tableView3 = [(DataSource *)self tableView];
      v24 = 3.0;
      if (sub_10000FA08(tableView3) == 5)
      {
        v25 = 3.0;
      }

      else
      {
        v25 = 5.0;
      }

      tableView4 = [(DataSource *)self tableView];
      if (sub_10000FA08(tableView4) != 5)
      {
        v24 = 5.0;
      }

      +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
      v28 = v27;
      if (![pathCopy item] && !objc_msgSend(pathCopy, "section"))
      {
        v24 = 0.0;
      }

      v11 = [_TtC4Maps19PlaceSummaryMetrics alloc];
      v12 = v28;
      v17 = v28;
      v18 = v24;
      v19 = v25;
    }

    else
    {
      content = [(SearchResultsDataSource *)self content];
      v30 = [content numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];

      v31 = [(SearchResultsDataSource *)self _showTopRoundedCorners:pathCopy rows:v30];
      v32 = [(SearchResultsDataSource *)self _showBottomRoundedCorners:pathCopy rows:v30];
      v11 = [_TtC4Maps19PlaceSummaryMetrics alloc];
      if (!v31 || !v32)
      {
        v12 = 16.0;
        v17 = 16.0;
        v18 = 0.0;
        if (v31)
        {
          v20 = v32 ^ 1;
          v19 = 0.0;
          v15 = 0.0;
          v16 = 0.0;
          v13 = v22;
          v14 = v22;
          goto LABEL_31;
        }

        if (!v32)
        {
          v19 = 0.0;
          v13 = 0.0;
          v14 = 0.0;
          v15 = 0.0;
          v16 = 0.0;
LABEL_11:
          v20 = 1;
LABEL_31:
          v33 = [(PlaceSummaryMetrics *)v11 initWithLeadingMargin:v20 trailingMargin:1 topMargin:v12 bottomMargin:v17 topLeadingCornerRadius:v18 topTrailingCornerRadius:v19 bottomLeadingCornerRadius:v13 bottomTrailingCornerRadius:v14 showsDivider:v15 showPlatter:v16];
          [templateCopy setMetrics:v33];

          goto LABEL_32;
        }

        v19 = 16.0;
        v13 = 0.0;
        v14 = 0.0;
LABEL_30:
        v15 = v22;
        v16 = v22;
        v20 = 0;
        goto LABEL_31;
      }

      v12 = 16.0;
      v17 = 16.0;
      v18 = 0.0;
      v19 = 0.0;
    }

    v13 = v22;
    v14 = v22;
    goto LABEL_30;
  }

LABEL_32:
}

- (id)placeSummaryTemplateForSearchResult:(id)result indexPath:(id)path
{
  resultCopy = result;
  pathCopy = path;
  if ([(SearchResultsDataSource *)self usePlaceSummaryForSearchResult:resultCopy])
  {
    placeSummaryTemplateViewModels = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
    v9 = [placeSummaryTemplateViewModels objectForKey:pathCopy];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      [resultCopy setRepresentsIntermediateStop:{-[SearchResultsDataSource isPresentingAddStopResultsFromWaypointEditor](self, "isPresentingAddStopResultsFromWaypointEditor")}];
      placeSummaryMetadata = [(SearchResultsDataSource *)self placeSummaryMetadata];
      currentLocation = [(DataSource *)self currentLocation];
      v10 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:resultCopy metadata:placeSummaryMetadata currentLocation:currentLocation searchAlongRoute:[(SearchResultsDataSource *)self isPresentingSearchAlongTheRouteResults] openAt:self->_openAt];

      [(SearchResultsDataSource *)self addMetricsForPlaceSummaryTemplate:v10 indexPath:pathCopy];
      if (v10)
      {
        placeSummaryTemplateViewModels2 = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
        [placeSummaryTemplateViewModels2 setObject:v10 forKey:pathCopy];

        v14 = v10;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addMetricsForGuideSummaryViewModel:(id)model atIndexPath:(id)path
{
  modelCopy = model;
  pathCopy = path;
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
    v8 = v7;
    if ([(SearchResultsDataSource *)self guideSummaryUsesRichLayout]|| [(SearchResultsDataSource *)self placeSummaryUsesRichLayout])
    {
      v9 = [_TtC4Maps19GuideSummaryMetrics alloc];
      v10 = 8.0;
      v11 = 8.0;
      v12 = 10.0;
      v13 = 10.0;
      v14 = 10.0;
      v15 = 10.0;
      v16 = v8;
      v17 = v8;
    }

    else
    {
      content = [(SearchResultsDataSource *)self content];
      v21 = [content numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];

      v22 = [(SearchResultsDataSource *)self _showTopRoundedCorners:pathCopy rows:v21];
      v23 = [(SearchResultsDataSource *)self _showBottomRoundedCorners:pathCopy rows:v21];
      v9 = [_TtC4Maps19GuideSummaryMetrics alloc];
      if (v22 && v23)
      {
        v16 = 16.0;
        v17 = 16.0;
        v10 = 16.0;
        v11 = 0.0;
        v12 = 10.0;
        v13 = 10.0;
        v14 = 10.0;
        v15 = 10.0;
      }

      else
      {
        v16 = 16.0;
        v17 = 16.0;
        if (v22)
        {
          v10 = 16.0;
          v11 = 0.0;
          v12 = 10.0;
          v13 = 10.0;
          v18 = v23 ^ 1;
          v14 = 0.0;
          v15 = 0.0;
          goto LABEL_6;
        }

        v10 = 0.0;
        if (!v23)
        {
          v11 = 0.0;
          v12 = 0.0;
          v13 = 0.0;
          v14 = 0.0;
          v15 = 0.0;
          v18 = 1;
          goto LABEL_6;
        }

        v11 = 16.0;
        v12 = 0.0;
        v13 = 0.0;
        v14 = 10.0;
        v15 = 16.0;
      }
    }

    v18 = 0;
LABEL_6:
    v19 = [(GuideSummaryMetrics *)v9 initWithLeadingMargin:v18 trailingMargin:v16 topMargin:v17 bottomMargin:v10 topLeadingCornerRadius:v11 topTrailingCornerRadius:v12 bottomLeadingCornerRadius:v13 bottomTrailingCornerRadius:v14 showsDivider:v15];
    [modelCopy setMetrics:v19];
  }
}

- (id)curatedGuideCellViewModelForSearchResult:(id)result indexPath:(id)path
{
  resultCopy = result;
  pathCopy = path;
  placeCollection = [resultCopy placeCollection];

  if (placeCollection)
  {
    curatedGuideViewModels = [(SearchResultsDataSource *)self curatedGuideViewModels];
    placeCollection = [curatedGuideViewModels objectForKey:pathCopy];

    if (!placeCollection)
    {
      v10 = [_TtC4Maps21CuratedGuideViewModel alloc];
      placeCollection2 = [resultCopy placeCollection];
      placeSummaryUsesRichLayout = [(SearchResultsDataSource *)self guideSummaryUsesRichLayout]|| [(SearchResultsDataSource *)self placeSummaryUsesRichLayout];
      placeCollection = [(CuratedGuideViewModel *)v10 initWithPlaceCollection:placeCollection2 useRichLayout:placeSummaryUsesRichLayout isAutocompleteContext:0];

      [(SearchResultsDataSource *)self addMetricsForGuideSummaryViewModel:placeCollection atIndexPath:pathCopy];
      curatedGuideViewModels2 = [(SearchResultsDataSource *)self curatedGuideViewModels];
      [curatedGuideViewModels2 setObject:placeCollection forKey:pathCopy];
    }
  }

  return placeCollection;
}

- (void)buildAndCacheCuratedGuideViewModels
{
  v3 = sub_100067540();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SearchResultsCacheGuideSummary", "", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1009309AC;
  v5[3] = &unk_10165E380;
  v5[4] = self;
  [(SearchResultsDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v5];
  v4 = sub_100067540();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SearchResultsCacheGuideSummary", "", buf, 2u);
  }
}

- (NSDictionary)itemCountInVenue
{
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(SearchResultsDataSourceContent *)self->_content objects];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v22 = *v31;
    do
    {
      v7 = 0;
      v23 = v5;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mapItem = [v8 mapItem];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v25 = mapItem;
          venueAreaIdentifiers = [mapItem venueAreaIdentifiers];
          v11 = venueAreaIdentifiers;
          v12 = &__NSArray0__struct;
          if (venueAreaIdentifiers)
          {
            v12 = venueAreaIdentifiers;
          }

          v13 = v12;

          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v26 + 1) + 8 * i);
                v19 = [v3 objectForKeyedSubscript:{v18, v22}];
                v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 unsignedIntegerValue] + 1);
                [v3 setObject:v20 forKeyedSubscript:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v15);
          }

          v6 = v22;
          v5 = v23;
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)visibleImpressionElements
{
  if (MapsFeature_IsEnabled_SearchResultsImpressions())
  {
    tableView = [(DataSource *)self tableView];
    visibleCells = [tableView visibleCells];

    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(visibleCells, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = visibleCells;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          tableView2 = [(DataSource *)self tableView];
          v13 = [tableView2 indexPathForCell:v11];

          if (v13)
          {
            v14 = [(SearchResultsDataSource *)self objectAtIndexPath:v13];
            v15 = [(SearchResultsDataSource *)self impressionElementForSearchResult:v14 indexPath:v13];
            tableView3 = [(DataSource *)self tableView];
            [tableView3 rectForRowAtIndexPath:v13];
            [v15 setFrame:?];

            [v5 addObject:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v17 = [v5 copy];
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section
{
  indexPathForRelatedCollectionSection = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  if (indexPathForRelatedCollectionSection)
  {
    indexPathForRelatedCollectionSection2 = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
    v8 = [indexPathForRelatedCollectionSection2 section] == section;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  content = [(SearchResultsDataSource *)self content];
  v7 = [content numberOfSections] - 1;

  return v7 != section || self->_enableStructuredRAPAffordance;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(SearchResultsDataSource *)self isSimpleSearchResults])
  {
    v7 = [(SearchResultsDataSource *)self objectAtIndexPath:pathCopy];
    if ([v7 type] != 11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 personalizedCompoundItem], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "address"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
      {
        +[TwoLinesTableViewCell estimatedCellHeight];
      }

      else
      {
        +[_TtC4Maps25PlaceSummaryTableViewCell searchResultEstimatedHeight];
      }

      goto LABEL_22;
    }

    relatedSection = [v7 relatedSection];

    if (relatedSection)
    {
      relatedSection2 = [v7 relatedSection];
      sectionType = [relatedSection2 sectionType];

      if (sectionType == 1)
      {
        relatedSection3 = [v7 relatedSection];
        relatedPlaceCollections = [relatedSection3 relatedPlaceCollections];
        v13 = [relatedPlaceCollections count];

        if (!v13)
        {
          v6 = 0.0;
LABEL_23:

          goto LABEL_24;
        }

        v14 = RelatedCollectionsSectionTableViewCell;
        goto LABEL_21;
      }
    }

    else
    {
      searchSection = [v7 searchSection];

      if (searchSection)
      {
        searchSection2 = [v7 searchSection];
        sectionType2 = [searchSection2 sectionType];
        if (sectionType2 == 2)
        {
          sectionGuide = [searchSection2 sectionGuide];
          placeCollections = [sectionGuide placeCollections];
          v24 = [placeCollections count];

          if (v24)
          {
            sectionGuide2 = [searchSection2 sectionGuide];
            placeCollections2 = [sectionGuide2 placeCollections];
            +[RelatedCollectionsSectionTableViewCell cellHeightWithCollectionsCount:](RelatedCollectionsSectionTableViewCell, "cellHeightWithCollectionsCount:", [placeCollections2 count]);
            v6 = v27;
          }

          else
          {
            v6 = 0.0;
          }
        }

        else
        {
          if (sectionType2)
          {

            goto LABEL_20;
          }

          +[RelatedSectionTableViewCell cellHeight];
          v6 = v21;
        }

        goto LABEL_23;
      }
    }

LABEL_20:
    v14 = RelatedSectionTableViewCell;
LABEL_21:
    [(__objc2_class *)v14 cellHeight];
LABEL_22:
    v6 = v17;
    goto LABEL_23;
  }

  v6 = UITableViewAutomaticDimension;
LABEL_24:

  return v6;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SearchResultsDataSource *)self objectAtIndexPath:pathCopy];
  if ([v8 type] != 11 || (MapsFeature_IsEnabled_SearchAndDiscovery() & 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      personalizedCompoundItem = [v8 personalizedCompoundItem];
      address = [personalizedCompoundItem address];
      if (address)
      {

LABEL_7:
        v11 = TwoLinesTableViewCell;
LABEL_28:
        [(__objc2_class *)v11 cellHeight];
        v22 = v35;
        goto LABEL_29;
      }

      displaysAsChainResult = [(SearchResultsDataSource *)self displaysAsChainResult];

      if (displaysAsChainResult)
      {
        goto LABEL_7;
      }
    }

    else if ([(SearchResultsDataSource *)self displaysAsChainResult])
    {
      goto LABEL_7;
    }

    placeCollection = [v8 placeCollection];

    if (!placeCollection)
    {
      v23 = [(SearchResultsDataSource *)self placeSummaryTemplateForSearchResult:v8 indexPath:pathCopy];
      tableView = [(DataSource *)self tableView];
      [tableView bounds];
      [v23 setContainerWidth:v25];

      v22 = UITableViewAutomaticDimension;
      goto LABEL_29;
    }

    searchSection2 = [(SearchResultsDataSource *)self curatedGuideCellViewModelForSearchResult:v8 indexPath:pathCopy];
    [viewCopy bounds];
    [searchSection2 setWidth:v21];
LABEL_15:
    v22 = UITableViewAutomaticDimension;
LABEL_16:

    goto LABEL_29;
  }

  relatedSection = [v8 relatedSection];

  if (!relatedSection)
  {
    searchSection = [v8 searchSection];

    if (searchSection)
    {
      searchSection2 = [v8 searchSection];
      sectionType = [searchSection2 sectionType];
      if (sectionType == 2)
      {
        if (!MapsFeature_IsEnabled_SearchAndDiscovery())
        {
          sectionGuide = [searchSection2 sectionGuide];
          placeCollections = [sectionGuide placeCollections];
          v31 = [placeCollections count];

          if (v31)
          {
            sectionGuide2 = [searchSection2 sectionGuide];
            placeCollections2 = [sectionGuide2 placeCollections];
            +[RelatedCollectionsSectionTableViewCell cellHeightWithCollectionsCount:](RelatedCollectionsSectionTableViewCell, "cellHeightWithCollectionsCount:", [placeCollections2 count]);
            v22 = v34;
          }

          else
          {
            v22 = 0.0;
          }

          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (!sectionType)
      {
        +[RelatedSectionTableViewCell cellHeight];
        v22 = v28;
        goto LABEL_16;
      }
    }

LABEL_27:
    v11 = RelatedSectionTableViewCell;
    goto LABEL_28;
  }

  relatedSection2 = [v8 relatedSection];
  sectionType2 = [relatedSection2 sectionType];

  if (sectionType2 != 1)
  {
    goto LABEL_27;
  }

  relatedSection3 = [v8 relatedSection];
  relatedPlaceCollections = [relatedSection3 relatedPlaceCollections];
  v17 = [relatedPlaceCollections count];

  if (v17)
  {
    v11 = RelatedCollectionsSectionTableViewCell;
    goto LABEL_28;
  }

  v22 = 0.0;
LABEL_29:

  return v22;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(SearchResultsDataSource *)self resetMapServiceTicket];
  v8 = [(SearchResultsDataSource *)self objectAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    if ([v9 type] != 11)
    {
      v10 = objc_alloc_init(SearchSessionAnalytics);
      placeCollection = [v9 placeCollection];
      if (placeCollection)
      {
        [(SearchSessionAnalytics *)v10 setAction:2099];
        [(SearchSessionAnalytics *)v10 setTarget:101];
        collectionIdentifier = [placeCollection collectionIdentifier];
        v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [collectionIdentifier muid]);

        publisher = [placeCollection publisher];
        v25 = viewCopy;
        if (publisher)
        {
          publisher2 = [placeCollection publisher];
          identifier = [publisher2 identifier];
          v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [identifier muid]);
          v27 = v16;
          v24 = [NSArray arrayWithObjects:&v27 count:1];
        }

        else
        {
          v24 = 0;
        }

        action = [(SearchSessionAnalytics *)v10 action];
        target = [(SearchSessionAnalytics *)v10 target];
        v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
        collectionIdentifier2 = [placeCollection collectionIdentifier];
        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [collectionIdentifier2 resultProviderID]);
        [GEOAPPortal captureCuratedCollectionUserAction:action target:target value:0 publisherId:v24 following:0 collectionId:v26 collectionCategory:0 collectionCurrentlySaved:0 verticalIndex:v17 horizontalIndex:0 placeCardType:0 possibleActions:0 impossibleActions:0 providerId:v19 repeatableSectionIndex:0 modules:0];

        viewCopy = v25;
      }

      else
      {
        [(SearchSessionAnalytics *)v10 setAction:2007];
        [(SearchSessionAnalytics *)v10 setTarget:101];
        [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v9 action:[(SearchSessionAnalytics *)v10 action] populateSearchTapEvent:1];
      }

      v20 = +[SearchSessionAnalyticsAggregator sharedAggregator];
      [v20 collectSearchSessionAnalytics:v10];

      delegate = [(DataSource *)self delegate];
      [delegate dataSource:self itemTapped:v9];

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  nextFocusedItem = [context nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([viewCopy indexPathForCell:nextFocusedItem], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    delegate2 = v8;
    delegate = [(DataSource *)self delegate];
    v11 = [(SearchResultsDataSource *)self objectAtIndexPath:delegate2];
    [delegate dataSource:self itemFocused:v11];
  }

  else
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 dataSource:self itemFocused:0];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(SearchResultsDataSource *)self objectAtIndexPath:path];
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [v4 type] != 11;

  return v5;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = +[NSMutableArray array];
  v7 = [(SearchResultsDataSource *)self objectAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      placeCollection = [v8 placeCollection];

      if (placeCollection)
      {
        v10 = [(SearchResultsDataSource *)self shareContextualActionAtIndexPath:pathCopy];
        v19 = v10;
        v11 = [NSArray arrayWithObjects:&v19 count:1];

        v6 = v11;
      }
    }

    mapItem = [v8 mapItem];
    _hasHikeInfo = [mapItem _hasHikeInfo];

    if (_hasHikeInfo)
    {

      v14 = 0;
      goto LABEL_11;
    }

    if ([v8 type] != 11)
    {
      v15 = [(SearchResultsDataSource *)self shareContextualActionAtIndexPath:pathCopy];
      v18 = v15;
      v16 = [NSArray arrayWithObjects:&v18 count:1];

      v6 = v16;
    }
  }

  v14 = [UISwipeActionsConfiguration configurationWithActions:v6];
LABEL_11:

  return v14;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(SearchResultsDataSource *)self objectAtIndexPath:path];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SearchResultsDataSource *)self objectAtIndexPath:pathCopy];
  v9 = +[UIFont accessibilityTextEnabled];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if ([v11 type] == 11 && (MapsFeature_IsEnabled_SearchAndDiscovery() & 1) == 0)
  {
    relatedSection = [v11 relatedSection];

    if (relatedSection)
    {
      relatedSection2 = [v11 relatedSection];
      sectionType = [relatedSection2 sectionType];
      if (sectionType == 2)
      {
        personalizedCompoundItem = 0;
        v16 = 0;
        goto LABEL_37;
      }

      if (sectionType == 1)
      {
        relatedSection3 = [v11 relatedSection];
        relatedPlaceCollections = [relatedSection3 relatedPlaceCollections];
        v26 = [relatedPlaceCollections count];

        if (v26)
        {
          if (v9)
          {
            +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
          }

          else
          {
            +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
          }
          personalizedCompoundItem = ;
          v33 = [viewCopy dequeueReusableCellWithIdentifier:personalizedCompoundItem forIndexPath:pathCopy];
          relatedSection4 = [v11 relatedSection];
          relatedPlaceCollections2 = [relatedSection4 relatedPlaceCollections];
          [v33 setPlaceCollections:relatedPlaceCollections2 delegate:self];

          v16 = v33;
          name = [relatedSection2 name];
          [v16 setSectionName:name];

          v37 = +[UIColor clearColor];
          [v16 setBackgroundColor:v37];

          goto LABEL_37;
        }

        goto LABEL_25;
      }
    }

    else
    {
      searchSection = [v11 searchSection];

      if (!searchSection)
      {
        goto LABEL_6;
      }

      relatedSection2 = [v11 searchSection];
      sectionType = [relatedSection2 sectionType];
      if (sectionType == 2)
      {
        sectionGuide = [relatedSection2 sectionGuide];
        placeCollections = [sectionGuide placeCollections];
        v32 = [placeCollections count];

        if (v32)
        {
          if (v9)
          {
            +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
          }

          else
          {
            +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
          }
          personalizedCompoundItem = ;
          v16 = [viewCopy dequeueReusableCellWithIdentifier:personalizedCompoundItem forIndexPath:pathCopy];
          placeCollections2 = [sectionGuide placeCollections];
          [v16 setPlaceCollections:placeCollections2 delegate:self];

          name2 = [relatedSection2 name];
          [v16 setSectionName:name2];

          v40 = +[UIColor clearColor];
          [v16 setBackgroundColor:v40];
        }

        else
        {
          v16 = objc_opt_new();
          personalizedCompoundItem = 0;
        }

        goto LABEL_37;
      }

      if (sectionType == 1)
      {
        goto LABEL_25;
      }
    }

    if (sectionType)
    {

      goto LABEL_6;
    }

LABEL_25:
    v16 = objc_opt_new();
    personalizedCompoundItem = 0;
    goto LABEL_37;
  }

LABEL_6:
  personalizedCompoundItem = [v11 personalizedCompoundItem];
  address = [personalizedCompoundItem address];

  if (address)
  {
    address2 = [personalizedCompoundItem address];
    v15 = +[TwoLinesTableViewCell identifier];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v15 forIndexPath:pathCopy];

    v17 = [TwoLinesContentViewModelComposer cellModelForAddressBookAddress:address2];
    [v16 setViewModel:v17];

    goto LABEL_38;
  }

  if (MapsFeature_IsEnabled_SearchAndDiscovery() && ([v11 placeCollection], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v19 forIndexPath:pathCopy];

    relatedSection2 = [(SearchResultsDataSource *)self curatedGuideCellViewModelForSearchResult:v11 indexPath:pathCopy];
    [viewCopy bounds];
    [relatedSection2 setWidth:v21];
    [v16 configureWith:relatedSection2 delegate:self template:0];
  }

  else
  {
    if (!v11 || ![(SearchResultsDataSource *)self usePlaceSummaryForSearchResult:v11])
    {
      v16 = objc_opt_new();
      goto LABEL_38;
    }

    relatedSection2 = [(SearchResultsDataSource *)self placeSummaryTemplateForSearchResult:v11 indexPath:pathCopy];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v28];

    [v16 configureWithTemplate:relatedSection2 query:0 asyncDataManager:self->_placeSummaryAsyncDataManager delegate:self];
  }

LABEL_37:

LABEL_38:

  return v16;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  content = [(SearchResultsDataSource *)self content];
  v8 = [content titleForHeaderInSection:section];

  if ([v8 length])
  {
    v9 = [viewCopy _maps_indexOfFirstNonEmptySection] == section;
    traitCollection = [viewCopy traitCollection];
    [ResultsSectionHeaderView heightWhenFirstNonEmptySection:v9 title:v8 traitCollection:traitCollection];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view _maps_indexOfFirstNonEmptySection] == section;
  content = [(SearchResultsDataSource *)self content];
  v8 = [content viewForHeaderInSection:section isFirstNonEmptySection:v6];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  content = [(SearchResultsDataSource *)self content];
  v6 = [content numberOfRowsInSection:section];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  content = [(SearchResultsDataSource *)self content];
  numberOfSections = [content numberOfSections];

  return numberOfSections;
}

- (void)setIsPresentingVenueClusterResults:(BOOL)results
{
  if (self->_isPresentingVenueClusterResults != results)
  {
    self->_isPresentingVenueClusterResults = results;
    content = [(SearchResultsDataSource *)self content];

    if (content)
    {
      delegate = [(DataSource *)self delegate];
      [delegate dataSourceUpdated:self];
    }
  }
}

- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)results
{
  if (self->_isPresentingSearchAlongTheRouteResults != results)
  {
    self->_isPresentingSearchAlongTheRouteResults = results;
    content = [(SearchResultsDataSource *)self content];

    if (content)
    {
      delegate = [(DataSource *)self delegate];
      [delegate dataSourceUpdated:self];
    }
  }
}

- (void)createEVChargersRefreshDownloader
{
  objects = [(SearchResultsDataSourceContent *)self->_content objects];
  v4 = [objects count];

  if (v4)
  {
    if (!self->_evChargerDownloader)
    {
      v5 = objc_alloc_init(_TtC4Maps31PlaceSummaryEVChargerDownloader);
      evChargerDownloader = self->_evChargerDownloader;
      self->_evChargerDownloader = v5;
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100932560;
    v7[3] = &unk_10165E380;
    v7[4] = self;
    [(SearchResultsDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v7];
  }
}

- (void)refreshEVChargers:(id)chargers
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = chargers;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        mapItem = [v8 mapItem];
        _identifier = [mapItem _identifier];

        v11 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:_identifier];

        if (v11)
        {
          evChargerDownloader = self->_evChargerDownloader;
          v13 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:_identifier];
          mapItem2 = [v8 mapItem];
          [(PlaceSummaryEVChargerDownloader *)evChargerDownloader refreshResultForForTemplate:v13 mapItem:mapItem2];
        }

        if (_UISolariumEnabled())
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100932898;
          v16[3] = &unk_10162EFC0;
          v16[4] = self;
          v16[5] = v8;
          v17 = _identifier;
          [(SearchResultsDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v16];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)setContent:(id)content openAt:(id)at
{
  objc_storeStrong(&self->_openAt, at);
  contentCopy = content;
  [(SearchResultsDataSource *)self setContent:contentCopy];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  if (self->_content != contentCopy)
  {
    v14 = contentCopy;
    objc_storeStrong(&self->_content, content);
    [(SearchResultsDataSource *)self setIndexPathForRelatedCollectionSection:0];
    v6 = objc_alloc_init(_TtC4Maps28PlaceSummaryAsyncDataManager);
    placeSummaryAsyncDataManager = self->_placeSummaryAsyncDataManager;
    self->_placeSummaryAsyncDataManager = v6;

    v8 = objc_alloc_init(_TtC4Maps35CuratedGuideViewModelDataDownloader);
    curatedGuideDataDownloader = self->_curatedGuideDataDownloader;
    self->_curatedGuideDataDownloader = v8;

    impressionElements = [(SearchResultsDataSource *)self impressionElements];
    [impressionElements removeAllObjects];

    placeSummaryTemplateViewModels = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
    [placeSummaryTemplateViewModels removeAllObjects];

    curatedGuideViewModels = [(SearchResultsDataSource *)self curatedGuideViewModels];
    [curatedGuideViewModels removeAllObjects];

    [(SearchResultsDataSource *)self cachePlaceSummaryTemplates];
    [(SearchResultsDataSource *)self buildAndCacheCuratedGuideViewModels];
    delegate = [(DataSource *)self delegate];
    [delegate dataSourceUpdated:self];

    [(SearchResultsDataSource *)self createEVChargersRefreshDownloader];
    contentCopy = v14;
  }
}

- (id)impressionElementForSearchResult:(id)result indexPath:(id)path
{
  resultCopy = result;
  pathCopy = path;
  if (MapsFeature_IsEnabled_SearchResultsImpressions())
  {
    impressionElements = [(SearchResultsDataSource *)self impressionElements];
    v9 = [impressionElements objectForKeyedSubscript:pathCopy];

    if (v9)
    {
      impressionElements2 = [(SearchResultsDataSource *)self impressionElements];
      v11 = [(SearchResultsImpressionMetadata *)impressionElements2 objectForKeyedSubscript:pathCopy];
    }

    else
    {
      v28 = [SearchResultsImpressionMetadata alloc];
      resultIndex = [resultCopy resultIndex];
      mapItem = [resultCopy mapItem];
      _muid = [mapItem _muid];
      mapItem2 = [resultCopy mapItem];
      place = [mapItem2 place];
      localSearchProviderID = [place localSearchProviderID];
      searchQuery = [(SearchResultsDataSource *)self searchQuery];
      impressionElements2 = [(SearchResultsImpressionMetadata *)v28 initWithResultIndex:resultIndex businessId:_muid localSearchProviderId:localSearchProviderID query:searchQuery];

      v19 = [MUImpressionElement alloc];
      impressionElementIdentifier = [resultCopy impressionElementIdentifier];
      GEOConfigGetDouble();
      v11 = [v19 initWithElementIdentifier:impressionElementIdentifier visibilityThreshold:?];

      [v11 setCustomData:impressionElements2];
      impressionsSessionIdentifier = [(SearchResultsDataSource *)self impressionsSessionIdentifier];
      [v11 setSessionIdentifier:impressionsSessionIdentifier];

      section = [pathCopy section];
      v23 = [pathCopy row];
      mapItem3 = [resultCopy mapItem];
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SearchResult at section %ld, index %ld, muid %llu", section, v23, [mapItem3 _muid]);
      [v11 setDebugString:v25];

      impressionElements3 = [(SearchResultsDataSource *)self impressionElements];
      [impressionElements3 setObject:v11 forKeyedSubscript:pathCopy];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)objectsForAnalytics
{
  objects = [(SearchResultsDataSourceContent *)self->_content objects];
  v3 = [objects copy];

  return v3;
}

- (id)shareContextualActionAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100932ED4;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = pathCopy;
  v9 = v5;
  v6 = sub_100DCCCC0(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)setGuideSummaryLayoutMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_storeStrong(&self->_guideSummaryLayoutMetadata, metadata);
  -[SearchResultsDataSource setGuideSummaryUsesRichLayout:](self, "setGuideSummaryUsesRichLayout:", [metadataCopy guideSummaryUsesRichLayout]);
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    guideSummaryUsesRichLayout = [(SearchResultsDataSource *)self guideSummaryUsesRichLayout];
    v8 = @"NO";
    if (guideSummaryUsesRichLayout)
    {
      v8 = @"YES";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Place Summary] GuideSummaryUsesRichLayout: %@", &v9, 0xCu);
  }
}

- (void)setPlaceSummaryMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_storeStrong(&self->_placeSummaryMetadata, metadata);
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    [(SearchResultsDataSource *)self setPlaceSummaryUsesRichLayout:[(PlaceSummaryMetadata *)self->_placeSummaryMetadata containsPhotoCarouselLine]];
    isPresentingSearchAlongTheRouteResults = [(SearchResultsDataSource *)self isShowingClusterResults]&& [(SearchResultsDataSource *)self isPresentingSearchAlongTheRouteResults];
    tableView = [(DataSource *)self tableView];
    [tableView setSeparatorStyle:isPresentingSearchAlongTheRouteResults];

    v8 = sub_100067540();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      placeSummaryUsesRichLayout = [(SearchResultsDataSource *)self placeSummaryUsesRichLayout];
      v10 = @"NO";
      if (placeSummaryUsesRichLayout)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Place Summary] PlaceSummaryUsesRichLayout: %@", &v11, 0xCu);
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  if ([(SearchResultsDataSource *)self enableStructuredRAPAffordance])
  {

    [(SearchResultsDataSource *)self adjustRAPAffordanceFrameWithTopPadding:26.0];
  }
}

- (void)dealloc
{
  evChargerDownloader = self->_evChargerDownloader;
  self->_evChargerDownloader = 0;

  v4.receiver = self;
  v4.super_class = SearchResultsDataSource;
  [(SearchResultsDataSource *)&v4 dealloc];
}

- (SearchResultsDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v37.receiver = self;
  v37.super_class = SearchResultsDataSource;
  v5 = [(DataSource *)&v37 initWithTableView:viewCopy updateLocation:1];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = +[TwoLinesTableViewCell identifier];
    [viewCopy registerClass:v6 forCellReuseIdentifier:v7];

    v8 = objc_opt_class();
    v9 = +[RelatedSectionTableViewCell identifier];
    [viewCopy registerClass:v8 forCellReuseIdentifier:v9];

    v10 = objc_opt_class();
    v11 = +[RelatedSectionTableViewCell accessibilityIdentifier];
    [viewCopy registerClass:v10 forCellReuseIdentifier:v11];

    v12 = objc_opt_class();
    v13 = +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
    [viewCopy registerClass:v12 forCellReuseIdentifier:v13];

    v14 = objc_opt_class();
    v15 = +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
    [viewCopy registerClass:v14 forCellReuseIdentifier:v15];

    v16 = objc_opt_class();
    v17 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
    [viewCopy registerClass:v16 forCellReuseIdentifier:v17];

    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [viewCopy registerClass:v18 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
    [viewCopy registerClass:v21 forCellReuseIdentifier:v22];

    v5->_displayDistance = 1;
    v23 = objc_alloc_init(SearchResultsCuratedCollectionsAnalyticsManager);
    curatedCollectionsAnalyticsManager = v5->_curatedCollectionsAnalyticsManager;
    v5->_curatedCollectionsAnalyticsManager = v23;

    v25 = objc_alloc_init(NSCache);
    placeSummaryTemplateViewModels = v5->_placeSummaryTemplateViewModels;
    v5->_placeSummaryTemplateViewModels = v25;

    [(NSCache *)v5->_placeSummaryTemplateViewModels setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v5->_placeSummaryTemplateViewModels setEvictsObjectsWithDiscardedContent:0];
    v27 = objc_alloc_init(NSCache);
    curatedGuideViewModels = v5->_curatedGuideViewModels;
    v5->_curatedGuideViewModels = v27;

    [(NSCache *)v5->_curatedGuideViewModels setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v5->_curatedGuideViewModels setEvictsObjectsWithDiscardedContent:0];
    v29 = objc_alloc_init(NSCache);
    etaProviders = v5->_etaProviders;
    v5->_etaProviders = v29;

    [(NSCache *)v5->_etaProviders setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v5->_etaProviders setEvictsObjectsWithDiscardedContent:0];
    v31 = objc_alloc_init(NSMutableDictionary);
    impressionElements = v5->_impressionElements;
    v5->_impressionElements = v31;

    v33 = +[NSMutableDictionary dictionary];
    mapitemTemplates = v5->_mapitemTemplates;
    v5->_mapitemTemplates = v33;

    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v5 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

@end
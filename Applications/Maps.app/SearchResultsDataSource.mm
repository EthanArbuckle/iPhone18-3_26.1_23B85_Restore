@interface SearchResultsDataSource
- (BOOL)_showBottomRoundedCorners:(id)a3 rows:(int64_t)a4;
- (BOOL)_showTopRoundedCorners:(id)a3 rows:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (ErrorModeView)structuredRAPAffordance;
- (MKCollectionCarouselRoutingDelegate)collectionCarouselRoutingDelegate;
- (NSDictionary)itemCountInVenue;
- (NSIndexPath)indexPathForRelatedCollectionSection;
- (SearchResultsDataSource)initWithTableView:(id)a3;
- (ShareDelegate)shareDelegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)curatedGuideCellViewModelForSearchResult:(id)a3 indexPath:(id)a4;
- (id)etaProviderForMapItem:(id)a3;
- (id)impressionElementForSearchResult:(id)a3 indexPath:(id)a4;
- (id)objectsForAnalytics;
- (id)personalizedItemForQuickActionMenuWithCell:(id)a3;
- (id)placeSummaryTemplateAtIndexPath:(id)a3;
- (id)placeSummaryTemplateForSearchResult:(id)a3 indexPath:(id)a4;
- (id)shareContextualActionAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)visibleImpressionElements;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)addMetricsForGuideSummaryViewModel:(id)a3 atIndexPath:(id)a4;
- (void)addMetricsForPlaceSummaryTemplate:(id)a3 indexPath:(id)a4;
- (void)adjustRAPAffordanceFrameWithTopPadding:(double)a3;
- (void)buildAndCacheCuratedGuideViewModels;
- (void)cachePlaceSummaryTemplates;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)createEVChargersRefreshDownloader;
- (void)dealloc;
- (void)didTapOnAccessoryEntityCallWithCell:(id)a3;
- (void)didTapOnAccessoryEntityDirectionsWithCell:(id)a3;
- (void)didTapOnAccessoryEntityFlyoverWithCell:(id)a3;
- (void)didTapOnAccessoryEntityLookAroundWithCell:(id)a3;
- (void)didTapOnAccessoryEntityWebsiteWithCell:(id)a3;
- (void)didTapOnAddStop:(id)a3;
- (void)didTapOnContainmentParentMapItem:(id)a3 cell:(id)a4;
- (void)didTapOnCuratedGuide:(id)a3 cell:(id)a4;
- (void)didTapOnCuratedGuides:(id)a3 cell:(id)a4;
- (void)didTapOnPhotoCarousel:(id)a3 photoIndex:(int64_t)a4;
- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)a3 cell:(id)a4;
- (void)didTapOnUserGeneratedGuide:(id)a3 cell:(id)a4;
- (void)didTapOnUserLibrary:(id)a3 mapItem:(id)a4;
- (void)iterateThroughIndexPathsAndExecuteBlock:(id)a3;
- (void)locationDidUpdate;
- (void)notifyDelegateDidCachePlaceSummaryTemplates;
- (void)refreshEVChargers:(id)a3;
- (void)relatedSectionRouteToCuratedCollection:(id)a3;
- (void)relatedSectionTableViewCellDidScrollBackward;
- (void)relatedSectionTableViewCellDidScrollForward;
- (void)relatedSectionTappedOnCollectionId:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5;
- (void)resetMapServiceTicket;
- (void)setContent:(id)a3;
- (void)setContent:(id)a3 openAt:(id)a4;
- (void)setEnableStructuredRAPAffordance:(BOOL)a3;
- (void)setGuideSummaryLayoutMetadata:(id)a3;
- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)a3;
- (void)setIsPresentingVenueClusterResults:(BOOL)a3;
- (void)setPlaceSummaryMetadata:(id)a3;
- (void)shareRowAtIndexPath:(id)a3 completion:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
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
    v4 = [(SearchResultsDataSource *)self content];
    v5 = [v4 numberOfSections];

    if (v5 < 1)
    {
      goto LABEL_13;
    }

    v6 = 0;
    while (1)
    {
      v7 = [(SearchResultsDataSource *)self content];
      v8 = [v7 numberOfRowsInSection:v6];

      if (v8 < 1)
      {
        goto LABEL_12;
      }

      v9 = 0;
      while (1)
      {
        v10 = [NSIndexPath indexPathForRow:v9 inSection:v6];
        v11 = [(SearchResultsDataSource *)self content];
        v12 = [v11 objectAtIndexPath:v10];

        if ([v12 type] == 11)
        {
          break;
        }

LABEL_9:

        ++v9;
        v14 = [(SearchResultsDataSource *)self content];
        v15 = [v14 numberOfRowsInSection:v6];

        if (v9 >= v15)
        {
          goto LABEL_12;
        }
      }

      v13 = [v12 searchSection];
      if ([v13 sectionType] != 2)
      {
        break;
      }

      v16 = self->_indexPathForRelatedCollectionSection;
      self->_indexPathForRelatedCollectionSection = v10;

LABEL_12:
      ++v6;
      v17 = [(SearchResultsDataSource *)self content];
      v18 = [v17 numberOfSections];

      if (v6 >= v18)
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

- (void)relatedSectionRouteToCuratedCollection:(id)a3
{
  v4 = a3;
  v5 = [(SearchResultsDataSource *)self collectionCarouselRoutingDelegate];
  [v5 routeToCuratedCollection:v4];
}

- (void)relatedSectionTappedOnCollectionId:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v11 = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  v9 = [v8 muid];

  v10 = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  [v11 carouselCollectionTappedWithMuid:v9 verticalIndex:objc_msgSend(v10 horizontalIndex:"row") isCurrentlySaved:{a4, v5}];
}

- (void)relatedSectionTableViewCellDidScrollBackward
{
  v4 = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  v3 = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  [v4 carouselScrolledBackwardAtVerticalIndex:{objc_msgSend(v3, "row")}];
}

- (void)relatedSectionTableViewCellDidScrollForward
{
  v4 = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  v3 = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  [v4 carouselScrolledForwardAtVerticalIndex:{objc_msgSend(v3, "row")}];
}

- (void)resetMapServiceTicket
{
  v3 = [(SearchResultsDataSource *)self mapServiceTicket];
  [v3 cancel];

  [(SearchResultsDataSource *)self setMapServiceTicket:0];
}

- (void)didTapOnPhotoCarousel:(id)a3 photoIndex:(int64_t)a4
{
  v5 = a3;
  v6 = [(DataSource *)self tableView];
  v12 = [v6 indexPathForCell:v5];

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
    v11 = [(DataSource *)self delegate];
    [v11 dataSource:self itemTapped:v8];
  }
}

- (void)didTapOnUserLibrary:(id)a3 mapItem:(id)a4
{
  v8 = a4;
  v5 = [(DataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DataSource *)self delegate];
    [v7 didTapOnUserLibraryMapItem:v8];
  }
}

- (void)didTapOnAddStop:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v13 = [v5 indexPathForCell:v4];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = v6;
      v10 = [(DataSource *)self delegate];
      [v10 didTapOnAddStopWithSearchResult:v9 atIndexPath:v13];
    }

    else
    {
      v11 = [(DataSource *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

      v10 = [(DataSource *)self delegate];
      [v10 didTapOnAddStopAtIndex:{objc_msgSend(v13, "row")}];
    }
  }

LABEL_7:
}

- (id)etaProviderForMapItem:(id)a3
{
  v4 = a3;
  v5 = [(SearchResultsDataSource *)self etaProviders];
  v6 = [v4 _identifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [[MKETAProvider alloc] initWithMapItem:v4];
    v9 = [(SearchResultsDataSource *)self etaProviders];
    v10 = [v4 _identifier];
    [v9 setObject:v8 forKey:v10];
  }

  return v8;
}

- (id)personalizedItemForQuickActionMenuWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v6 = [v5 indexPathForCell:v4];

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

- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SearchResultsDataSource *)self resetMapServiceTicket];
  v8 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v6];
  v9 = +[MKMapService sharedService];
  v16 = v8;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v11 = [v9 ticketForIdentifiers:v10 traits:0];
  [(SearchResultsDataSource *)self setMapServiceTicket:v11];

  objc_initWeak(&location, self);
  v12 = [(SearchResultsDataSource *)self mapServiceTicket];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10092E884;
  v13[3] = &unk_10165F290;
  objc_copyWeak(&v14, &location);
  [v12 submitWithHandler:v13 networkActivity:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)didTapOnContainmentParentMapItem:(id)a3 cell:(id)a4
{
  v8 = a3;
  v5 = [(DataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DataSource *)self delegate];
    [v7 didTapOnContainmentParentMapItem:v8];
  }
}

- (void)didTapOnAccessoryEntityFlyoverWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v10 = [v5 indexPathForCell:v4];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DataSource *)self delegate];
      [v9 didTapOnFlyoverWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityWebsiteWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v10 = [v5 indexPathForCell:v4];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DataSource *)self delegate];
      [v9 didTapOnWebsiteWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityCallWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v10 = [v5 indexPathForCell:v4];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DataSource *)self delegate];
      [v9 didTapOnCallWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityLookAroundWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v10 = [v5 indexPathForCell:v4];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DataSource *)self delegate];
      [v9 didTapOnLookAroundWithSearchResult:v6];
    }
  }
}

- (void)didTapOnAccessoryEntityDirectionsWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v10 = [v5 indexPathForCell:v4];

  v6 = [(SearchResultsDataSource *)self objectAtIndexPath:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DataSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DataSource *)self delegate];
      [v9 didTapOnDirectionsWithSearchResult:v6];
    }
  }
}

- (void)didTapOnCuratedGuides:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DataSource *)self delegate];
    [v10 didTapOnCuratedGuides:v6];
  }

  v11 = [(DataSource *)self tableView];
  v23 = v7;
  v12 = [v11 indexPathForCell:v7];

  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v6;
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

        v19 = [*(*(&v24 + 1) + 8 * v18) collectionIdentifier];
        v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 muid]);
        [v13 addObject:v20];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v21 = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  v22 = [v13 copy];
  [v21 placeContextMultipleCollectionsTappedWithMuids:v22 verticalIndex:{objc_msgSend(v12, "row")}];
}

- (void)didTapOnCuratedGuide:(id)a3 cell:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(DataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(DataSource *)self delegate];
    [v9 didTapOnCuratedGuide:v17];
  }

  v10 = [(DataSource *)self tableView];
  v11 = [v10 indexPathForCell:v6];

  v12 = [v17 collectionIdentifier];
  v13 = [v12 muid];

  v14 = +[CuratedCollectionSyncManager sharedManager];
  v15 = [v14 collectionIsSaved:v17];

  v16 = [(SearchResultsDataSource *)self curatedCollectionsAnalyticsManager];
  [v16 placeContextSingleCollectionTappedWithMuid:v13 isCurrentlySaved:v15 verticalIndex:{objc_msgSend(v11, "row")}];
}

- (void)didTapOnUserGeneratedGuide:(id)a3 cell:(id)a4
{
  v8 = a3;
  v5 = [(DataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DataSource *)self delegate];
    [v7 didTapOnUserGeneratedGuide:v8];
  }
}

- (void)setEnableStructuredRAPAffordance:(BOOL)a3
{
  v3 = a3;
  self->_enableStructuredRAPAffordance = a3;
  if (a3)
  {
    v6 = [(SearchResultsDataSource *)self structuredRAPAffordance];
  }

  else
  {
    v6 = 0;
  }

  v5 = [(DataSource *)self tableView];
  [v5 setTableFooterView:v6];

  if (v3)
  {
  }
}

- (void)adjustRAPAffordanceFrameWithTopPadding:(double)a3
{
  v8 = [(DataSource *)self tableView];
  [v8 frame];
  v6 = v5;
  [(ErrorModeView *)self->_structuredRAPAffordance fittingHeight];
  [(ErrorModeView *)self->_structuredRAPAffordance setFrame:0.0, 0.0, v6, v7 + a3];
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

- (void)shareRowAtIndexPath:(id)a3 completion:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(SearchResultsDataSource *)self objectAtIndexPath:v20];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [(DataSource *)self tableView];
    v10 = [v9 cellForRowAtIndexPath:v20];
    v11 = [MUPresentationOptions optionsWithSender:v10];

    v12 = [v8 placeCollection];

    if (v12)
    {
      v13 = [CuratedCollectionShareItemSource alloc];
      v14 = [v8 placeCollection];
      v15 = [(CuratedCollectionShareItemSource *)v13 initWithPlaceCollection:v14 refinedMapItems:&__NSArray0__struct];

      v16 = [(SearchResultsDataSource *)self shareDelegate];
      [v16 shareItem:v15 presentationOptions:v11 completion:v6];
    }

    else
    {
      v15 = [(SearchResultsDataSource *)self shareDelegate];
      v16 = [v8 unknownContact];
      v17 = [ShareItem shareItemWithSearchResult:v8 contact:v16 includePrintActivity:1];
      [(CuratedCollectionShareItemSource *)v15 shareItem:v17 presentationOptions:v11 completion:v6];
    }

    [(DataSource *)self sendAnalyticsForDataAtIndexPath:v20 object:v8 action:2008];
    v18 = objc_alloc_init(SearchSessionAnalytics);
    [(SearchSessionAnalytics *)v18 setAction:2008];
    [(SearchSessionAnalytics *)v18 setTarget:101];
    v19 = +[SearchSessionAnalyticsAggregator sharedAggregator];
    [v19 collectSearchSessionAnalytics:v18];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)locationDidUpdate
{
  v3 = [(DataSource *)self currentLocation];

  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10092F8A0;
    v4[3] = &unk_10165E380;
    v4[4] = self;
    [(SearchResultsDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v4];
  }
}

- (void)iterateThroughIndexPathsAndExecuteBlock:(id)a3
{
  v11 = a3;
  v4 = [(SearchResultsDataSource *)self content];
  v5 = [v4 numberOfSections];

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(SearchResultsDataSource *)self content];
      v8 = [v7 numberOfRowsInSection:i];

      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          v10 = [NSIndexPath indexPathForRow:j inSection:i];
          v11[2](v11, v10);
        }
      }
    }
  }
}

- (id)placeSummaryTemplateAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)notifyDelegateDidCachePlaceSummaryTemplates
{
  v3 = [(DataSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      v5 = [(DataSource *)self delegate];
      [v5 didCachePlaceSummaryTemplates];
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

- (BOOL)_showBottomRoundedCorners:(id)a3 rows:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 section] + 1;
  v8 = [(SearchResultsDataSource *)self content];
  v9 = [v8 numberOfSections];

  if (v7 >= v9)
  {
    v12 = 0;
  }

  else
  {
    v10 = [(SearchResultsDataSource *)self content];
    v11 = [v10 titleForHeaderInSection:v7];

    if (v11)
    {
      v12 = [v11 length] != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = [v6 section];
  v14 = [(SearchResultsDataSource *)self content];
  v15 = [v14 numberOfSections];

  v16 = [v6 item];
  return v16 == (a4 - 1) && (v13 == v15 - 1 || v12);
}

- (BOOL)_showTopRoundedCorners:(id)a3 rows:(int64_t)a4
{
  v5 = a3;
  v6 = [(SearchResultsDataSource *)self content];
  v7 = [v6 titleForHeaderInSection:{objc_msgSend(v5, "section")}];

  if (v7)
  {
    v8 = [v7 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  if ([v5 item])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v5 section] == 0 || v8;
  }

  return v9;
}

- (void)addMetricsForPlaceSummaryTemplate:(id)a3 indexPath:(id)a4
{
  v34 = a3;
  v6 = a4;
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v7 = [(DataSource *)self tableView];
    if (sub_10000FA08(v7) == 5)
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

    v21 = [(DataSource *)self tableView];
    if (sub_10000FA08(v21) == 5)
    {
      v22 = 12.0;
    }

    else
    {
      v22 = 26.0;
    }

    if ([(SearchResultsDataSource *)self placeSummaryUsesRichLayout])
    {
      v23 = [(DataSource *)self tableView];
      v24 = 3.0;
      if (sub_10000FA08(v23) == 5)
      {
        v25 = 3.0;
      }

      else
      {
        v25 = 5.0;
      }

      v26 = [(DataSource *)self tableView];
      if (sub_10000FA08(v26) != 5)
      {
        v24 = 5.0;
      }

      +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
      v28 = v27;
      if (![v6 item] && !objc_msgSend(v6, "section"))
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
      v29 = [(SearchResultsDataSource *)self content];
      v30 = [v29 numberOfRowsInSection:{objc_msgSend(v6, "section")}];

      v31 = [(SearchResultsDataSource *)self _showTopRoundedCorners:v6 rows:v30];
      v32 = [(SearchResultsDataSource *)self _showBottomRoundedCorners:v6 rows:v30];
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
          [v34 setMetrics:v33];

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

- (id)placeSummaryTemplateForSearchResult:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SearchResultsDataSource *)self usePlaceSummaryForSearchResult:v6])
  {
    v8 = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
    v9 = [v8 objectForKey:v7];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      [v6 setRepresentsIntermediateStop:{-[SearchResultsDataSource isPresentingAddStopResultsFromWaypointEditor](self, "isPresentingAddStopResultsFromWaypointEditor")}];
      v11 = [(SearchResultsDataSource *)self placeSummaryMetadata];
      v12 = [(DataSource *)self currentLocation];
      v10 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v6 metadata:v11 currentLocation:v12 searchAlongRoute:[(SearchResultsDataSource *)self isPresentingSearchAlongTheRouteResults] openAt:self->_openAt];

      [(SearchResultsDataSource *)self addMetricsForPlaceSummaryTemplate:v10 indexPath:v7];
      if (v10)
      {
        v13 = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
        [v13 setObject:v10 forKey:v7];

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

- (void)addMetricsForGuideSummaryViewModel:(id)a3 atIndexPath:(id)a4
{
  v24 = a3;
  v6 = a4;
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
      v20 = [(SearchResultsDataSource *)self content];
      v21 = [v20 numberOfRowsInSection:{objc_msgSend(v6, "section")}];

      v22 = [(SearchResultsDataSource *)self _showTopRoundedCorners:v6 rows:v21];
      v23 = [(SearchResultsDataSource *)self _showBottomRoundedCorners:v6 rows:v21];
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
    [v24 setMetrics:v19];
  }
}

- (id)curatedGuideCellViewModelForSearchResult:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 placeCollection];

  if (v8)
  {
    v9 = [(SearchResultsDataSource *)self curatedGuideViewModels];
    v8 = [v9 objectForKey:v7];

    if (!v8)
    {
      v10 = [_TtC4Maps21CuratedGuideViewModel alloc];
      v11 = [v6 placeCollection];
      v12 = [(SearchResultsDataSource *)self guideSummaryUsesRichLayout]|| [(SearchResultsDataSource *)self placeSummaryUsesRichLayout];
      v8 = [(CuratedGuideViewModel *)v10 initWithPlaceCollection:v11 useRichLayout:v12 isAutocompleteContext:0];

      [(SearchResultsDataSource *)self addMetricsForGuideSummaryViewModel:v8 atIndexPath:v7];
      v13 = [(SearchResultsDataSource *)self curatedGuideViewModels];
      [v13 setObject:v8 forKey:v7];
    }
  }

  return v8;
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
          v9 = [v8 mapItem];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v25 = v9;
          v10 = [v9 venueAreaIdentifiers];
          v11 = v10;
          v12 = &__NSArray0__struct;
          if (v10)
          {
            v12 = v10;
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
    v3 = [(DataSource *)self tableView];
    v4 = [v3 visibleCells];

    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
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
          v12 = [(DataSource *)self tableView];
          v13 = [v12 indexPathForCell:v11];

          if (v13)
          {
            v14 = [(SearchResultsDataSource *)self objectAtIndexPath:v13];
            v15 = [(SearchResultsDataSource *)self impressionElementForSearchResult:v14 indexPath:v13];
            v16 = [(DataSource *)self tableView];
            [v16 rectForRowAtIndexPath:v13];
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

- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4
{
  v6 = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
  if (v6)
  {
    v7 = [(SearchResultsDataSource *)self indexPathForRelatedCollectionSection];
    v8 = [v7 section] == a4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4
{
  v6 = [(SearchResultsDataSource *)self content];
  v7 = [v6 numberOfSections] - 1;

  return v7 != a4 || self->_enableStructuredRAPAffordance;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (![(SearchResultsDataSource *)self isSimpleSearchResults])
  {
    v7 = [(SearchResultsDataSource *)self objectAtIndexPath:v5];
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

    v8 = [v7 relatedSection];

    if (v8)
    {
      v9 = [v7 relatedSection];
      v10 = [v9 sectionType];

      if (v10 == 1)
      {
        v11 = [v7 relatedSection];
        v12 = [v11 relatedPlaceCollections];
        v13 = [v12 count];

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
      v18 = [v7 searchSection];

      if (v18)
      {
        v19 = [v7 searchSection];
        v20 = [v19 sectionType];
        if (v20 == 2)
        {
          v22 = [v19 sectionGuide];
          v23 = [v22 placeCollections];
          v24 = [v23 count];

          if (v24)
          {
            v25 = [v19 sectionGuide];
            v26 = [v25 placeCollections];
            +[RelatedCollectionsSectionTableViewCell cellHeightWithCollectionsCount:](RelatedCollectionsSectionTableViewCell, "cellHeightWithCollectionsCount:", [v26 count]);
            v6 = v27;
          }

          else
          {
            v6 = 0.0;
          }
        }

        else
        {
          if (v20)
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SearchResultsDataSource *)self objectAtIndexPath:v7];
  if ([v8 type] != 11 || (MapsFeature_IsEnabled_SearchAndDiscovery() & 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 personalizedCompoundItem];
      v10 = [v9 address];
      if (v10)
      {

LABEL_7:
        v11 = TwoLinesTableViewCell;
LABEL_28:
        [(__objc2_class *)v11 cellHeight];
        v22 = v35;
        goto LABEL_29;
      }

      v18 = [(SearchResultsDataSource *)self displaysAsChainResult];

      if (v18)
      {
        goto LABEL_7;
      }
    }

    else if ([(SearchResultsDataSource *)self displaysAsChainResult])
    {
      goto LABEL_7;
    }

    v19 = [v8 placeCollection];

    if (!v19)
    {
      v23 = [(SearchResultsDataSource *)self placeSummaryTemplateForSearchResult:v8 indexPath:v7];
      v24 = [(DataSource *)self tableView];
      [v24 bounds];
      [v23 setContainerWidth:v25];

      v22 = UITableViewAutomaticDimension;
      goto LABEL_29;
    }

    v20 = [(SearchResultsDataSource *)self curatedGuideCellViewModelForSearchResult:v8 indexPath:v7];
    [v6 bounds];
    [v20 setWidth:v21];
LABEL_15:
    v22 = UITableViewAutomaticDimension;
LABEL_16:

    goto LABEL_29;
  }

  v12 = [v8 relatedSection];

  if (!v12)
  {
    v26 = [v8 searchSection];

    if (v26)
    {
      v20 = [v8 searchSection];
      v27 = [v20 sectionType];
      if (v27 == 2)
      {
        if (!MapsFeature_IsEnabled_SearchAndDiscovery())
        {
          v29 = [v20 sectionGuide];
          v30 = [v29 placeCollections];
          v31 = [v30 count];

          if (v31)
          {
            v32 = [v20 sectionGuide];
            v33 = [v32 placeCollections];
            +[RelatedCollectionsSectionTableViewCell cellHeightWithCollectionsCount:](RelatedCollectionsSectionTableViewCell, "cellHeightWithCollectionsCount:", [v33 count]);
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

      if (!v27)
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

  v13 = [v8 relatedSection];
  v14 = [v13 sectionType];

  if (v14 != 1)
  {
    goto LABEL_27;
  }

  v15 = [v8 relatedSection];
  v16 = [v15 relatedPlaceCollections];
  v17 = [v16 count];

  if (v17)
  {
    v11 = RelatedCollectionsSectionTableViewCell;
    goto LABEL_28;
  }

  v22 = 0.0;
LABEL_29:

  return v22;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SearchResultsDataSource *)self resetMapServiceTicket];
  v8 = [(SearchResultsDataSource *)self objectAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    if ([v9 type] != 11)
    {
      v10 = objc_alloc_init(SearchSessionAnalytics);
      v11 = [v9 placeCollection];
      if (v11)
      {
        [(SearchSessionAnalytics *)v10 setAction:2099];
        [(SearchSessionAnalytics *)v10 setTarget:101];
        v12 = [v11 collectionIdentifier];
        v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 muid]);

        v13 = [v11 publisher];
        v25 = v6;
        if (v13)
        {
          v14 = [v11 publisher];
          v15 = [v14 identifier];
          v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 muid]);
          v27 = v16;
          v24 = [NSArray arrayWithObjects:&v27 count:1];
        }

        else
        {
          v24 = 0;
        }

        v23 = [(SearchSessionAnalytics *)v10 action];
        v22 = [(SearchSessionAnalytics *)v10 target];
        v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 row]);
        v18 = [v11 collectionIdentifier];
        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 resultProviderID]);
        [GEOAPPortal captureCuratedCollectionUserAction:v23 target:v22 value:0 publisherId:v24 following:0 collectionId:v26 collectionCategory:0 collectionCurrentlySaved:0 verticalIndex:v17 horizontalIndex:0 placeCardType:0 possibleActions:0 impossibleActions:0 providerId:v19 repeatableSectionIndex:0 modules:0];

        v6 = v25;
      }

      else
      {
        [(SearchSessionAnalytics *)v10 setAction:2007];
        [(SearchSessionAnalytics *)v10 setTarget:101];
        [(DataSource *)self sendAnalyticsForDataAtIndexPath:v7 object:v9 action:[(SearchSessionAnalytics *)v10 action] populateSearchTapEvent:1];
      }

      v20 = +[SearchSessionAnalyticsAggregator sharedAggregator];
      [v20 collectSearchSessionAnalytics:v10];

      v21 = [(DataSource *)self delegate];
      [v21 dataSource:self itemTapped:v9];

      [v6 deselectRowAtIndexPath:v7 animated:1];
    }
  }
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v12 = a3;
  v7 = [a4 nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 indexPathForCell:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(DataSource *)self delegate];
    v11 = [(SearchResultsDataSource *)self objectAtIndexPath:v9];
    [v10 dataSource:self itemFocused:v11];
  }

  else
  {
    v9 = [(DataSource *)self delegate];
    [v9 dataSource:self itemFocused:0];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(SearchResultsDataSource *)self objectAtIndexPath:a4];
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [v4 type] != 11;

  return v5;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableArray array];
  v7 = [(SearchResultsDataSource *)self objectAtIndexPath:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      v9 = [v8 placeCollection];

      if (v9)
      {
        v10 = [(SearchResultsDataSource *)self shareContextualActionAtIndexPath:v5];
        v19 = v10;
        v11 = [NSArray arrayWithObjects:&v19 count:1];

        v6 = v11;
      }
    }

    v12 = [v8 mapItem];
    v13 = [v12 _hasHikeInfo];

    if (v13)
    {

      v14 = 0;
      goto LABEL_11;
    }

    if ([v8 type] != 11)
    {
      v15 = [(SearchResultsDataSource *)self shareContextualActionAtIndexPath:v5];
      v18 = v15;
      v16 = [NSArray arrayWithObjects:&v18 count:1];

      v6 = v16;
    }
  }

  v14 = [UISwipeActionsConfiguration configurationWithActions:v6];
LABEL_11:

  return v14;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(SearchResultsDataSource *)self objectAtIndexPath:a4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SearchResultsDataSource *)self objectAtIndexPath:v7];
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
    v22 = [v11 relatedSection];

    if (v22)
    {
      v20 = [v11 relatedSection];
      v23 = [v20 sectionType];
      if (v23 == 2)
      {
        v12 = 0;
        v16 = 0;
        goto LABEL_37;
      }

      if (v23 == 1)
      {
        v24 = [v11 relatedSection];
        v25 = [v24 relatedPlaceCollections];
        v26 = [v25 count];

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
          v12 = ;
          v33 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];
          v34 = [v11 relatedSection];
          v35 = [v34 relatedPlaceCollections];
          [v33 setPlaceCollections:v35 delegate:self];

          v16 = v33;
          v36 = [v20 name];
          [v16 setSectionName:v36];

          v37 = +[UIColor clearColor];
          [v16 setBackgroundColor:v37];

          goto LABEL_37;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v29 = [v11 searchSection];

      if (!v29)
      {
        goto LABEL_6;
      }

      v20 = [v11 searchSection];
      v23 = [v20 sectionType];
      if (v23 == 2)
      {
        v30 = [v20 sectionGuide];
        v31 = [v30 placeCollections];
        v32 = [v31 count];

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
          v12 = ;
          v16 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];
          v38 = [v30 placeCollections];
          [v16 setPlaceCollections:v38 delegate:self];

          v39 = [v20 name];
          [v16 setSectionName:v39];

          v40 = +[UIColor clearColor];
          [v16 setBackgroundColor:v40];
        }

        else
        {
          v16 = objc_opt_new();
          v12 = 0;
        }

        goto LABEL_37;
      }

      if (v23 == 1)
      {
        goto LABEL_25;
      }
    }

    if (v23)
    {

      goto LABEL_6;
    }

LABEL_25:
    v16 = objc_opt_new();
    v12 = 0;
    goto LABEL_37;
  }

LABEL_6:
  v12 = [v11 personalizedCompoundItem];
  v13 = [v12 address];

  if (v13)
  {
    v14 = [v12 address];
    v15 = +[TwoLinesTableViewCell identifier];
    v16 = [v6 dequeueReusableCellWithIdentifier:v15 forIndexPath:v7];

    v17 = [TwoLinesContentViewModelComposer cellModelForAddressBookAddress:v14];
    [v16 setViewModel:v17];

    goto LABEL_38;
  }

  if (MapsFeature_IsEnabled_SearchAndDiscovery() && ([v11 placeCollection], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
    v16 = [v6 dequeueReusableCellWithIdentifier:v19 forIndexPath:v7];

    v20 = [(SearchResultsDataSource *)self curatedGuideCellViewModelForSearchResult:v11 indexPath:v7];
    [v6 bounds];
    [v20 setWidth:v21];
    [v16 configureWith:v20 delegate:self template:0];
  }

  else
  {
    if (!v11 || ![(SearchResultsDataSource *)self usePlaceSummaryForSearchResult:v11])
    {
      v16 = objc_opt_new();
      goto LABEL_38;
    }

    v20 = [(SearchResultsDataSource *)self placeSummaryTemplateForSearchResult:v11 indexPath:v7];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v16 = [v6 dequeueReusableCellWithIdentifier:v28];

    [v16 configureWithTemplate:v20 query:0 asyncDataManager:self->_placeSummaryAsyncDataManager delegate:self];
  }

LABEL_37:

LABEL_38:

  return v16;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(SearchResultsDataSource *)self content];
  v8 = [v7 titleForHeaderInSection:a4];

  if ([v8 length])
  {
    v9 = [v6 _maps_indexOfFirstNonEmptySection] == a4;
    v10 = [v6 traitCollection];
    [ResultsSectionHeaderView heightWhenFirstNonEmptySection:v9 title:v8 traitCollection:v10];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 _maps_indexOfFirstNonEmptySection] == a4;
  v7 = [(SearchResultsDataSource *)self content];
  v8 = [v7 viewForHeaderInSection:a4 isFirstNonEmptySection:v6];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(SearchResultsDataSource *)self content];
  v6 = [v5 numberOfRowsInSection:a4];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(SearchResultsDataSource *)self content];
  v4 = [v3 numberOfSections];

  return v4;
}

- (void)setIsPresentingVenueClusterResults:(BOOL)a3
{
  if (self->_isPresentingVenueClusterResults != a3)
  {
    self->_isPresentingVenueClusterResults = a3;
    v4 = [(SearchResultsDataSource *)self content];

    if (v4)
    {
      v5 = [(DataSource *)self delegate];
      [v5 dataSourceUpdated:self];
    }
  }
}

- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)a3
{
  if (self->_isPresentingSearchAlongTheRouteResults != a3)
  {
    self->_isPresentingSearchAlongTheRouteResults = a3;
    v4 = [(SearchResultsDataSource *)self content];

    if (v4)
    {
      v5 = [(DataSource *)self delegate];
      [v5 dataSourceUpdated:self];
    }
  }
}

- (void)createEVChargersRefreshDownloader
{
  v3 = [(SearchResultsDataSourceContent *)self->_content objects];
  v4 = [v3 count];

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

- (void)refreshEVChargers:(id)a3
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
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
        v9 = [v8 mapItem];
        v10 = [v9 _identifier];

        v11 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:v10];

        if (v11)
        {
          evChargerDownloader = self->_evChargerDownloader;
          v13 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:v10];
          v14 = [v8 mapItem];
          [(PlaceSummaryEVChargerDownloader *)evChargerDownloader refreshResultForForTemplate:v13 mapItem:v14];
        }

        if (_UISolariumEnabled())
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100932898;
          v16[3] = &unk_10162EFC0;
          v16[4] = self;
          v16[5] = v8;
          v17 = v10;
          [(SearchResultsDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v16];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)setContent:(id)a3 openAt:(id)a4
{
  objc_storeStrong(&self->_openAt, a4);
  v6 = a3;
  [(SearchResultsDataSource *)self setContent:v6];
}

- (void)setContent:(id)a3
{
  v5 = a3;
  if (self->_content != v5)
  {
    v14 = v5;
    objc_storeStrong(&self->_content, a3);
    [(SearchResultsDataSource *)self setIndexPathForRelatedCollectionSection:0];
    v6 = objc_alloc_init(_TtC4Maps28PlaceSummaryAsyncDataManager);
    placeSummaryAsyncDataManager = self->_placeSummaryAsyncDataManager;
    self->_placeSummaryAsyncDataManager = v6;

    v8 = objc_alloc_init(_TtC4Maps35CuratedGuideViewModelDataDownloader);
    curatedGuideDataDownloader = self->_curatedGuideDataDownloader;
    self->_curatedGuideDataDownloader = v8;

    v10 = [(SearchResultsDataSource *)self impressionElements];
    [v10 removeAllObjects];

    v11 = [(SearchResultsDataSource *)self placeSummaryTemplateViewModels];
    [v11 removeAllObjects];

    v12 = [(SearchResultsDataSource *)self curatedGuideViewModels];
    [v12 removeAllObjects];

    [(SearchResultsDataSource *)self cachePlaceSummaryTemplates];
    [(SearchResultsDataSource *)self buildAndCacheCuratedGuideViewModels];
    v13 = [(DataSource *)self delegate];
    [v13 dataSourceUpdated:self];

    [(SearchResultsDataSource *)self createEVChargersRefreshDownloader];
    v5 = v14;
  }
}

- (id)impressionElementForSearchResult:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (MapsFeature_IsEnabled_SearchResultsImpressions())
  {
    v8 = [(SearchResultsDataSource *)self impressionElements];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (v9)
    {
      v10 = [(SearchResultsDataSource *)self impressionElements];
      v11 = [(SearchResultsImpressionMetadata *)v10 objectForKeyedSubscript:v7];
    }

    else
    {
      v28 = [SearchResultsImpressionMetadata alloc];
      v12 = [v6 resultIndex];
      v13 = [v6 mapItem];
      v14 = [v13 _muid];
      v15 = [v6 mapItem];
      v16 = [v15 place];
      v17 = [v16 localSearchProviderID];
      v18 = [(SearchResultsDataSource *)self searchQuery];
      v10 = [(SearchResultsImpressionMetadata *)v28 initWithResultIndex:v12 businessId:v14 localSearchProviderId:v17 query:v18];

      v19 = [MUImpressionElement alloc];
      v20 = [v6 impressionElementIdentifier];
      GEOConfigGetDouble();
      v11 = [v19 initWithElementIdentifier:v20 visibilityThreshold:?];

      [v11 setCustomData:v10];
      v21 = [(SearchResultsDataSource *)self impressionsSessionIdentifier];
      [v11 setSessionIdentifier:v21];

      v22 = [v7 section];
      v23 = [v7 row];
      v24 = [v6 mapItem];
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SearchResult at section %ld, index %ld, muid %llu", v22, v23, [v24 _muid]);
      [v11 setDebugString:v25];

      v26 = [(SearchResultsDataSource *)self impressionElements];
      [v26 setObject:v11 forKeyedSubscript:v7];
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
  v2 = [(SearchResultsDataSourceContent *)self->_content objects];
  v3 = [v2 copy];

  return v3;
}

- (id)shareContextualActionAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100932ED4;
  v8[3] = &unk_1016603D0;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = sub_100DCCCC0(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)setGuideSummaryLayoutMetadata:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_guideSummaryLayoutMetadata, a3);
  -[SearchResultsDataSource setGuideSummaryUsesRichLayout:](self, "setGuideSummaryUsesRichLayout:", [v5 guideSummaryUsesRichLayout]);
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SearchResultsDataSource *)self guideSummaryUsesRichLayout];
    v8 = @"NO";
    if (v7)
    {
      v8 = @"YES";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Place Summary] GuideSummaryUsesRichLayout: %@", &v9, 0xCu);
  }
}

- (void)setPlaceSummaryMetadata:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_placeSummaryMetadata, a3);
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    [(SearchResultsDataSource *)self setPlaceSummaryUsesRichLayout:[(PlaceSummaryMetadata *)self->_placeSummaryMetadata containsPhotoCarouselLine]];
    v6 = [(SearchResultsDataSource *)self isShowingClusterResults]&& [(SearchResultsDataSource *)self isPresentingSearchAlongTheRouteResults];
    v7 = [(DataSource *)self tableView];
    [v7 setSeparatorStyle:v6];

    v8 = sub_100067540();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SearchResultsDataSource *)self placeSummaryUsesRichLayout];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Place Summary] PlaceSummaryUsesRichLayout: %@", &v11, 0xCu);
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
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

- (SearchResultsDataSource)initWithTableView:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SearchResultsDataSource;
  v5 = [(DataSource *)&v37 initWithTableView:v4 updateLocation:1];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = +[TwoLinesTableViewCell identifier];
    [v4 registerClass:v6 forCellReuseIdentifier:v7];

    v8 = objc_opt_class();
    v9 = +[RelatedSectionTableViewCell identifier];
    [v4 registerClass:v8 forCellReuseIdentifier:v9];

    v10 = objc_opt_class();
    v11 = +[RelatedSectionTableViewCell accessibilityIdentifier];
    [v4 registerClass:v10 forCellReuseIdentifier:v11];

    v12 = objc_opt_class();
    v13 = +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
    [v4 registerClass:v12 forCellReuseIdentifier:v13];

    v14 = objc_opt_class();
    v15 = +[(RelatedSectionTableViewCell *)RelatedCollectionsSectionTableViewCell];
    [v4 registerClass:v14 forCellReuseIdentifier:v15];

    v16 = objc_opt_class();
    v17 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
    [v4 registerClass:v16 forCellReuseIdentifier:v17];

    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v4 registerClass:v18 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
    [v4 registerClass:v21 forCellReuseIdentifier:v22];

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
@interface SearchInfo
+ (BOOL)isChainResultWithTicket:(id)ticket searchResults:(id)results;
+ (BOOL)shouldShowRAPWithTicket:(id)ticket;
+ (BOOL)supportClientMapRegionCorrection;
+ (SearchInfo)searchInfoWithMapItems:(id)items traits:(id)traits placeInfo:(id)info boundingRegion:(id)region addressBookAddress:(id)address searchType:(unsigned int)type retainedSearchMetadata:(id)metadata relatedSections:(id)self0 searchSectionList:(id)self1;
+ (SearchInfo)searchInfoWithResults:(id)results;
+ (SearchInfo)searchInfoWithResults:(id)results boundingMapRegion:(id)region;
+ (SearchInfo)searchInfoWithResults:(id)results boundingMapRegion:(id)region autocompleterPerson:(id)person;
+ (SearchInfo)searchInfoWithResults:(id)results mapRegion:(id *)region;
+ (SearchInfo)searchInfoWithResults:(id)results ticket:(id)ticket;
+ (SearchInfo)searchInfoWithSearchInfo:(id)info refinedIndex:(unint64_t)index;
+ (SearchInfo)searchInfoWithTicket:(id)ticket addressBookAddress:(id)address searchType:(unsigned int)type forRefinementSearchForBookmark:(id)bookmark;
+ (id)headerDisplayNameWithTicket:(id)ticket;
+ (id)placeCollectionsWithTicket:(id)ticket;
+ (id)searchDotPlacesWithTicket:(id)ticket;
+ (id)styleAttributesWithTicket:(id)ticket;
+ (id)subHeaderDisplayNameWithTicket:(id)ticket;
- (BOOL)hasRelatedSearchSuggestion;
- (BOOL)shouldInjectSearchResults;
- (BOOL)singlePlaceCollection;
- (BOOL)singleResultMode;
- (GEOResultRefinementTime)openAt;
- (SearchInfo)initWithSearchResults:(id)results boundingMapRegion:(id)region;
- (SearchResult)selectedResult;
- (id)description;
- (int64_t)sortOrder;
- (void)addDotPlacesFromSearchInfo:(id)info;
- (void)setSelectedIndex:(unint64_t)index;
@end

@implementation SearchInfo

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(NSArray *)self->_results debugDescription];
  v5 = [NSString stringWithFormat:@"<%@: %p> Search Results:%@", v3, self, v4];

  return v5;
}

- (BOOL)hasRelatedSearchSuggestion
{
  resultDisplayHeader = [(SearchInfo *)self resultDisplayHeader];
  v4 = [resultDisplayHeader length];

  substitutes = [(SearchInfo *)self substitutes];
  if ([substitutes count])
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

- (int64_t)sortOrder
{
  placeCategoryItem = [(SearchFieldItem *)self->_searchFieldItem placeCategoryItem];
  result = 0;
  if (placeCategoryItem)
  {
    v4 = placeCategoryItem;
    v5 = [(NSArray *)self->_results count];

    if (v5 > 0x13)
    {
      return 1;
    }
  }

  return result;
}

- (GEOResultRefinementTime)openAt
{
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    resultRefinementGroup = [(SearchInfo *)self resultRefinementGroup];
    resultRefinementBar = [resultRefinementGroup resultRefinementBar];
    resultRefinements = [resultRefinementBar resultRefinements];

    v6 = [resultRefinements countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(resultRefinements);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 type] == 4)
          {
            openOptions = [v10 openOptions];
            openAt = [openOptions openAt];

            if ([openAt isSelected] && (objc_msgSend(openAt, "timeStamp"), v14 > 0.0))
            {
              v15 = openAt;
            }

            else
            {
              v15 = 0;
            }

            v11 = v15;

            goto LABEL_17;
          }
        }

        v7 = [resultRefinements countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_17:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)singleResultMode
{
  suggestions = [(SearchInfo *)self suggestions];
  if ([suggestions count])
  {
    defaultSuggestion = [(SearchInfo *)self defaultSuggestion];
    v5 = defaultSuggestion != 0;
  }

  else
  {
    v5 = 0;
  }

  relatedEntitySections = [(SearchInfo *)self relatedEntitySections];
  v7 = [relatedEntitySections count];

  resultRefinementGroup = [(SearchInfo *)self resultRefinementGroup];

  results = [(SearchInfo *)self results];
  if ([results count] != 1 || v5 || v7)
  {
  }

  else
  {

    if (!resultRefinementGroup)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)singlePlaceCollection
{
  results = [(SearchInfo *)self results];
  if ([results count])
  {
    v4 = 0;
  }

  else
  {
    placeCollections = [(SearchInfo *)self placeCollections];
    v4 = [placeCollections count] == 1;
  }

  return v4;
}

- (void)addDotPlacesFromSearchInfo:(id)info
{
  infoCopy = info;
  v5 = [NSMutableSet alloc];
  searchDotPlaces = [(SearchInfo *)self searchDotPlaces];
  v10 = [v5 initWithArray:searchDotPlaces];

  searchDotPlaces2 = [infoCopy searchDotPlaces];

  [v10 addObjectsFromArray:searchDotPlaces2];
  allObjects = [v10 allObjects];
  searchDotPlaces = self->_searchDotPlaces;
  self->_searchDotPlaces = allObjects;
}

- (SearchResult)selectedResult
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex >= [(NSArray *)self->_results count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_results objectAtIndexedSubscript:self->_selectedIndex];
  }

  return v4;
}

- (void)setSelectedIndex:(unint64_t)index
{
  if ([(NSArray *)self->_results count]> index)
  {
    self->_selectedIndex = index;
  }
}

- (BOOL)shouldInjectSearchResults
{
  searchFieldItem = [(SearchInfo *)self searchFieldItem];
  venueCategoryItem = [searchFieldItem venueCategoryItem];

  if (!venueCategoryItem)
  {
    return 1;
  }

  searchFieldItem2 = [(SearchInfo *)self searchFieldItem];
  venueCategoryItem2 = [searchFieldItem2 venueCategoryItem];
  v7 = [venueCategoryItem2 displayMode] != 2;

  return v7;
}

- (SearchInfo)initWithSearchResults:(id)results boundingMapRegion:(id)region
{
  resultsCopy = results;
  regionCopy = region;
  v29.receiver = self;
  v29.super_class = SearchInfo;
  v9 = [(SearchInfo *)&v29 init];
  v10 = v9;
  if (v9)
  {
    v9->_searchResultType = 1;
    objc_storeStrong(&v9->_results, results);
    objc_storeStrong(&v10->_mapRegion, region);
    v10->_chainResults = 0;
    v10->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    if ([resultsCopy count] == 1 && v10->_mapRegion)
    {
      firstObject = [resultsCopy firstObject];
      mapItem = [firstObject mapItem];

      _styleAttributes = [mapItem _styleAttributes];
      if ([_styleAttributes isLabelPOI] && +[SearchInfo supportClientMapRegionCorrection](SearchInfo, "supportClientMapRegionCorrection"))
      {
        GEOMapRectForMapRegion();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [mapItem _coordinate];
        v22 = MKMapPointForCoordinate(v30);
        v23 = fmax(vabdd_f64(v15 + v19, v22.x), vabdd_f64(v15, v22.x));
        v24 = fmax(vabdd_f64(v17 + v21, v22.y), vabdd_f64(v17, v22.y));
        v25 = [[GEOMapRegion alloc] initWithMapRect:{v22.x - v23, v22.y - v24, v23 + v23, v24 + v24}];
        mapRegion = v10->_mapRegion;
        v10->_mapRegion = v25;
      }
    }

    v27 = v10;
  }

  return v10;
}

+ (BOOL)shouldShowRAPWithTicket:(id)ticket
{
  ticketCopy = ticket;
  if (_MKRAPIsAvailable() && MapsFeature_IsEnabled_RAPSydney())
  {
    enableStructuredRAPAffordance = [ticketCopy enableStructuredRAPAffordance];
  }

  else
  {
    enableStructuredRAPAffordance = 0;
  }

  return enableStructuredRAPAffordance;
}

+ (id)searchDotPlacesWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v4 = [NSMutableArray alloc];
  dotPlaces = [ticketCopy dotPlaces];
  v6 = [v4 initWithCapacity:{objc_msgSend(dotPlaces, "count")}];

  dotPlaces2 = [ticketCopy dotPlaces];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10072745C;
  v11[3] = &unk_1016279B0;
  v12 = v6;
  v8 = v6;
  [dotPlaces2 enumerateObjectsUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

+ (id)placeCollectionsWithTicket:(id)ticket
{
  collectionResults = [ticket collectionResults];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [collectionResults count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = collectionResults;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        collection = [*(*(&v16 + 1) + 8 * i) collection];
        if (collection && ([v4 containsObject:collection] & 1) == 0)
        {
          [v4 addObject:collection];
        }

        else
        {
          v12 = sub_1007982D8();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = collection;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "SearcInfo contains a nil or duplicate collection: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  if ([v4 count])
  {
    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isChainResultWithTicket:(id)ticket searchResults:(id)results
{
  resultsCopy = results;
  searchResultSections = [ticket searchResultSections];
  firstObject = [searchResultSections firstObject];
  cellType = [firstObject cellType];

  if (cellType == 1)
  {
    firstObject2 = [resultsCopy firstObject];
    name = [firstObject2 name];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = resultsCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          name2 = [*(*(&v20 + 1) + 8 * i) name];
          v17 = [name isEqualToString:name2];

          if (!v17)
          {

            v18 = 0;
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = [name length] != 0;
LABEL_13:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)styleAttributesWithTicket:(id)ticket
{
  ticketCopy = ticket;
  searchResultSections = [ticketCopy searchResultSections];
  firstObject = [searchResultSections firstObject];
  styleAttributes = [firstObject styleAttributes];

  if (styleAttributes)
  {
    searchResultSections2 = [ticketCopy searchResultSections];
    firstObject2 = [searchResultSections2 firstObject];
    styleAttributes2 = [firstObject2 styleAttributes];
  }

  else
  {
    categorySearchResultSection = [ticketCopy categorySearchResultSection];
    styleAttributes2 = [categorySearchResultSection styleAttributes];

    if (!styleAttributes2)
    {
      goto LABEL_6;
    }

    searchResultSections2 = [ticketCopy categorySearchResultSection];
    styleAttributes2 = [searchResultSections2 styleAttributes];
  }

LABEL_6:

  return styleAttributes2;
}

+ (id)subHeaderDisplayNameWithTicket:(id)ticket
{
  ticketCopy = ticket;
  searchResultSections = [ticketCopy searchResultSections];
  firstObject = [searchResultSections firstObject];
  subHeaderDisplayName = [firstObject subHeaderDisplayName];
  v7 = [subHeaderDisplayName length];

  if (v7)
  {
    searchResultSections2 = [ticketCopy searchResultSections];
    firstObject2 = [searchResultSections2 firstObject];
    subHeaderDisplayName2 = [firstObject2 subHeaderDisplayName];

LABEL_5:
    goto LABEL_6;
  }

  categorySearchResultSection = [ticketCopy categorySearchResultSection];
  subHeaderDisplayName3 = [categorySearchResultSection subHeaderDisplayName];
  v13 = [subHeaderDisplayName3 length];

  if (v13)
  {
    searchResultSections2 = [ticketCopy categorySearchResultSection];
    subHeaderDisplayName2 = [searchResultSections2 subHeaderDisplayName];
    goto LABEL_5;
  }

  subHeaderDisplayName2 = 0;
LABEL_6:

  return subHeaderDisplayName2;
}

+ (id)headerDisplayNameWithTicket:(id)ticket
{
  ticketCopy = ticket;
  searchResultSections = [ticketCopy searchResultSections];
  firstObject = [searchResultSections firstObject];
  headerDisplayName = [firstObject headerDisplayName];
  v7 = [headerDisplayName length];

  if (v7)
  {
    searchResultSections2 = [ticketCopy searchResultSections];
    firstObject2 = [searchResultSections2 firstObject];
    headerDisplayName2 = [firstObject2 headerDisplayName];

LABEL_5:
    goto LABEL_6;
  }

  categorySearchResultSection = [ticketCopy categorySearchResultSection];
  headerDisplayName3 = [categorySearchResultSection headerDisplayName];
  v13 = [headerDisplayName3 length];

  if (v13)
  {
    searchResultSections2 = [ticketCopy categorySearchResultSection];
    headerDisplayName2 = [searchResultSections2 headerDisplayName];
    goto LABEL_5;
  }

  headerDisplayName2 = 0;
LABEL_6:

  return headerDisplayName2;
}

+ (SearchInfo)searchInfoWithSearchInfo:(id)info refinedIndex:(unint64_t)index
{
  infoCopy = info;
  results = [infoCopy results];
  if ([results count] >= index)
  {
    results2 = [infoCopy results];
    v8 = [results2 objectAtIndexedSubscript:index];

    if (v8)
    {
      v9 = [SearchInfo alloc];
      v15 = v8;
      v10 = [NSArray arrayWithObjects:&v15 count:1];
      place = [v8 place];
      mapRegion = [place mapRegion];
      v13 = [(SearchInfo *)v9 initWithSearchResults:v10 boundingMapRegion:mapRegion];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:

  return v13;
}

+ (SearchInfo)searchInfoWithTicket:(id)ticket addressBookAddress:(id)address searchType:(unsigned int)type forRefinementSearchForBookmark:(id)bookmark
{
  ticketCopy = ticket;
  addressCopy = address;
  bookmarkCopy = bookmark;
  exactMapItems = [ticketCopy exactMapItems];
  refinedMapItems = [ticketCopy refinedMapItems];
  v13 = [refinedMapItems count];
  v14 = v13;
  v92 = exactMapItems;
  if (bookmarkCopy)
  {
    v90 = v13;
    typeCopy = type;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v16 = exactMapItems;
    v17 = [v16 countByEnumeratingWithState:&v94 objects:v98 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v95;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v95 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v94 + 1) + 8 * i);
          title = [bookmarkCopy title];
          [v21 setName:title];
        }

        v18 = [v16 countByEnumeratingWithState:&v94 objects:v98 count:16];
      }

      while (v18);
    }

    exactMapItems = v92;
    type = typeCopy;
    v14 = v90;
  }

  selfCopy = self;
  if ([exactMapItems count])
  {
    v23 = exactMapItems;
    retainedSearchMetadata = [ticketCopy retainedSearchMetadata];
  }

  else
  {
    v23 = refinedMapItems;
    retainedSearchMetadata = 0;
  }

  if (v14)
  {
    typeCopy2 = 5;
  }

  else
  {
    typeCopy2 = type;
  }

  v26 = objc_opt_new();
  [ticketCopy applyToPlaceInfo:v26];
  traits = [ticketCopy traits];
  boundingRegion = [ticketCopy boundingRegion];
  relatedEntitySections = [ticketCopy relatedEntitySections];
  searchSectionList = [ticketCopy searchSectionList];
  v89 = retainedSearchMetadata;
  v31 = [selfCopy searchInfoWithMapItems:v23 traits:traits placeInfo:v26 boundingRegion:boundingRegion addressBookAddress:addressCopy searchType:typeCopy2 retainedSearchMetadata:retainedSearchMetadata relatedSections:relatedEntitySections searchSectionList:searchSectionList];

  results = [v31 results];
  *(v31 + 12) = [selfCopy isChainResultWithTicket:ticketCopy searchResults:results];

  *(v31 + 14) = [ticketCopy isChainResultSet];
  relatedSearchSuggestions = [ticketCopy relatedSearchSuggestions];
  v34 = *(v31 + 64);
  *(v31 + 64) = relatedSearchSuggestions;

  browseCategories = [ticketCopy browseCategories];
  v36 = *(v31 + 72);
  *(v31 + 72) = browseCategories;

  defaultRelatedSuggestion = [ticketCopy defaultRelatedSuggestion];
  v38 = *(v31 + 88);
  *(v31 + 88) = defaultRelatedSuggestion;

  *(v31 + 20) = [ticketCopy searchResultType];
  clientResolvedResult = [ticketCopy clientResolvedResult];
  v40 = *(v31 + 112);
  *(v31 + 112) = clientResolvedResult;

  directionIntent = [ticketCopy directionIntent];
  v42 = *(v31 + 120);
  *(v31 + 120) = directionIntent;

  if (!*(v31 + 20))
  {
    *(v31 + 20) = 1;
  }

  resultDisplayHeader = [ticketCopy resultDisplayHeader];
  v44 = resultDisplayHeader;
  if (resultDisplayHeader)
  {
    sectionHeader = resultDisplayHeader;
  }

  else
  {
    sectionHeader = [ticketCopy sectionHeader];
  }

  v46 = *(v31 + 96);
  *(v31 + 96) = sectionHeader;

  displayHeaderSubstitutes = [ticketCopy displayHeaderSubstitutes];
  v48 = *(v31 + 104);
  *(v31 + 104) = displayHeaderSubstitutes;

  *(v31 + 128) = [ticketCopy dymSuggestionVisibleTime];
  *(v31 + 13) = [ticketCopy showDymSuggestionCloseButton];
  *(v31 + 10) = [ticketCopy shouldEnableRedoSearch];
  *(v31 + 11) = [ticketCopy shouldAllowManualRedoButton];
  v49 = [selfCopy headerDisplayNameWithTicket:ticketCopy];
  v50 = *(v31 + 144);
  *(v31 + 144) = v49;

  v51 = [selfCopy subHeaderDisplayNameWithTicket:ticketCopy];
  v52 = *(v31 + 152);
  *(v31 + 152) = v51;

  v53 = [selfCopy placeCollectionsWithTicket:ticketCopy];
  v54 = *(v31 + 168);
  *(v31 + 168) = v53;

  relatedEntitySections2 = [ticketCopy relatedEntitySections];
  v56 = *(v31 + 160);
  *(v31 + 160) = relatedEntitySections2;

  publisherResults = [ticketCopy publisherResults];
  firstObject = [publisherResults firstObject];
  publisher = [firstObject publisher];
  v60 = *(v31 + 176);
  *(v31 + 176) = publisher;

  v61 = [selfCopy styleAttributesWithTicket:ticketCopy];
  v62 = *(v31 + 184);
  *(v31 + 184) = v61;

  v63 = [selfCopy searchDotPlacesWithTicket:ticketCopy];
  v64 = *(v31 + 192);
  *(v31 + 192) = v63;

  searchAutoRedoThreshold = [ticketCopy searchAutoRedoThreshold];
  v66 = *(v31 + 200);
  *(v31 + 200) = searchAutoRedoThreshold;

  searchRedoButtonThreshold = [ticketCopy searchRedoButtonThreshold];
  v68 = *(v31 + 208);
  *(v31 + 208) = searchRedoButtonThreshold;

  placeSummaryLayoutMetadata = [ticketCopy placeSummaryLayoutMetadata];

  if (placeSummaryLayoutMetadata)
  {
    v70 = [_TtC4Maps20PlaceSummaryMetadata alloc];
    placeSummaryLayoutMetadata2 = [ticketCopy placeSummaryLayoutMetadata];
    v72 = [(PlaceSummaryMetadata *)v70 initWithMetadata:placeSummaryLayoutMetadata2];
    v73 = *(v31 + 216);
    *(v31 + 216) = v72;
  }

  resultRefinementGroup = [ticketCopy resultRefinementGroup];
  v75 = *(v31 + 232);
  *(v31 + 232) = resultRefinementGroup;

  searchSectionList2 = [ticketCopy searchSectionList];
  v77 = *(v31 + 224);
  *(v31 + 224) = searchSectionList2;

  if ([ticketCopy disableAdditionalViewportPadding])
  {
    v78 = [v23 count] > 1;
  }

  else
  {
    v78 = 0;
  }

  *(v31 + 15) = v78;
  *(v31 + 24) = [ticketCopy searchResultViewType];
  mapItemIdentifierForSpotlight = [ticketCopy mapItemIdentifierForSpotlight];
  v80 = *(v31 + 248);
  *(v31 + 248) = mapItemIdentifierForSpotlight;

  *(v31 + 16) = [selfCopy shouldShowRAPWithTicket:ticketCopy];
  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
  {
    traits2 = [ticketCopy traits];
    *(v31 + 9) = [traits2 navigating];
  }

  guideSummaryLayoutMetadata = [ticketCopy guideSummaryLayoutMetadata];
  v83 = *(v31 + 264);
  *(v31 + 264) = guideSummaryLayoutMetadata;

  searchSessionData = [ticketCopy searchSessionData];
  v85 = *(v31 + 256);
  *(v31 + 256) = searchSessionData;

  if (GEOConfigGetBOOL())
  {
    mapDisplayType = 1;
  }

  else
  {
    mapDisplayType = [ticketCopy mapDisplayType];
  }

  *(v31 + 28) = mapDisplayType;

  return v31;
}

+ (SearchInfo)searchInfoWithMapItems:(id)items traits:(id)traits placeInfo:(id)info boundingRegion:(id)region addressBookAddress:(id)address searchType:(unsigned int)type retainedSearchMetadata:(id)metadata relatedSections:(id)self0 searchSectionList:(id)self1
{
  v11 = *&type;
  itemsCopy = items;
  traitsCopy = traits;
  infoCopy = info;
  regionCopy = region;
  addressCopy = address;
  metadataCopy = metadata;
  sectionsCopy = sections;
  v20 = itemsCopy;
  v55 = metadataCopy;
  listCopy = list;
  v52 = addressCopy;
  if (addressCopy && [itemsCopy count] == 1)
  {
    v21 = [SearchResult alloc];
    firstObject = [itemsCopy firstObject];
    firstObject2 = [metadataCopy firstObject];
    v24 = [(SearchResult *)v21 initWithMapItem:firstObject searchResultType:v11 addressBookAddress:addressCopy retainedSearchMetadata:firstObject2 resultIndex:0];

    [(SearchResult *)v24 setPlaceInfo:infoCopy];
    v25 = traitsCopy;
    -[SearchResult setGeoMapServiceTraitSource:](v24, "setGeoMapServiceTraitSource:", [traitsCopy source]);
    v26 = [SearchInfo alloc];
    v63 = v24;
    v27 = [NSArray arrayWithObjects:&v63 count:1];
    v28 = v26;
    v29 = regionCopy;
    v30 = [(SearchInfo *)v28 initWithSearchResults:v27 boundingMapRegion:regionCopy];

    metadataCopy = v55;
  }

  else
  {
    v51 = sectionsCopy;
    v24 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    v25 = traitsCopy;
    if ([itemsCopy count])
    {
      v31 = 0;
      do
      {
        if (v31 >= [metadataCopy count])
        {
          v32 = 0;
        }

        else
        {
          v32 = [metadataCopy objectAtIndexedSubscript:v31];
        }

        v33 = [itemsCopy objectAtIndexedSubscript:v31];
        _identifier = [v33 _identifier];
        geoMapItemIdentifier = [_identifier geoMapItemIdentifier];

        v36 = -[SearchResult initWithMapItem:searchResultType:addressBookAddress:retainedSearchMetadata:resultIndex:]([SearchResult alloc], "initWithMapItem:searchResultType:addressBookAddress:retainedSearchMetadata:resultIndex:", v33, v11, 0, v32, [listCopy indexOfItemWithIdentifier:geoMapItemIdentifier]);
        [(SearchResult *)v36 setPlaceInfo:infoCopy];
        -[SearchResult setGeoMapServiceTraitSource:](v36, "setGeoMapServiceTraitSource:", [traitsCopy source]);
        [(SearchResult *)v24 addObject:v36];

        ++v31;
        metadataCopy = v55;
      }

      while (v31 < [itemsCopy count]);
    }

    v37 = +[CarDisplayController sharedInstance];
    isCurrentlyConnectedToAnyCarScene = [v37 isCurrentlyConnectedToAnyCarScene];

    if ((isCurrentlyConnectedToAnyCarScene & 1) == 0)
    {
      v50 = itemsCopy;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v39 = v51;
      v40 = [v39 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v59;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v59 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v58 + 1) + 8 * i);
            index = [v44 index];
            if ([(SearchResult *)v24 count]>= index)
            {
              relatedPlaceCollections = [v44 relatedPlaceCollections];
              v47 = [relatedPlaceCollections count];

              if (v47)
              {
                v48 = [[SearchResult alloc] initWithRelatedSection:v44];
                [(SearchResult *)v24 insertObject:v48 atIndex:index];
              }
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v41);
      }

      v20 = v50;
      v25 = traitsCopy;
      metadataCopy = v55;
    }

    v29 = regionCopy;
    v30 = [[SearchInfo alloc] initWithSearchResults:v24 boundingMapRegion:regionCopy];
    sectionsCopy = v51;
  }

  return v30;
}

+ (SearchInfo)searchInfoWithResults:(id)results boundingMapRegion:(id)region autocompleterPerson:(id)person
{
  personCopy = person;
  regionCopy = region;
  resultsCopy = results;
  v10 = [[SearchInfo alloc] initWithSearchResults:resultsCopy boundingMapRegion:regionCopy];

  autocompletePerson = v10->_autocompletePerson;
  v10->_autocompletePerson = personCopy;

  return v10;
}

+ (SearchInfo)searchInfoWithResults:(id)results boundingMapRegion:(id)region
{
  regionCopy = region;
  resultsCopy = results;
  v7 = [[SearchInfo alloc] initWithSearchResults:resultsCopy boundingMapRegion:regionCopy];

  return v7;
}

+ (SearchInfo)searchInfoWithResults:(id)results mapRegion:(id *)region
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  resultsCopy = results;
  v13 = [GEOMapRegion _mapkit_mapRegionForCoordinateRegion:v11, v10, v9, v8];
  v14 = [[SearchInfo alloc] initWithSearchResults:resultsCopy boundingMapRegion:v13];

  return v14;
}

+ (SearchInfo)searchInfoWithResults:(id)results ticket:(id)ticket
{
  ticketCopy = ticket;
  resultsCopy = results;
  v7 = [[SearchInfo alloc] initWithSearchResults:resultsCopy boundingMapRegion:0];

  if (ticketCopy)
  {
    v7->_canRedoSearch = [ticketCopy shouldEnableRedoSearch];
    v7->_shouldAllowManualRedoButton = [ticketCopy shouldAllowManualRedoButton];
    searchAutoRedoThreshold = [ticketCopy searchAutoRedoThreshold];
    searchAutoRedoThreshold = v7->_searchAutoRedoThreshold;
    v7->_searchAutoRedoThreshold = searchAutoRedoThreshold;

    searchRedoButtonThreshold = [ticketCopy searchRedoButtonThreshold];
    searchRedoButtonThreshold = v7->_searchRedoButtonThreshold;
    v7->_searchRedoButtonThreshold = searchRedoButtonThreshold;

    resultRefinementGroup = [ticketCopy resultRefinementGroup];
    resultRefinementGroup = v7->_resultRefinementGroup;
    v7->_resultRefinementGroup = resultRefinementGroup;

    searchSessionData = [ticketCopy searchSessionData];
    searchSessionData = v7->_searchSessionData;
    v7->_searchSessionData = searchSessionData;
  }

  return v7;
}

+ (SearchInfo)searchInfoWithResults:(id)results
{
  resultsCopy = results;
  v4 = [[SearchInfo alloc] initWithSearchResults:resultsCopy boundingMapRegion:0];

  return v4;
}

+ (BOOL)supportClientMapRegionCorrection
{
  if (qword_10195D090 != -1)
  {
    dispatch_once(&qword_10195D090, &stru_101627988);
  }

  return byte_10192A680;
}

@end
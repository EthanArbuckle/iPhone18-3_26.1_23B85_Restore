@interface SearchInfo
+ (BOOL)isChainResultWithTicket:(id)a3 searchResults:(id)a4;
+ (BOOL)shouldShowRAPWithTicket:(id)a3;
+ (BOOL)supportClientMapRegionCorrection;
+ (SearchInfo)searchInfoWithMapItems:(id)a3 traits:(id)a4 placeInfo:(id)a5 boundingRegion:(id)a6 addressBookAddress:(id)a7 searchType:(unsigned int)a8 retainedSearchMetadata:(id)a9 relatedSections:(id)a10 searchSectionList:(id)a11;
+ (SearchInfo)searchInfoWithResults:(id)a3;
+ (SearchInfo)searchInfoWithResults:(id)a3 boundingMapRegion:(id)a4;
+ (SearchInfo)searchInfoWithResults:(id)a3 boundingMapRegion:(id)a4 autocompleterPerson:(id)a5;
+ (SearchInfo)searchInfoWithResults:(id)a3 mapRegion:(id *)a4;
+ (SearchInfo)searchInfoWithResults:(id)a3 ticket:(id)a4;
+ (SearchInfo)searchInfoWithSearchInfo:(id)a3 refinedIndex:(unint64_t)a4;
+ (SearchInfo)searchInfoWithTicket:(id)a3 addressBookAddress:(id)a4 searchType:(unsigned int)a5 forRefinementSearchForBookmark:(id)a6;
+ (id)headerDisplayNameWithTicket:(id)a3;
+ (id)placeCollectionsWithTicket:(id)a3;
+ (id)searchDotPlacesWithTicket:(id)a3;
+ (id)styleAttributesWithTicket:(id)a3;
+ (id)subHeaderDisplayNameWithTicket:(id)a3;
- (BOOL)hasRelatedSearchSuggestion;
- (BOOL)shouldInjectSearchResults;
- (BOOL)singlePlaceCollection;
- (BOOL)singleResultMode;
- (GEOResultRefinementTime)openAt;
- (SearchInfo)initWithSearchResults:(id)a3 boundingMapRegion:(id)a4;
- (SearchResult)selectedResult;
- (id)description;
- (int64_t)sortOrder;
- (void)addDotPlacesFromSearchInfo:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3;
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
  v3 = [(SearchInfo *)self resultDisplayHeader];
  v4 = [v3 length];

  v5 = [(SearchInfo *)self substitutes];
  if ([v5 count])
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
  v3 = [(SearchFieldItem *)self->_searchFieldItem placeCategoryItem];
  result = 0;
  if (v3)
  {
    v4 = v3;
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
    v3 = [(SearchInfo *)self resultRefinementGroup];
    v4 = [v3 resultRefinementBar];
    v5 = [v4 resultRefinements];

    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 type] == 4)
          {
            v12 = [v10 openOptions];
            v13 = [v12 openAt];

            if ([v13 isSelected] && (objc_msgSend(v13, "timeStamp"), v14 > 0.0))
            {
              v15 = v13;
            }

            else
            {
              v15 = 0;
            }

            v11 = v15;

            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v3 = [(SearchInfo *)self suggestions];
  if ([v3 count])
  {
    v4 = [(SearchInfo *)self defaultSuggestion];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SearchInfo *)self relatedEntitySections];
  v7 = [v6 count];

  v8 = [(SearchInfo *)self resultRefinementGroup];

  v9 = [(SearchInfo *)self results];
  if ([v9 count] != 1 || v5 || v7)
  {
  }

  else
  {

    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)singlePlaceCollection
{
  v3 = [(SearchInfo *)self results];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SearchInfo *)self placeCollections];
    v4 = [v5 count] == 1;
  }

  return v4;
}

- (void)addDotPlacesFromSearchInfo:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet alloc];
  v6 = [(SearchInfo *)self searchDotPlaces];
  v10 = [v5 initWithArray:v6];

  v7 = [v4 searchDotPlaces];

  [v10 addObjectsFromArray:v7];
  v8 = [v10 allObjects];
  searchDotPlaces = self->_searchDotPlaces;
  self->_searchDotPlaces = v8;
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

- (void)setSelectedIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_results count]> a3)
  {
    self->_selectedIndex = a3;
  }
}

- (BOOL)shouldInjectSearchResults
{
  v3 = [(SearchInfo *)self searchFieldItem];
  v4 = [v3 venueCategoryItem];

  if (!v4)
  {
    return 1;
  }

  v5 = [(SearchInfo *)self searchFieldItem];
  v6 = [v5 venueCategoryItem];
  v7 = [v6 displayMode] != 2;

  return v7;
}

- (SearchInfo)initWithSearchResults:(id)a3 boundingMapRegion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = SearchInfo;
  v9 = [(SearchInfo *)&v29 init];
  v10 = v9;
  if (v9)
  {
    v9->_searchResultType = 1;
    objc_storeStrong(&v9->_results, a3);
    objc_storeStrong(&v10->_mapRegion, a4);
    v10->_chainResults = 0;
    v10->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    if ([v7 count] == 1 && v10->_mapRegion)
    {
      v11 = [v7 firstObject];
      v12 = [v11 mapItem];

      v13 = [v12 _styleAttributes];
      if ([v13 isLabelPOI] && +[SearchInfo supportClientMapRegionCorrection](SearchInfo, "supportClientMapRegionCorrection"))
      {
        GEOMapRectForMapRegion();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v12 _coordinate];
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

+ (BOOL)shouldShowRAPWithTicket:(id)a3
{
  v3 = a3;
  if (_MKRAPIsAvailable() && MapsFeature_IsEnabled_RAPSydney())
  {
    v4 = [v3 enableStructuredRAPAffordance];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)searchDotPlacesWithTicket:(id)a3
{
  v3 = a3;
  v4 = [NSMutableArray alloc];
  v5 = [v3 dotPlaces];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [v3 dotPlaces];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10072745C;
  v11[3] = &unk_1016279B0;
  v12 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

+ (id)placeCollectionsWithTicket:(id)a3
{
  v3 = [a3 collectionResults];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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

        v11 = [*(*(&v16 + 1) + 8 * i) collection];
        if (v11 && ([v4 containsObject:v11] & 1) == 0)
        {
          [v4 addObject:v11];
        }

        else
        {
          v12 = sub_1007982D8();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = v11;
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

+ (BOOL)isChainResultWithTicket:(id)a3 searchResults:(id)a4
{
  v5 = a4;
  v6 = [a3 searchResultSections];
  v7 = [v6 firstObject];
  v8 = [v7 cellType];

  if (v8 == 1)
  {
    v9 = [v5 firstObject];
    v10 = [v9 name];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v5;
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

          v16 = [*(*(&v20 + 1) + 8 * i) name];
          v17 = [v10 isEqualToString:v16];

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

    v18 = [v10 length] != 0;
LABEL_13:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)styleAttributesWithTicket:(id)a3
{
  v3 = a3;
  v4 = [v3 searchResultSections];
  v5 = [v4 firstObject];
  v6 = [v5 styleAttributes];

  if (v6)
  {
    v7 = [v3 searchResultSections];
    v8 = [v7 firstObject];
    v9 = [v8 styleAttributes];
  }

  else
  {
    v10 = [v3 categorySearchResultSection];
    v9 = [v10 styleAttributes];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [v3 categorySearchResultSection];
    v9 = [v7 styleAttributes];
  }

LABEL_6:

  return v9;
}

+ (id)subHeaderDisplayNameWithTicket:(id)a3
{
  v3 = a3;
  v4 = [v3 searchResultSections];
  v5 = [v4 firstObject];
  v6 = [v5 subHeaderDisplayName];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v3 searchResultSections];
    v9 = [v8 firstObject];
    v10 = [v9 subHeaderDisplayName];

LABEL_5:
    goto LABEL_6;
  }

  v11 = [v3 categorySearchResultSection];
  v12 = [v11 subHeaderDisplayName];
  v13 = [v12 length];

  if (v13)
  {
    v8 = [v3 categorySearchResultSection];
    v10 = [v8 subHeaderDisplayName];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

+ (id)headerDisplayNameWithTicket:(id)a3
{
  v3 = a3;
  v4 = [v3 searchResultSections];
  v5 = [v4 firstObject];
  v6 = [v5 headerDisplayName];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v3 searchResultSections];
    v9 = [v8 firstObject];
    v10 = [v9 headerDisplayName];

LABEL_5:
    goto LABEL_6;
  }

  v11 = [v3 categorySearchResultSection];
  v12 = [v11 headerDisplayName];
  v13 = [v12 length];

  if (v13)
  {
    v8 = [v3 categorySearchResultSection];
    v10 = [v8 headerDisplayName];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

+ (SearchInfo)searchInfoWithSearchInfo:(id)a3 refinedIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 results];
  if ([v6 count] >= a4)
  {
    v7 = [v5 results];
    v8 = [v7 objectAtIndexedSubscript:a4];

    if (v8)
    {
      v9 = [SearchInfo alloc];
      v15 = v8;
      v10 = [NSArray arrayWithObjects:&v15 count:1];
      v11 = [v8 place];
      v12 = [v11 mapRegion];
      v13 = [(SearchInfo *)v9 initWithSearchResults:v10 boundingMapRegion:v12];

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

+ (SearchInfo)searchInfoWithTicket:(id)a3 addressBookAddress:(id)a4 searchType:(unsigned int)a5 forRefinementSearchForBookmark:(id)a6
{
  v10 = a3;
  v93 = a4;
  v11 = a6;
  v12 = [v10 exactMapItems];
  v91 = [v10 refinedMapItems];
  v13 = [v91 count];
  v14 = v13;
  v92 = v12;
  if (v11)
  {
    v90 = v13;
    v15 = a5;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v16 = v12;
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
          v22 = [v11 title];
          [v21 setName:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v94 objects:v98 count:16];
      }

      while (v18);
    }

    v12 = v92;
    a5 = v15;
    v14 = v90;
  }

  v88 = a1;
  if ([v12 count])
  {
    v23 = v12;
    v24 = [v10 retainedSearchMetadata];
  }

  else
  {
    v23 = v91;
    v24 = 0;
  }

  if (v14)
  {
    v25 = 5;
  }

  else
  {
    v25 = a5;
  }

  v26 = objc_opt_new();
  [v10 applyToPlaceInfo:v26];
  v27 = [v10 traits];
  v28 = [v10 boundingRegion];
  v29 = [v10 relatedEntitySections];
  v30 = [v10 searchSectionList];
  v89 = v24;
  v31 = [v88 searchInfoWithMapItems:v23 traits:v27 placeInfo:v26 boundingRegion:v28 addressBookAddress:v93 searchType:v25 retainedSearchMetadata:v24 relatedSections:v29 searchSectionList:v30];

  v32 = [v31 results];
  *(v31 + 12) = [v88 isChainResultWithTicket:v10 searchResults:v32];

  *(v31 + 14) = [v10 isChainResultSet];
  v33 = [v10 relatedSearchSuggestions];
  v34 = *(v31 + 64);
  *(v31 + 64) = v33;

  v35 = [v10 browseCategories];
  v36 = *(v31 + 72);
  *(v31 + 72) = v35;

  v37 = [v10 defaultRelatedSuggestion];
  v38 = *(v31 + 88);
  *(v31 + 88) = v37;

  *(v31 + 20) = [v10 searchResultType];
  v39 = [v10 clientResolvedResult];
  v40 = *(v31 + 112);
  *(v31 + 112) = v39;

  v41 = [v10 directionIntent];
  v42 = *(v31 + 120);
  *(v31 + 120) = v41;

  if (!*(v31 + 20))
  {
    *(v31 + 20) = 1;
  }

  v43 = [v10 resultDisplayHeader];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = [v10 sectionHeader];
  }

  v46 = *(v31 + 96);
  *(v31 + 96) = v45;

  v47 = [v10 displayHeaderSubstitutes];
  v48 = *(v31 + 104);
  *(v31 + 104) = v47;

  *(v31 + 128) = [v10 dymSuggestionVisibleTime];
  *(v31 + 13) = [v10 showDymSuggestionCloseButton];
  *(v31 + 10) = [v10 shouldEnableRedoSearch];
  *(v31 + 11) = [v10 shouldAllowManualRedoButton];
  v49 = [v88 headerDisplayNameWithTicket:v10];
  v50 = *(v31 + 144);
  *(v31 + 144) = v49;

  v51 = [v88 subHeaderDisplayNameWithTicket:v10];
  v52 = *(v31 + 152);
  *(v31 + 152) = v51;

  v53 = [v88 placeCollectionsWithTicket:v10];
  v54 = *(v31 + 168);
  *(v31 + 168) = v53;

  v55 = [v10 relatedEntitySections];
  v56 = *(v31 + 160);
  *(v31 + 160) = v55;

  v57 = [v10 publisherResults];
  v58 = [v57 firstObject];
  v59 = [v58 publisher];
  v60 = *(v31 + 176);
  *(v31 + 176) = v59;

  v61 = [v88 styleAttributesWithTicket:v10];
  v62 = *(v31 + 184);
  *(v31 + 184) = v61;

  v63 = [v88 searchDotPlacesWithTicket:v10];
  v64 = *(v31 + 192);
  *(v31 + 192) = v63;

  v65 = [v10 searchAutoRedoThreshold];
  v66 = *(v31 + 200);
  *(v31 + 200) = v65;

  v67 = [v10 searchRedoButtonThreshold];
  v68 = *(v31 + 208);
  *(v31 + 208) = v67;

  v69 = [v10 placeSummaryLayoutMetadata];

  if (v69)
  {
    v70 = [_TtC4Maps20PlaceSummaryMetadata alloc];
    v71 = [v10 placeSummaryLayoutMetadata];
    v72 = [(PlaceSummaryMetadata *)v70 initWithMetadata:v71];
    v73 = *(v31 + 216);
    *(v31 + 216) = v72;
  }

  v74 = [v10 resultRefinementGroup];
  v75 = *(v31 + 232);
  *(v31 + 232) = v74;

  v76 = [v10 searchSectionList];
  v77 = *(v31 + 224);
  *(v31 + 224) = v76;

  if ([v10 disableAdditionalViewportPadding])
  {
    v78 = [v23 count] > 1;
  }

  else
  {
    v78 = 0;
  }

  *(v31 + 15) = v78;
  *(v31 + 24) = [v10 searchResultViewType];
  v79 = [v10 mapItemIdentifierForSpotlight];
  v80 = *(v31 + 248);
  *(v31 + 248) = v79;

  *(v31 + 16) = [v88 shouldShowRAPWithTicket:v10];
  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
  {
    v81 = [v10 traits];
    *(v31 + 9) = [v81 navigating];
  }

  v82 = [v10 guideSummaryLayoutMetadata];
  v83 = *(v31 + 264);
  *(v31 + 264) = v82;

  v84 = [v10 searchSessionData];
  v85 = *(v31 + 256);
  *(v31 + 256) = v84;

  if (GEOConfigGetBOOL())
  {
    v86 = 1;
  }

  else
  {
    v86 = [v10 mapDisplayType];
  }

  *(v31 + 28) = v86;

  return v31;
}

+ (SearchInfo)searchInfoWithMapItems:(id)a3 traits:(id)a4 placeInfo:(id)a5 boundingRegion:(id)a6 addressBookAddress:(id)a7 searchType:(unsigned int)a8 retainedSearchMetadata:(id)a9 relatedSections:(id)a10 searchSectionList:(id)a11
{
  v11 = *&a8;
  v16 = a3;
  v54 = a4;
  v57 = a5;
  v53 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = v16;
  v55 = v18;
  v56 = a11;
  v52 = v17;
  if (v17 && [v16 count] == 1)
  {
    v21 = [SearchResult alloc];
    v22 = [v16 firstObject];
    v23 = [v18 firstObject];
    v24 = [(SearchResult *)v21 initWithMapItem:v22 searchResultType:v11 addressBookAddress:v17 retainedSearchMetadata:v23 resultIndex:0];

    [(SearchResult *)v24 setPlaceInfo:v57];
    v25 = v54;
    -[SearchResult setGeoMapServiceTraitSource:](v24, "setGeoMapServiceTraitSource:", [v54 source]);
    v26 = [SearchInfo alloc];
    v63 = v24;
    v27 = [NSArray arrayWithObjects:&v63 count:1];
    v28 = v26;
    v29 = v53;
    v30 = [(SearchInfo *)v28 initWithSearchResults:v27 boundingMapRegion:v53];

    v18 = v55;
  }

  else
  {
    v51 = v19;
    v24 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
    v25 = v54;
    if ([v16 count])
    {
      v31 = 0;
      do
      {
        if (v31 >= [v18 count])
        {
          v32 = 0;
        }

        else
        {
          v32 = [v18 objectAtIndexedSubscript:v31];
        }

        v33 = [v16 objectAtIndexedSubscript:v31];
        v34 = [v33 _identifier];
        v35 = [v34 geoMapItemIdentifier];

        v36 = -[SearchResult initWithMapItem:searchResultType:addressBookAddress:retainedSearchMetadata:resultIndex:]([SearchResult alloc], "initWithMapItem:searchResultType:addressBookAddress:retainedSearchMetadata:resultIndex:", v33, v11, 0, v32, [v56 indexOfItemWithIdentifier:v35]);
        [(SearchResult *)v36 setPlaceInfo:v57];
        -[SearchResult setGeoMapServiceTraitSource:](v36, "setGeoMapServiceTraitSource:", [v54 source]);
        [(SearchResult *)v24 addObject:v36];

        ++v31;
        v18 = v55;
      }

      while (v31 < [v16 count]);
    }

    v37 = +[CarDisplayController sharedInstance];
    v38 = [v37 isCurrentlyConnectedToAnyCarScene];

    if ((v38 & 1) == 0)
    {
      v50 = v16;
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
            v45 = [v44 index];
            if ([(SearchResult *)v24 count]>= v45)
            {
              v46 = [v44 relatedPlaceCollections];
              v47 = [v46 count];

              if (v47)
              {
                v48 = [[SearchResult alloc] initWithRelatedSection:v44];
                [(SearchResult *)v24 insertObject:v48 atIndex:v45];
              }
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v41);
      }

      v20 = v50;
      v25 = v54;
      v18 = v55;
    }

    v29 = v53;
    v30 = [[SearchInfo alloc] initWithSearchResults:v24 boundingMapRegion:v53];
    v19 = v51;
  }

  return v30;
}

+ (SearchInfo)searchInfoWithResults:(id)a3 boundingMapRegion:(id)a4 autocompleterPerson:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SearchInfo alloc] initWithSearchResults:v9 boundingMapRegion:v8];

  autocompletePerson = v10->_autocompletePerson;
  v10->_autocompletePerson = v7;

  return v10;
}

+ (SearchInfo)searchInfoWithResults:(id)a3 boundingMapRegion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SearchInfo alloc] initWithSearchResults:v6 boundingMapRegion:v5];

  return v7;
}

+ (SearchInfo)searchInfoWithResults:(id)a3 mapRegion:(id *)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = a3;
  v13 = [GEOMapRegion _mapkit_mapRegionForCoordinateRegion:v11, v10, v9, v8];
  v14 = [[SearchInfo alloc] initWithSearchResults:v12 boundingMapRegion:v13];

  return v14;
}

+ (SearchInfo)searchInfoWithResults:(id)a3 ticket:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SearchInfo alloc] initWithSearchResults:v6 boundingMapRegion:0];

  if (v5)
  {
    v7->_canRedoSearch = [v5 shouldEnableRedoSearch];
    v7->_shouldAllowManualRedoButton = [v5 shouldAllowManualRedoButton];
    v8 = [v5 searchAutoRedoThreshold];
    searchAutoRedoThreshold = v7->_searchAutoRedoThreshold;
    v7->_searchAutoRedoThreshold = v8;

    v10 = [v5 searchRedoButtonThreshold];
    searchRedoButtonThreshold = v7->_searchRedoButtonThreshold;
    v7->_searchRedoButtonThreshold = v10;

    v12 = [v5 resultRefinementGroup];
    resultRefinementGroup = v7->_resultRefinementGroup;
    v7->_resultRefinementGroup = v12;

    v14 = [v5 searchSessionData];
    searchSessionData = v7->_searchSessionData;
    v7->_searchSessionData = v14;
  }

  return v7;
}

+ (SearchInfo)searchInfoWithResults:(id)a3
{
  v3 = a3;
  v4 = [[SearchInfo alloc] initWithSearchResults:v3 boundingMapRegion:0];

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
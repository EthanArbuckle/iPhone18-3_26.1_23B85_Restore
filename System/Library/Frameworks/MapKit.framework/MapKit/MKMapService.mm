@interface MKMapService
+ (id)sharedService;
- (id)_mk_ticketForSearchQuery:(id)a3 completionItem:(id)a4 traits:(id)a5 filters:(id)a6;
- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 includeEntryPoints:(BOOL)a5 preserveOriginalLocation:(BOOL)a6 traits:(id)a7;
- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)a3 includeEntryPoints:(BOOL)a4 preserveOriginalLocation:(BOOL)a5 traits:(id)a6;
- (id)_ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(id)a4 traits:(id)a5;
- (id)defaultTraitsForAnalyticsWithTraits:(id)a3;
- (id)defaultTraitsWithTraits:(id)a3;
- (id)defaultTraitsWithTransportType:(unint64_t)a3;
- (id)feedbackTicketForFitnessRAPReport:(id)a3;
- (id)feedbackTicketForWalletRAPReport:(id)a3;
- (id)mapItemsForPlacesInDetails:(id)a3;
- (id)searchAroundPOITicketWithIdentifier:(id)a3 categoryID:(id)a4 maxResults:(unsigned int)a5 traits:(id)a6;
- (id)stylingForWalletCategory:(id)a3;
- (id)ticketForAllCollectionViewWithBatchSize:(unsigned int)a3 keywordFilter:(id)a4 addressFilter:(id)a5 withTraits:(id)a6;
- (id)ticketForBrandLookupWithIMessageUid:(id)a3 traits:(id)a4;
- (id)ticketForCanonicalLocationSearchQueryString:(id)a3 traits:(id)a4;
- (id)ticketForCategory:(id)a3 maxResults:(unsigned int)a4 traits:(id)a5 searchSessionData:(id)a6;
- (id)ticketForCategoryListWithTraits:(id)a3 isFromNoQueryState:(BOOL)a4;
- (id)ticketForChildPlace:(id)a3 traits:(id)a4;
- (id)ticketForCitySelectorViewWithTraits:(id)a3 batchSize:(unsigned int)a4;
- (id)ticketForCuratedCollectionItems:(id)a3 collection:(id)a4 traits:(id)a5;
- (id)ticketForCuratedCollections:(id)a3 isBatchLookup:(BOOL)a4 overrideSuppress:(BOOL)a5 traits:(id)a6;
- (id)ticketForExploreGuidesLookupParameters:(id)a3 traits:(id)a4;
- (id)ticketForExternalBusinessID:(id)a3 contentProvider:(id)a4 traits:(id)a5;
- (id)ticketForExternalTransitStationCodes:(id)a3 sourceID:(id)a4 transactionDate:(id)a5 transactionLocation:(id)a6 traits:(id)a7;
- (id)ticketForFeedbackRequest:(id)a3 traits:(id)a4;
- (id)ticketForFeedbackRequestData:(id)a3 traits:(id)a4;
- (id)ticketForFeedbackRequestParameters:(id)a3 mapItemForProblemContext:(id)a4 userCredentials:(id)a5 pushToken:(id)a6 allowContactBackAtEmailAddress:(id)a7 traits:(id)a8;
- (id)ticketForForwardGeocodeAddress:(id)a3 traits:(id)a4;
- (id)ticketForForwardGeocodeAddressDictionary:(id)a3 traits:(id)a4;
- (id)ticketForForwardGeocodeString:(id)a3 traits:(id)a4;
- (id)ticketForFreshBusinessClaimComponentWithIdentifier:(id)a3 resultProviderID:(int)a4 traits:(id)a5;
- (id)ticketForFreshIdentifier:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6;
- (id)ticketForGuideHomeWithFilter:(id)a3 guideLocation:(id)a4 withTraits:(id)a5;
- (id)ticketForHikingIntroTip:(id)a3 traits:(id)a4;
- (id)ticketForIdentifiers:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6;
- (id)ticketForMUIDs:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6;
- (id)ticketForMapItemToRefine:(id)a3 traits:(id)a4;
- (id)ticketForMerchantCode:(id)a3 rawMerchantCode:(id)a4 industryCategory:(id)a5 industryCode:(id)a6 paymentNetwork:(id)a7 transactionDate:(id)a8 transactionLocation:(id)a9 traits:(id)a10;
- (id)ticketForNearbyTransitDeparturesWithLookupOrigin:(id)a3 userLocation:(id)a4 traits:(id)a5;
- (id)ticketForNearestTransitStation:(id)a3 coordinate:(CLLocationCoordinate2D)a4 traits:(id)a5;
- (id)ticketForNonExpiredIdentifier:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6;
- (id)ticketForPhoneNumbers:(id)a3 allowCellularDataForLookup:(BOOL)a4 traits:(id)a5;
- (id)ticketForPlaceDescriptorResolution:(id)a3 traits:(id)a4;
- (id)ticketForPlaceEnrichmentWithEnrichmentInfo:(id)a3 mapsIdentifier:(id)a4 traits:(id)a5;
- (id)ticketForPlaceLookupWithSearchCategory:(id)a3 parentMuid:(unint64_t)a4 traits:(id)a5;
- (id)ticketForPlaceRefinementRequestWithCoordinate:(CLLocationCoordinate2D *)a3 addressLine:(id)a4 placeName:(id)a5 traits:(id)a6;
- (id)ticketForPublisherViewPublisherIdentifier:(id)a3 keywordFilter:(id)a4 addressFilter:(id)a5 batchSize:(unsigned int)a6 withTraits:(id)a7;
- (id)ticketForRefreshingEVChargersWithIdentifiers:(id)a3 traits:(id)a4;
- (id)ticketForRelatedPlaceList:(id)a3 traits:(id)a4;
- (id)ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 traits:(id)a5;
- (id)ticketForReverseGeocodeLocation:(id)a3 preserveOriginalLocation:(BOOL)a4 traits:(id)a5;
- (id)ticketForReverseGeocodeLocation:(id)a3 traits:(id)a4;
- (id)ticketForSearchAlongRouteWithCategory:(id)a3 searchQuery:(id)a4 completionItem:(id)a5 originalWaypointRouteData:(id)a6 zilchData:(id)a7 sessionState:(id)a8 routeId:(id)a9 routeAttributes:(id)a10 maxResults:(unsigned int)a11 traits:(id)a12 searchSessionData:(id)a13;
- (id)ticketForSearchCategory:(id)a3 venueIdentifier:(id)a4 maxResults:(unsigned int)a5 traits:(id)a6;
- (id)ticketForSearchFieldOfflinePlaceholderWithTraits:(id)a3;
- (id)ticketForSearchFieldPlaceholderWithTraits:(id)a3;
- (id)ticketForSearchHomeWithTraits:(id)a3;
- (id)ticketForSearchPoisForBrandMUID:(unint64_t)a3 traits:(id)a4;
- (id)ticketForSearchQuery:(id)a3 completionItem:(id)a4 relatedSearchSuggestion:(id)a5 maxResults:(unsigned int)a6 traits:(id)a7 searchSessionData:(id)a8;
- (id)ticketForSearchQuery:(id)a3 completionItem:(id)a4 retainedSearch:(id)a5 maxResults:(unsigned int)a6 traits:(id)a7 searchSessionData:(id)a8;
- (id)ticketForSearchQuery:(id)a3 filters:(id)a4 maxResults:(unsigned int)a5 traits:(id)a6 searchSessionData:(id)a7;
- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4 pointOfInterestFilter:(id)a5 maxResultCount:(int64_t)a6;
- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4 pointOfInterestFilter:(id)a5 maxResultCount:(int64_t)a6 source:(int64_t)a7;
- (id)ticketForSpatialPlaceLookupWithMapRegion:(id)a3 pointOfInterestFilter:(id)a4 maxResultCount:(int64_t)a5;
- (id)ticketForTransitDeparturesAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 traits:(id)a7;
- (id)ticketForTransitLines:(id)a3 traits:(id)a4;
- (id)ticketForTransitScheduleAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 routingParameters:(id)a7 traits:(id)a8;
- (id)ticketForTransitTripDetailsAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 routingParameters:(id)a7 traits:(id)a8;
- (id)ticketForURLQuery:(id)a3 identifier:(id)a4 resultProviderId:(int)a5 contentProvider:(id)a6 maxResults:(unsigned int)a7 traits:(id)a8;
- (id)ticketForUpdatedTransitScheduleDetailsAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 routingParameters:(id)a7 traits:(id)a8;
- (id)ticketForWalletMerchantLookupRequest:(id)a3 traits:(id)a4;
- (void)_captureUserAction:(int)a3 onTarget:(int)a4 withAnalyticsMessageValues:(id)a5;
- (void)_mapItemsForResponseData:(id)a3 handler:(id)a4;
- (void)capturePlaceCardUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 placeCardType:(int)a8 categoriesDisplayed:(id)a9 categorySelected:(id)a10;
- (void)capturePlaceCardUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 targetID:(unint64_t)a9 providerID:(id)a10 animationID:(unint64_t)a11 actionURL:(id)a12 photoID:(id)a13 placeCardType:(int)a14 localizedMapItemCategory:(id)a15 availableActions:(id)a16 unactionableUIElements:(id)a17 modules:(id)a18 commingledPhotoProviderIDs:(id)a19 actionRichProviderId:(id)a20 classification:(id)a21;
- (void)captureTransitPlaceCardUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 targetID:(unint64_t)a9 providerID:(id)a10 animationID:(unint64_t)a11 transitCardCategory:(int)a12 transitSystem:(id)a13 transitDepartureSequence:(id)a14 transitIncident:(id)a15;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 categoriesDisplayed:(id)a6 categorySelected:(id)a7;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 mapRegion:(id)a9 zoomLevel:(double)a10 mapType:(int)a11;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 routeDetails:(id)a6;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 forAdvisory:(id)a5;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 forAdvisoryItem:(id)a5;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 forAdvisoryItems:(id)a5;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 placeActionDetails:(id)a5 mapItem:(id)a6 resultIndex:(int)a7;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 queryString:(id)a5;
- (void)siriAnalyticsDonation:(int)a3 target:(int)a4 resultIndex:(int)a5 mapItem:(id)a6 searchCategory:(id)a7 searchQueryString:(id)a8;
@end

@implementation MKMapService

+ (id)sharedService
{
  if (sharedService_once != -1)
  {
    dispatch_once(&sharedService_once, &__block_literal_global_14433);
  }

  v3 = sharedService_mapService;

  return v3;
}

void __29__MKMapService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(MKMapService);
  v1 = sharedService_mapService;
  sharedService_mapService = v0;
}

- (id)ticketForHikingIntroTip:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [v6 geoMapItemIdentifier];

  v9 = [MEMORY[0x1E69A2208] sharedService];
  v10 = [v9 ticketForHikingIntroTipWithMapItemIdentifier:v8 traits:v7];

  v11 = [[_MKPlaceHikingIntroTipTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForSpatialPlaceLookupWithMapRegion:(id)a3 pointOfInterestFilter:(id)a4 maxResultCount:(int64_t)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69A25A8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [v8 _geoPOICategoryFilter];

  v12 = [v10 initWithMapRegion:v9 poiCategoryFilter:v11 maxResultCount:a5];
  v13 = [_MKSpatialPlaceLookupTicket alloc];
  v14 = [MEMORY[0x1E69A2208] sharedService];
  v19[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v16 = [v14 ticketForSpatialPlaceLookupParameters:v15 traits:0];
  v17 = [(_MKSpatialPlaceLookupTicket *)v13 initWithTicket:v16];

  return v17;
}

- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4 pointOfInterestFilter:(id)a5 maxResultCount:(int64_t)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E69A25A8];
  v11 = a5;
  v12 = [v10 alloc];
  v13 = [v11 _geoPOICategoryFilter];

  v14 = [v12 initWithCoordinate:v13 radius:a6 poiCategoryFilter:latitude maxResultCount:{longitude, a4}];
  v15 = [_MKSpatialPlaceLookupTicket alloc];
  v16 = [MEMORY[0x1E69A2208] sharedService];
  v21[0] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = [v16 ticketForSpatialPlaceLookupParameters:v17 traits:0];
  v19 = [(_MKSpatialPlaceLookupTicket *)v15 initWithTicket:v18];

  return v19;
}

- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4 pointOfInterestFilter:(id)a5 maxResultCount:(int64_t)a6 source:(int64_t)a7
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E69A25A8];
  v13 = a5;
  v14 = [v12 alloc];
  v15 = [v13 _geoPOICategoryFilter];

  v16 = [v14 initWithCoordinate:v15 radius:a6 poiCategoryFilter:a7 maxResultCount:latitude source:{longitude, a4}];
  v17 = [_MKSpatialPlaceLookupTicket alloc];
  v18 = [MEMORY[0x1E69A2208] sharedService];
  v23[0] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20 = [v18 ticketForSpatialPlaceLookupParameters:v19 traits:0];
  v21 = [(_MKSpatialPlaceLookupTicket *)v17 initWithTicket:v20];

  return v21;
}

- (id)ticketForRefreshingEVChargersWithIdentifiers:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(v6);

  v9 = [MEMORY[0x1E69A2208] sharedService];
  v10 = [v9 ticketForRefreshingEVChargersWithIdentifiers:v8 traits:v7];

  v11 = [[_MKPlaceEVChargerTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForExploreGuidesLookupParameters:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v8 ticketForExploreGuidesLookupParameters:v6 traits:v7];

  v10 = [[_MKExploreGuidesTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForPlaceEnrichmentWithEnrichmentInfo:(id)a3 mapsIdentifier:(id)a4 traits:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = [v8 geoMapItemIdentifier];

  v13 = [v11 ticketForPlaceEnrichmentWithEnrichmentInfo:v9 mapsIdentifier:v12 traits:v10];

  v14 = [[_MKPlaceEnrichmentTicket alloc] initWithTicket:v13];

  return v14;
}

- (id)ticketForCitySelectorViewWithTraits:(id)a3 batchSize:(unsigned int)a4
{
  v4 = *&a4;
  v5 = [(MKMapService *)self defaultTraitsWithTraits:a3];
  v6 = [MEMORY[0x1E69A2208] sharedService];
  v7 = [v6 ticketForCitySelectorViewWithTraits:v5 batchSize:v4];

  v8 = [[_MKCitySelectorViewTicket alloc] initWithTicket:v7];

  return v8;
}

- (id)ticketForAllCollectionViewWithBatchSize:(unsigned int)a3 keywordFilter:(id)a4 addressFilter:(id)a5 withTraits:(id)a6
{
  v8 = *&a3;
  v10 = a5;
  v11 = a4;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v13 ticketForAllCollectionViewWithBatchSize:v8 keywordFilter:v11 addressFilter:v10 withTraits:v12];

  v15 = [[_MKAllCollectionsViewTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForCuratedCollectionItems:(id)a3 collection:(id)a4 traits:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(v9);

  v13 = [v8 geoMapItemIdentifier];

  v14 = [v11 ticketForCuratedCollectionItems:v12 collection:v13 traits:v10];

  v15 = [[_MKCuratedCollectionItemsTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForCuratedCollections:(id)a3 isBatchLookup:(BOOL)a4 overrideSuppress:(BOOL)a5 traits:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v12 = [MEMORY[0x1E69A2208] sharedService];
  v13 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(v10);

  v14 = [v12 ticketForCuratedCollections:v13 isBatchLookup:v8 overrideSuppress:v7 traits:v11];

  v15 = [[_MKCuratedCollectionTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForGuideHomeWithFilter:(id)a3 guideLocation:(id)a4 withTraits:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = [v11 ticketForGuideHomeWithFilter:v9 guideLocation:v8 withTraits:v10];

  v13 = [[_MKGuideHomeViewTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForPublisherViewPublisherIdentifier:(id)a3 keywordFilter:(id)a4 addressFilter:(id)a5 batchSize:(unsigned int)a6 withTraits:(id)a7
{
  v8 = *&a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:a7];
  v16 = [MEMORY[0x1E69A2208] sharedService];
  v17 = [v14 geoMapItemIdentifier];

  v18 = [v16 ticketForPublisherViewPublisherIdentifier:v17 keywordFilter:v13 addressFilter:v12 batchSize:v8 withTraits:v15];

  v19 = [[_MKPublisherViewTicket alloc] initWithTicket:v18];

  return v19;
}

- (id)ticketForSearchHomeWithTraits:(id)a3
{
  v3 = [(MKMapService *)self defaultTraitsWithTraits:a3];
  v4 = [MEMORY[0x1E69A2208] sharedService];
  v5 = [v4 ticketForSearchHomeWithTraits:v3];

  v6 = [[_MKSearchHomeTicket alloc] initWithTicket:v5];

  return v6;
}

- (id)ticketForNearestTransitStation:(id)a3 coordinate:(CLLocationCoordinate2D)a4 traits:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = a3;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = [v9 geoMapItemIdentifier];

  v13 = [v11 ticketForNearestTransitStation:v12 coordinate:v10 traits:{latitude, longitude}];

  v14 = [[_MKTicket alloc] initWithTicket:v13];

  return v14;
}

- (id)ticketForTransitLines:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(v6);

  v10 = [v8 ticketForTransitLines:v9 withTraits:v7];

  v11 = [[_MKTransitLineTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForChildPlace:(id)a3 traits:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v6 identifier];

  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v8 ticketForIdentifiers:v10 traits:v7];

  v12 = [[_MKTicket alloc] initWithTicket:v11];

  return v12;
}

- (id)mapItemsForPlacesInDetails:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A2208] sharedService];
  v5 = [v4 _geoMapItemsForPlacesInDetails:v3];

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MKMapItem _itemWithGeoMapItem:*(*(&v14 + 1) + 8 * i), v14];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)ticketForBrandLookupWithIMessageUid:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v8 ticketForBrandLookupWithIMessageUid:v6 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForFeedbackRequestData:(id)a3 traits:(id)a4
{
  v5 = MEMORY[0x1E69A2208];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedService];
  v9 = [v8 ticketForFeedbackRequestData:v7 traits:v6];

  v10 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v9];

  return v10;
}

- (id)ticketForFeedbackRequest:(id)a3 traits:(id)a4
{
  v5 = MEMORY[0x1E69A2208];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedService];
  v9 = [v8 ticketForFeedbackRequest:v7 traits:v6];

  v10 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v9];

  return v10;
}

- (id)ticketForFeedbackRequestParameters:(id)a3 mapItemForProblemContext:(id)a4 userCredentials:(id)a5 pushToken:(id)a6 allowContactBackAtEmailAddress:(id)a7 traits:(id)a8
{
  v13 = MEMORY[0x1E69A2208];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v13 sharedService];
  v21 = [v18 _geoMapItem];

  v22 = [v20 ticketForFeedbackRequestParameters:v19 placeForProblemContext:v21 userCredentials:v17 pushToken:v16 allowContactBackAtEmailAddress:v15 traits:v14];

  v23 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v22];

  return v23;
}

- (void)_mapItemsForResponseData:(id)a3 handler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = MEMORY[0x1E69A2208];
    v7 = a3;
    v8 = [v6 sharedService];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__MKMapService__mapItemsForResponseData_handler___block_invoke;
    v9[3] = &unk_1E76C8490;
    v10 = v5;
    [v8 _geoMapItemsForResponseData:v7 handler:v9];
  }
}

void __49__MKMapService__mapItemsForResponseData_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v3[2](*(a1 + 32), 0);
  }

  else
  {
    _mapItemsForGeoMapItemsWithHandler(a2, v3);
  }
}

- (id)_mk_ticketForSearchQuery:(id)a3 completionItem:(id)a4 traits:(id)a5 filters:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  [v13 setIsAPICall:1];
  Integer = GEOConfigGetInteger();
  v15 = [MEMORY[0x1E69A2208] sharedService];
  v16 = [v15 ticketForSearchQuery:v12 filters:v10 completionItem:v11 retainedSearch:0 maxResults:Integer suppressResultsRequiringAttribution:1 traits:v13 searchSessionData:0];

  v17 = [[_MKSearchTicket alloc] initWithSearchTicket:v16];

  return v17;
}

- (id)ticketForSearchFieldOfflinePlaceholderWithTraits:(id)a3
{
  v3 = [(MKMapService *)self defaultTraitsWithTraits:a3];
  v4 = [MEMORY[0x1E69A2208] sharedService];
  v5 = [v4 ticketForSearchCapabilitiesWithTraits:v3];

  v6 = [[_MKSearchFieldOfflinePlaceholderTicket alloc] initWithTicket:v5];

  return v6;
}

- (id)ticketForSearchFieldPlaceholderWithTraits:(id)a3
{
  v3 = [(MKMapService *)self defaultTraitsWithTraits:a3];
  v4 = [MEMORY[0x1E69A2208] sharedService];
  v5 = [v4 ticketForSearchFieldPlaceholderWithTraits:v3];

  v6 = [[_MKSearchFieldPlaceholderTicket alloc] initWithTicket:v5];

  return v6;
}

- (id)ticketForSearchCategory:(id)a3 venueIdentifier:(id)a4 maxResults:(unsigned int)a5 traits:(id)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a3;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v13 ticketForSearchCategory:v11 venueIdentifier:v10 maxResults:v7 traits:v12];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForSearchQuery:(id)a3 filters:(id)a4 maxResults:(unsigned int)a5 traits:(id)a6 searchSessionData:(id)a7
{
  v8 = *&a5;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v16 = [MEMORY[0x1E69A2208] sharedService];
  v17 = [v16 ticketForSearchQuery:v14 filters:v13 maxResults:v8 traits:v15 searchSessionData:v12];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForSearchAlongRouteWithCategory:(id)a3 searchQuery:(id)a4 completionItem:(id)a5 originalWaypointRouteData:(id)a6 zilchData:(id)a7 sessionState:(id)a8 routeId:(id)a9 routeAttributes:(id)a10 maxResults:(unsigned int)a11 traits:(id)a12 searchSessionData:(id)a13
{
  v32 = a13;
  v31 = a10;
  v29 = a9;
  v30 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v28 = a4;
  v22 = a3;
  v34 = [(MKMapService *)self defaultTraitsWithTraits:a12];
  v23 = [MEMORY[0x1E69A2208] sharedService];
  LODWORD(v27) = a11;
  v24 = [v23 ticketForSearchAlongRouteWithCategory:v22 searchQuery:v28 completionItem:v21 originalWaypointRouteData:v20 zilchData:v19 sessionState:v30 routeId:v29 routeAttributes:v31 maxResults:v27 traits:v34 searchSessionData:v32];

  v25 = [[_MKTicket alloc] initWithTicket:v24];

  return v25;
}

- (id)searchAroundPOITicketWithIdentifier:(id)a3 categoryID:(id)a4 maxResults:(unsigned int)a5 traits:(id)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a3;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [v11 geoMapItemIdentifier];

  v14 = [MEMORY[0x1E69A2208] sharedService];
  v15 = [v14 searchAroundPOITicketWithIdentifier:v13 categoryID:v10 maxResults:v7 traits:v12];

  v16 = [(_MKTicket *)[_MKSearchTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForCategory:(id)a3 maxResults:(unsigned int)a4 traits:(id)a5 searchSessionData:(id)a6
{
  v7 = *&a4;
  v10 = a6;
  v11 = a3;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v13 ticketforCategory:v11 maxResults:v7 traits:v12 searchSessionData:v10];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForRelatedPlaceList:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [v6 mapIdentifiers];

  v9 = [MEMORY[0x1E69A2208] sharedService];
  v10 = [v9 ticketForIdentifiers:v8 traits:v7];

  v11 = [[_MKTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForNearbyTransitDeparturesWithLookupOrigin:(id)a3 userLocation:(id)a4 traits:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = [v11 ticketForNearbyTransitDeparturesWithLookupOrigin:v9 userLocation:v8 traits:v10];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForUpdatedTransitScheduleDetailsAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 routingParameters:(id)a7 traits:(id)a8
{
  v9 = a6;
  v14 = a7;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:a8];
  v16 = [MEMORY[0x1E69A2208] sharedService];
  v17 = [v16 ticketForUpdatedTransitScheduleDetailsAtStation:a3 line:a4 referenceTripID:a5 includeAllDirectionNames:v9 routingParameters:v14 traits:v15];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForTransitDeparturesAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 traits:(id)a7
{
  v7 = a6;
  v11 = [(MKMapService *)self defaultTraitsWithTraits:a7];
  v12 = [MEMORY[0x1E69A2208] sharedService];
  v13 = [v12 ticketForTransitDeparturesAtStation:a3 line:a4 referenceTripID:a5 includeAllDirectionNames:v7 traits:v11];

  v14 = [[_MKTicket alloc] initWithTicket:v13];

  return v14;
}

- (id)ticketForTransitTripDetailsAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 routingParameters:(id)a7 traits:(id)a8
{
  v9 = a6;
  v14 = a7;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:a8];
  v16 = [MEMORY[0x1E69A2208] sharedService];
  v17 = [v16 ticketForTransitTripDetailsAtStation:a3 line:a4 referenceTripID:a5 includeAllDirectionNames:v9 routingParameters:v14 traits:v15];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForTransitScheduleAtStation:(unint64_t)a3 line:(unint64_t)a4 referenceTripID:(unint64_t)a5 includeAllDirectionNames:(BOOL)a6 routingParameters:(id)a7 traits:(id)a8
{
  v9 = a6;
  v14 = a7;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:a8];
  v16 = [MEMORY[0x1E69A2208] sharedService];
  v17 = [v16 ticketForTransitScheduleAtStation:a3 line:a4 referenceTripID:a5 includeAllDirectionNames:v9 routingParameters:v14 traits:v15];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForCategoryListWithTraits:(id)a3 isFromNoQueryState:(BOOL)a4
{
  v4 = a4;
  v5 = [(MKMapService *)self defaultTraitsWithTraits:a3];
  v6 = [MEMORY[0x1E69A2208] sharedService];
  v7 = [v6 ticketForCategoryListWithTraits:v5 isFromNoQueryState:v4];

  v8 = [[_MKCategoriesTicket alloc] initWithTicket:v7];

  return v8;
}

- (id)ticketForPlaceLookupWithSearchCategory:(id)a3 parentMuid:(unint64_t)a4 traits:(id)a5
{
  v8 = a3;
  v9 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v10 = [MEMORY[0x1E69A2208] sharedService];
  v11 = [v10 ticketForPlaceLookupWithSearchCategory:v8 parentMuid:a4 traits:v9];

  v12 = [(_MKTicket *)[_MKSearchTicket alloc] initWithTicket:v11];

  return v12;
}

- (id)ticketForSearchPoisForBrandMUID:(unint64_t)a3 traits:(id)a4
{
  v5 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v6 = [MEMORY[0x1E69A2208] sharedService];
  v7 = [v6 ticketForSearchPoisForBrandMUID:a3 traits:v5];

  v8 = [[_MKSearchTicket alloc] initWithSearchTicket:v7];

  return v8;
}

- (id)ticketForURLQuery:(id)a3 identifier:(id)a4 resultProviderId:(int)a5 contentProvider:(id)a6 maxResults:(unsigned int)a7 traits:(id)a8
{
  v9 = *&a7;
  v10 = *&a5;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [(MKMapService *)self defaultTraitsWithTraits:a8];
  v18 = [MEMORY[0x1E69A2208] sharedService];
  v19 = [v15 geoMapItemIdentifier];

  v20 = [v18 ticketForURLQuery:v16 identifier:v19 resultProviderId:v10 contentProvider:v14 maxResults:v9 traits:v17];

  v21 = [[_MKSearchTicket alloc] initWithSearchTicket:v20];

  return v21;
}

- (id)ticketForSearchQuery:(id)a3 completionItem:(id)a4 relatedSearchSuggestion:(id)a5 maxResults:(unsigned int)a6 traits:(id)a7 searchSessionData:(id)a8
{
  v9 = *&a6;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(MKMapService *)self defaultTraitsWithTraits:a7];
  v19 = [MEMORY[0x1E69A2208] sharedService];
  v20 = [v19 ticketForSearchQuery:v17 completionItem:v16 relatedSearchSuggestion:v15 retainedSearch:0 maxResults:v9 traits:v18 searchSessionData:v14];

  v21 = [[_MKSearchTicket alloc] initWithSearchTicket:v20];

  return v21;
}

- (id)ticketForSearchQuery:(id)a3 completionItem:(id)a4 retainedSearch:(id)a5 maxResults:(unsigned int)a6 traits:(id)a7 searchSessionData:(id)a8
{
  v9 = *&a6;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(MKMapService *)self defaultTraitsWithTraits:a7];
  v19 = [MEMORY[0x1E69A2208] sharedService];
  v20 = [v19 ticketForSearchQuery:v17 completionItem:v16 retainedSearch:v15 maxResults:v9 traits:v18 searchSessionData:v14];

  v21 = [[_MKSearchTicket alloc] initWithSearchTicket:v20];

  return v21;
}

- (id)ticketForExternalTransitStationCodes:(id)a3 sourceID:(id)a4 transactionDate:(id)a5 transactionLocation:(id)a6 traits:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(MKMapService *)self defaultTraitsWithTraits:a7];
  v17 = [MEMORY[0x1E69A2208] sharedService];
  v18 = [v17 ticketForExternalTransitStationCodes:v15 sourceID:v14 transactionDate:v13 transactionLocation:v12 traits:v16];

  v19 = [[_MKTicket alloc] initWithTicket:v18];

  return v19;
}

- (id)ticketForMerchantCode:(id)a3 rawMerchantCode:(id)a4 industryCategory:(id)a5 industryCode:(id)a6 paymentNetwork:(id)a7 transactionDate:(id)a8 transactionLocation:(id)a9 traits:(id)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [(MKMapService *)self defaultTraitsWithTraits:a10];
  v25 = [MEMORY[0x1E69A2208] sharedService];
  v26 = [v25 ticketForMerchantCode:v23 rawMerchantCode:v22 industryCategory:v21 industryCode:v20 paymentNetwork:v19 transactionDate:v18 transactionLocation:v17 traits:v24];

  v27 = [[_MKTicket alloc] initWithTicket:v26];

  return v27;
}

- (id)ticketForCanonicalLocationSearchQueryString:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v8 ticketForCanonicalLocationSearchQueryString:v6 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForPlaceRefinementRequestWithCoordinate:(CLLocationCoordinate2D *)a3 addressLine:(id)a4 placeName:(id)a5 traits:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v13 ticketForPlaceRefinementRequestWithCoordinate:a3 addressLine:v11 placeName:v10 traits:v12];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForMapItemToRefine:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v6 _geoMapItem];

  v10 = [v8 ticketForMapItemToRefine:v9 traits:v7];

  v11 = [[_MKTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)_ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(id)a4 traits:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a4;
  v10 = a5;
  if (v9 && ([v9 integerValue], (NSIntegerIsValidFloorOrdinal() & 1) != 0))
  {
    v11 = -[MKMapService _ticketForReverseGeocodeCoordinate:floorOrdinal:includeEntryPoints:preserveOriginalLocation:traits:](self, "_ticketForReverseGeocodeCoordinate:floorOrdinal:includeEntryPoints:preserveOriginalLocation:traits:", [v9 intValue], 0, 1, v10, latitude, longitude);
  }

  else
  {
    v11 = [(MKMapService *)self _ticketForReverseGeocodeCoordinate:0 includeEntryPoints:1 preserveOriginalLocation:v10 traits:latitude, longitude];
  }

  v12 = v11;

  return v12;
}

- (id)ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 traits:(id)a5
{
  v5 = *&a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = [v9 numberWithInt:v5];
  v12 = [(MKMapService *)self _ticketForReverseGeocodeDroppedPinCoordinate:v11 floorOrdinal:v10 traits:latitude, longitude];

  return v12;
}

- (id)ticketForReverseGeocodeLocation:(id)a3 preserveOriginalLocation:(BOOL)a4 traits:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v10 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v8];

  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = [v11 ticketForReverseGeocodeLocation:v10 preserveOriginalLocation:v6 placeTypeLimit:0 traits:v9];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForReverseGeocodeLocation:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v6];

  v9 = [MEMORY[0x1E69A2208] sharedService];
  v10 = [v9 ticketForReverseGeocodeLocation:v8 traits:v7];

  v11 = [[_MKTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 includeEntryPoints:(BOOL)a5 preserveOriginalLocation:(BOOL)a6 traits:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = *&a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a7];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v13 ticketForReverseGeocodeCoordinate:v9 floor:v8 includeEntryPoints:0 shiftLocationsIfNeeded:v7 preserveOriginalLocation:v12 traits:{latitude, longitude}];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)a3 includeEntryPoints:(BOOL)a4 preserveOriginalLocation:(BOOL)a5 traits:(id)a6
{
  v6 = a5;
  v7 = a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = [v11 ticketForReverseGeocodeCoordinate:v7 includeEntryPoints:0 shiftLocationsIfNeeded:v6 preserveOriginalLocation:v10 traits:{latitude, longitude}];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForForwardGeocodeAddressDictionary:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v8 ticketForForwardGeocodeAddressDictionary:v6 maxResults:0 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForForwardGeocodeString:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v8 ticketForForwardGeocodeString:v6 maxResults:0 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForForwardGeocodeAddress:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v8 ticketForForwardGeocodeAddress:v6 maxResults:0 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForExternalBusinessID:(id)a3 contentProvider:(id)a4 traits:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v11 = [MEMORY[0x1E69A2208] sharedService];
  v12 = [v11 ticketForExternalBusinessID:v9 contentProvider:v8 traits:v10];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForPhoneNumbers:(id)a3 allowCellularDataForLookup:(BOOL)a4 traits:(id)a5
{
  v5 = a4;
  v7 = MEMORY[0x1E69A2208];
  v8 = a5;
  v9 = a3;
  v10 = [v7 sharedService];
  v11 = [v10 ticketForPhoneNumbers:v9 allowCellularDataForLookup:v5 traits:v8];

  v12 = [[_MKTicket alloc] initWithTicket:v11];

  return v12;
}

- (id)ticketForFreshBusinessClaimComponentWithIdentifier:(id)a3 resultProviderID:(int)a4 traits:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = [(MKMapService *)self defaultTraitsWithTraits:a5];
  v10 = [MEMORY[0x1E69A2208] sharedService];
  v11 = [v8 geoMapItemIdentifier];

  v12 = [v10 ticketForFreshBusinessClaimComponentWithIdentifier:v11 resultProviderID:v6 traits:v9];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForNonExpiredIdentifier:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a3;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v11 geoMapItemIdentifier];

  v15 = [v13 ticketForNonExpiredIdentifier:v14 resultProviderID:v7 contentProvider:v10 traits:v12];

  v16 = [[_MKTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForFreshIdentifier:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a3;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v11 geoMapItemIdentifier];

  v15 = [v13 ticketForFreshIdentifier:v14 resultProviderID:v7 contentProvider:v10 traits:v12];

  v16 = [[_MKTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForIdentifiers:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a3;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(v11);

  v15 = [v13 ticketForIdentifiers:v14 resultProviderID:v7 contentProvider:v10 traits:v12];

  v16 = [[_MKTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForMUIDs:(id)a3 resultProviderID:(int)a4 contentProvider:(id)a5 traits:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a3;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:a6];
  v13 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [v13 ticketForMUIDs:v11 resultProviderID:v7 contentProvider:v10 traits:v12];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForPlaceDescriptorResolution:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:a4];
  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [v8 ticketForPlaceDescriptorResolution:v6 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)defaultTraitsForAnalyticsWithTraits:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E69A2208] sharedService];
    v3 = [v4 defaultTraits];
  }

  if (([v3 hasDeviceKeyboardLocale] & 1) == 0)
  {
    v5 = _deviceKeyboardLanguageIfAvailable();
    [v3 setDeviceKeyboardLocale:v5];
  }

  if ([MEMORY[0x1E696AF00] isMainThread] && (objc_msgSend(v3, "hasDeviceBatteryState") & 1) == 0)
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v6 isBatteryMonitoringEnabled])
    {
      v7 = [v6 batteryState] - 1;
      if (v7 < 3)
      {
        v8 = (v7 + 1);
      }

      else
      {
        v8 = 0;
      }

      [v3 setDeviceBatteryState:v8];
    }

    else
    {
      [v6 setBatteryMonitoringEnabled:1];
      v9 = [v6 batteryState] - 1;
      if (v9 < 3)
      {
        v10 = (v9 + 1);
      }

      else
      {
        v10 = 0;
      }

      [v3 setDeviceBatteryState:v10];
      [v6 setBatteryMonitoringEnabled:0];
    }
  }

  return v3;
}

- (id)defaultTraitsWithTraits:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E69A2208] sharedService];
    v3 = [v4 defaultTraits];
  }

  if (([v3 hasDeviceLocation] & 1) == 0)
  {
    v5 = +[MKLocationManager sharedLocationManager];
    if ([v5 hasLocation] && (objc_msgSend(v5, "isLastLocationStale") & 1) == 0)
    {
      v6 = [v5 currentLocation];
      [v3 setDeviceLocation:v6];
    }
  }

  if (([v3 hasDeviceKeyboardLocale] & 1) == 0)
  {
    v7 = _deviceKeyboardLanguageIfAvailable();
    [v3 setDeviceKeyboardLocale:v7];
  }

  if (([v3 hasDevicePlatform] & 1) == 0)
  {
    [v3 setDevicePlatform:1];
  }

  return v3;
}

- (id)defaultTraitsWithTransportType:(unint64_t)a3
{
  v4 = [(MKMapService *)self defaultTraits];
  v5 = v4;
  if (a3 - 1 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A30F7360[a3 - 1];
  }

  [v4 addTransportType:v6];

  return v5;
}

- (id)feedbackTicketForWalletRAPReport:(id)a3
{
  v3 = MEMORY[0x1E69A2208];
  v4 = a3;
  v5 = [v3 sharedService];
  v6 = [v4 requestParameters];

  v7 = [v5 ticketForFeedbackRequestParameters:v6 placeForProblemContext:0 userCredentials:0 pushToken:0 allowContactBackAtEmailAddress:0 traits:0];

  v8 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v7];

  return v8;
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 forAdvisoryItems:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v15 analyticsMessageValues];

        if (v16)
        {
          v17 = [v15 analyticsMessageValues];
          [v9 addObjectsFromArray:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(MKMapService *)self _captureUserAction:v6 onTarget:v5 withAnalyticsMessageValues:v9];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 forAdvisoryItem:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = [a5 analyticsMessageValues];
  [(MKMapService *)self _captureUserAction:v6 onTarget:v5 withAnalyticsMessageValues:v8];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 forAdvisory:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = [a5 analyticsMessageValues];
  [(MKMapService *)self _captureUserAction:v6 onTarget:v5 withAnalyticsMessageValues:v8];
}

- (void)_captureUserAction:(int)a3 onTarget:(int)a4 withAnalyticsMessageValues:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = a5;
  if ([v8 count])
  {
    v7 = [v8 componentsJoinedByString:{@", "}];
    [MEMORY[0x1E69A1598] captureUserAction:v6 target:v5 value:v7];
  }
}

- (void)capturePlaceCardUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 placeCardType:(int)a8 categoriesDisplayed:(id)a9 categorySelected:(id)a10
{
  v11 = *&a8;
  v15 = *&a4;
  v16 = *&a3;
  v18 = a10;
  v19 = a9;
  v20 = a6;
  v21 = a5;
  [(MKMapService *)self siriAnalyticsDonation:v16 target:v15 resultIndex:0xFFFFFFFFLL mapItem:v20 searchCategory:v18 searchQueryString:0];
  v22 = MEMORY[0x1E69A1598];
  v23 = [v20 _geoMapItem];

  [v22 capturePlaceCardUserAction:v16 target:v15 value:v21 mapItem:v23 timestamp:v11 placeCardType:v19 categoriesDisplayed:a7 categorySelected:v18];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 categoriesDisplayed:(id)a6 categorySelected:(id)a7
{
  v9 = *&a4;
  v10 = *&a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  [(MKMapService *)self siriAnalyticsDonation:v10 target:v9 resultIndex:0xFFFFFFFFLL mapItem:0 searchCategory:v12 searchQueryString:0];
  [MEMORY[0x1E69A1598] captureUserAction:v10 target:v9 value:v14 categoriesDisplayed:v13 categorySelected:v12];
}

- (void)captureTransitPlaceCardUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 targetID:(unint64_t)a9 providerID:(id)a10 animationID:(unint64_t)a11 transitCardCategory:(int)a12 transitSystem:(id)a13 transitDepartureSequence:(id)a14 transitIncident:(id)a15
{
  v18 = *&a4;
  v19 = *&a3;
  v21 = a15;
  v22 = a14;
  v23 = a13;
  v24 = a10;
  v25 = a6;
  v26 = a5;
  [(MKMapService *)self siriAnalyticsDonation:v19 target:v18 resultIndex:a8 mapItem:v25 searchCategory:0 searchQueryString:0];
  v27 = MEMORY[0x1E69A1598];
  v31 = [v25 _geoMapItem];

  LODWORD(v28) = a12;
  [v27 captureTransitPlaceCardUserAction:v19 target:v18 value:v26 mapItem:v31 timestamp:a8 resultIndex:a9 targetID:a7 providerID:v24 animationID:a11 transitCardCategory:v28 transitSystem:v23 transitDepartureSequence:v22 transitIncident:v21];
}

- (void)capturePlaceCardUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 targetID:(unint64_t)a9 providerID:(id)a10 animationID:(unint64_t)a11 actionURL:(id)a12 photoID:(id)a13 placeCardType:(int)a14 localizedMapItemCategory:(id)a15 availableActions:(id)a16 unactionableUIElements:(id)a17 modules:(id)a18 commingledPhotoProviderIDs:(id)a19 actionRichProviderId:(id)a20 classification:(id)a21
{
  v21 = *&a8;
  v37 = a21;
  v34 = a20;
  v31 = a19;
  v30 = a18;
  v44 = a17;
  v43 = a16;
  v28 = a15;
  v29 = a13;
  v42 = a12;
  v23 = a10;
  v24 = a6;
  v33 = a5;
  v25 = v21;
  [(MKMapService *)self siriAnalyticsDonation:a3 target:a4 resultIndex:v21 mapItem:v24 searchCategory:0 searchQueryString:0];
  v26 = MEMORY[0x1E69A1598];
  v41 = [v24 _geoMapItem];

  LODWORD(v27) = a14;
  [v26 capturePlaceCardUserAction:a3 target:a4 value:v33 mapItem:v41 timestamp:v25 resultIndex:a9 targetID:a7 providerID:v23 animationID:a11 actionURL:v42 photoID:v29 placeCardType:v27 localizedMapItemCategory:v28 availableActions:v43 unactionableUIElements:v44 modules:v30 commingledRichProviderIds:v31 actionRichProviderId:v34 classification:v37];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 placeActionDetails:(id)a5 mapItem:(id)a6 resultIndex:(int)a7
{
  v7 = *&a7;
  v9 = *&a4;
  v10 = *&a3;
  v12 = a5;
  [(MKMapService *)self siriAnalyticsDonation:v10 target:v9 resultIndex:v7 mapItem:a6 searchCategory:0 searchQueryString:0];
  [MEMORY[0x1E69A1598] captureUserAction:v10 target:v9 value:0 placeActionDetails:v12];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 mapRegion:(id)a9 zoomLevel:(double)a10 mapType:(int)a11
{
  v12 = *&a8;
  v15 = *&a4;
  v16 = *&a3;
  v18 = a9;
  v19 = a6;
  [(MKMapService *)self siriAnalyticsDonation:v16 target:v15 resultIndex:v12 mapItem:v19 searchCategory:0 searchQueryString:0];
  v20 = MEMORY[0x1E69A2350];
  v21 = [v19 _geoMapItem];

  v22 = [v20 actionDetailsWithMapItem:v21 timestamp:v12 resultIndex:a7];

  [MEMORY[0x1E69A1598] captureUserAction:v16 target:v15 value:0 placeActionDetails:v22 mapRegion:v18 zoomLevel:a11 mapType:a10];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8
{
  v8 = *&a8;
  v10 = *&a4;
  v11 = *&a3;
  v13 = a6;
  [(MKMapService *)self siriAnalyticsDonation:v11 target:v10 resultIndex:v8 mapItem:v13 searchCategory:0 searchQueryString:0];
  v14 = MEMORY[0x1E69A2350];
  v15 = [v13 _geoMapItem];

  v16 = [v14 actionDetailsWithMapItem:v15 timestamp:v8 resultIndex:a7];

  [MEMORY[0x1E69A1598] captureUserAction:v11 target:0 value:0 placeActionDetails:v16];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 routeDetails:(id)a6
{
  v7 = *&a4;
  v8 = *&a3;
  v10 = a6;
  v11 = a5;
  -[MKMapService siriAnalyticsDonation:target:resultIndex:mapItem:searchCategory:searchQueryString:](self, "siriAnalyticsDonation:target:resultIndex:mapItem:searchCategory:searchQueryString:", v8, v7, [v10 resultIndex], 0, 0, 0);
  [MEMORY[0x1E69A1598] captureUserAction:v8 target:v7 value:v11 routeDetails:v10];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 queryString:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  [(MKMapService *)self siriAnalyticsDonation:*&a3 target:*&a4 resultIndex:0xFFFFFFFFLL mapItem:0 searchCategory:0 searchQueryString:a5];
  v7 = MEMORY[0x1E69A1598];

  [v7 captureUserAction:v6 target:v5 value:0];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = a5;
  [(MKMapService *)self siriAnalyticsDonation:v6 target:v5 resultIndex:0xFFFFFFFFLL mapItem:0 searchCategory:0 searchQueryString:0];
  [MEMORY[0x1E69A1598] captureUserAction:v6 target:v5 value:v8];
}

- (void)siriAnalyticsDonation:(int)a3 target:(int)a4 resultIndex:(int)a5 mapItem:(id)a6 searchCategory:(id)a7 searchQueryString:(id)a8
{
  v10 = *&a5;
  v11 = *&a4;
  v12 = *&a3;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = [[MKSiriInteraction alloc] initWithGEOUIAction:v12 target:v11 mapItem:v15 resultIndex:v10 searchCategory:v14 searchQueryString:v13];

  [(MKSiriInteraction *)v16 donateIfWanted];
}

- (id)feedbackTicketForFitnessRAPReport:(id)a3
{
  v3 = MEMORY[0x1E69A2208];
  v4 = a3;
  v5 = [v3 sharedService];
  v6 = [v4 requestParameters];

  v7 = [v5 ticketForFeedbackRequestParameters:v6 placeForProblemContext:0 userCredentials:0 pushToken:0 allowContactBackAtEmailAddress:0 traits:0];

  v8 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v7];

  return v8;
}

- (id)stylingForWalletCategory:(id)a3
{
  v3 = [MEMORY[0x1E69A2778] styleAttributesForWalletCategory:a3];
  if (v3)
  {
    v4 = [[MKWalletMerchantStylingInfo alloc] initWithStyleAttributes:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ticketForWalletMerchantLookupRequest:(id)a3 traits:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_mkMapServiceWalletMerchantTicket alloc] initWithRequest:v6 traits:v5];

  return v7;
}

@end
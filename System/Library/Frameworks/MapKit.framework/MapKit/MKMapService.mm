@interface MKMapService
+ (id)sharedService;
- (id)_mk_ticketForSearchQuery:(id)query completionItem:(id)item traits:(id)traits filters:(id)filters;
- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal includeEntryPoints:(BOOL)points preserveOriginalLocation:(BOOL)location traits:(id)traits;
- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)coordinate includeEntryPoints:(BOOL)points preserveOriginalLocation:(BOOL)location traits:(id)traits;
- (id)_ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(id)ordinal traits:(id)traits;
- (id)defaultTraitsForAnalyticsWithTraits:(id)traits;
- (id)defaultTraitsWithTraits:(id)traits;
- (id)defaultTraitsWithTransportType:(unint64_t)type;
- (id)feedbackTicketForFitnessRAPReport:(id)report;
- (id)feedbackTicketForWalletRAPReport:(id)report;
- (id)mapItemsForPlacesInDetails:(id)details;
- (id)searchAroundPOITicketWithIdentifier:(id)identifier categoryID:(id)d maxResults:(unsigned int)results traits:(id)traits;
- (id)stylingForWalletCategory:(id)category;
- (id)ticketForAllCollectionViewWithBatchSize:(unsigned int)size keywordFilter:(id)filter addressFilter:(id)addressFilter withTraits:(id)traits;
- (id)ticketForBrandLookupWithIMessageUid:(id)uid traits:(id)traits;
- (id)ticketForCanonicalLocationSearchQueryString:(id)string traits:(id)traits;
- (id)ticketForCategory:(id)category maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data;
- (id)ticketForCategoryListWithTraits:(id)traits isFromNoQueryState:(BOOL)state;
- (id)ticketForChildPlace:(id)place traits:(id)traits;
- (id)ticketForCitySelectorViewWithTraits:(id)traits batchSize:(unsigned int)size;
- (id)ticketForCuratedCollectionItems:(id)items collection:(id)collection traits:(id)traits;
- (id)ticketForCuratedCollections:(id)collections isBatchLookup:(BOOL)lookup overrideSuppress:(BOOL)suppress traits:(id)traits;
- (id)ticketForExploreGuidesLookupParameters:(id)parameters traits:(id)traits;
- (id)ticketForExternalBusinessID:(id)d contentProvider:(id)provider traits:(id)traits;
- (id)ticketForExternalTransitStationCodes:(id)codes sourceID:(id)d transactionDate:(id)date transactionLocation:(id)location traits:(id)traits;
- (id)ticketForFeedbackRequest:(id)request traits:(id)traits;
- (id)ticketForFeedbackRequestData:(id)data traits:(id)traits;
- (id)ticketForFeedbackRequestParameters:(id)parameters mapItemForProblemContext:(id)context userCredentials:(id)credentials pushToken:(id)token allowContactBackAtEmailAddress:(id)address traits:(id)traits;
- (id)ticketForForwardGeocodeAddress:(id)address traits:(id)traits;
- (id)ticketForForwardGeocodeAddressDictionary:(id)dictionary traits:(id)traits;
- (id)ticketForForwardGeocodeString:(id)string traits:(id)traits;
- (id)ticketForFreshBusinessClaimComponentWithIdentifier:(id)identifier resultProviderID:(int)d traits:(id)traits;
- (id)ticketForFreshIdentifier:(id)identifier resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits;
- (id)ticketForGuideHomeWithFilter:(id)filter guideLocation:(id)location withTraits:(id)traits;
- (id)ticketForHikingIntroTip:(id)tip traits:(id)traits;
- (id)ticketForIdentifiers:(id)identifiers resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits;
- (id)ticketForMUIDs:(id)ds resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits;
- (id)ticketForMapItemToRefine:(id)refine traits:(id)traits;
- (id)ticketForMerchantCode:(id)code rawMerchantCode:(id)merchantCode industryCategory:(id)category industryCode:(id)industryCode paymentNetwork:(id)network transactionDate:(id)date transactionLocation:(id)location traits:(id)self0;
- (id)ticketForNearbyTransitDeparturesWithLookupOrigin:(id)origin userLocation:(id)location traits:(id)traits;
- (id)ticketForNearestTransitStation:(id)station coordinate:(CLLocationCoordinate2D)coordinate traits:(id)traits;
- (id)ticketForNonExpiredIdentifier:(id)identifier resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits;
- (id)ticketForPhoneNumbers:(id)numbers allowCellularDataForLookup:(BOOL)lookup traits:(id)traits;
- (id)ticketForPlaceDescriptorResolution:(id)resolution traits:(id)traits;
- (id)ticketForPlaceEnrichmentWithEnrichmentInfo:(id)info mapsIdentifier:(id)identifier traits:(id)traits;
- (id)ticketForPlaceLookupWithSearchCategory:(id)category parentMuid:(unint64_t)muid traits:(id)traits;
- (id)ticketForPlaceRefinementRequestWithCoordinate:(CLLocationCoordinate2D *)coordinate addressLine:(id)line placeName:(id)name traits:(id)traits;
- (id)ticketForPublisherViewPublisherIdentifier:(id)identifier keywordFilter:(id)filter addressFilter:(id)addressFilter batchSize:(unsigned int)size withTraits:(id)traits;
- (id)ticketForRefreshingEVChargersWithIdentifiers:(id)identifiers traits:(id)traits;
- (id)ticketForRelatedPlaceList:(id)list traits:(id)traits;
- (id)ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal traits:(id)traits;
- (id)ticketForReverseGeocodeLocation:(id)location preserveOriginalLocation:(BOOL)originalLocation traits:(id)traits;
- (id)ticketForReverseGeocodeLocation:(id)location traits:(id)traits;
- (id)ticketForSearchAlongRouteWithCategory:(id)category searchQuery:(id)query completionItem:(id)item originalWaypointRouteData:(id)data zilchData:(id)zilchData sessionState:(id)state routeId:(id)id routeAttributes:(id)self0 maxResults:(unsigned int)self1 traits:(id)self2 searchSessionData:(id)self3;
- (id)ticketForSearchCategory:(id)category venueIdentifier:(id)identifier maxResults:(unsigned int)results traits:(id)traits;
- (id)ticketForSearchFieldOfflinePlaceholderWithTraits:(id)traits;
- (id)ticketForSearchFieldPlaceholderWithTraits:(id)traits;
- (id)ticketForSearchHomeWithTraits:(id)traits;
- (id)ticketForSearchPoisForBrandMUID:(unint64_t)d traits:(id)traits;
- (id)ticketForSearchQuery:(id)query completionItem:(id)item relatedSearchSuggestion:(id)suggestion maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data;
- (id)ticketForSearchQuery:(id)query completionItem:(id)item retainedSearch:(id)search maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data;
- (id)ticketForSearchQuery:(id)query filters:(id)filters maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data;
- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius pointOfInterestFilter:(id)filter maxResultCount:(int64_t)count;
- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius pointOfInterestFilter:(id)filter maxResultCount:(int64_t)count source:(int64_t)source;
- (id)ticketForSpatialPlaceLookupWithMapRegion:(id)region pointOfInterestFilter:(id)filter maxResultCount:(int64_t)count;
- (id)ticketForTransitDeparturesAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names traits:(id)traits;
- (id)ticketForTransitLines:(id)lines traits:(id)traits;
- (id)ticketForTransitScheduleAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names routingParameters:(id)parameters traits:(id)traits;
- (id)ticketForTransitTripDetailsAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names routingParameters:(id)parameters traits:(id)traits;
- (id)ticketForURLQuery:(id)query identifier:(id)identifier resultProviderId:(int)id contentProvider:(id)provider maxResults:(unsigned int)results traits:(id)traits;
- (id)ticketForUpdatedTransitScheduleDetailsAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names routingParameters:(id)parameters traits:(id)traits;
- (id)ticketForWalletMerchantLookupRequest:(id)request traits:(id)traits;
- (void)_captureUserAction:(int)action onTarget:(int)target withAnalyticsMessageValues:(id)values;
- (void)_mapItemsForResponseData:(id)data handler:(id)handler;
- (void)capturePlaceCardUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp placeCardType:(int)type categoriesDisplayed:(id)displayed categorySelected:(id)self0;
- (void)capturePlaceCardUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index targetID:(unint64_t)d providerID:(id)self0 animationID:(unint64_t)self1 actionURL:(id)self2 photoID:(id)self3 placeCardType:(int)self4 localizedMapItemCategory:(id)self5 availableActions:(id)self6 unactionableUIElements:(id)self7 modules:(id)self8 commingledPhotoProviderIDs:(id)self9 actionRichProviderId:(id)id classification:(id)classification;
- (void)captureTransitPlaceCardUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index targetID:(unint64_t)d providerID:(id)self0 animationID:(unint64_t)self1 transitCardCategory:(int)self2 transitSystem:(id)self3 transitDepartureSequence:(id)self4 transitIncident:(id)self5;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value categoriesDisplayed:(id)displayed categorySelected:(id)selected;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index mapRegion:(id)region zoomLevel:(double)self0 mapType:(int)self1;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value routeDetails:(id)details;
- (void)captureUserAction:(int)action onTarget:(int)target forAdvisory:(id)advisory;
- (void)captureUserAction:(int)action onTarget:(int)target forAdvisoryItem:(id)item;
- (void)captureUserAction:(int)action onTarget:(int)target forAdvisoryItems:(id)items;
- (void)captureUserAction:(int)action onTarget:(int)target placeActionDetails:(id)details mapItem:(id)item resultIndex:(int)index;
- (void)captureUserAction:(int)action onTarget:(int)target queryString:(id)string;
- (void)siriAnalyticsDonation:(int)donation target:(int)target resultIndex:(int)index mapItem:(id)item searchCategory:(id)category searchQueryString:(id)string;
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

- (id)ticketForHikingIntroTip:(id)tip traits:(id)traits
{
  tipCopy = tip;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  geoMapItemIdentifier = [tipCopy geoMapItemIdentifier];

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v10 = [mEMORY[0x1E69A2208] ticketForHikingIntroTipWithMapItemIdentifier:geoMapItemIdentifier traits:v7];

  v11 = [[_MKPlaceHikingIntroTipTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForSpatialPlaceLookupWithMapRegion:(id)region pointOfInterestFilter:(id)filter maxResultCount:(int64_t)count
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69A25A8];
  filterCopy = filter;
  regionCopy = region;
  v10 = [v7 alloc];
  _geoPOICategoryFilter = [filterCopy _geoPOICategoryFilter];

  v12 = [v10 initWithMapRegion:regionCopy poiCategoryFilter:_geoPOICategoryFilter maxResultCount:count];
  v13 = [_MKSpatialPlaceLookupTicket alloc];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v19[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v16 = [mEMORY[0x1E69A2208] ticketForSpatialPlaceLookupParameters:v15 traits:0];
  v17 = [(_MKSpatialPlaceLookupTicket *)v13 initWithTicket:v16];

  return v17;
}

- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius pointOfInterestFilter:(id)filter maxResultCount:(int64_t)count
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E69A25A8];
  filterCopy = filter;
  v12 = [v10 alloc];
  _geoPOICategoryFilter = [filterCopy _geoPOICategoryFilter];

  v14 = [v12 initWithCoordinate:_geoPOICategoryFilter radius:count poiCategoryFilter:latitude maxResultCount:{longitude, radius}];
  v15 = [_MKSpatialPlaceLookupTicket alloc];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v21[0] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = [mEMORY[0x1E69A2208] ticketForSpatialPlaceLookupParameters:v17 traits:0];
  v19 = [(_MKSpatialPlaceLookupTicket *)v15 initWithTicket:v18];

  return v19;
}

- (id)ticketForSpatialPlaceLookupWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius pointOfInterestFilter:(id)filter maxResultCount:(int64_t)count source:(int64_t)source
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E69A25A8];
  filterCopy = filter;
  v14 = [v12 alloc];
  _geoPOICategoryFilter = [filterCopy _geoPOICategoryFilter];

  v16 = [v14 initWithCoordinate:_geoPOICategoryFilter radius:count poiCategoryFilter:source maxResultCount:latitude source:{longitude, radius}];
  v17 = [_MKSpatialPlaceLookupTicket alloc];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v23[0] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20 = [mEMORY[0x1E69A2208] ticketForSpatialPlaceLookupParameters:v19 traits:0];
  v21 = [(_MKSpatialPlaceLookupTicket *)v17 initWithTicket:v20];

  return v21;
}

- (id)ticketForRefreshingEVChargersWithIdentifiers:(id)identifiers traits:(id)traits
{
  identifiersCopy = identifiers;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  v8 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(identifiersCopy);

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v10 = [mEMORY[0x1E69A2208] ticketForRefreshingEVChargersWithIdentifiers:v8 traits:v7];

  v11 = [[_MKPlaceEVChargerTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForExploreGuidesLookupParameters:(id)parameters traits:(id)traits
{
  parametersCopy = parameters;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = [mEMORY[0x1E69A2208] ticketForExploreGuidesLookupParameters:parametersCopy traits:v7];

  v10 = [[_MKExploreGuidesTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForPlaceEnrichmentWithEnrichmentInfo:(id)info mapsIdentifier:(id)identifier traits:(id)traits
{
  identifierCopy = identifier;
  infoCopy = info;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];

  v13 = [mEMORY[0x1E69A2208] ticketForPlaceEnrichmentWithEnrichmentInfo:infoCopy mapsIdentifier:geoMapItemIdentifier traits:v10];

  v14 = [[_MKPlaceEnrichmentTicket alloc] initWithTicket:v13];

  return v14;
}

- (id)ticketForCitySelectorViewWithTraits:(id)traits batchSize:(unsigned int)size
{
  v4 = *&size;
  v5 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v7 = [mEMORY[0x1E69A2208] ticketForCitySelectorViewWithTraits:v5 batchSize:v4];

  v8 = [[_MKCitySelectorViewTicket alloc] initWithTicket:v7];

  return v8;
}

- (id)ticketForAllCollectionViewWithBatchSize:(unsigned int)size keywordFilter:(id)filter addressFilter:(id)addressFilter withTraits:(id)traits
{
  v8 = *&size;
  addressFilterCopy = addressFilter;
  filterCopy = filter;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208] ticketForAllCollectionViewWithBatchSize:v8 keywordFilter:filterCopy addressFilter:addressFilterCopy withTraits:v12];

  v15 = [[_MKAllCollectionsViewTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForCuratedCollectionItems:(id)items collection:(id)collection traits:(id)traits
{
  collectionCopy = collection;
  itemsCopy = items;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v12 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(itemsCopy);

  geoMapItemIdentifier = [collectionCopy geoMapItemIdentifier];

  v14 = [mEMORY[0x1E69A2208] ticketForCuratedCollectionItems:v12 collection:geoMapItemIdentifier traits:v10];

  v15 = [[_MKCuratedCollectionItemsTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForCuratedCollections:(id)collections isBatchLookup:(BOOL)lookup overrideSuppress:(BOOL)suppress traits:(id)traits
{
  suppressCopy = suppress;
  lookupCopy = lookup;
  collectionsCopy = collections;
  v11 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v13 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(collectionsCopy);

  v14 = [mEMORY[0x1E69A2208] ticketForCuratedCollections:v13 isBatchLookup:lookupCopy overrideSuppress:suppressCopy traits:v11];

  v15 = [[_MKCuratedCollectionTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForGuideHomeWithFilter:(id)filter guideLocation:(id)location withTraits:(id)traits
{
  locationCopy = location;
  filterCopy = filter;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v12 = [mEMORY[0x1E69A2208] ticketForGuideHomeWithFilter:filterCopy guideLocation:locationCopy withTraits:v10];

  v13 = [[_MKGuideHomeViewTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForPublisherViewPublisherIdentifier:(id)identifier keywordFilter:(id)filter addressFilter:(id)addressFilter batchSize:(unsigned int)size withTraits:(id)traits
{
  v8 = *&size;
  addressFilterCopy = addressFilter;
  filterCopy = filter;
  identifierCopy = identifier;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];

  v18 = [mEMORY[0x1E69A2208] ticketForPublisherViewPublisherIdentifier:geoMapItemIdentifier keywordFilter:filterCopy addressFilter:addressFilterCopy batchSize:v8 withTraits:v15];

  v19 = [[_MKPublisherViewTicket alloc] initWithTicket:v18];

  return v19;
}

- (id)ticketForSearchHomeWithTraits:(id)traits
{
  v3 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v5 = [mEMORY[0x1E69A2208] ticketForSearchHomeWithTraits:v3];

  v6 = [[_MKSearchHomeTicket alloc] initWithTicket:v5];

  return v6;
}

- (id)ticketForNearestTransitStation:(id)station coordinate:(CLLocationCoordinate2D)coordinate traits:(id)traits
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  stationCopy = station;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  geoMapItemIdentifier = [stationCopy geoMapItemIdentifier];

  v13 = [mEMORY[0x1E69A2208] ticketForNearestTransitStation:geoMapItemIdentifier coordinate:v10 traits:{latitude, longitude}];

  v14 = [[_MKTicket alloc] initWithTicket:v13];

  return v14;
}

- (id)ticketForTransitLines:(id)lines traits:(id)traits
{
  linesCopy = lines;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(linesCopy);

  v10 = [mEMORY[0x1E69A2208] ticketForTransitLines:v9 withTraits:v7];

  v11 = [[_MKTransitLineTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForChildPlace:(id)place traits:(id)traits
{
  v14[1] = *MEMORY[0x1E69E9840];
  placeCopy = place;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  identifier = [placeCopy identifier];

  v14[0] = identifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [mEMORY[0x1E69A2208] ticketForIdentifiers:v10 traits:v7];

  v12 = [[_MKTicket alloc] initWithTicket:v11];

  return v12;
}

- (id)mapItemsForPlacesInDetails:(id)details
{
  v19 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v5 = [mEMORY[0x1E69A2208] _geoMapItemsForPlacesInDetails:detailsCopy];

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

- (id)ticketForBrandLookupWithIMessageUid:(id)uid traits:(id)traits
{
  uidCopy = uid;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = [mEMORY[0x1E69A2208] ticketForBrandLookupWithIMessageUid:uidCopy traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForFeedbackRequestData:(id)data traits:(id)traits
{
  v5 = MEMORY[0x1E69A2208];
  traitsCopy = traits;
  dataCopy = data;
  sharedService = [v5 sharedService];
  v9 = [sharedService ticketForFeedbackRequestData:dataCopy traits:traitsCopy];

  v10 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v9];

  return v10;
}

- (id)ticketForFeedbackRequest:(id)request traits:(id)traits
{
  v5 = MEMORY[0x1E69A2208];
  traitsCopy = traits;
  requestCopy = request;
  sharedService = [v5 sharedService];
  v9 = [sharedService ticketForFeedbackRequest:requestCopy traits:traitsCopy];

  v10 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v9];

  return v10;
}

- (id)ticketForFeedbackRequestParameters:(id)parameters mapItemForProblemContext:(id)context userCredentials:(id)credentials pushToken:(id)token allowContactBackAtEmailAddress:(id)address traits:(id)traits
{
  v13 = MEMORY[0x1E69A2208];
  traitsCopy = traits;
  addressCopy = address;
  tokenCopy = token;
  credentialsCopy = credentials;
  contextCopy = context;
  parametersCopy = parameters;
  sharedService = [v13 sharedService];
  _geoMapItem = [contextCopy _geoMapItem];

  v22 = [sharedService ticketForFeedbackRequestParameters:parametersCopy placeForProblemContext:_geoMapItem userCredentials:credentialsCopy pushToken:tokenCopy allowContactBackAtEmailAddress:addressCopy traits:traitsCopy];

  v23 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v22];

  return v23;
}

- (void)_mapItemsForResponseData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = MEMORY[0x1E69A2208];
    dataCopy = data;
    sharedService = [v6 sharedService];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__MKMapService__mapItemsForResponseData_handler___block_invoke;
    v9[3] = &unk_1E76C8490;
    v10 = handlerCopy;
    [sharedService _geoMapItemsForResponseData:dataCopy handler:v9];
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

- (id)_mk_ticketForSearchQuery:(id)query completionItem:(id)item traits:(id)traits filters:(id)filters
{
  filtersCopy = filters;
  itemCopy = item;
  queryCopy = query;
  v13 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  [v13 setIsAPICall:1];
  Integer = GEOConfigGetInteger();
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v16 = [mEMORY[0x1E69A2208] ticketForSearchQuery:queryCopy filters:filtersCopy completionItem:itemCopy retainedSearch:0 maxResults:Integer suppressResultsRequiringAttribution:1 traits:v13 searchSessionData:0];

  v17 = [[_MKSearchTicket alloc] initWithSearchTicket:v16];

  return v17;
}

- (id)ticketForSearchFieldOfflinePlaceholderWithTraits:(id)traits
{
  v3 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v5 = [mEMORY[0x1E69A2208] ticketForSearchCapabilitiesWithTraits:v3];

  v6 = [[_MKSearchFieldOfflinePlaceholderTicket alloc] initWithTicket:v5];

  return v6;
}

- (id)ticketForSearchFieldPlaceholderWithTraits:(id)traits
{
  v3 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v5 = [mEMORY[0x1E69A2208] ticketForSearchFieldPlaceholderWithTraits:v3];

  v6 = [[_MKSearchFieldPlaceholderTicket alloc] initWithTicket:v5];

  return v6;
}

- (id)ticketForSearchCategory:(id)category venueIdentifier:(id)identifier maxResults:(unsigned int)results traits:(id)traits
{
  v7 = *&results;
  identifierCopy = identifier;
  categoryCopy = category;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208] ticketForSearchCategory:categoryCopy venueIdentifier:identifierCopy maxResults:v7 traits:v12];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForSearchQuery:(id)query filters:(id)filters maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data
{
  v8 = *&results;
  dataCopy = data;
  filtersCopy = filters;
  queryCopy = query;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v17 = [mEMORY[0x1E69A2208] ticketForSearchQuery:queryCopy filters:filtersCopy maxResults:v8 traits:v15 searchSessionData:dataCopy];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForSearchAlongRouteWithCategory:(id)category searchQuery:(id)query completionItem:(id)item originalWaypointRouteData:(id)data zilchData:(id)zilchData sessionState:(id)state routeId:(id)id routeAttributes:(id)self0 maxResults:(unsigned int)self1 traits:(id)self2 searchSessionData:(id)self3
{
  sessionDataCopy = sessionData;
  attributesCopy = attributes;
  idCopy = id;
  stateCopy = state;
  zilchDataCopy = zilchData;
  dataCopy = data;
  itemCopy = item;
  queryCopy = query;
  categoryCopy = category;
  v34 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  LODWORD(v27) = results;
  v24 = [mEMORY[0x1E69A2208] ticketForSearchAlongRouteWithCategory:categoryCopy searchQuery:queryCopy completionItem:itemCopy originalWaypointRouteData:dataCopy zilchData:zilchDataCopy sessionState:stateCopy routeId:idCopy routeAttributes:attributesCopy maxResults:v27 traits:v34 searchSessionData:sessionDataCopy];

  v25 = [[_MKTicket alloc] initWithTicket:v24];

  return v25;
}

- (id)searchAroundPOITicketWithIdentifier:(id)identifier categoryID:(id)d maxResults:(unsigned int)results traits:(id)traits
{
  v7 = *&results;
  dCopy = d;
  identifierCopy = identifier;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v15 = [mEMORY[0x1E69A2208] searchAroundPOITicketWithIdentifier:geoMapItemIdentifier categoryID:dCopy maxResults:v7 traits:v12];

  v16 = [(_MKTicket *)[_MKSearchTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForCategory:(id)category maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data
{
  v7 = *&results;
  dataCopy = data;
  categoryCopy = category;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208] ticketforCategory:categoryCopy maxResults:v7 traits:v12 searchSessionData:dataCopy];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForRelatedPlaceList:(id)list traits:(id)traits
{
  listCopy = list;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mapIdentifiers = [listCopy mapIdentifiers];

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v10 = [mEMORY[0x1E69A2208] ticketForIdentifiers:mapIdentifiers traits:v7];

  v11 = [[_MKTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)ticketForNearbyTransitDeparturesWithLookupOrigin:(id)origin userLocation:(id)location traits:(id)traits
{
  locationCopy = location;
  originCopy = origin;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v12 = [mEMORY[0x1E69A2208] ticketForNearbyTransitDeparturesWithLookupOrigin:originCopy userLocation:locationCopy traits:v10];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForUpdatedTransitScheduleDetailsAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names routingParameters:(id)parameters traits:(id)traits
{
  namesCopy = names;
  parametersCopy = parameters;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v17 = [mEMORY[0x1E69A2208] ticketForUpdatedTransitScheduleDetailsAtStation:station line:line referenceTripID:d includeAllDirectionNames:namesCopy routingParameters:parametersCopy traits:v15];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForTransitDeparturesAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names traits:(id)traits
{
  namesCopy = names;
  v11 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v13 = [mEMORY[0x1E69A2208] ticketForTransitDeparturesAtStation:station line:line referenceTripID:d includeAllDirectionNames:namesCopy traits:v11];

  v14 = [[_MKTicket alloc] initWithTicket:v13];

  return v14;
}

- (id)ticketForTransitTripDetailsAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names routingParameters:(id)parameters traits:(id)traits
{
  namesCopy = names;
  parametersCopy = parameters;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v17 = [mEMORY[0x1E69A2208] ticketForTransitTripDetailsAtStation:station line:line referenceTripID:d includeAllDirectionNames:namesCopy routingParameters:parametersCopy traits:v15];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForTransitScheduleAtStation:(unint64_t)station line:(unint64_t)line referenceTripID:(unint64_t)d includeAllDirectionNames:(BOOL)names routingParameters:(id)parameters traits:(id)traits
{
  namesCopy = names;
  parametersCopy = parameters;
  v15 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v17 = [mEMORY[0x1E69A2208] ticketForTransitScheduleAtStation:station line:line referenceTripID:d includeAllDirectionNames:namesCopy routingParameters:parametersCopy traits:v15];

  v18 = [[_MKTicket alloc] initWithTicket:v17];

  return v18;
}

- (id)ticketForCategoryListWithTraits:(id)traits isFromNoQueryState:(BOOL)state
{
  stateCopy = state;
  v5 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v7 = [mEMORY[0x1E69A2208] ticketForCategoryListWithTraits:v5 isFromNoQueryState:stateCopy];

  v8 = [[_MKCategoriesTicket alloc] initWithTicket:v7];

  return v8;
}

- (id)ticketForPlaceLookupWithSearchCategory:(id)category parentMuid:(unint64_t)muid traits:(id)traits
{
  categoryCopy = category;
  v9 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v11 = [mEMORY[0x1E69A2208] ticketForPlaceLookupWithSearchCategory:categoryCopy parentMuid:muid traits:v9];

  v12 = [(_MKTicket *)[_MKSearchTicket alloc] initWithTicket:v11];

  return v12;
}

- (id)ticketForSearchPoisForBrandMUID:(unint64_t)d traits:(id)traits
{
  v5 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v7 = [mEMORY[0x1E69A2208] ticketForSearchPoisForBrandMUID:d traits:v5];

  v8 = [[_MKSearchTicket alloc] initWithSearchTicket:v7];

  return v8;
}

- (id)ticketForURLQuery:(id)query identifier:(id)identifier resultProviderId:(int)id contentProvider:(id)provider maxResults:(unsigned int)results traits:(id)traits
{
  v9 = *&results;
  v10 = *&id;
  providerCopy = provider;
  identifierCopy = identifier;
  queryCopy = query;
  v17 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];

  v20 = [mEMORY[0x1E69A2208] ticketForURLQuery:queryCopy identifier:geoMapItemIdentifier resultProviderId:v10 contentProvider:providerCopy maxResults:v9 traits:v17];

  v21 = [[_MKSearchTicket alloc] initWithSearchTicket:v20];

  return v21;
}

- (id)ticketForSearchQuery:(id)query completionItem:(id)item relatedSearchSuggestion:(id)suggestion maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data
{
  v9 = *&results;
  dataCopy = data;
  suggestionCopy = suggestion;
  itemCopy = item;
  queryCopy = query;
  v18 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v20 = [mEMORY[0x1E69A2208] ticketForSearchQuery:queryCopy completionItem:itemCopy relatedSearchSuggestion:suggestionCopy retainedSearch:0 maxResults:v9 traits:v18 searchSessionData:dataCopy];

  v21 = [[_MKSearchTicket alloc] initWithSearchTicket:v20];

  return v21;
}

- (id)ticketForSearchQuery:(id)query completionItem:(id)item retainedSearch:(id)search maxResults:(unsigned int)results traits:(id)traits searchSessionData:(id)data
{
  v9 = *&results;
  dataCopy = data;
  searchCopy = search;
  itemCopy = item;
  queryCopy = query;
  v18 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v20 = [mEMORY[0x1E69A2208] ticketForSearchQuery:queryCopy completionItem:itemCopy retainedSearch:searchCopy maxResults:v9 traits:v18 searchSessionData:dataCopy];

  v21 = [[_MKSearchTicket alloc] initWithSearchTicket:v20];

  return v21;
}

- (id)ticketForExternalTransitStationCodes:(id)codes sourceID:(id)d transactionDate:(id)date transactionLocation:(id)location traits:(id)traits
{
  locationCopy = location;
  dateCopy = date;
  dCopy = d;
  codesCopy = codes;
  v16 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v18 = [mEMORY[0x1E69A2208] ticketForExternalTransitStationCodes:codesCopy sourceID:dCopy transactionDate:dateCopy transactionLocation:locationCopy traits:v16];

  v19 = [[_MKTicket alloc] initWithTicket:v18];

  return v19;
}

- (id)ticketForMerchantCode:(id)code rawMerchantCode:(id)merchantCode industryCategory:(id)category industryCode:(id)industryCode paymentNetwork:(id)network transactionDate:(id)date transactionLocation:(id)location traits:(id)self0
{
  locationCopy = location;
  dateCopy = date;
  networkCopy = network;
  industryCodeCopy = industryCode;
  categoryCopy = category;
  merchantCodeCopy = merchantCode;
  codeCopy = code;
  v24 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v26 = [mEMORY[0x1E69A2208] ticketForMerchantCode:codeCopy rawMerchantCode:merchantCodeCopy industryCategory:categoryCopy industryCode:industryCodeCopy paymentNetwork:networkCopy transactionDate:dateCopy transactionLocation:locationCopy traits:v24];

  v27 = [[_MKTicket alloc] initWithTicket:v26];

  return v27;
}

- (id)ticketForCanonicalLocationSearchQueryString:(id)string traits:(id)traits
{
  stringCopy = string;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = [mEMORY[0x1E69A2208] ticketForCanonicalLocationSearchQueryString:stringCopy traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForPlaceRefinementRequestWithCoordinate:(CLLocationCoordinate2D *)coordinate addressLine:(id)line placeName:(id)name traits:(id)traits
{
  nameCopy = name;
  lineCopy = line;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208] ticketForPlaceRefinementRequestWithCoordinate:coordinate addressLine:lineCopy placeName:nameCopy traits:v12];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForMapItemToRefine:(id)refine traits:(id)traits
{
  refineCopy = refine;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  _geoMapItem = [refineCopy _geoMapItem];

  v10 = [mEMORY[0x1E69A2208] ticketForMapItemToRefine:_geoMapItem traits:v7];

  v11 = [[_MKTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)_ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(id)ordinal traits:(id)traits
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  ordinalCopy = ordinal;
  traitsCopy = traits;
  if (ordinalCopy && ([ordinalCopy integerValue], (NSIntegerIsValidFloorOrdinal() & 1) != 0))
  {
    longitude = -[MKMapService _ticketForReverseGeocodeCoordinate:floorOrdinal:includeEntryPoints:preserveOriginalLocation:traits:](self, "_ticketForReverseGeocodeCoordinate:floorOrdinal:includeEntryPoints:preserveOriginalLocation:traits:", [ordinalCopy intValue], 0, 1, traitsCopy, latitude, longitude);
  }

  else
  {
    longitude = [(MKMapService *)self _ticketForReverseGeocodeCoordinate:0 includeEntryPoints:1 preserveOriginalLocation:traitsCopy traits:latitude, longitude];
  }

  v12 = longitude;

  return v12;
}

- (id)ticketForReverseGeocodeDroppedPinCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal traits:(id)traits
{
  v5 = *&ordinal;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = MEMORY[0x1E696AD98];
  traitsCopy = traits;
  v11 = [v9 numberWithInt:v5];
  longitude = [(MKMapService *)self _ticketForReverseGeocodeDroppedPinCoordinate:v11 floorOrdinal:traitsCopy traits:latitude, longitude];

  return longitude;
}

- (id)ticketForReverseGeocodeLocation:(id)location preserveOriginalLocation:(BOOL)originalLocation traits:(id)traits
{
  originalLocationCopy = originalLocation;
  locationCopy = location;
  v9 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  v10 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v12 = [mEMORY[0x1E69A2208] ticketForReverseGeocodeLocation:v10 preserveOriginalLocation:originalLocationCopy placeTypeLimit:0 traits:v9];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForReverseGeocodeLocation:(id)location traits:(id)traits
{
  locationCopy = location;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  v8 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v10 = [mEMORY[0x1E69A2208] ticketForReverseGeocodeLocation:v8 traits:v7];

  v11 = [[_MKTicket alloc] initWithTicket:v10];

  return v11;
}

- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal includeEntryPoints:(BOOL)points preserveOriginalLocation:(BOOL)location traits:(id)traits
{
  locationCopy = location;
  pointsCopy = points;
  v9 = *&ordinal;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208] ticketForReverseGeocodeCoordinate:v9 floor:pointsCopy includeEntryPoints:0 shiftLocationsIfNeeded:locationCopy preserveOriginalLocation:v12 traits:{latitude, longitude}];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)_ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)coordinate includeEntryPoints:(BOOL)points preserveOriginalLocation:(BOOL)location traits:(id)traits
{
  locationCopy = location;
  pointsCopy = points;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v12 = [mEMORY[0x1E69A2208] ticketForReverseGeocodeCoordinate:pointsCopy includeEntryPoints:0 shiftLocationsIfNeeded:locationCopy preserveOriginalLocation:v10 traits:{latitude, longitude}];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForForwardGeocodeAddressDictionary:(id)dictionary traits:(id)traits
{
  dictionaryCopy = dictionary;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = [mEMORY[0x1E69A2208] ticketForForwardGeocodeAddressDictionary:dictionaryCopy maxResults:0 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForForwardGeocodeString:(id)string traits:(id)traits
{
  stringCopy = string;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = [mEMORY[0x1E69A2208] ticketForForwardGeocodeString:stringCopy maxResults:0 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForForwardGeocodeAddress:(id)address traits:(id)traits
{
  addressCopy = address;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = [mEMORY[0x1E69A2208] ticketForForwardGeocodeAddress:addressCopy maxResults:0 traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)ticketForExternalBusinessID:(id)d contentProvider:(id)provider traits:(id)traits
{
  providerCopy = provider;
  dCopy = d;
  v10 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v12 = [mEMORY[0x1E69A2208] ticketForExternalBusinessID:dCopy contentProvider:providerCopy traits:v10];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForPhoneNumbers:(id)numbers allowCellularDataForLookup:(BOOL)lookup traits:(id)traits
{
  lookupCopy = lookup;
  v7 = MEMORY[0x1E69A2208];
  traitsCopy = traits;
  numbersCopy = numbers;
  sharedService = [v7 sharedService];
  v11 = [sharedService ticketForPhoneNumbers:numbersCopy allowCellularDataForLookup:lookupCopy traits:traitsCopy];

  v12 = [[_MKTicket alloc] initWithTicket:v11];

  return v12;
}

- (id)ticketForFreshBusinessClaimComponentWithIdentifier:(id)identifier resultProviderID:(int)d traits:(id)traits
{
  v6 = *&d;
  identifierCopy = identifier;
  v9 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];

  v12 = [mEMORY[0x1E69A2208] ticketForFreshBusinessClaimComponentWithIdentifier:geoMapItemIdentifier resultProviderID:v6 traits:v9];

  v13 = [[_MKTicket alloc] initWithTicket:v12];

  return v13;
}

- (id)ticketForNonExpiredIdentifier:(id)identifier resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits
{
  v7 = *&d;
  providerCopy = provider;
  identifierCopy = identifier;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];

  v15 = [mEMORY[0x1E69A2208] ticketForNonExpiredIdentifier:geoMapItemIdentifier resultProviderID:v7 contentProvider:providerCopy traits:v12];

  v16 = [[_MKTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForFreshIdentifier:(id)identifier resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits
{
  v7 = *&d;
  providerCopy = provider;
  identifierCopy = identifier;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];

  v15 = [mEMORY[0x1E69A2208] ticketForFreshIdentifier:geoMapItemIdentifier resultProviderID:v7 contentProvider:providerCopy traits:v12];

  v16 = [[_MKTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForIdentifiers:(id)identifiers resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits
{
  v7 = *&d;
  providerCopy = provider;
  identifiersCopy = identifiers;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v14 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(identifiersCopy);

  v15 = [mEMORY[0x1E69A2208] ticketForIdentifiers:v14 resultProviderID:v7 contentProvider:providerCopy traits:v12];

  v16 = [[_MKTicket alloc] initWithTicket:v15];

  return v16;
}

- (id)ticketForMUIDs:(id)ds resultProviderID:(int)d contentProvider:(id)provider traits:(id)traits
{
  v7 = *&d;
  providerCopy = provider;
  dsCopy = ds;
  v12 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208] ticketForMUIDs:dsCopy resultProviderID:v7 contentProvider:providerCopy traits:v12];

  v15 = [[_MKTicket alloc] initWithTicket:v14];

  return v15;
}

- (id)ticketForPlaceDescriptorResolution:(id)resolution traits:(id)traits
{
  resolutionCopy = resolution;
  v7 = [(MKMapService *)self defaultTraitsWithTraits:traits];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  v9 = [mEMORY[0x1E69A2208] ticketForPlaceDescriptorResolution:resolutionCopy traits:v7];

  v10 = [[_MKTicket alloc] initWithTicket:v9];

  return v10;
}

- (id)defaultTraitsForAnalyticsWithTraits:(id)traits
{
  traitsCopy = traits;
  if (!traitsCopy)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    traitsCopy = [mEMORY[0x1E69A2208] defaultTraits];
  }

  if (([traitsCopy hasDeviceKeyboardLocale] & 1) == 0)
  {
    v5 = _deviceKeyboardLanguageIfAvailable();
    [traitsCopy setDeviceKeyboardLocale:v5];
  }

  if ([MEMORY[0x1E696AF00] isMainThread] && (objc_msgSend(traitsCopy, "hasDeviceBatteryState") & 1) == 0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice isBatteryMonitoringEnabled])
    {
      v7 = [currentDevice batteryState] - 1;
      if (v7 < 3)
      {
        v8 = (v7 + 1);
      }

      else
      {
        v8 = 0;
      }

      [traitsCopy setDeviceBatteryState:v8];
    }

    else
    {
      [currentDevice setBatteryMonitoringEnabled:1];
      v9 = [currentDevice batteryState] - 1;
      if (v9 < 3)
      {
        v10 = (v9 + 1);
      }

      else
      {
        v10 = 0;
      }

      [traitsCopy setDeviceBatteryState:v10];
      [currentDevice setBatteryMonitoringEnabled:0];
    }
  }

  return traitsCopy;
}

- (id)defaultTraitsWithTraits:(id)traits
{
  traitsCopy = traits;
  if (!traitsCopy)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    traitsCopy = [mEMORY[0x1E69A2208] defaultTraits];
  }

  if (([traitsCopy hasDeviceLocation] & 1) == 0)
  {
    v5 = +[MKLocationManager sharedLocationManager];
    if ([v5 hasLocation] && (objc_msgSend(v5, "isLastLocationStale") & 1) == 0)
    {
      currentLocation = [v5 currentLocation];
      [traitsCopy setDeviceLocation:currentLocation];
    }
  }

  if (([traitsCopy hasDeviceKeyboardLocale] & 1) == 0)
  {
    v7 = _deviceKeyboardLanguageIfAvailable();
    [traitsCopy setDeviceKeyboardLocale:v7];
  }

  if (([traitsCopy hasDevicePlatform] & 1) == 0)
  {
    [traitsCopy setDevicePlatform:1];
  }

  return traitsCopy;
}

- (id)defaultTraitsWithTransportType:(unint64_t)type
{
  defaultTraits = [(MKMapService *)self defaultTraits];
  v5 = defaultTraits;
  if (type - 1 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A30F7360[type - 1];
  }

  [defaultTraits addTransportType:v6];

  return v5;
}

- (id)feedbackTicketForWalletRAPReport:(id)report
{
  v3 = MEMORY[0x1E69A2208];
  reportCopy = report;
  sharedService = [v3 sharedService];
  requestParameters = [reportCopy requestParameters];

  v7 = [sharedService ticketForFeedbackRequestParameters:requestParameters placeForProblemContext:0 userCredentials:0 pushToken:0 allowContactBackAtEmailAddress:0 traits:0];

  v8 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v7];

  return v8;
}

- (void)captureUserAction:(int)action onTarget:(int)target forAdvisoryItems:(id)items
{
  v5 = *&target;
  v6 = *&action;
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = itemsCopy;
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
        analyticsMessageValues = [v15 analyticsMessageValues];

        if (analyticsMessageValues)
        {
          analyticsMessageValues2 = [v15 analyticsMessageValues];
          [v9 addObjectsFromArray:analyticsMessageValues2];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(MKMapService *)self _captureUserAction:v6 onTarget:v5 withAnalyticsMessageValues:v9];
}

- (void)captureUserAction:(int)action onTarget:(int)target forAdvisoryItem:(id)item
{
  v5 = *&target;
  v6 = *&action;
  analyticsMessageValues = [item analyticsMessageValues];
  [(MKMapService *)self _captureUserAction:v6 onTarget:v5 withAnalyticsMessageValues:analyticsMessageValues];
}

- (void)captureUserAction:(int)action onTarget:(int)target forAdvisory:(id)advisory
{
  v5 = *&target;
  v6 = *&action;
  analyticsMessageValues = [advisory analyticsMessageValues];
  [(MKMapService *)self _captureUserAction:v6 onTarget:v5 withAnalyticsMessageValues:analyticsMessageValues];
}

- (void)_captureUserAction:(int)action onTarget:(int)target withAnalyticsMessageValues:(id)values
{
  v5 = *&target;
  v6 = *&action;
  valuesCopy = values;
  if ([valuesCopy count])
  {
    v7 = [valuesCopy componentsJoinedByString:{@", "}];
    [MEMORY[0x1E69A1598] captureUserAction:v6 target:v5 value:v7];
  }
}

- (void)capturePlaceCardUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp placeCardType:(int)type categoriesDisplayed:(id)displayed categorySelected:(id)self0
{
  v11 = *&type;
  v15 = *&target;
  v16 = *&action;
  selectedCopy = selected;
  displayedCopy = displayed;
  itemCopy = item;
  valueCopy = value;
  [(MKMapService *)self siriAnalyticsDonation:v16 target:v15 resultIndex:0xFFFFFFFFLL mapItem:itemCopy searchCategory:selectedCopy searchQueryString:0];
  v22 = MEMORY[0x1E69A1598];
  _geoMapItem = [itemCopy _geoMapItem];

  [v22 capturePlaceCardUserAction:v16 target:v15 value:valueCopy mapItem:_geoMapItem timestamp:v11 placeCardType:displayedCopy categoriesDisplayed:timestamp categorySelected:selectedCopy];
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value categoriesDisplayed:(id)displayed categorySelected:(id)selected
{
  v9 = *&target;
  v10 = *&action;
  selectedCopy = selected;
  displayedCopy = displayed;
  valueCopy = value;
  [(MKMapService *)self siriAnalyticsDonation:v10 target:v9 resultIndex:0xFFFFFFFFLL mapItem:0 searchCategory:selectedCopy searchQueryString:0];
  [MEMORY[0x1E69A1598] captureUserAction:v10 target:v9 value:valueCopy categoriesDisplayed:displayedCopy categorySelected:selectedCopy];
}

- (void)captureTransitPlaceCardUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index targetID:(unint64_t)d providerID:(id)self0 animationID:(unint64_t)self1 transitCardCategory:(int)self2 transitSystem:(id)self3 transitDepartureSequence:(id)self4 transitIncident:(id)self5
{
  v18 = *&target;
  v19 = *&action;
  incidentCopy = incident;
  sequenceCopy = sequence;
  systemCopy = system;
  iDCopy = iD;
  itemCopy = item;
  valueCopy = value;
  [(MKMapService *)self siriAnalyticsDonation:v19 target:v18 resultIndex:index mapItem:itemCopy searchCategory:0 searchQueryString:0];
  v27 = MEMORY[0x1E69A1598];
  _geoMapItem = [itemCopy _geoMapItem];

  LODWORD(v28) = category;
  [v27 captureTransitPlaceCardUserAction:v19 target:v18 value:valueCopy mapItem:_geoMapItem timestamp:index resultIndex:d targetID:timestamp providerID:iDCopy animationID:animationID transitCardCategory:v28 transitSystem:systemCopy transitDepartureSequence:sequenceCopy transitIncident:incidentCopy];
}

- (void)capturePlaceCardUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index targetID:(unint64_t)d providerID:(id)self0 animationID:(unint64_t)self1 actionURL:(id)self2 photoID:(id)self3 placeCardType:(int)self4 localizedMapItemCategory:(id)self5 availableActions:(id)self6 unactionableUIElements:(id)self7 modules:(id)self8 commingledPhotoProviderIDs:(id)self9 actionRichProviderId:(id)id classification:(id)classification
{
  v21 = *&index;
  classificationCopy = classification;
  idCopy = id;
  dsCopy = ds;
  modulesCopy = modules;
  elementsCopy = elements;
  actionsCopy = actions;
  categoryCopy = category;
  photoIDCopy = photoID;
  lCopy = l;
  iDCopy = iD;
  itemCopy = item;
  valueCopy = value;
  v25 = v21;
  [(MKMapService *)self siriAnalyticsDonation:action target:target resultIndex:v21 mapItem:itemCopy searchCategory:0 searchQueryString:0];
  v26 = MEMORY[0x1E69A1598];
  _geoMapItem = [itemCopy _geoMapItem];

  LODWORD(v27) = type;
  [v26 capturePlaceCardUserAction:action target:target value:valueCopy mapItem:_geoMapItem timestamp:v25 resultIndex:d targetID:timestamp providerID:iDCopy animationID:animationID actionURL:lCopy photoID:photoIDCopy placeCardType:v27 localizedMapItemCategory:categoryCopy availableActions:actionsCopy unactionableUIElements:elementsCopy modules:modulesCopy commingledRichProviderIds:dsCopy actionRichProviderId:idCopy classification:classificationCopy];
}

- (void)captureUserAction:(int)action onTarget:(int)target placeActionDetails:(id)details mapItem:(id)item resultIndex:(int)index
{
  v7 = *&index;
  v9 = *&target;
  v10 = *&action;
  detailsCopy = details;
  [(MKMapService *)self siriAnalyticsDonation:v10 target:v9 resultIndex:v7 mapItem:item searchCategory:0 searchQueryString:0];
  [MEMORY[0x1E69A1598] captureUserAction:v10 target:v9 value:0 placeActionDetails:detailsCopy];
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index mapRegion:(id)region zoomLevel:(double)self0 mapType:(int)self1
{
  v12 = *&index;
  v15 = *&target;
  v16 = *&action;
  regionCopy = region;
  itemCopy = item;
  [(MKMapService *)self siriAnalyticsDonation:v16 target:v15 resultIndex:v12 mapItem:itemCopy searchCategory:0 searchQueryString:0];
  v20 = MEMORY[0x1E69A2350];
  _geoMapItem = [itemCopy _geoMapItem];

  v22 = [v20 actionDetailsWithMapItem:_geoMapItem timestamp:v12 resultIndex:timestamp];

  [MEMORY[0x1E69A1598] captureUserAction:v16 target:v15 value:0 placeActionDetails:v22 mapRegion:regionCopy zoomLevel:type mapType:level];
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index
{
  v8 = *&index;
  v10 = *&target;
  v11 = *&action;
  itemCopy = item;
  [(MKMapService *)self siriAnalyticsDonation:v11 target:v10 resultIndex:v8 mapItem:itemCopy searchCategory:0 searchQueryString:0];
  v14 = MEMORY[0x1E69A2350];
  _geoMapItem = [itemCopy _geoMapItem];

  v16 = [v14 actionDetailsWithMapItem:_geoMapItem timestamp:v8 resultIndex:timestamp];

  [MEMORY[0x1E69A1598] captureUserAction:v11 target:0 value:0 placeActionDetails:v16];
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value routeDetails:(id)details
{
  v7 = *&target;
  v8 = *&action;
  detailsCopy = details;
  valueCopy = value;
  -[MKMapService siriAnalyticsDonation:target:resultIndex:mapItem:searchCategory:searchQueryString:](self, "siriAnalyticsDonation:target:resultIndex:mapItem:searchCategory:searchQueryString:", v8, v7, [detailsCopy resultIndex], 0, 0, 0);
  [MEMORY[0x1E69A1598] captureUserAction:v8 target:v7 value:valueCopy routeDetails:detailsCopy];
}

- (void)captureUserAction:(int)action onTarget:(int)target queryString:(id)string
{
  v5 = *&target;
  v6 = *&action;
  [(MKMapService *)self siriAnalyticsDonation:*&action target:*&target resultIndex:0xFFFFFFFFLL mapItem:0 searchCategory:0 searchQueryString:string];
  v7 = MEMORY[0x1E69A1598];

  [v7 captureUserAction:v6 target:v5 value:0];
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  [(MKMapService *)self siriAnalyticsDonation:v6 target:v5 resultIndex:0xFFFFFFFFLL mapItem:0 searchCategory:0 searchQueryString:0];
  [MEMORY[0x1E69A1598] captureUserAction:v6 target:v5 value:valueCopy];
}

- (void)siriAnalyticsDonation:(int)donation target:(int)target resultIndex:(int)index mapItem:(id)item searchCategory:(id)category searchQueryString:(id)string
{
  v10 = *&index;
  v11 = *&target;
  v12 = *&donation;
  stringCopy = string;
  categoryCopy = category;
  itemCopy = item;
  v16 = [[MKSiriInteraction alloc] initWithGEOUIAction:v12 target:v11 mapItem:itemCopy resultIndex:v10 searchCategory:categoryCopy searchQueryString:stringCopy];

  [(MKSiriInteraction *)v16 donateIfWanted];
}

- (id)feedbackTicketForFitnessRAPReport:(id)report
{
  v3 = MEMORY[0x1E69A2208];
  reportCopy = report;
  sharedService = [v3 sharedService];
  requestParameters = [reportCopy requestParameters];

  v7 = [sharedService ticketForFeedbackRequestParameters:requestParameters placeForProblemContext:0 userCredentials:0 pushToken:0 allowContactBackAtEmailAddress:0 traits:0];

  v8 = [[_MKFeedbackReportTicket alloc] initWithFeedbackReportTicket:v7];

  return v8;
}

- (id)stylingForWalletCategory:(id)category
{
  v3 = [MEMORY[0x1E69A2778] styleAttributesForWalletCategory:category];
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

- (id)ticketForWalletMerchantLookupRequest:(id)request traits:(id)traits
{
  traitsCopy = traits;
  requestCopy = request;
  v7 = [[_mkMapServiceWalletMerchantTicket alloc] initWithRequest:requestCopy traits:traitsCopy];

  return v7;
}

@end
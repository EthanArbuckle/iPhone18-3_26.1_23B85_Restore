@interface MKMapItem
+ (BOOL)_isDirectionsActionURL:(id)a3;
+ (BOOL)_shouldUseUniversalLinkForMapItems:(id)a3 options:(id)a4;
+ (BOOL)openMapsWithItems:(NSArray *)mapItems launchOptions:(NSDictionary *)launchOptions;
+ (BOOL)valueIsValid:(id)a3 forKey:(id)a4;
+ (MKMapItem)mapItemForCurrentLocation;
+ (MKMapItem)mapItemWithDictionary:(id)a3;
+ (MKMapItem)mapItemWithSerializedPlaceData:(id)a3 serializedDetourInfo:(id)a4 currentLocation:(BOOL)a5;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)_defaultNavigationURLForURL:(id)a3;
+ (id)_deserializeResourceOptionsFromURL:(id)a3 error:(id *)a4;
+ (id)_itemWithContact:(id)a3 geoMapItem:(id)a4;
+ (id)_itemWithGeoMapItem:(id)a3;
+ (id)_launchOptionsFromResourceOptionsDictionary:(id)a3;
+ (id)_launchOptionsWithOptions:(id)a3;
+ (id)_localizedNextOpeningDayOftheWeekFormatter;
+ (id)_localizedNextOpeningHoursFormatter;
+ (id)_mapItemBackedByURL:(id)a3;
+ (id)_mapItemFromVCardRepresentation:(id)a3 error:(id *)a4;
+ (id)_mapItemWithWithLocation:(id)a3 addressDictionary:(id)a4 name:(id)a5 businessURL:(id)a6 phoneNumber:(id)a7 sessionID:(id)a8 muid:(unint64_t)a9 attributionID:(id)a10 sampleSizeForUserRatingScore:(unsigned int)a11 normalizedUserRatingScore:(float)a12;
+ (id)_sharedSessionURLForPunchoutURL:(id)a3;
+ (id)_sharedSessionUserInfoForPunchoutUserInfo:(id)a3;
+ (id)_sourceAppIdFromLaunchURL:(id)a3;
+ (id)_universalLinkForMapItems:(id)a3 options:(id)a4;
+ (id)_urlForLocation:(id)a3 address:(id)a4 label:(id)a5 options:(id)a6;
+ (id)_urlForMapItemHandles:(id)a3 options:(id)a4;
+ (id)contactsAddressDictionaryFromGeoAddressDictionary:(id)a3;
+ (id)contactsAddressKeysForGeoAddressKeys;
+ (id)launchOptionsFromURL:(id)a3;
+ (id)mapItemsFromURL:(id)a3 options:(id *)a4;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)plistCompatibleDictionaryFromStandardOptions:(id)a3;
+ (id)sanitizeArray:(id)a3 forKey:(id)a4;
+ (id)sanitizeDictionary:(id)a3;
+ (id)sanitizeObject:(id)a3 forKey:(id)a4;
+ (id)standardOptionsFromPlistCompatibleDictionary:(id)a3;
+ (id)ticketForMapsDataString:(id)a3 name:(id)a4;
+ (id)urlForMapItem:(id)a3 options:(id)a4;
+ (id)urlForMapItems:(id)a3 options:(id)a4;
+ (void)_fillOutRequest:(id)a3 withMapsDataString:(id)a4;
+ (void)_mapItemFromHandle:(id)a3 completionHandler:(id)a4;
+ (void)_mapItemsFromHandleURL:(id)a3 completionHandler:(id)a4;
+ (void)_mapItemsFromPunchInHintsURL:(id)a3 maxResults:(unsigned int)a4 completionHandler:(id)a5;
+ (void)_mapItemsWithSerializedPlaceDataResponse:(id)a3 handler:(id)a4;
+ (void)_openDefaultNavigationWithItems:(id)a3 launchOptions:(id)a4 fromScene:(id)a5 completionHandler:(id)a6;
+ (void)_openDefaultNavigationWithURL:(id)a3 fromScene:(id)a4 completionHandler:(id)a5;
+ (void)openMapsWithItems:(NSArray *)mapItems launchOptions:(NSDictionary *)launchOptions fromScene:(UIScene *)scene completionHandler:(void *)completion;
+ (void)openMapsWithItems:(id)a3 launchOptions:(id)a4 completionHandler:(id)a5;
- (BOOL)_browseCategory_canDisplayBrowseCategoriesForPlace;
- (BOOL)_browseCategory_canDisplayBrowseCategoriesForVenue;
- (BOOL)_browseCategory_isVenueItem;
- (BOOL)_canBeClaimed;
- (BOOL)_canGetDirections;
- (BOOL)_hasChargerNumberString;
- (BOOL)_hasCorrectedHomeWorkAddress;
- (BOOL)_hasCorrectedHomeWorkCoordinate;
- (BOOL)_hasHikeInfo;
- (BOOL)_hasLookAroundStorefront;
- (BOOL)_hasMuninViewState;
- (BOOL)_hasPriceDescription;
- (BOOL)_hasResolvablePartialInformation;
- (BOOL)_hasRestaurantExtensionInfo;
- (BOOL)_hasTransitDisplayName;
- (BOOL)_hasTransitLabels;
- (BOOL)_isClaimed;
- (BOOL)_isEmptyContactMapItem;
- (BOOL)_isEquivalentURLRepresentationTo:(id)a3;
- (BOOL)_isMapItemTypeAddress;
- (BOOL)_isMapItemTypeBrand;
- (BOOL)_isMapItemTypeBusiness;
- (BOOL)_isMapItemTypeSettlement;
- (BOOL)_isMapItemTypeTransit;
- (BOOL)_isMapItemTypeUnknown;
- (BOOL)_isMessageIDVerified;
- (BOOL)_mapkit_canAtLeastOneAttributionShowAddPhotosLocally;
- (BOOL)_mapkit_canAtLeastOneAttributionShowPhotosLocally;
- (BOOL)_mapkit_hasFlatListOfPhotos;
- (BOOL)_mapkit_hasMultiplePhotoVendors;
- (BOOL)_mapkit_hasSinglePhotoVendor;
- (BOOL)_mapkit_supportsFullScreenExperience;
- (BOOL)_phoneNumberOptsOutOfAds;
- (BOOL)_restaurantLink_hasFeatureType:(unint64_t)a3;
- (BOOL)hasAmenityType:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)openInMapsWithLaunchOptions:(NSDictionary *)launchOptions;
- (BOOL)valueForAmenityType:(int)a3;
- (CLLocationCoordinate2D)_coordinate;
- (CLLocationCoordinate2D)_labelCoordinate;
- (CLLocationCoordinate2D)_presentCoordinate;
- (GEOBusinessHours)_messageBusinessHours;
- (GEOEVChargerAvailability)_realTimeAvailableEVCharger;
- (GEOMapItemStorage)_geoMapItemStorageForDragAndDrop;
- (GEOMapItemStorage)_geoMapItemStorageForPersistence;
- (GEOMapItemStorageUserValues)userValues;
- (GEOMapItemTransitInfo)_transitInfo;
- (GEOModuleLayoutEntry)_placecardLayout;
- (GEOPlace)place;
- (GEOTransitAttribution)_transitAttribution;
- (MKAddressRepresentations)addressRepresentations;
- (MKMapItem)init;
- (MKMapItem)initWithAddressDictionary:(id)a3;
- (MKMapItem)initWithCLLocation:(id)a3 placeType:(int)a4;
- (MKMapItem)initWithCoder:(id)a3;
- (MKMapItem)initWithContact:(id)a3;
- (MKMapItem)initWithGeoMapItem:(id)a3 isPlaceHolderPlace:(BOOL)a4;
- (MKMapItem)initWithGeoMapItemAsCurrentLocation:(id)a3;
- (MKMapItem)initWithLocation:(id)a3 address:(id)a4;
- (MKMapItem)initWithPlace:(id)a3 isPlaceHolderPlace:(BOOL)a4;
- (MKMapItem)initWithPlacemark:(MKPlacemark *)placemark;
- (MKMapItem)initWithUrlRepresentation:(id)a3;
- (MKMapItemIdentifier)identifier;
- (MKMapItemMetadata)metadata;
- (MKPlacemark)placemark;
- (MKPointOfInterestCategory)pointOfInterestCategory;
- (NSArray)_allPhotoAttributions;
- (NSArray)_alternativeAppAdamIds;
- (NSArray)_reviews;
- (NSArray)_tips;
- (NSData)_handle;
- (NSNumber)_preferedAppAdamID;
- (NSSet)alternateIdentifiers;
- (NSString)_chargerNumberString;
- (NSString)_firstLocalizedCategoryName;
- (NSString)_localizedResponseTime;
- (NSString)_localizedSampleSizeForUserRatingScoreString;
- (NSString)_messageID;
- (NSString)_messageURLString;
- (NSString)_priceDescription;
- (NSString)_priceRangeString;
- (NSString)_reviewsDisplayName;
- (NSString)_transitDisplayName;
- (NSString)description;
- (NSString)name;
- (NSString)phoneNumber;
- (NSString)reviewsProviderDisplayName;
- (NSString)yelpID;
- (NSTimeZone)timeZone;
- (NSURL)url;
- (UIColor)_navBackgroundbrandColor;
- (UIColor)_navTintBrandColor;
- (_MKMapItemAttribution)_encyclopedicInfoAttribution;
- (_MKMapItemPhotosAttribution)_photosAttribution;
- (_MKMapItemPlaceAttribution)_attribution;
- (_MKMapItemReviewsAttribution)_reviewsAttribution;
- (id)_address;
- (id)_addressFormattedAsCity;
- (id)_addressFormattedAsLocation;
- (id)_addressFormattedAsMultilineAddress;
- (id)_addressFormattedAsName;
- (id)_addressFormattedAsShortenedAddress;
- (id)_addressFormattedAsSinglelineAddress;
- (id)_addressFormattedAsStreetOnly;
- (id)_addressFormattedAsTitlesForMapRect:(id)a3;
- (id)_addressFormattedAsWeatherDisplayName;
- (id)_addressFormattedAsWeatherLocationName;
- (id)_addressOrNil:(id)a3;
- (id)_attributionFor:(id)a3 sourceStringFormat:(id)a4 moreSourceStringFormat:(id)a5 imageTintColor:(id)a6;
- (id)_bestWalletHeroImageForSize:(CGSize)a3 allowSmaller:(BOOL)a4;
- (id)_cnPostalAddress;
- (id)_createFullSharingURLWithLookAroundViewState:(id)a3 includeSensitiveFields:(BOOL)a4;
- (id)_factoidWithSemantic:(int)a3;
- (id)_formatterForAdamId;
- (id)_fullAddressWithMultiline:(BOOL)a3;
- (id)_getBusiness;
- (id)_htmlRepresentation;
- (id)_identifier;
- (id)_initWithLabelMarker:(id)a3;
- (id)_isolatedPlace;
- (id)_localizedNextOpeningStringShort:(BOOL)a3;
- (id)_location;
- (id)_mapkit_preferredFirstPhotoVendor;
- (id)_mapkit_resolvedFlatPhotoList;
- (id)_mapsDataString;
- (id)_nameFromPlaceData;
- (id)_placeCardContact;
- (id)_postalAddressFromMeCardUsingAddressIdentifier:(id)a3;
- (id)_restaurantLink_firstProviderDisplayName;
- (id)_restaurantLink_firstProviderIdentifier;
- (id)_restaurantLink_firstProviderPlaceIdentifier;
- (id)_restaurantLink_firstVendorID;
- (id)_reviewForIdentifier:(id)a3;
- (id)_urlExtraStorage;
- (id)_vCardFilename;
- (id)_vCardRepresentation;
- (id)_walletHeroImageProviderName;
- (id)dictionaryRepresentation;
- (id)formattedNumberOfReviewsIncludingProvider:(BOOL)a3 formatter:(id)a4;
- (id)hoursBuilderForSearchResultCellForOptions:(unint64_t)a3 conciseStyle:(BOOL)a4 openAt:(id)a5;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)urlRepresentation;
- (id)venueLabelWithContext:(unint64_t)a3;
- (int)_browseCategory_placeCardType;
- (int)_placecardRenderingMode;
- (int64_t)_venueFeatureType;
- (unint64_t)_mapkit_numberOfPhotosAvailableForFlatList;
- (unint64_t)_restaurantExtensionModeForFirstProvider;
- (unint64_t)hash;
- (void)_getFirstAvailableAppClipLinkFromQuickLinks:(id)a3 completion:(id)a4;
- (void)_getFirstAvailableAppClipLinkWithCompletion:(id)a3;
- (void)_getFirstAvailableSecondaryAppClipLinkWithCompletion:(id)a3;
- (void)_getHasAvailableAppClipWithCompletion:(id)a3;
- (void)_getHasAvailableSecondaryAppClipWithCompletion:(id)a3;
- (void)_launchActivityForBrandItem;
- (void)_markTransitInfoUpdated;
- (void)_refreshAttribution;
- (void)_updateRealTimeEVChargerAvailability:(id)a3;
- (void)_updateTransitInfoWithMapItem:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)openInMapsWithLaunchOptions:(NSDictionary *)launchOptions fromScene:(UIScene *)scene completionHandler:(void *)completion;
- (void)openInMapsWithLaunchOptions:(id)a3 completionHandler:(id)a4;
- (void)preloadTransitInfoWithCompletion:(id)a3;
- (void)setName:(NSString *)name;
- (void)setPhoneNumber:(NSString *)phoneNumber;
- (void)setPointOfInterestCategory:(MKPointOfInterestCategory)pointOfInterestCategory;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)setUrl:(NSURL *)url;
@end

@implementation MKMapItem

- (GEOMapItemStorageUserValues)userValues
{
  userValues = self->_userValues;
  if (!userValues)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A21E8]);
    v5 = self->_userValues;
    self->_userValues = v4;

    userValues = self->_userValues;
  }

  return userValues;
}

- (NSString)name
{
  v3 = [(GEOMapItemStorageUserValues *)self->_userValues name];

  if (v3)
  {
    [(GEOMapItemStorageUserValues *)self->_userValues name];
  }

  else
  {
    [(MKMapItem *)self _nameFromPlaceData];
  }
  v4 = ;

  return v4;
}

- (void)dealloc
{
  if (self->_didResolveAttributionToken)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_didResolveAttributionToken];
  }

  v4.receiver = self;
  v4.super_class = MKMapItem;
  [(MKMapItem *)&v4 dealloc];
}

- (MKMapItem)init
{
  v7.receiver = self;
  v7.super_class = MKMapItem;
  v2 = [(MKMapItem *)&v7 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    isolation = v2->_isolation;
    v2->_isolation = v3;

    v5 = v2;
  }

  return v2;
}

- (id)_isolatedPlace
{
  geo_assert_isolated();
  if (!self->_place)
  {
    v3 = [(MKMapItem *)self _geoMapItem];
    v4 = [v3 _place];
    place = self->_place;
    self->_place = v4;

    v6 = [(GEOMapItemStorageUserValues *)self->_userValues name];

    if (v6)
    {
      v7 = [(GEOMapItemStorageUserValues *)self->_userValues name];
      [(GEOPlace *)self->_place setName:v7];
    }
  }

  v8 = self->_place;

  return v8;
}

- (BOOL)_hasResolvablePartialInformation
{
  v3 = [(MKMapItem *)self place];
  if (v3)
  {
    v4 = v3;
    v5 = [(MKMapItem *)self metadata];
    if (v5)
    {
    }

    else
    {
      geoMapItem = self->_geoMapItem;

      if (!geoMapItem)
      {
        v13 = [(MKMapItem *)self place];
        v14 = [v13 firstBusiness];
        v15 = [v14 hasUID];

        return v15;
      }
    }
  }

  [(MKMapItem *)self _coordinate];
  if (!CLLocationCoordinate2DIsValid(v17))
  {
    v9 = [(MKMapItem *)self _geoAddress];
    v10 = [v9 structuredAddress];
    if (v10)
    {
    }

    else
    {
      v11 = [(MKMapItem *)self _geoAddress];
      v12 = [v11 formattedAddressLines];

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_6:
  v7 = self->_geoMapItem;

  return [(GEOMapItem *)v7 _hasResolvablePartialInformation];
}

- (MKMapItemMetadata)metadata
{
  v10 = self->_isolation;
  _geo_isolate_lock();
  metadata = self->_metadata;
  if (!metadata)
  {
    v4 = [(MKMapItem *)self _isolatedPlace];
    v5 = [v4 firstBusiness];

    if (v5)
    {
      v6 = [[MKMapItemMetadata alloc] initWithBusiness:v5];
      v7 = self->_metadata;
      self->_metadata = v6;
    }

    metadata = self->_metadata;
  }

  v8 = metadata;
  _geo_isolate_unlock();

  return v8;
}

- (CLLocationCoordinate2D)_coordinate
{
  [(GEOMapItem *)self->_geoMapItem coordinate];
  if (((fabs(v3 + 180.0) < 0.00000001) & (fabs(v2 + 180.0) < 0.00000001)) != 0)
  {
    v2 = *MEMORY[0x1E6985CC0];
    v3 = *(MEMORY[0x1E6985CC0] + 8);
  }

  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (int64_t)_venueFeatureType
{
  if (![(MKMapItem *)self _hasVenueFeatureType])
  {
    return 0;
  }

  LODWORD(result) = [(GEOMapItem *)self->_geoMapItem _venueFeatureType];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

- (GEOPlace)place
{
  v5 = self->_isolation;
  _geo_isolate_lock();
  v3 = [(MKMapItem *)self _isolatedPlace];
  _geo_isolate_unlock();

  return v3;
}

- (NSString)phoneNumber
{
  v3 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([(GEOMapItem *)self->_geoMapItem _hasTelephone])
  {
    v5 = [(GEOMapItem *)self->_geoMapItem _telephone];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:
  v7 = CFLocaleCopyCurrent();
  if (v7)
  {
    v8 = v7;
    Value = CFLocaleGetValue(v7, *MEMORY[0x1E695E6D0]);
    if (Value)
    {
      v10 = mk_CFPhoneNumberCreate(0, v6, Value);
      if (v10)
      {
        v11 = v10;
        if ([v6 length])
        {
          if ([v6 characterAtIndex:0] == 43)
          {
            v12 = 7;
          }

          else
          {
            v12 = 5;
          }
        }

        else
        {
          v12 = 5;
        }

        String = mk_CFPhoneNumberCreateString(0, v11, v12);
        if (String)
        {
          v14 = String;
          v15 = [MEMORY[0x1E696AEC0] stringWithString:String];

          CFRelease(v14);
          v6 = v15;
        }

        CFRelease(v11);
      }
    }

    CFRelease(v8);
  }

  return v6;
}

- (UIColor)_navBackgroundbrandColor
{
  v2 = [(GEOMapItem *)self->_geoMapItem _messageLink];
  v3 = [v2 navBackgroundColorString];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] _maps_colorFromHexString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nameFromPlaceData
{
  if ([(MKMapItem *)self _hasTransitDisplayName])
  {
    v3 = [(MKMapItem *)self _transitDisplayName];
    if ([v3 length])
    {
      v4 = v3;
      v5 = v4;
      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = [(MKMapItem *)self place];
  if (!v6)
  {
LABEL_10:
    v4 = [(GEOMapItem *)self->_geoMapItem name];

    if (![v4 length])
    {
      if ([(GEOMapItem *)self->_geoMapItem isDisputed]&& (([(GEOMapItem *)self->_geoMapItem centerCoordinate], fabs(v12 + 180.0) >= 0.00000001) || fabs(v11 + 180.0) >= 0.00000001))
      {
        v10 = [MEMORY[0x1E696AEC0] _mapkit_formattedStringForCoordinate:?];
      }

      else
      {
        v10 = MKLocalizedStringForUnknownLocation();
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v7 = [(GEOMapItemStorageUserValues *)self->_userValues name];

  if (!v7)
  {
    v4 = [v6 name];

    if ([v4 length])
    {
      goto LABEL_16;
    }

    v3 = v4;
  }

  v8 = [v6 firstBusiness];
  v4 = [v8 name];

  if ([v4 length])
  {
LABEL_16:
    v10 = v4;
    goto LABEL_17;
  }

  v9 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [v9 name];

  if (![v3 length])
  {
    goto LABEL_10;
  }

  v10 = v3;
LABEL_17:
  v4 = v10;
LABEL_18:
  v5 = v10;

LABEL_19:

  return v5;
}

- (BOOL)_hasTransitDisplayName
{
  v2 = [(MKMapItem *)self _transitInfo];
  v3 = [v2 displayName];
  v4 = [v3 length] != 0;

  return v4;
}

- (NSString)_localizedResponseTime
{
  v2 = [(GEOMapItem *)self->_geoMapItem _messageLink];
  v3 = [v2 responseTime];
  if (v3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76C9380[v3]);
  }

  return v4;
}

- (UIColor)_navTintBrandColor
{
  v2 = [(GEOMapItem *)self->_geoMapItem _messageLink];
  v3 = [v2 navTintColorString];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] _maps_colorFromHexString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (MKMapItem)mapItemForCurrentLocation
{
  if (mapItemForCurrentLocation_onceToken != -1)
  {
    dispatch_once(&mapItemForCurrentLocation_onceToken, &__block_literal_global_20780);
  }

  v3 = mapItemForCurrentLocation_currentLocationItem;

  return v3;
}

- (id)_walletHeroImageProviderName
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = _MKBestWalletHeroPhotoForGEOMapItem(v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 attribution];
    v6 = [v5 providerName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_bestWalletHeroImageForSize:(CGSize)a3 allowSmaller:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = [(MKMapItem *)self _geoMapItem];
  v8 = _MKBestWalletHeroPhotoForGEOMapItem(v7);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 bestPhotoForSize:v4 allowSmaller:{width, height}];
    v11 = [v10 url];

    if (v11)
    {
      v12 = [v10 url];

      goto LABEL_6;
    }
  }

  v12 = [v7 _bestHeroBrandIconURLForSize:v4 allowSmaller:{width, height}];
LABEL_6:

  return v12;
}

+ (void)_mapItemsFromPunchInHintsURL:(id)a3 maxResults:(unsigned int)a4 completionHandler:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v35 = a4;
    v34 = a1;
    v10 = [v8 scheme];
    v11 = [v10 isEqualToString:@"x-maps-punchinhint"];

    if (v11)
    {
      v12 = MEMORY[0x1E696AF20];
      v13 = [v8 absoluteString];
      v36 = [v12 componentsWithString:v13];

      [v36 queryItems];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v14 = v43 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v15)
      {
        v16 = *v43;
LABEL_5:
        v17 = 0;
        while (1)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v42 + 1) + 8 * v17);
          v19 = [v18 name];
          v20 = [v19 isEqualToString:@"pm"];

          if (v20)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
            if (v15)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v21 = [v18 value];

        if (v21 && [v21 length])
        {
          v23 = [objc_alloc(MEMORY[0x1E69A25B0]) initWithEncodedString:v21];
          v24 = +[MKMapService sharedService];
          v33 = [v24 defaultTraits];

          v25 = [v23 spotlightEncodedString];
          [v33 setSpotlightSearchPunchinEncodedString:v25];

          v26 = +[MKMapService sharedService];
          v27 = [v23 completedSearchQuery];
          v28 = [v26 ticketForSearchQuery:v27 completionItem:0 maxResults:v35 traits:v33];

          v29 = objc_opt_new();
          v30 = [v34 _launchOptionsFromResourceOptionsDictionary:v29];
          v31 = [v30 mutableCopy];

          objc_initWeak(&location, v28);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __88__MKMapItem_PunchInHintsSPI___mapItemsFromPunchInHintsURL_maxResults_completionHandler___block_invoke;
          v37[3] = &unk_1E76C6B60;
          v39 = v9;
          objc_copyWeak(&v40, &location);
          v32 = v31;
          v38 = v32;
          [v28 submitWithHandler:v37 networkActivity:0];

          objc_destroyWeak(&v40);
          objc_destroyWeak(&location);

          goto LABEL_17;
        }
      }

      else
      {
LABEL_11:

        v21 = 0;
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:MKErrorDomain code:1 userInfo:0];
      (*(v9 + 2))(v9, 0, 0, v23);
LABEL_17:
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
      (*(v9 + 2))(v9, 0, 0, v22);
    }
  }
}

void __88__MKMapItem_PunchInHintsSPI___mapItemsFromPunchInHintsURL_maxResults_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained mapItemIdentifierForSpotlight];

    if (v6 && [v16 count])
    {
      v7 = 0;
      do
      {
        v8 = [v16 objectAtIndexedSubscript:v7];
        v9 = [v8 _identifier];
        v10 = objc_loadWeakRetained((a1 + 48));
        v11 = [v10 mapItemIdentifierForSpotlight];
        v12 = [v9 isEqual:v11];

        if (v12)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
          [*(a1 + 32) setObject:v13 forKeyedSubscript:@"MKLaunchOptionsSelectedIndex"];
        }

        ++v7;
      }

      while (v7 < [v16 count]);
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) copy];
    (*(v14 + 16))(v14, v16, v15, 0);
  }
}

- (int)_browseCategory_placeCardType
{
  if ([(MKMapItem *)self _browseCategory_isVenueItem])
  {
    v3 = [(MKMapItem *)self _venueFeatureType];
    if (v3 == 2)
    {
      v4 = 13;
    }

    else
    {
      v4 = 0;
    }

    if (v3 == 1)
    {
      return 12;
    }

    else
    {
      return v4;
    }
  }

  else if ([(MKMapItem *)self _hasMUID])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_browseCategory_isVenueItem
{
  v3 = [(MKMapItem *)self _identifier];
  if (v3)
  {
    v4 = [(MKMapItem *)self _hasVenueFeatureType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_browseCategory_canDisplayBrowseCategoriesForPlace
{
  v2 = [(MKMapItem *)self _browseCategories];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_browseCategory_canDisplayBrowseCategoriesForVenue
{
  v3 = [(MKMapItem *)self _identifier];
  if (v3 && [(MKMapItem *)self _hasVenueFeatureType]&& ((v4 = [(MKMapItem *)self _venueFeatureType], v4 > 4) || ((1 << v4) & 0x19) == 0))
  {
    v7 = [(MKMapItem *)self _browseCategories];
    v5 = [v7 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_launchActivityForBrandItem
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"MKPlaceBrandUserActivity"];
  v4 = MEMORY[0x1E696ACC8];
  v17[0] = @"MKPlaceBrandUserActivityName";
  v5 = [(MKMapItem *)self name];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F15B23C0;
  }

  v17[1] = @"MKPlaceBrandUserActivityID";
  v18[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MKMapItem _muid](self, "_muid")}];
  v18[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v10 = [v4 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];

  if (v10)
  {
    v15 = @"MKPlaceBrandUserActivityData";
    v16 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [MKMapItem _sharedSessionUserInfoForPunchoutUserInfo:v11];
    [v3 setUserInfo:v12];

    v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
    v14 = +[MKSystemController sharedInstance];
    [v14 openUserActivity:v3 withApplicationRecord:v13 requireOptionKeyPromptUnlockDevice:1 completionHandler:0];
  }
}

- (CLLocationCoordinate2D)_presentCoordinate
{
  latitude = self->_presentCoordinate.latitude;
  longitude = self->_presentCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)_hasHikeInfo
{
  v3 = [(GEOMapItem *)self->_geoMapItem _hikeSummary];
  if (v3)
  {
    v4 = [(GEOMapItem *)self->_geoMapItem _hikeAssociatedInfo];
    if (v4)
    {
      v5 = [(GEOMapItem *)self->_geoMapItem _hikeGeometry];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_hasCorrectedHomeWorkAddress
{
  v3 = [(MKMapItem *)self _geoMapItem];
  v4 = [v3 _clientAttributes];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MKMapItem *)self _geoMapItem];
  v6 = [v5 contactIsMe];

  if (!v6)
  {
    return 0;
  }

  v7 = [(MKMapItem *)self _geoMapItem];
  v8 = [v7 _clientAttributes];
  v9 = [v8 correctedLocationAttributes];
  v10 = [v9 hasCorrectedAddress];

  return v10;
}

- (BOOL)_hasCorrectedHomeWorkCoordinate
{
  v3 = [(MKMapItem *)self _geoMapItem];
  v4 = [v3 _clientAttributes];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MKMapItem *)self _geoMapItem];
  v6 = [v5 contactIsMe];

  if (!v6)
  {
    return 0;
  }

  v7 = [(MKMapItem *)self _geoMapItem];
  v8 = [v7 _clientAttributes];
  v9 = [v8 correctedLocationAttributes];
  v10 = [v9 hasCorrectedCoordinate];

  return v10;
}

- (NSString)reviewsProviderDisplayName
{
  v2 = [(MKMapItem *)self _reviewsAttribution];
  if ([v2 requiresAttributionInCallout])
  {
    v3 = [v2 providerName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)_tips
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(GEOMapItem *)self->_geoMapItem _tips];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [_MKMapItemUserRatingSnippetTip alloc];
          v12 = [(_MKMapItemUserRatingSnippetTip *)v11 initWithMapItem:self review:v10, v14];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)_reviews
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(GEOMapItem *)self->_geoMapItem _reviews];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [_MKMapItemUserRatingSnippetReview alloc];
          v13 = [(_MKMapItemUserRatingSnippetReview *)v12 initWithMapItem:self review:v11, v15];
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_placecardRenderingMode
{
  v2 = [(GEOMapItem *)self->_geoMapItem _placecardLayoutData];
  v3 = [v2 currentModuleLayoutEntry];
  v4 = [v3 renderingMode];

  return v4;
}

- (GEOModuleLayoutEntry)_placecardLayout
{
  v2 = [(GEOMapItem *)self->_geoMapItem _placecardLayoutData];
  v3 = [v2 currentModuleLayoutEntry];

  return v3;
}

- (BOOL)_isMessageIDVerified
{
  v2 = [(GEOMapItem *)self->_geoMapItem _messageLink];
  v3 = [v2 isVerified];

  return v3;
}

- (NSString)_messageURLString
{
  v2 = [(GEOMapItem *)self->_geoMapItem _messageLink];
  v3 = [v2 messageURLString];

  return v3;
}

- (NSString)_messageID
{
  v2 = [(GEOMapItem *)self->_geoMapItem _messageLink];
  v3 = [v2 messageID];

  return v3;
}

- (BOOL)_isMapItemTypeBrand
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _placeDisplayType] == 5;

  return v3;
}

- (BOOL)_isMapItemTypeAddress
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _placeDisplayType] == 3;

  return v3;
}

- (BOOL)_isMapItemTypeSettlement
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _placeDisplayType] == 2;

  return v3;
}

- (BOOL)_isMapItemTypeBusiness
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _placeDisplayType] == 1;

  return v3;
}

- (BOOL)_isMapItemTypeUnknown
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _placeDisplayType] == 0;

  return v3;
}

- (id)_attributionFor:(id)a3 sourceStringFormat:(id)a4 moreSourceStringFormat:(id)a5 imageTintColor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 providerName];
  v15 = [v10 attributionURLs];
  if ([v15 count])
  {
    v16 = v12;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16;

  if (!v17)
  {
    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = v12;
    }

    v17 = v18;
  }

  v19 = +[MKSystemController sharedInstance];
  [v19 screenScale];
  if (v13)
  {
    v20 = [v10 providerSnippetLogoImageForScale:?];

LABEL_11:
    v21 = [v20 _mapkit_templateImageWithTintColor:v13];

    v22 = v13 != 0;
    goto LABEL_14;
  }

  v21 = [v10 providerLogoImageForScale:?];

  if (!v21)
  {
    v25 = +[MKSystemController sharedInstance];
    [v25 screenScale];
    v20 = [v10 providerSnippetLogoImageForScale:?];

    v13 = [MEMORY[0x1E69DC888] labelColor];
    goto LABEL_11;
  }

  v22 = 0;
LABEL_14:
  v23 = [(MKMapItem *)self _attributionWithDisplayName:v14 attributionFormat:v17 logo:v21 isSnippetLogo:v22];

  return v23;
}

- (NSString)_reviewsDisplayName
{
  v2 = [(MKMapItem *)self _reviewsAttribution];
  v3 = [v2 providerName];

  return v3;
}

- (BOOL)_hasLookAroundStorefront
{
  v2 = [(GEOMapItem *)self->_geoMapItem _storefrontPresentationInfo];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateRealTimeEVChargerAvailability:(id)a3
{
  v4 = MEMORY[0x1E69A1D60];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 _geoMapItem];

  v8 = [v7 _placeData];
  obj = [v6 initWithPlaceData:v8];

  v9 = obj;
  if (obj)
  {
    objc_storeStrong(&self->_chargerAvailability, obj);
    v9 = obj;
  }
}

- (NSArray)_alternativeAppAdamIds
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(GEOMapItem *)self->_geoMapItem _associatedApp];
  v5 = [v4 alternateAppAdamIds];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(MKMapItem *)self _formatterForAdamId];
        v12 = [v11 numberFromString:v10];
        [v3 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSNumber)_preferedAppAdamID
{
  v3 = [(MKMapItem *)self _formatterForAdamId];
  v4 = [(GEOMapItem *)self->_geoMapItem _associatedApp];
  v5 = [v4 preferredAppAdamId];
  v6 = [v3 numberFromString:v5];

  return v6;
}

- (id)venueLabelWithContext:(unint64_t)a3
{
  v4 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v5 = v4;
  if (a3 - 1 >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  v7 = [v4 venueLabel:v6];

  return v7;
}

- (id)_cnPostalAddress
{
  v2 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [v2 cnPostalAddress];

  return v3;
}

- (id)_addressFormattedAsLocation
{
  v2 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [v2 locationAddress];

  return v3;
}

- (id)_addressFormattedAsTitlesForMapRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v7 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v8 = [v7 titlesForMapRect:{v6, v5, var0, var1}];

  return v8;
}

- (id)_addressFormattedAsWeatherLocationName
{
  v3 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v4 = [v3 weatherLocationName];
  v5 = [(MKMapItem *)self _addressOrNil:v4];

  return v5;
}

- (id)_addressFormattedAsWeatherDisplayName
{
  v3 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v4 = [v3 weatherDisplayName];
  v5 = [(MKMapItem *)self _addressOrNil:v4];

  return v5;
}

- (id)_addressFormattedAsSinglelineAddress
{
  v3 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  v4 = [v3 hasCorrectedLocationAttributes];

  if (v4)
  {
    v5 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    v6 = [v5 correctedLocationAttributes];
    v7 = [v6 _addressFormattedAsSinglelineAddress];

    if ([v7 length])
    {
      goto LABEL_5;
    }
  }

  v8 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v9 = [v8 fullAddressWithMultiline:0];
  v7 = [(MKMapItem *)self _addressOrNil:v9];

LABEL_5:

  return v7;
}

- (id)_addressFormattedAsShortenedAddress
{
  if ([(MKMapItem *)self _venueFeatureType]== 4)
  {
    v3 = [(GEOMapItem *)self->_geoMapItem addressObject];
    v4 = [v3 venueShortAddress];

    if ([v4 length])
    {
      goto LABEL_8;
    }
  }

  v5 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  v6 = [v5 hasCorrectedLocationAttributes];

  if (v6)
  {
    v7 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    v8 = [v7 correctedLocationAttributes];
    v4 = [v8 _addressFormattedAsShortenedAddress];

    if ([v4 length])
    {
      goto LABEL_8;
    }
  }

  v9 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v10 = [v9 shortAddress];
  v4 = [(MKMapItem *)self _addressOrNil:v10];

LABEL_8:

  return v4;
}

- (id)_addressFormattedAsName
{
  v3 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  v4 = [v3 hasCorrectedLocationAttributes];

  if (v4)
  {
    v5 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    v6 = [v5 correctedLocationAttributes];
    v7 = [v6 _addressFormattedAsName];

    if ([v7 length])
    {
      goto LABEL_5;
    }
  }

  v8 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v9 = [v8 name];
  v7 = [(MKMapItem *)self _addressOrNil:v9];

LABEL_5:

  return v7;
}

- (id)_addressFormattedAsMultilineAddress
{
  v3 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  v4 = [v3 hasCorrectedLocationAttributes];

  if (v4)
  {
    v5 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    v6 = [v5 correctedLocationAttributes];

    v7 = [v6 _formattedPostalAddress];
  }

  else
  {
    v7 = 0;
  }

  if (![v7 length])
  {
    v8 = [(MKMapItem *)self _geoMapItem];
    v9 = [v8 contactIsMe];

    if (v9)
    {
      v10 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
      v11 = [v10 addressBookAttributes];
      v12 = [v11 addressIdentifier];

      if ([v12 length])
      {
        v13 = [(MKMapItem *)self _postalAddressFromMeCardUsingAddressIdentifier:v12];
        v14 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v13 style:0];

        v7 = v14;
      }
    }
  }

  if ([v7 length])
  {
    v15 = v7;
  }

  else
  {
    v16 = [(GEOMapItem *)self->_geoMapItem addressObject];
    v17 = [v16 fullAddressWithMultiline:1];
    v18 = [(MKMapItem *)self _addressOrNil:v17];

    if (v18)
    {
      v15 = v18;
    }

    else
    {
      v19 = [(MKAddress *)self->_address fullAddress];
      v15 = [(MKMapItem *)self _addressOrNil:v19];
    }
  }

  return v15;
}

- (id)_postalAddressFromMeCardUsingAddressIdentifier:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23[0] = *MEMORY[0x1E695C360];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v5 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v6 = [v5 _ios_meContactWithKeysToFetch:v4 error:0];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__635;
  v21 = __Block_byref_object_dispose__636;
  v22 = 0;
  v7 = [v6 postalAddresses];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __60__MKMapItem__postalAddressFromMeCardUsingAddressIdentifier___block_invoke;
  v14 = &unk_1E76C9360;
  v8 = v3;
  v15 = v8;
  v16 = &v17;
  [v7 enumerateObjectsUsingBlock:&v11];

  v9 = [v18[5] value];

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __60__MKMapItem__postalAddressFromMeCardUsingAddressIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_addressFormattedAsStreetOnly
{
  v3 = [(GEOMapItem *)self->_geoMapItem geoAddress];
  v4 = [v3 structuredAddress];
  v5 = [v4 thoroughfare];
  v6 = [(MKMapItem *)self _addressOrNil:v5];

  return v6;
}

- (id)_addressFormattedAsCity
{
  v3 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v4 = [v3 cityDisplayNameWithFallback:0];
  v5 = [(MKMapItem *)self _addressOrNil:v4];

  return v5;
}

- (id)_addressOrNil:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_canGetDirections
{
  if ([(MKMapItem *)self _isMapItemTypeBrand])
  {
    return 0;
  }

  v4 = [(MKMapItem *)self _geoAddress];
  v5 = [v4 structuredAddress];
  v6 = [v5 countryCode];
  v7 = [v6 uppercaseString];

  if (-[MKMapItem _isMapItemTypeTransit](self, "_isMapItemTypeTransit") || ![v7 length])
  {
    v3 = 1;
  }

  else
  {
    v8 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    v3 = [v8 countryCode:v7 supportsFeature:1];
  }

  return v3;
}

- (id)_urlExtraStorage
{
  if (GEOConfigGetBOOL())
  {
    v3 = objc_opt_new();
    v4 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];

    v5 = v4 == 0;
    if (v4)
    {
      v6 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
      v7 = [v6 copy];
      [v3 setPhoneNumber:v7];
    }

    v8 = [(GEOMapItemStorageUserValues *)self->_userValues url];

    if (v8)
    {
      v9 = [(GEOMapItemStorageUserValues *)self->_userValues url];
      [v3 setUrl:v9];

      v5 = 0;
    }

    v10 = [(MKMapItem *)self _styleAttributes];
    v11 = v10;
    if (v10 && [v10 hasAttributes])
    {
      v12 = [objc_alloc(MEMORY[0x1E69A25E0]) initWithGEOFeatureStyleAttributes:v11];
      [v3 setStyleAttributes:v12];

      v5 = 0;
    }

    v13 = [(MKMapItem *)self _displayMapRegion];

    if (v13)
    {
      v14 = [(MKMapItem *)self _displayMapRegion];
      v15 = [v14 copy];
      [v3 setMapRegion:v15];

      v16 = v3;
    }

    else if (v5)
    {
      v16 = 0;
    }

    else
    {
      v16 = v3;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_createFullSharingURLWithLookAroundViewState:(id)a3 includeSensitiveFields:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MKMapItem *)self place];
  [v7 coordinate];
  v9 = v8;
  [v7 coordinate];
  v11 = v10;
  if (v4)
  {
    [(MKMapItem *)self name];
  }

  else
  {
    [(MKMapItem *)self _nameFromPlaceData];
  }
  v12 = ;
  if ([(MKMapItem *)self isCurrentLocation])
  {
    v13 = [(MKMapItem *)self _urlExtraStorage];
    v14 = [_MKURLBuilder URLForCoordinate:0 address:v12 label:v13 extraStorage:0 useWebPlaceCard:v9, v11];
    goto LABEL_21;
  }

  if ([(GEOMapItem *)self->_geoMapItem contactIsMe]&& ([(GEOMapItem *)self->_geoMapItem contactAddressType]== 1 || [(GEOMapItem *)self->_geoMapItem contactAddressType]== 2))
  {
    [(MKMapItem *)self _coordinate];
    v9 = v15;
    v11 = v16;
  }

  v13 = [(MKMapItem *)self _addressFormattedAsSinglelineAddress];
  v17 = [(MKMapItem *)self _muid];
  v18 = [v7 localSearchProviderID];
  if (v7)
  {
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [(GEOMapItem *)self->_geoMapItem coordinate];
    v9 = v19;
    [(GEOMapItem *)self->_geoMapItem coordinate];
    v11 = v20;
    if (!v17)
    {
LABEL_17:
      v21 = [(MKMapItem *)self _urlExtraStorage];
      v23 = [_MKURLBuilder URLForCoordinate:v13 address:v12 label:v21 extraStorage:0 useWebPlaceCard:v6 muninViewState:v9, v11];
LABEL_19:
      v14 = v23;
      goto LABEL_20;
    }
  }

  if (!v18)
  {
    goto LABEL_17;
  }

  if (!MapsFeature_IsEnabled_URLUnification())
  {
    v21 = [(MKMapItem *)self _urlExtraStorage];
    v23 = [_MKURLBuilder URLForInternalBusiness:v12 id:v17 provider:v18 coordinate:v13 address:v21 extraStorage:0 useWebPlaceCard:v9 muninViewState:v11, v6];
    goto LABEL_19;
  }

  v21 = [(MKMapItem *)self _identifier];
  v22 = [(MKMapItem *)self _urlExtraStorage];
  v14 = [_MKURLBuilder URLForCoordinate:v13 address:v12 label:v21 mapItemIdentifier:v22 extraStorage:0 useWebPlaceCard:v6 muninViewState:v9, v11];

LABEL_20:
LABEL_21:

  return v14;
}

- (id)_fullAddressWithMultiline:(BOOL)a3
{
  if (a3)
  {
    [(MKMapItem *)self _addressFormattedAsMultilineAddress];
  }

  else
  {
    [(MKMapItem *)self _addressFormattedAsSinglelineAddress];
  }
  v3 = ;

  return v3;
}

- (BOOL)_isEquivalentURLRepresentationTo:(id)a3
{
  v4 = a3;
  if (-[MKMapItem isCurrentLocation](self, "isCurrentLocation") && ([v4 isCurrentLocation] & 1) != 0)
  {
    v5 = 1;
  }

  else if ((!-[MKMapItem isCurrentLocation](self, "isCurrentLocation") || [v4 isCurrentLocation]) && (-[MKMapItem isCurrentLocation](self, "isCurrentLocation") || (objc_msgSend(v4, "isCurrentLocation") & 1) == 0))
  {
    v6 = [(MKMapItem *)self place];
    v7 = [v4 place];
    v8 = v7;
    v5 = 0;
    if (v6 && v7)
    {
      v5 = [v6 _isEquivalentURLRepresentationTo:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKMapItem)initWithUrlRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"currentloc"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(MKMapItem *)self initWithGeoMapItem:0 isPlaceHolderPlace:0];
    [(MKMapItem *)v7 setIsCurrentLocation:1];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69A2348]) initWithUrlRepresentation:v4];
    if (v8)
    {
      v9 = [(MKMapItem *)self initWithPlace:v8];
    }

    else
    {
      v9 = [(MKMapItem *)self init];
    }

    v7 = v9;
  }

  return v7;
}

- (id)urlRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(MKMapItem *)self isCurrentLocation])
  {
    v6 = @"currentloc";
    v7[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = [(MKMapItem *)self place];
    v3 = [v4 urlRepresentation];
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_isCurrentLocation)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v4 forKey:@"MKMapItemIsCurrentLocation"];
  }

  else
  {
    v5 = [(GEOMapItemStorageUserValues *)self->_userValues name];

    if (v5)
    {
      v6 = [(GEOMapItemStorageUserValues *)self->_userValues name];
      [v3 setObject:v6 forKey:@"MKMapItemName"];
    }

    v7 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];

    if (v7)
    {
      v8 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
      [v3 setObject:v8 forKey:@"MKMapItemPhoneNumber"];
    }

    v9 = [(GEOMapItemStorageUserValues *)self->_userValues url];

    if (v9)
    {
      v10 = [(GEOMapItemStorageUserValues *)self->_userValues url];
      [v3 setObject:v10 forKey:@"MKMapItemURLString"];
    }

    v11 = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];

    if (v11)
    {
      v12 = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];
      [v3 setObject:v12 forKey:@"MKMapItemTimeZoneName"];
    }

    if (self->_geoMapItem)
    {
      v4 = [(MKMapItem *)self _geoMapItemStorageForPersistence];
      v13 = [v4 data];
      if (v13)
      {
        v14 = [v4 data];
        [v3 setObject:v14 forKey:@"MKMapItemGEOMapItem"];
      }
    }

    else
    {
      v15 = [(MKMapItem *)self place];

      if (!v15)
      {
        goto LABEL_18;
      }

      v4 = [(MKMapItem *)self place];
      v13 = [v4 data];
      [v3 setObject:v13 forKey:@"MKMapItemGEOPlace"];
    }
  }

LABEL_18:

  return v3;
}

- (NSData)_handle
{
  if (self->_geoMapItem)
  {
    v3 = [MEMORY[0x1E69A2208] sharedService];
    v4 = [v3 handleForMapItem:self->_geoMapItem];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)openInMapsWithLaunchOptions:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v6 = [MKMapItem urlForMapItem:self options:a3];
  if (v6)
  {
    v7 = +[MKSystemController sharedInstance];
    [v7 openURL:v6 completionHandler:v8];
  }

  else if (v8)
  {
    v8[2](v8, 0);
  }
}

- (BOOL)openInMapsWithLaunchOptions:(NSDictionary *)launchOptions
{
  v3 = [MKMapItem urlForMapItem:self options:launchOptions];
  if (v3)
  {
    v4 = +[MKUsageCounter sharedCounter];
    [v4 countUsageOfTypeIfNeeded:57];

    v5 = +[MKSystemController sharedInstance];
    v6 = [v5 openURL:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)openInMapsWithLaunchOptions:(NSDictionary *)launchOptions fromScene:(UIScene *)scene completionHandler:(void *)completion
{
  v11 = scene;
  v8 = completion;
  v9 = [MKMapItem urlForMapItem:self options:launchOptions];
  if (v9)
  {
    v10 = +[MKSystemController sharedInstance];
    [v10 openURL:v9 fromScene:v11 completionHandler:v8];
  }

  else if (v8)
  {
    v8[2](v8, 0);
  }
}

- (BOOL)_canBeClaimed
{
  v2 = [(MKMapItem *)self _poiClaim];
  v3 = [v2 isClaimable];

  return v3;
}

- (BOOL)_isClaimed
{
  v2 = [(MKMapItem *)self _poiClaim];
  v3 = [v2 isClaimed];

  return v3;
}

- (GEOEVChargerAvailability)_realTimeAvailableEVCharger
{
  chargerAvailability = self->_chargerAvailability;
  if (chargerAvailability)
  {
    v3 = chargerAvailability;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E69A1D60]);
    v6 = [(GEOMapItem *)self->_geoMapItem _placeData];
    v7 = [v5 initWithPlaceData:v6];

    v8 = self->_chargerAvailability;
    self->_chargerAvailability = v7;
    v9 = v7;

    v3 = self->_chargerAvailability;
  }

  return v3;
}

- (id)_factoidWithSemantic:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(MKMapItem *)self _encyclopedicInfo];
  v5 = [v4 factoids];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 semantic] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (NSString)_chargerNumberString
{
  v3 = [(MKMapItem *)self pointOfInterestCategory];

  v4 = [(MKMapItem *)self _factoidWithSemantic:1];
  v5 = v4;
  v6 = 0;
  if (v3 == @"MKPOICategoryEVCharger" && v4)
  {
    [v4 value];
    v6 = v7;
    v8 = _MKLocalizedStringFromThisBundle(@"Number_of_Chargers");
    if (v6)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v6];
    }
  }

  return v6;
}

- (BOOL)_hasChargerNumberString
{
  v2 = [(MKMapItem *)self _chargerNumberString];
  v3 = [v2 length] != 0;

  return v3;
}

- (GEOBusinessHours)_messageBusinessHours
{
  v2 = [(GEOMapItem *)self->_geoMapItem _messageLink];
  v3 = [v2 messageBusinessHours];

  return v3;
}

- (id)_localizedNextOpeningStringShort:(BOOL)a3
{
  v77 = a3;
  v100 = *MEMORY[0x1E69E9840];
  v4 = [(MKMapItem *)self _geoMapItem];
  v5 = [v4 _messageLink];
  v6 = [v5 messageBusinessHours];
  v7 = [v6 placeDailyHours];

  v8 = [(MKMapItem *)self _geoMapItem];
  v9 = [v8 _messageLink];
  v10 = [v9 timeZone];

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [v12 components:512 fromDate:v11];

  v79 = v13;
  v14 = [v13 weekday];
  v15 = [MEMORY[0x1E695DEE8] currentCalendar];
  v80 = v10;
  [v15 setTimeZone:v10];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v92 objects:v99 count:16];
  v81 = v11;
  v82 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = *v93;
    v70 = *v93;
    v72 = v14;
    do
    {
      v20 = 0;
      v74 = v18;
      do
      {
        if (*v93 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v92 + 1) + 8 * v20);
        v22 = [v21 dayOfWeekRange];
        if (v14 >= v22 && v14 - v22 < v23)
        {
          v25 = [v15 components:96 fromDate:v11];
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v26 = [v21 openIntervals];
          v27 = [v26 countByEnumeratingWithState:&v88 objects:v98 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v89;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v89 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v88 + 1) + 8 * i);
                v32 = [v31 startDate];
                v33 = [v15 components:96 fromDate:v32];

                v34 = [v33 hour];
                if (v34 > [v25 hour] || (v35 = objc_msgSend(v33, "hour"), v35 == objc_msgSend(v25, "hour")) && (v36 = objc_msgSend(v33, "minute"), v36 > objc_msgSend(v25, "minute")))
                {
                  v52 = +[MKMapItem _localizedNextOpeningHoursFormatter];
                  v53 = [v31 startDate];
                  v54 = [v52 stringFromDate:v53];

                  if (v77)
                  {
                    v55 = @"Will open at %@";
                  }

                  else
                  {
                    v55 = @"Business is closed and will open at %@";
                  }

                  v56 = _MKLocalizedStringFromThisBundle(v55);
                  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:v56, v54];

                  v50 = v81;
                  v16 = v82;
                  v37 = v82;
                  v51 = v79;
LABEL_53:

                  goto LABEL_54;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v88 objects:v98 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v11 = v81;
          v16 = v82;
          v19 = v70;
          v14 = v72;
          v18 = v74;
        }

        ++v20;
      }

      while (v20 != v18);
      v18 = [v16 countByEnumeratingWithState:&v92 objects:v99 count:16];
    }

    while (v18);
  }

  v37 = [v15 components:528 fromDate:v11];
  for (j = 1; j != 7; ++j)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v25 = v16;
    v38 = [v25 countByEnumeratingWithState:&v84 objects:v97 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v85;
      while (2)
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v85 != v40)
          {
            objc_enumerationMutation(v25);
          }

          v42 = *(*(&v84 + 1) + 8 * k);
          v43 = [v37 weekday];
          v44 = ((j - 1 + v43) * 0x2492492492492493uLL) >> 64;
          v45 = j + v43 - 7 * ((v44 + ((j - 1 + v43 - v44) >> 1)) >> 2);
          v46 = [v42 dayOfWeekRange];
          if (v45 >= v46 && v45 - v46 < v47)
          {
            memset(v83, 0, sizeof(v83));
            v26 = [v42 openIntervals];
            if ([v26 countByEnumeratingWithState:v83 objects:v96 count:16])
            {
              v57 = **(&v83[0] + 1);
              if (j == 1)
              {
                v58 = +[MKMapItem _localizedNextOpeningHoursFormatter];
                v59 = [v57 startDate];
                v60 = [v58 stringFromDate:v59];

                if (v77)
                {
                  v61 = @"Will open at %@";
                }

                else
                {
                  v61 = @"Business is closed and will open at %@";
                }

                v62 = _MKLocalizedStringFromThisBundle(v61);
                v63 = [MEMORY[0x1E696AEC0] stringWithFormat:v62, v60];
              }

              else
              {
                if (v77)
                {
                  v64 = @"Will open %1$@ at %2$@";
                }

                else
                {
                  v64 = @"Business is closed and will open %1$@ at %2$@";
                }

                v65 = _MKLocalizedStringFromThisBundle(v64);
                v73 = MEMORY[0x1E696AEC0];
                v76 = v65;
                v62 = +[MKMapItem _localizedNextOpeningDayOftheWeekFormatter];
                v78 = [v57 startDate];
                v71 = [v62 stringFromDate:v78];
                v66 = +[MKMapItem _localizedNextOpeningHoursFormatter];
                v67 = [v57 startDate];
                v68 = [v66 stringFromDate:v67];
                v60 = v76;
                v63 = [v73 stringWithFormat:v76, v71, v68];
              }

              v50 = v81;
              v16 = v82;
              v51 = v79;

              v49 = v63;
              goto LABEL_53;
            }
          }
        }

        v39 = [v25 countByEnumeratingWithState:&v84 objects:v97 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    v16 = v82;
  }

  v49 = 0;
  v50 = v81;
  v51 = v79;
LABEL_54:

  return v49;
}

- (id)hoursBuilderForSearchResultCellForOptions:(unint64_t)a3 conciseStyle:(BOOL)a4 openAt:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(NSDictionary *)self->_cachedHoursBuilder mutableCopy];
  cachedHoursBuilder = self->_cachedHoursBuilder;
  if (!cachedHoursBuilder)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);

    objc_storeStrong(&self->_cachedHoursBuilder, v11);
    cachedHoursBuilder = self->_cachedHoursBuilder;
    v9 = v11;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v13 = [(NSDictionary *)cachedHoursBuilder objectForKey:v12];

  if (!v13)
  {
    v13 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:self localizedHoursStringOptions:a3 conciseStyle:v5 openAt:v8];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v9 setObject:v13 forKey:v14];

    v15 = [v9 copy];
    v16 = self->_cachedHoursBuilder;
    self->_cachedHoursBuilder = v15;
  }

  v17 = v13;

  return v17;
}

- (BOOL)valueForAmenityType:(int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(GEOMapItem *)self->_geoMapItem _amenities];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 amenityType] == a3)
        {
          v10 = [v9 isAmenityPresent];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasAmenityType:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(GEOMapItem *)self->_geoMapItem _amenities];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) amenityType] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (NSString)_firstLocalizedCategoryName
{
  firstLocalizedCategoryName = self->_firstLocalizedCategoryName;
  if (!firstLocalizedCategoryName)
  {
    v4 = [(MKMapItem *)self _localizedCategoryNamesForType:1];
    v5 = [v4 firstObject];
    v6 = self->_firstLocalizedCategoryName;
    self->_firstLocalizedCategoryName = v5;

    firstLocalizedCategoryName = self->_firstLocalizedCategoryName;
  }

  return firstLocalizedCategoryName;
}

- (id)_address
{
  if (self->_isCurrentLocation)
  {
    v3 = 0;
  }

  else
  {
    geoMapItem = self->_geoMapItem;
    if (!geoMapItem || ([(GEOMapItem *)geoMapItem _placeData], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7) || (v3 = [[MKAddress alloc] initWithGeoMapItem:self->_geoMapItem]) == 0)
    {
      v3 = self->_address;
    }
  }

  return v3;
}

- (MKAddressRepresentations)addressRepresentations
{
  if (!self->_addressRepresentations)
  {
    v3 = [(GEOMapItem *)self->_geoMapItem _placeData];

    if (v3)
    {
      v4 = [[MKAddressRepresentations alloc] initWithGeoMapItem:self->_geoMapItem];
      addressRepresentations = self->_addressRepresentations;
      self->_addressRepresentations = v4;
    }
  }

  v6 = self->_addressRepresentations;

  return v6;
}

- (NSString)_priceRangeString
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = MKCurrencySymbolForLocale(v3);

  v5 = [(GEOMapItem *)self->_geoMapItem _priceRange];
  if (v5)
  {
    v6 = v5;
    v7 = &stru_1F15B23C0;
    do
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, v4];

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = &stru_1F15B23C0;
  }

  return v8;
}

- (NSString)_priceDescription
{
  v2 = [(GEOMapItem *)self->_geoMapItem _priceDescription];
  v3 = [v2 priceDescription];

  return v3;
}

- (BOOL)_hasPriceDescription
{
  v2 = [(GEOMapItem *)self->_geoMapItem _priceDescription];
  v3 = [v2 hasPriceDescription];

  return v3;
}

- (NSString)_localizedSampleSizeForUserRatingScoreString
{
  localizedSampleSizeForUserRatingScoreString = self->_localizedSampleSizeForUserRatingScoreString;
  if (!localizedSampleSizeForUserRatingScoreString)
  {
    v4 = MEMORY[0x1E696ADA0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MKMapItem _sampleSizeForUserRatingScore](self, "_sampleSizeForUserRatingScore")}];
    v6 = [v4 localizedStringFromNumber:v5 numberStyle:0];
    v7 = self->_localizedSampleSizeForUserRatingScoreString;
    self->_localizedSampleSizeForUserRatingScoreString = v6;

    localizedSampleSizeForUserRatingScoreString = self->_localizedSampleSizeForUserRatingScoreString;
  }

  return localizedSampleSizeForUserRatingScoreString;
}

- (id)_identifier
{
  v9 = self->_isolation;
  _geo_isolate_lock();
  if (!self->_identifier && [(GEOMapItem *)self->_geoMapItem _hasMUID])
  {
    v3 = [MKMapItemIdentifier alloc];
    v4 = [(GEOMapItem *)self->_geoMapItem _identifier];
    v5 = [(MKMapItemIdentifier *)v3 initWithGEOMapItemIdentifier:v4];
    identifier = self->_identifier;
    self->_identifier = v5;
  }

  v7 = self->_identifier;
  _geo_isolate_unlock();

  return v7;
}

- (NSSet)alternateIdentifiers
{
  alternateIdentifiers = self->_alternateIdentifiers;
  if (!alternateIdentifiers)
  {
    v4 = [(GEOMapItem *)self->_geoMapItem _alternateIdentifiers];
    v5 = [v4 count];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DFA8]);
      v7 = [(GEOMapItem *)self->_geoMapItem _alternateIdentifiers];
      v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

      v9 = [(GEOMapItem *)self->_geoMapItem _alternateIdentifiers];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __33__MKMapItem_alternateIdentifiers__block_invoke;
      v17[3] = &unk_1E76C9240;
      v18 = v8;
      v10 = v8;
      [v9 enumerateObjectsUsingBlock:v17];

      v11 = [v10 copy];
      v12 = self->_alternateIdentifiers;
      self->_alternateIdentifiers = v11;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
      v14 = self->_alternateIdentifiers;
      self->_alternateIdentifiers = v13;
    }

    alternateIdentifiers = self->_alternateIdentifiers;
  }

  v15 = alternateIdentifiers;

  return v15;
}

void __33__MKMapItem_alternateIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 hasMapsIdentifierString])
  {
    v3 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v4];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }
}

- (MKMapItemIdentifier)identifier
{
  v2 = [(MKMapItem *)self _identifier];
  v3 = [(MKMapItemIdentifier *)v2 geoMapItemIdentifier];
  if ([v3 hasMapsIdentifierString])
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)_hasMuninViewState
{
  v2 = [(GEOMapItem *)self->_geoMapItem _muninViewState];
  v3 = v2 != 0;

  return v3;
}

- (void)preloadTransitInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MKMapItem *)self _transitInfo];
    v6 = [v5 labelItems];
    v7 = [v6 count];

    if (v7)
    {
      objc_initWeak(&location, self);
      v8 = [MKTransitInfoPreloader alloc];
      v9 = [(MKMapItem *)self _transitInfo];
      v10 = [v9 labelItems];
      v11 = [(MKTransitInfoPreloader *)v8 initWithTransitLabels:v10];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__MKMapItem_preloadTransitInfoWithCompletion___block_invoke;
      v12[3] = &unk_1E76C9218;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      [(MKTransitInfoPreloader *)v11 preloadWithCompletion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      v4[2](v4);
    }
  }
}

void __46__MKMapItem_preloadTransitInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 33, a2);
  }

  (*(*(a1 + 32) + 16))();
}

- (GEOMapItemTransitInfo)_transitInfo
{
  if (!self->_defaultTransitInfo && !self->_isTransitInfoUpdated && [(GEOMapItem *)self->_geoMapItem _hasTransit])
  {
    v3 = [(GEOMapItem *)self->_geoMapItem _transitInfo];
    defaultTransitInfo = self->_defaultTransitInfo;
    self->_defaultTransitInfo = v3;
  }

  v5 = 64;
  if (self->_isTransitInfoUpdated)
  {
    v5 = 56;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (id)_formatterForAdamId
{
  numberFormatterForAdamId = self->_numberFormatterForAdamId;
  if (!numberFormatterForAdamId)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = self->_numberFormatterForAdamId;
    self->_numberFormatterForAdamId = v4;

    [(NSNumberFormatter *)self->_numberFormatterForAdamId setNumberStyle:1];
    numberFormatterForAdamId = self->_numberFormatterForAdamId;
  }

  return numberFormatterForAdamId;
}

- (GEOTransitAttribution)_transitAttribution
{
  updatedTransitAttribution = self->_updatedTransitAttribution;
  if (updatedTransitAttribution)
  {
    v3 = updatedTransitAttribution;
  }

  else
  {
    v3 = [(GEOMapItem *)self->_geoMapItem _transitAttribution];
  }

  return v3;
}

- (BOOL)_hasTransitLabels
{
  v2 = [(MKMapItem *)self _transitInfo];
  v3 = [v2 labelItems];
  v4 = [v3 count] != 0;

  return v4;
}

- (NSString)_transitDisplayName
{
  v2 = [(MKMapItem *)self _transitInfo];
  v3 = [v2 displayName];

  return v3;
}

- (BOOL)_isMapItemTypeTransit
{
  if ([(MKMapItem *)self _hasTransit]|| self->_isMapItemTypeTransit)
  {
    return 1;
  }

  v4 = [(MKMapItem *)self _geoMapItem];
  v3 = [v4 _placeDisplayType] == 4;

  return v3;
}

- (CLLocationCoordinate2D)_labelCoordinate
{
  [(GEOMapItem *)self->_geoMapItem labelCoordinate];
  if (((fabs(v3 + 180.0) < 0.00000001) & (fabs(v2 + 180.0) < 0.00000001)) != 0)
  {
    v2 = *MEMORY[0x1E6985CC0];
    v3 = *(MEMORY[0x1E6985CC0] + 8);
  }

  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (id)_location
{
  if (self->_geoMapItem)
  {
    [(MKMapItem *)self _coordinate];
    v4 = v3;
    v6 = v5;
    v7 = [(GEOMapItem *)self->_geoMapItem referenceFrame];
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v7 == 2);
    }

    v9 = __22__MKMapItem__location__block_invoke(v8, v4, v6);
  }

  else
  {
    v10 = [(GEOPlace *)self->_place clLocation];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = __22__MKMapItem__location__block_invoke(0, *MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8));
    }

    v9 = v12;
  }

  return v9;
}

id __22__MKMapItem__location__block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = objc_alloc(MEMORY[0x1E6985C40]);
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 initWithCoordinate:v7 altitude:a1 horizontalAccuracy:a2 verticalAccuracy:a3 timestamp:0.0 referenceFrame:{0.0, -1.0}];

  return v8;
}

- (NSString)yelpID
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(MKMapItem *)self place];
  v3 = [v2 firstBusiness];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 sources];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 sourceName];
        v11 = [v10 caseInsensitiveCompare:@"yelp"];

        if (!v11)
        {
          v12 = [v9 sourceId];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)setUrl:(NSURL *)url
{
  v5 = [(NSURL *)url absoluteString];
  v4 = [(MKMapItem *)self userValues];
  [v4 setUrl:v5];
}

- (NSURL)url
{
  v3 = [(GEOMapItemStorageUserValues *)self->_userValues url];

  if (!v3 || (v4 = MEMORY[0x1E695DFF8], -[GEOMapItemStorageUserValues url](self->_userValues, "url"), v5 = objc_claimAutoreleasedReturnValue(), [v4 URLWithString:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(MKMapItem *)self place];

    if (v7)
    {
      v8 = [(MKMapItem *)self place];
      v9 = [v8 firstBusiness];

      v10 = [v9 uRL];
    }

    else
    {
      v10 = [(GEOMapItem *)self->_geoMapItem _businessURL];
    }

    if ([v10 length])
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:v10];
      v11 = [v6 scheme];
      v12 = [v11 length];

      if (!v12)
      {
        v13 = MEMORY[0x1E695DFF8];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@", v10];
        v15 = [v13 URLWithString:v14];

        v6 = v15;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_getBusiness
{
  v3 = [(MKMapItem *)self place];
  v4 = [v3 firstBusiness];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A1BA8]);
    v5 = [(MKMapItem *)self place];
    [v5 addBusiness:v4];
  }

  return v4;
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  v4 = timeZone;
  v5 = v4;
  if (v4)
  {
    v11 = v4;
    v6 = [(NSTimeZone *)v4 name];
    v7 = [(MKMapItem *)self userValues];
    [v7 setTimeZoneName:v6];

    v8 = [(NSTimeZone *)v11 data];
    v9 = [(MKMapItem *)self userValues];
    [v9 setTimeZoneData:v8];
  }

  else
  {
    userValues = self->_userValues;
    if (!userValues)
    {
      goto LABEL_6;
    }

    v11 = 0;
    [(GEOMapItemStorageUserValues *)userValues setTimeZoneName:0];
    [(GEOMapItemStorageUserValues *)self->_userValues setTimeZoneData:0];
  }

  v5 = v11;
LABEL_6:
}

- (NSTimeZone)timeZone
{
  v3 = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFE8];
    v5 = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];
    v6 = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneData];
    v7 = [v4 timeZoneWithName:v5 data:v6];
  }

  else
  {
    v7 = [(GEOMapItem *)self->_geoMapItem timezone];
  }

  return v7;
}

- (MKPointOfInterestCategory)pointOfInterestCategory
{
  if (self->_useCustomPOICategory)
  {
    v2 = self->_customPOICategory;
  }

  else
  {
    v3 = [(MKMapItem *)self _geoMapItem];
    v4 = [v3 _poiCategory];

    if (v4)
    {
      v2 = MKPointOfInterestCategoryForGEOPOICategory(v4);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)setPointOfInterestCategory:(MKPointOfInterestCategory)pointOfInterestCategory
{
  v7 = pointOfInterestCategory;
  v4 = [(MKMapItem *)self pointOfInterestCategory];
  if (v7 | v4 && ([(NSString *)self->_customPOICategory isEqual:v7]& 1) == 0)
  {
    self->_useCustomPOICategory = 1;
    [(MKMapItem *)self willChangeValueForKey:@"pointOfInterestCategory"];
    v5 = [(NSString *)v7 copy];
    customPOICategory = self->_customPOICategory;
    self->_customPOICategory = v5;

    [(MKMapItem *)self didChangeValueForKey:@"pointOfInterestCategory"];
  }
}

- (BOOL)_phoneNumberOptsOutOfAds
{
  v3 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
  v4 = [v3 length];

  if (v4)
  {
    return 0;
  }

  geoMapItem = self->_geoMapItem;

  return [(GEOMapItem *)geoMapItem _optsOutOfTelephoneAds];
}

- (void)setPhoneNumber:(NSString *)phoneNumber
{
  v5 = [(NSString *)phoneNumber copy];
  v4 = [(MKMapItem *)self userValues];
  [v4 setPhoneNumber:v5];
}

- (void)setName:(NSString *)name
{
  v4 = [(NSString *)name copy];
  v5 = [(MKMapItem *)self userValues];
  [v5 setName:v4];

  v6 = [(GEOMapItemStorageUserValues *)self->_userValues name];
  [(GEOPlace *)self->_place setName:v6];
}

- (GEOMapItemStorage)_geoMapItemStorageForDragAndDrop
{
  v3 = [MEMORY[0x1E69A21E0] mapItemStorageForGEOMapItem:self->_geoMapItem forUseType:1];
  [v3 setUserValues:self->_userValues];

  return v3;
}

- (GEOMapItemStorage)_geoMapItemStorageForPersistence
{
  v3 = [MEMORY[0x1E69A21E0] mapItemStorageForGEOMapItem:self->_geoMapItem forUseType:0];
  [v3 setUserValues:self->_userValues];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if ([v6 isCurrentLocation])
    {
      v7 = [(MKMapItem *)self isCurrentLocation];
LABEL_15:

      goto LABEL_16;
    }

    if ([(GEOMapItem *)self->_geoMapItem isEqualToMapItem:v6[2]])
    {
      userValues = self->_userValues;
      if (userValues == v6[13] || [(GEOMapItemStorageUserValues *)userValues isEqual:?])
      {
        v9 = [v6 pointOfInterestCategory];
        if (!v9)
        {
          v3 = [(MKMapItem *)self pointOfInterestCategory];
          if (!v3)
          {
            goto LABEL_12;
          }
        }

        v10 = [v6 pointOfInterestCategory];
        v11 = [(MKMapItem *)self pointOfInterestCategory];
        v12 = [v10 isEqual:v11];

        if (v9)
        {

          if (v12)
          {
LABEL_12:
            v13 = [(MKMapItem *)self place];
            v14 = [v6 place];
            v7 = [v13 isEqual:v14];

            goto LABEL_15;
          }
        }

        else
        {

          if (v12)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v7 = 0;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  if ([(MKMapItem *)self isCurrentLocation])
  {
    return 0;
  }

  geoMapItem = self->_geoMapItem;
  if (geoMapItem)
  {

    return [(GEOMapItem *)geoMapItem hash];
  }

  else
  {
    v5 = [(MKMapItem *)self place];
    v6 = [v5 hash];

    return v6;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MKMapItem *)self name];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"name"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MKMapItem isCurrentLocation](self, "isCurrentLocation")}];
  [v3 setObject:v5 forKeyedSubscript:@"isCurrentLocation"];

  v6 = [(MKMapItem *)self phoneNumber];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"phoneNumber"];
  }

  v7 = [(MKMapItem *)self timeZone];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"timeZone"];
  }

  v8 = [(MKMapItem *)self url];
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"url"];
  }

  v9 = [(MKMapItem *)self placemark];
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"placemark"];
  }

  v10 = [(MKMapItem *)self address];
  v11 = [v10 fullAddress];

  if (v11)
  {
    v12 = [(MKMapItem *)self address];
    v13 = [v12 fullAddress];
    [v3 setObject:v13 forKeyedSubscript:@"address"];
  }

  v14 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = MKMapItem;
  v15 = [(MKMapItem *)&v18 description];
  v16 = [v14 stringWithFormat:@"%@ %@", v15, v3];

  return v16;
}

- (void)_refreshAttribution
{
  v32 = *MEMORY[0x1E69E9840];
  geo_assert_isolated();
  v3 = [_MKMapItemPlaceAttribution alloc];
  v4 = [(GEOMapItem *)self->_geoMapItem _attribution];
  v5 = [(_MKMapItemPlaceAttribution *)v3 initWithGEOMapItemAttribution:v4];
  attribution = self->_attribution;
  self->_attribution = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [(GEOMapItem *)self->_geoMapItem _allPhotoAttributions];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[_MKMapItemPhotosAttribution alloc] initWithGEOMapItemAttribution:*(*(&v27 + 1) + 8 * v12)];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v14 = [v7 firstObject];
  photosAttribution = self->_photosAttribution;
  self->_photosAttribution = v14;

  v16 = [v7 copy];
  allPhotoAttributions = self->_allPhotoAttributions;
  self->_allPhotoAttributions = v16;

  v18 = [_MKMapItemReviewsAttribution alloc];
  v19 = [(GEOMapItem *)self->_geoMapItem _reviewsAttribution];
  v20 = [(_MKMapItemReviewsAttribution *)v18 initWithGEOMapItemAttribution:v19];
  reviewsAttribution = self->_reviewsAttribution;
  self->_reviewsAttribution = v20;

  v22 = [_MKMapItemAttribution alloc];
  v23 = [(GEOMapItem *)self->_geoMapItem _encyclopedicInfo];
  v24 = [v23 encyclopedicAttribution];
  v25 = [(_MKMapItemAttribution *)v22 initWithGEOMapItemAttribution:v24];
  encyclopedicInfoAttribution = self->_encyclopedicInfoAttribution;
  self->_encyclopedicInfoAttribution = v25;

  self->_hasLoadedAttribution = 1;
}

- (_MKMapItemAttribution)_encyclopedicInfoAttribution
{
  v5 = self->_isolation;
  _geo_isolate_lock();
  if (!self->_hasLoadedAttribution)
  {
    [(MKMapItem *)self _refreshAttribution];
  }

  v3 = self->_encyclopedicInfoAttribution;
  _geo_isolate_unlock();

  return v3;
}

- (_MKMapItemReviewsAttribution)_reviewsAttribution
{
  v5 = self->_isolation;
  _geo_isolate_lock();
  if (!self->_hasLoadedAttribution)
  {
    [(MKMapItem *)self _refreshAttribution];
  }

  v3 = self->_reviewsAttribution;
  _geo_isolate_unlock();

  return v3;
}

- (NSArray)_allPhotoAttributions
{
  v5 = self->_isolation;
  _geo_isolate_lock();
  if (!self->_hasLoadedAttribution)
  {
    [(MKMapItem *)self _refreshAttribution];
  }

  v3 = self->_allPhotoAttributions;
  _geo_isolate_unlock();

  return v3;
}

- (_MKMapItemPhotosAttribution)_photosAttribution
{
  v5 = self->_isolation;
  _geo_isolate_lock();
  if (!self->_hasLoadedAttribution)
  {
    [(MKMapItem *)self _refreshAttribution];
  }

  v3 = self->_photosAttribution;
  _geo_isolate_unlock();

  return v3;
}

- (_MKMapItemPlaceAttribution)_attribution
{
  v5 = self->_isolation;
  _geo_isolate_lock();
  if (!self->_hasLoadedAttribution)
  {
    [(MKMapItem *)self _refreshAttribution];
  }

  v3 = self->_attribution;
  _geo_isolate_unlock();

  return v3;
}

- (MKPlacemark)placemark
{
  if (self->_isCurrentLocation)
  {
    v2 = 0;
  }

  else
  {
    geoMapItem = self->_geoMapItem;
    if (geoMapItem)
    {
      v5 = [(GEOMapItem *)geoMapItem geoFenceMapRegion];
      if (v5)
      {
        v6 = [MEMORY[0x1E695FBB0] circularRegionFromMapRegion:v5];
        v7 = [(GEOMapItem *)self->_geoMapItem referenceFrame];
        if (v7 == 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2 * (v7 == 2);
        }

        [v6 setGeoReferenceFrame:v8];
      }

      else
      {
        v6 = 0;
      }

      v19 = [MKPlacemark alloc];
      v10 = [(MKMapItem *)self _location];
      v11 = [(GEOMapItem *)self->_geoMapItem addressDictionary];
      v12 = [(GEOMapItem *)self->_geoMapItem geoAddress];
      v13 = [v12 structuredAddress];
      v14 = [v13 areaOfInterests];
      v15 = v19;
      v16 = v10;
      v17 = v11;
      v18 = v6;
    }

    else
    {
      v5 = [(MKMapItem *)self place];
      v9 = [MKPlacemark alloc];
      v6 = [(MKMapItem *)self _location];
      v10 = [v5 addressDictionary];
      v11 = [v5 clRegion];
      v12 = [v5 address];
      v13 = [v12 structuredAddress];
      v14 = [v13 areaOfInterests];
      v15 = v9;
      v16 = v6;
      v17 = v10;
      v18 = v11;
    }

    v2 = [(MKPlacemark *)v15 initWithLocation:v16 addressDictionary:v17 region:v18 areasOfInterest:v14];
  }

  return v2;
}

- (MKMapItem)initWithPlacemark:(MKPlacemark *)placemark
{
  v4 = placemark;
  v5 = [(MKPlacemark *)v4 _geoMapItem];
  if (v5)
  {
    v6 = [(MKMapItem *)self initWithGeoMapItem:v5 isPlaceHolderPlace:1];
  }

  else
  {
    v7 = [(MKPlacemark *)v4 mkPostalAddressDictionary];

    v8 = [objc_alloc(MEMORY[0x1E69A2348]) initWithPlacemark:v4];
    if (v7)
    {
      v9 = [(MKMapItem *)self initWithPlace:v8 isPlaceHolderPlace:1];
    }

    else
    {
      v9 = [(MKMapItem *)self initWithPlace:v8];
    }

    v6 = v9;
  }

  return v6;
}

- (MKMapItem)initWithLocation:(id)a3 address:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 _geoMapItem];

  if (v8)
  {
    v9 = [v7 _geoMapItem];
    v10 = [(MKMapItem *)self initWithGeoMapItem:v9 isPlaceHolderPlace:1];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69A2348]) initWithCLLocation:v6];
    v11 = [(MKMapItem *)self initWithPlace:v9];
    v10 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_address, a4);
    }
  }

  v12 = v10;

  return v12;
}

- (MKMapItem)initWithCLLocation:(id)a3 placeType:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x1E69A2348];
  v7 = a3;
  v8 = [v6 alloc];
  [v7 coordinate];
  v10 = v9;
  [v7 coordinate];
  v12 = v11;

  v13 = [v8 initWithLatitude:v4 longitude:v10 placeType:v12];
  v14 = [(MKMapItem *)self initWithPlace:v13];

  return v14;
}

- (MKMapItem)initWithAddressDictionary:(id)a3
{
  v4 = a3;
  v5 = [MKPlacemark alloc];
  v6 = [(MKPlacemark *)v5 initWithCoordinate:v4 addressDictionary:*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8)];

  v7 = [(MKMapItem *)self initWithPlacemark:v6];
  return v7;
}

- (MKMapItem)initWithPlace:(id)a3 isPlaceHolderPlace:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E69A21E0] mapItemStorageForPlace:a3];
  v7 = [(MKMapItem *)self initWithGeoMapItem:v6 isPlaceHolderPlace:v4];

  return v7;
}

- (MKMapItem)initWithGeoMapItem:(id)a3 isPlaceHolderPlace:(BOOL)a4
{
  v7 = a3;
  v8 = [(MKMapItem *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_geoMapItem, a3);
    v9->_isPlaceHolder = a4;
    if (!v9->_geoMapItem)
    {
LABEL_9:
      v22 = v9;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(GEOMapItem *)v9->_geoMapItem userValues];
      userValues = v9->_userValues;
      v9->_userValues = v10;
    }

    place = [(GEOMapItem *)v9->_geoMapItem _placeData];
    if (!place)
    {
      v13 = [(GEOMapItem *)v9->_geoMapItem _placeResult];

      if (v13)
      {
        goto LABEL_8;
      }

      v24 = [(GEOMapItem *)v9->_geoMapItem _place];
      place = v9->_place;
      v9->_place = v24;
    }

LABEL_8:
    objc_initWeak(&location, v9);
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    geoMapItem = v9->_geoMapItem;
    v16 = [MEMORY[0x1E696ADC8] mainQueue];
    v17 = *MEMORY[0x1E69A1668];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __51__MKMapItem_initWithGeoMapItem_isPlaceHolderPlace___block_invoke;
    v28 = &unk_1E76C91F0;
    objc_copyWeak(&v29, &location);
    v18 = [v14 addObserverForName:v17 object:geoMapItem queue:v16 usingBlock:&v25];
    didResolveAttributionToken = v9->_didResolveAttributionToken;
    v9->_didResolveAttributionToken = v18;

    [v7 coordinate];
    v9->_presentCoordinate.latitude = v20;
    v9->_presentCoordinate.longitude = v21;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

LABEL_10:

  return v9;
}

void __51__MKMapItem_initWithGeoMapItem_isPlaceHolderPlace___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v6 = WeakRetained;
    v9 = v6;
    geo_isolate_sync();
    if (*(v11 + 24) == 1)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 postNotificationName:@"MKMapItemDidResolveAttribution" object:v6];
    }

    _Block_object_dispose(&v10, 8);
  }
}

_BYTE *__51__MKMapItem_initWithGeoMapItem_isPlaceHolderPlace___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[144] == 1)
  {
    result = [result _refreshAttribution];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (MKMapItem)initWithGeoMapItemAsCurrentLocation:(id)a3
{
  v3 = [(MKMapItem *)self initWithGeoMapItem:a3 isPlaceHolderPlace:0];
  [(MKMapItem *)v3 setIsCurrentLocation:1];
  return v3;
}

+ (id)_launchOptionsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v3];
  v5 = [v3 objectForKey:@"MKLaunchOptionsReferralIdentifierKey"];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];

    if (!v7)
    {
      goto LABEL_5;
    }

    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v5 bundleIdentifier];
    [v4 setObject:v8 forKey:@"MKLaunchOptionsReferralIdentifierKey"];
  }

LABEL_5:
  v9 = [v3 objectForKeyedSubscript:@"_MKLaunchOptionsRoutingArrivalDateKey"];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69A26F0]);
    [v10 setType:1];
    [v9 timeIntervalSinceReferenceDate];
    [v10 setTime:?];
    [v4 setObject:v10 forKey:@"MKLaunchOptionsTimePointKey"];
  }

  v11 = [MEMORY[0x1E69A2710] sharedInstance];
  v12 = v11;
  if (v11 && [v11 shareSessionWithMaps])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__MKMapItem__launchOptionsWithOptions___block_invoke;
    v15[3] = &unk_1E76C9338;
    v16 = v4;
    [v12 shortSessionValues:v15];
  }

  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];

  return v13;
}

void __39__MKMapItem__launchOptionsWithOptions___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [v10 setObject:v11 forKey:@"MKLaunchOptionsSessionIDLowKey"];

  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  [v12 setObject:v13 forKey:@"MKLaunchOptionsSessionIDHighKey"];

  v14 = *(a1 + 32);
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v14 setObject:v15 forKey:@"MKLaunchOptionsSessionCreationTimeKey"];

  v16 = *(a1 + 32);
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a6];
  [v16 setObject:v17 forKey:@"MKLaunchOptionsSessionSequenceNumberKey"];
}

+ (id)_defaultNavigationURLForURL:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![MEMORY[0x1E69A2220] isValidMapURL:v4])
  {
    v10 = [v4 scheme];
    v5 = [v10 lowercaseString];

    if ([v5 isEqualToString:@"geo-navigation"])
    {
      v11 = v4;
LABEL_29:

      goto LABEL_36;
    }

    if ([v5 isEqualToString:@"mapitem"])
    {
      [a1 mapItemsFromURL:v4 options:0];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v9 = v53 = 0u;
      v20 = [v9 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v51;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(v9);
            }

            v24 = *(*(&v50 + 1) + 8 * i);
            if (![v24 isCurrentLocation])
            {
              v38 = objc_alloc(MEMORY[0x1E69A2218]);
              v39 = [v24 _geoMapItem];
              [v39 coordinate];
              v41 = v40;
              v43 = v42;
              v44 = [v24 _addressFormattedAsSinglelineAddress];
              v45 = [v24 name];
              v46 = [v38 initForCoordinate:v44 address:v45 label:{v41, v43}];

              v11 = [v46 buildForDefaultNavigation];

              goto LABEL_28;
            }
          }

          v21 = [v9 countByEnumeratingWithState:&v50 objects:v54 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v25 = v9;
    }

    else
    {
      if (![v5 isEqualToString:@"x-maps-mapitemhandles"])
      {
        goto LABEL_35;
      }

      v49 = 0;
      v25 = [a1 _deserializeResourceOptionsFromURL:v4 error:&v49];
      v9 = [v25 objectForKey:@"MKMapItemLaunchHandles"];
      if (v9)
      {
        v27 = [MEMORY[0x1E69A26D8] locationQueryItemsWithMapItemHandles:v9];
        v28 = [v27 firstObject];
        if (v28)
        {
          v29 = v28;
          v30 = objc_alloc(MEMORY[0x1E69A2218]);
          [v29 coordinate];
          v32 = v31;
          v34 = v33;
          v35 = [v29 address];
          v36 = [v29 name];
          v37 = [v30 initForCoordinate:v35 address:v36 label:{v32, v34}];

          v11 = [v37 buildForDefaultNavigation];

          goto LABEL_29;
        }
      }
    }

    goto LABEL_35;
  }

  v5 = [objc_alloc(MEMORY[0x1E69A2220]) initWithURL:v4];
  [v5 parseIncludingCustomParameters:0];
  if ([v5 actionType] == 1)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2218]);
    v7 = [v5 directionsSourceAddressString];
    v8 = [v5 directionsDestinationAddressStrings];
    v9 = [v6 initForDirectionsFrom:v7 toDestinations:v8 transport:4 directionsOptions:0];
LABEL_8:

    goto LABEL_9;
  }

  if ([v5 actionType] == 4)
  {
    v12 = objc_alloc(MEMORY[0x1E69A2218]);
    v7 = [v5 locationQueryItem];
    [v7 coordinate];
    v14 = v13;
    v16 = v15;
    v8 = [v5 locationQueryItem];
    v17 = [v8 address];
    v18 = [v5 locationQueryItem];
    v19 = [v18 name];
    v9 = [v12 initForCoordinate:v17 address:v19 label:{v14, v16}];

    goto LABEL_8;
  }

  if ([v5 actionType] == 3)
  {
    v26 = objc_alloc(MEMORY[0x1E69A2218]);
    v7 = [v5 searchQuery];
    v9 = [v26 initForSearch:v7];
LABEL_9:

    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  if ([v5 actionType] == 2)
  {
    v47 = objc_alloc(MEMORY[0x1E69A2218]);
    [v5 centerCoordinate];
    v9 = [v47 initForMapFrameWithCenter:0xFFFFFFFFLL distance:0 heading:? pitch:? mapType:? trackingMode:? span:?];
    if (v9)
    {
LABEL_10:
      v11 = [v9 buildForDefaultNavigation];
LABEL_28:

      goto LABEL_29;
    }
  }

LABEL_35:

  v11 = [MEMORY[0x1E695DFF8] URLWithString:@"geo-navigation://"];
LABEL_36:

  return v11;
}

+ (void)_openDefaultNavigationWithURL:(id)a3 fromScene:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([_MKURLHandler canHandleURL:v8])
  {
    if (MapsFeature_IsEnabled_DefaultNavigation1PEnabled())
    {
      v11 = [MEMORY[0x1E69A2720] sharedService];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __71__MKMapItem__openDefaultNavigationWithURL_fromScene_completionHandler___block_invoke;
      v13[3] = &unk_1E76C9310;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      v17 = a1;
      [v11 getMapsDefaultNavigationAppState:v13];
    }

    else
    {
      v12 = +[MKSystemController sharedInstance];
      [v12 openURL:v8 fromScene:v9 completionHandler:v10];
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __71__MKMapItem__openDefaultNavigationWithURL_fromScene_completionHandler___block_invoke(id *a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MKMapItem__openDefaultNavigationWithURL_fromScene_completionHandler___block_invoke_2;
  block[3] = &unk_1E76C92E8;
  v11 = a2;
  v3 = a1 + 7;
  v4 = a1[4];
  v5 = a1[5];
  *&v6 = a1[6];
  *(&v6 + 1) = *v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__MKMapItem__openDefaultNavigationWithURL_fromScene_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v3 = +[MKSystemController sharedInstance];
    [v3 openURL:*(a1 + 32) fromScene:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v3 = [*(a1 + 56) _defaultNavigationURLForURL:*(a1 + 32)];
    v2 = +[MKSystemController sharedInstance];
    [v2 openURL:v3 fromScene:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

+ (void)_openDefaultNavigationWithItems:(id)a3 launchOptions:(id)a4 fromScene:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [MKMapItem urlForMapItems:a3 options:a4];
  [a1 _openDefaultNavigationWithURL:v12 fromScene:v11 completionHandler:v10];
}

+ (id)_urlForLocation:(id)a3 address:(id)a4 label:(id)a5 options:(id)a6
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  [v13 coordinate];
  v15 = v14;
  v17 = v16;
  if ([v10 length])
  {
    v26 = v10;
    v27 = @"FormattedAddressLines";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v28[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_alloc(MEMORY[0x1E69A2348]) initWithLatitude:v19 longitude:v15 addressDictionary:v17];
  v21 = [v13 referenceFrame];

  if (v21 == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * (v21 == 2);
  }

  [v20 setReferenceFrame:v22];
  v23 = [[a1 alloc] initWithPlace:v20];
  [v23 setName:v12];

  v24 = [a1 urlForMapItem:v23 options:v11];

  return v24;
}

+ (id)_urlForMapItemHandles:(id)a3 options:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [v8 setObject:v6 forKeyedSubscript:@"MKMapItemLaunchHandles"];
    v9 = [a1 _launchOptionsWithOptions:v7];

    if (v9)
    {
      v7 = [MKMapItem plistCompatibleDictionaryFromStandardOptions:v9];

      [v8 setObject:v7 forKey:@"MKMapItemLaunchAdditionsLaunchOptions"];
    }

    else
    {
      v7 = 0;
    }

    v17 = 0;
    v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v17];
    v12 = v17;
    if (!v11)
    {
      v13 = MKGetMKDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_ERROR, "Failed to serialize property list representation: %{public}@", buf, 0xCu);
      }
    }

    v14 = [v11 base64EncodedStringWithOptions:0];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-maps-mapitemhandles://%@", v14];
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_universalLinkForMapItems:(id)a3 options:(id)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _isDirectionsActionURL:v7];
  if (![v6 count] || !v8)
  {
    v11 = [v6 firstObject];
    v12 = objc_alloc_init(MEMORY[0x1E69A26D8]);
    v13 = v12;
    if (v11)
    {
      v14 = [v11 _geoMapItem];
      [v14 coordinate];
      [v13 setCoordinate:?];
    }

    else
    {
      [v12 setCoordinate:{-180.0, -180.0}];
    }

    v36 = [v11 _geoMapItem];
    v37 = [v36 _identifier];
    [v13 setMapItemIdentifier:v37];

    v38 = [v11 _addressFormattedAsSinglelineAddress];
    [v13 setAddress:v38];

    v39 = [v11 name];
    [v13 setName:v39];

    v40 = [v7 objectForKeyedSubscript:@"MKLaunchOptionsLaunchIntoRAP"];
    v41 = [v40 BOOLValue];

    v42 = [v7 objectForKeyedSubscript:@"MKLaunchOptionsCurrentLocationPlacecard"];
    if ([v42 BOOLValue])
    {

      if (!v41)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    v43 = [v11 isCurrentLocation];

    if (v41)
    {
LABEL_37:
      v44 = MEMORY[0x1E69A2218];
      v45 = [v13 mapItemIdentifier];
      [v13 coordinate];
      v47 = v46;
      v49 = v48;
      v50 = [v13 address];
      v51 = [v44 URLForReportAProblemWithMapItemIdentifier:v45 coordinate:v50 address:{v47, v49}];
LABEL_38:

LABEL_43:
      goto LABEL_44;
    }

    if (v43)
    {
LABEL_42:
      v51 = [MEMORY[0x1E69A2218] URLForPlaceForCurrentLocation];
      goto LABEL_43;
    }

    v63 = [v13 resolvedLocation];

    if (v63)
    {
      v64 = MEMORY[0x1E69A2218];
      [v13 coordinate];
      v66 = v65;
      v68 = v67;
      v45 = [v13 address];
      v50 = [v13 name];
      v69 = [v13 mapItemIdentifier];
      v51 = [v64 URLForCoordinate:v45 address:v50 label:v69 mapItemIdentifier:{v66, v68}];

      goto LABEL_38;
    }

    v70 = [objc_alloc(MEMORY[0x1E69A26E0]) initWithLaunchOptions:v7];
    [v13 coordinate];
    v72 = v71;
    v74 = v73;
    v75 = MEMORY[0x1E69A27D0];
    if ([v70 hasMapType])
    {
      v76 = [v70 mapType];
    }

    else
    {
      v76 = 0;
    }

    v78 = *(v75 + 16);
    v77 = *(v75 + 24);
    if ([v70 hasCamera])
    {
      v79 = [v70 camera];
      v80 = 0.0;
      v81 = 0.0;
      if ([v79 hasAltitude])
      {
        [v79 altitude];
        v81 = v82;
      }

      if ([v79 hasHeading])
      {
        [v79 heading];
        v80 = v83;
      }

      v84 = 0.0;
      if ([v79 hasPitch])
      {
        [v79 pitch];
        v84 = v85;
      }

      v105 = v77;
      v86 = v78;
      if ([v79 hasLatitude] && objc_msgSend(v79, "hasLongitude"))
      {
        [v79 latitude];
        v88 = v87;
        [v79 longitude];
        v90 = v89;
      }

      else
      {
        v88 = v72;
        v90 = v74;
      }
    }

    else
    {
      v81 = 0.0;
      if (![v70 hasCenterSpan])
      {
        v80 = 0.0;
        v84 = 0.0;
LABEL_87:
        v51 = [MEMORY[0x1E69A2218] URLForMapFrameWithCenter:v76 distance:0 heading:v72 pitch:v74 mapType:v81 trackingMode:v80 span:{v84, v78, v77}];

        goto LABEL_43;
      }

      v105 = v77;
      v86 = v78;
      v79 = [v70 centerSpan];
      [v79 latitude];
      v88 = v91;
      [v79 longitude];
      v90 = v92;
      if (fabs(v92) > 180.0 || fabs(v88) > 90.0)
      {
        v88 = v72;
        v90 = v74;
      }

      else
      {
        [v79 latitudeDelta];
        v94 = v93;
        [v79 longitudeDelta];
        if (v94 >= 0.0 && v94 <= 180.0)
        {
          v96 = v95;
          if (v95 >= 0.0 && v95 <= 360.0)
          {
            [v79 latitudeDelta];
            if (v97 > 0.0)
            {
              [v79 longitudeDelta];
              if (v98 > 0.0)
              {
                v86 = v94;
                v105 = v96;
              }
            }
          }
        }
      }

      v80 = 0.0;
      v84 = 0.0;
    }

    v72 = v88;
    v74 = v90;
    v78 = v86;
    v77 = v105;
    goto LABEL_87;
  }

  v9 = [v7 objectForKeyedSubscript:@"MKLaunchOptionsDirectionsMode"];
  v101 = v9;
  if ([v9 isEqualToString:@"MKLaunchOptionsDirectionsModeDefault"])
  {
    v10 = -1;
  }

  else if ([v9 isEqualToString:@"MKLaunchOptionsDirectionsModeWalking"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"MKLaunchOptionsDirectionsModeRoutingApps"))
  {
    v10 = 2;
  }

  else if ([v9 isEqualToString:@"MKLaunchOptionsDirectionsModeTransit"])
  {
    v10 = 1;
  }

  else
  {
    if ([v9 isEqualToString:@"MKLaunchOptionsDirectionsModeDriving"])
    {
      v100 = 0;
      goto LABEL_11;
    }

    if ([v9 isEqualToString:@"MKLaunchOptionsDirectionsModeCycling"])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }
  }

  v100 = v10;
LABEL_11:
  v15 = [v7 objectForKeyedSubscript:@"_MKLaunchOptionsRoutingAvoidHighwaysKey"];
  v16 = [v15 BOOLValue];

  v17 = [v7 objectForKeyedSubscript:@"_MKLaunchOptionsRoutingAvoidTollsKey"];
  v18 = [v17 BOOLValue];

  v19 = objc_alloc_init(MEMORY[0x1E69A26C8]);
  v20 = v19;
  if (v16)
  {
    [v19 setAvoidOptions:&unk_1F16121B0];
  }

  v102 = v7;
  if (v18)
  {
    [v20 setAvoidOptions:&unk_1F16121C8];
  }

  v99 = v20;
  v103 = v6;
  v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v21 = v6;
  v22 = [v21 countByEnumeratingWithState:&v106 objects:v110 count:16];
  if (!v22)
  {
    v24 = 0;
    goto LABEL_40;
  }

  v23 = v22;
  v24 = 0;
  v25 = *v107;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v107 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v106 + 1) + 8 * i);
      v28 = objc_alloc_init(MEMORY[0x1E69A26D8]);
      if ([v27 isCurrentLocation])
      {
        [v28 setIsCurrentLocation:1];
        if (v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = [v27 name];
        [v28 setName:v29];

        v30 = [v27 _addressFormattedAsSinglelineAddress];
        [v28 setAddress:v30];

        v31 = [v27 _geoMapItem];
        v32 = [v31 _identifier];

        if (v32)
        {
          v33 = [v27 _geoMapItem];
          v34 = [v33 _identifier];
          [v28 setMapItemIdentifier:v34];
        }

        v35 = [v27 _geoMapItem];
        [v35 coordinate];
        [v28 setCoordinate:?];

        if (v24)
        {
          goto LABEL_28;
        }
      }

      if ([v21 count] >= 2)
      {
        v24 = v28;
        goto LABEL_29;
      }

LABEL_28:
      [v104 addObject:v28];
LABEL_29:
    }

    v23 = [v21 countByEnumeratingWithState:&v106 objects:v110 count:16];
  }

  while (v23);
LABEL_40:

  v51 = [MEMORY[0x1E69A2218] URLForDirectionsFrom:v24 toDestinationItems:v104 transport:v100 directionsOptions:v99];

  v7 = v102;
  v6 = v103;
LABEL_44:
  v52 = [MEMORY[0x1E69A2710] sharedInstance];
  v53 = v52;
  if (v52 && [v52 shareSessionWithMaps])
  {
    v54 = [MEMORY[0x1E69A2710] sharedInstance];
    v55 = [v54 mapsUserSessionEntity];

    v56 = MEMORY[0x1E695DFF8];
    v57 = MEMORY[0x1E696AEC0];
    v58 = [v51 absoluteString];
    v59 = [v55 sessionEntityString];
    v60 = [v57 stringWithFormat:@"%@&%@", v58, v59];
    v61 = [v56 URLWithString:v60];

    v51 = v61;
  }

  return v51;
}

+ (BOOL)_shouldUseUniversalLinkForMapItems:(id)a3 options:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (GEOConfigGetBOOL() && MapsFeature_IsEnabled_URLUnification() && ((v8 = [a1 _isDirectionsActionURL:v7], objc_msgSend(v6, "count") < 2) || v8))
  {
    if (v8)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            v17 = [v16 identifier];
            if (v17)
            {
            }

            else
            {
              v18 = [v16 userValues];
              v19 = [v18 hasName];

              if (v19)
              {
                v9 = 0;
                goto LABEL_31;
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    v20 = objc_alloc(MEMORY[0x1E695DFD8]);
    v36[0] = @"MKLaunchOptionsCameraKey";
    v36[1] = @"MKLaunchOptionsCurrentLocationPlacecard";
    v36[2] = @"MKLaunchOptionsDirectionsMode";
    v36[3] = @"MKLaunchOptionsLaunchIntoRAP";
    v36[4] = @"MKLaunchOptionsMapType";
    v36[5] = @"MKLaunchOptionsMapSpan";
    v36[6] = @"MKLaunchOptionsMapCenter";
    v36[7] = @"MKLaunchOptionsMapCenterLatitude";
    v36[8] = @"MKLaunchOptionsMapCenterLongitude";
    v36[9] = @"MKLaunchOptionsMapSpanLatitude";
    v36[10] = @"MKLaunchOptionsMapSpanLongitude";
    v36[11] = @"_MKLaunchOptionsRoutingAvoidHighwaysKey";
    v36[12] = @"_MKLaunchOptionsRoutingAvoidTollsKey";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:13];
    v11 = [v20 initWithArray:v21];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = [v7 allKeys];
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if (![v11 containsObject:*(*(&v27 + 1) + 8 * j)])
          {
            v9 = 0;
            goto LABEL_29;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_29:

LABEL_31:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_isDirectionsActionURL:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"MKLaunchOptionsDirectionsMode"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)urlForMapItems:(id)a3 options:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 _shouldUseUniversalLinkForMapItems:v6 options:v7])
  {
    v8 = [a1 _universalLinkForMapItems:v6 options:v7];
  }

  else
  {
    if (![v6 count])
    {
      v9 = [MEMORY[0x1E695DEC8] array];

      v6 = v9;
    }

    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v6;
    v12 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v16];
        }

        v13 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v13);
    }

    [v10 setObject:v11 forKey:@"MKMapItemLaunchAdditionsMapItems"];
    v17 = [a1 _launchOptionsWithOptions:v7];

    if (v17)
    {
      v7 = [MKMapItem plistCompatibleDictionaryFromStandardOptions:v17];

      [v10 setObject:v7 forKey:@"MKMapItemLaunchAdditionsLaunchOptions"];
    }

    else
    {
      v7 = 0;
    }

    v24 = 0;
    v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:200 options:0 error:&v24];
    v19 = v24;
    if (!v18)
    {
      v20 = MKGetMKDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v19;
        _os_log_impl(&dword_1A2EA0000, v20, OS_LOG_TYPE_ERROR, "Failed to serialize property list representation: %{public}@", buf, 0xCu);
      }
    }

    v21 = [v18 base64EncodedStringWithOptions:0];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mapitem://%@", v21];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v22];
  }

  return v8;
}

+ (id)urlForMapItem:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  if (a3)
  {
    [v6 arrayWithObject:a3];
  }

  else
  {
    [v6 array];
  }
  v8 = ;
  v9 = [a1 urlForMapItems:v8 options:v7];

  return v9;
}

+ (id)_mapItemBackedByURL:(id)a3
{
  v4 = MEMORY[0x1E69A26B0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  if (v6 && [v6 isValid])
  {
    v7 = [[a1 alloc] initWithGeoMapItem:v6 isPlaceHolderPlace:{objc_msgSend(v6, "_hasResolvablePartialInformation")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)mapItemsFromURL:(id)a3 options:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [v6 scheme];
  v9 = [v8 isEqualToString:@"mapitem"];

  if ((v9 & 1) == 0)
  {
    v24 = [a1 _mapItemBackedByURL:v7];
    v23 = v24;
    if (v24)
    {
      v34[0] = v24;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v10 = [a1 _deserializeResourceOptionsFromURL:v7 error:0];
  if (!v10)
  {
    v23 = 0;
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v26 = a1;
  v27 = v10;
  v28 = a4;
  v11 = [v10 objectForKey:@"MKMapItemLaunchAdditionsMapItems"];
  v12 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    v17 = *MEMORY[0x1E69A1608];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v19 objectForKeyedSubscript:v17];

        if (v20)
        {
          v21 = [objc_alloc(MEMORY[0x1E69A1CD0]) initWithDictionary:v19];
        }

        else
        {
          v21 = [MKMapItem mapItemWithDictionary:v19];
        }

        v22 = v21;
        [v12 addObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v23 = v27;
  if (v28)
  {
    *v28 = [v26 _launchOptionsFromResourceOptionsDictionary:v27];
  }

LABEL_22:

  return v12;
}

+ (id)sanitizeDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [a1 sanitizeObject:v11 forKey:v10];

        if (!v12)
        {
          v14 = MKGetMKDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v21 = v10;
            _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "MapItem deserialize: Invalid value class for key %@", buf, 0xCu);
          }

          v13 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = v4;
LABEL_13:

  return v13;
}

+ (id)sanitizeArray:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v7 stringByAppendingString:{@"Children", v18}];
        v15 = [a1 sanitizeObject:v13 forKey:v14];

        if (!v15)
        {

          v16 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = v8;
LABEL_11:

  return v16;
}

+ (id)sanitizeObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 valueIsValid:v6 forKey:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a1 sanitizeArray:v8 forKey:v7];

    v8 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69A1608]];

    if (!v10)
    {
      v11 = [a1 sanitizeDictionary:v8];

      v8 = v11;
    }
  }

  return v8;
}

+ (BOOL)valueIsValid:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (valueIsValid_forKey__onceToken != -1)
  {
    dispatch_once(&valueIsValid_forKey__onceToken, &__block_literal_global_590);
  }

  v7 = [valueIsValid_forKey__keys objectForKeyedSubscript:v6] && (objc_opt_isKindOfClass() & 1) != 0;

  return v7;
}

void __33__MKMapItem_valueIsValid_forKey___block_invoke()
{
  v6[64] = *MEMORY[0x1E69E9840];
  v5[0] = @"MKMapItemLaunchAdditionsMapItems";
  v6[0] = objc_opt_class();
  v0 = [@"MKMapItemLaunchAdditionsMapItems" stringByAppendingString:@"Children"];
  v5[1] = v0;
  v6[1] = objc_opt_class();
  v5[2] = @"MKMapItemLaunchHandles";
  v6[2] = objc_opt_class();
  v1 = [@"MKMapItemLaunchHandles" stringByAppendingString:@"Children"];
  v5[3] = v1;
  v6[3] = objc_opt_class();
  v5[4] = @"MKMapItemLaunchAdditionsLaunchOptions";
  v6[4] = objc_opt_class();
  v5[5] = @"MKMapItemIsCurrentLocation";
  v6[5] = objc_opt_class();
  v5[6] = @"MKMapItemGEOPlace";
  v6[6] = objc_opt_class();
  v5[7] = @"MKMapItemGEOMapItem";
  v6[7] = objc_opt_class();
  v5[8] = @"MKMapItemName";
  v6[8] = objc_opt_class();
  v5[9] = @"MKMapItemPhoneNumber";
  v6[9] = objc_opt_class();
  v5[10] = @"MKMapItemURLString";
  v6[10] = objc_opt_class();
  v5[11] = @"MKMapItemTimeZoneName";
  v6[11] = objc_opt_class();
  v5[12] = @"MKLaunchOptionsCurrentLocationPlacecard";
  v6[12] = objc_opt_class();
  v5[13] = @"MKLaunchOptionsDirectionsMode";
  v6[13] = objc_opt_class();
  v5[14] = @"MKLaunchOptionsRouteHandle";
  v6[14] = objc_opt_class();
  v5[15] = @"MKLaunchOptionsMapType";
  v6[15] = objc_opt_class();
  v5[16] = @"MKLaunchOptionsMapCenter";
  v6[16] = objc_opt_class();
  v5[17] = @"MKLaunchOptionsMapSpan";
  v6[17] = objc_opt_class();
  v5[18] = @"MKLaunchOptionsSerializedCameraKey";
  v6[18] = objc_opt_class();
  v5[19] = @"MKLaunchOptionsShowsTraffic";
  v6[19] = objc_opt_class();
  v5[20] = @"MKLaunchOptionsMapRadiusInMeters";
  v6[20] = objc_opt_class();
  v5[21] = @"MKLaunchOptionsSearchTerms";
  v6[21] = objc_opt_class();
  v5[22] = @"MKLaunchOptionsLaunchIntoNav";
  v6[22] = objc_opt_class();
  v5[23] = @"MKLaunchOptionsLaunchIntoRoute";
  v6[23] = objc_opt_class();
  v5[24] = @"MKLaunchOptionsLaunchIntoKeyboard";
  v6[24] = objc_opt_class();
  v5[25] = @"MKLaunchOptionsLaunchIntoSearchHomeKey";
  v6[25] = objc_opt_class();
  v5[26] = @"MKLaunchOptionsLaunchIntoRAP";
  v6[26] = objc_opt_class();
  v5[27] = @"MKLaunchOptionsLaunchIntoPhotoThumbnailGalleryKey";
  v6[27] = objc_opt_class();
  v5[28] = @"MKLaunchOptionsPhotoThumbnailGalleryAlbumIndex";
  v6[28] = objc_opt_class();
  v5[29] = @"MKLaunchOptionsLaunchIntoNavOverview";
  v6[29] = objc_opt_class();
  v5[30] = @"MKLaunchOptionsLaunchIntoNavDetail";
  v6[30] = objc_opt_class();
  v5[31] = @"MKLaunchOptionsLaunchIntoNavShareETAKey";
  v6[31] = objc_opt_class();
  v5[32] = @"MKLaunchOptionsLaunchIntoNavTraceKey";
  v6[32] = objc_opt_class();
  v5[33] = @"MKLaunchOptionsLaunchIntoNavTraceStartNavKey";
  v6[33] = objc_opt_class();
  v5[34] = @"MKLaunchOptionsLaunchIntoTableBookingKey";
  v6[34] = objc_opt_class();
  v5[35] = @"MKLaunchOptionsSelectedIndex";
  v6[35] = objc_opt_class();
  v5[36] = @"_MKLaunchOptionsMapZoomKey";
  v6[36] = objc_opt_class();
  v5[37] = @"MKLaunchOptionsCameraAltitudeMultiplier";
  v6[37] = objc_opt_class();
  v5[38] = @"_MKLaunchOptionsPreserveSearchResultsKey";
  v6[38] = objc_opt_class();
  v5[39] = @"_MKLaunchOptionsSearchAlongRouteKey";
  v6[39] = objc_opt_class();
  v5[40] = @"_MKLaunchOptionsRoutingAvoidHighwaysKey";
  v6[40] = objc_opt_class();
  v5[41] = @"_MKLaunchOptionsRoutingAvoidTollsKey";
  v6[41] = objc_opt_class();
  v5[42] = @"_MKLaunchOptionsRoutingArrivalDateKey";
  v6[42] = objc_opt_class();
  v5[43] = @"MKLaunchOptionsMapCenterLatitude";
  v6[43] = objc_opt_class();
  v5[44] = @"MKLaunchOptionsMapCenterLongitude";
  v6[44] = objc_opt_class();
  v5[45] = @"MKLaunchOptionsMapSpanLatitude";
  v6[45] = objc_opt_class();
  v5[46] = @"MKLaunchOptionsMapSpanLongitude";
  v6[46] = objc_opt_class();
  v5[47] = @"MKLaunchOptionsSerializedTimePointKey";
  v6[47] = objc_opt_class();
  v5[48] = @"MKLaunchOptionsReferralIdentifierKey";
  v6[48] = objc_opt_class();
  v5[49] = @"MKLaunchOptionsTimePointKey";
  v6[49] = objc_opt_class();
  v5[50] = @"MKLaunchOptionsConnectedToCarKey";
  v6[50] = objc_opt_class();
  v5[51] = @"MKLaunchOptionsAnalyticsActionKey";
  v6[51] = objc_opt_class();
  v5[52] = @"MKLaunchOptionsAnalyticsTargetKey";
  v6[52] = objc_opt_class();
  v5[53] = @"MKLaunchOptionsAnalyticsValueKey";
  v6[53] = objc_opt_class();
  v5[54] = @"_MKLaunchOptionsFindMyHandleIdentifiersKey";
  v6[54] = objc_opt_class();
  v2 = [@"_MKLaunchOptionsFindMyHandleIdentifiersKey" stringByAppendingString:@"Children"];
  v5[55] = v2;
  v6[55] = objc_opt_class();
  v5[56] = @"MKLaunchOptionsFromTimeToLeaveNotificationKey";
  v6[56] = objc_opt_class();
  v5[57] = @"MKLaunchOptionsURLKey";
  v6[57] = objc_opt_class();
  v5[58] = @"MKLaunchOptionsSessionIDLowKey";
  v6[58] = objc_opt_class();
  v5[59] = @"MKLaunchOptionsSessionIDHighKey";
  v6[59] = objc_opt_class();
  v5[60] = @"MKLaunchOptionsSessionCreationTimeKey";
  v6[60] = objc_opt_class();
  v5[61] = @"MKLaunchOptionsSessionSequenceNumberKey";
  v6[61] = objc_opt_class();
  v5[62] = @"MKUserActivitySharedSessionKey";
  v6[62] = objc_opt_class();
  v5[63] = @"MKURLSourceAppId";
  v6[63] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:64];
  v4 = valueIsValid_forKey__keys;
  valueIsValid_forKey__keys = v3;
}

+ (id)launchOptionsFromURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"mapitem"];

  if (v6)
  {
    v7 = [a1 _deserializeResourceOptionsFromURL:v4 error:0];
    if (v7)
    {
      v8 = [a1 _launchOptionsFromResourceOptionsDictionary:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_launchOptionsFromResourceOptionsDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"MKMapItemLaunchAdditionsLaunchOptions"];
  v5 = [a1 _launchOptionsWithOptions:v4];

  if (v5)
  {
    v6 = [MKMapItem standardOptionsFromPlistCompatibleDictionary:v5];

    v7 = [v6 objectForKey:@"MKLaunchOptionsSessionIDLowKey"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 longLongValue];
      v10 = [v6 objectForKey:@"MKLaunchOptionsSessionIDHighKey"];
      v11 = [v10 longLongValue];

      v12 = objc_alloc(MEMORY[0x1E69A2718]);
      v13 = [v6 objectForKey:@"MKLaunchOptionsSessionCreationTimeKey"];
      [v13 doubleValue];
      v15 = v14;
      v16 = [v6 objectForKey:@"MKLaunchOptionsSessionSequenceNumberKey"];
      v17 = [v12 initWithSessionID:v11 sessionCreationTime:v9 sequenceNumber:{objc_msgSend(v16, "unsignedIntValue"), v15}];

      v18 = [MEMORY[0x1E69A2710] sharedInstance];
      [v18 setMapsUserSessionEntity:v17];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_deserializeResourceOptionsFromURL:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a3 resourceSpecifier];
  if ([v6 length] > 1)
  {
    v8 = [v6 substringFromIndex:2];
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:a4];
      v7 = [a1 sanitizeDictionary:v10];

      if (v7)
      {
        v11 = v7;
      }

      else
      {
        if (a4)
        {
          *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
        }

        v12 = MKGetMKDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (a4)
          {
            v13 = *a4;
          }

          else
          {
            v13 = 0;
          }

          v15 = 138412290;
          v16 = v13;
          _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize property list: %@", &v15, 0xCu);
        }
      }
    }

    else if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_mapItemsFromHandleURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 scheme];
    v9 = [v8 isEqualToString:@"x-maps-mapitemhandles"];

    if (v9)
    {
      v36 = 0;
      v10 = [a1 _deserializeResourceOptionsFromURL:v6 error:&v36];
      v11 = v36;
      if (v10)
      {
        v12 = [a1 _launchOptionsFromResourceOptionsDictionary:v10];
        v13 = [v10 objectForKey:@"MKMapItemLaunchHandles"];
        if ([v13 count])
        {
          v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
          v15 = [v13 mutableCopy];
          v30 = 0;
          v31 = &v30;
          v32 = 0x3032000000;
          v33 = __Block_byref_object_copy__20764;
          v34 = __Block_byref_object_dispose__20765;
          v35 = 0;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __54__MKMapItem__mapItemsFromHandleURL_completionHandler___block_invoke;
          v24[3] = &unk_1E76C92C0;
          v16 = v15;
          v25 = v16;
          v28 = v7;
          v17 = v14;
          v26 = v17;
          v27 = v12;
          v29 = &v30;
          v18 = MEMORY[0x1A58E9F30](v24);
          v19 = v31[5];
          v31[5] = v18;

          (*(v31[5] + 16))(v31[5], v20, v21, v22);
          _Block_object_dispose(&v30, 8);
        }

        else
        {
          (*(v7 + 2))(v7, MEMORY[0x1E695E0F0], v12, 0);
        }
      }

      else
      {
        (*(v7 + 2))(v7, 0, 0, v11);
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
      (*(v7 + 2))(v7, 0, 0, v23);
    }
  }
}

void __54__MKMapItem__mapItemsFromHandleURL_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) firstObject];
    [*(a1 + 32) removeObjectAtIndex:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MKMapItem__mapItemsFromHandleURL_completionHandler___block_invoke_2;
    v7[3] = &unk_1E76C9298;
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v9 = v3;
    v10 = v4;
    v8 = *(a1 + 40);
    [MKMapItem _mapItemFromHandle:v2 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __54__MKMapItem__mapItemsFromHandleURL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    if (v8)
    {
      [*(a1 + 32) addObject:v8];
    }

    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  }
}

+ (void)_mapItemFromHandle:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = a3;
    v7 = +[MKMapService sharedService];
    v8 = [v7 defaultTraits];

    v9 = [MEMORY[0x1E69A2208] sharedService];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__MKMapItem__mapItemFromHandle_completionHandler___block_invoke;
    v10[3] = &unk_1E76C9270;
    v11 = v5;
    [v9 resolveMapItemFromHandle:v6 withTraits:v8 useCache:0 completionHandler:v10];
  }
}

void __50__MKMapItem__mapItemFromHandle_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [[MKMapItem alloc] initWithGeoMapItem:v6 isPlaceHolderPlace:0];
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)_sourceAppIdFromLaunchURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 componentsSeparatedByString:@"MKURLSourceAppId"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 componentsSeparatedByString:@"&"];

    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];

      v8 = [v7 componentsSeparatedByString:@"="];

      if ([v8 count] == 2 && (objc_msgSend(v8, "objectAtIndexedSubscript:", 0), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, !v10))
      {
        v11 = [v8 objectAtIndexedSubscript:1];
      }

      else
      {
        v11 = 0;
      }

      v6 = v8;
      v5 = v7;
    }

    else
    {
      v11 = 0;
    }

    v4 = v6;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_sharedSessionUserInfoForPunchoutUserInfo:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A2710] sharedInstance];
  v5 = [v4 shareSessionWithMaps];

  v6 = v3;
  if (v5)
  {
    v7 = [MEMORY[0x1E69A2710] sharedInstance];
    v8 = [v7 mapsUserSessionEntity];
    v9 = [v8 sessionEntityString];

    if ([v3 count])
    {
      v10 = [v3 mutableCopy];
      [v10 setObject:v9 forKeyedSubscript:@"MKUserActivitySharedSessionKey"];
      v6 = [v10 copy];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v9 forKey:@"MKUserActivitySharedSessionKey"];
      v10 = v3;
    }
  }

  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 bundleIdentifier];

  if ([v6 count])
  {
    v13 = [v6 mutableCopy];
    [v13 setObject:v12 forKeyedSubscript:@"MKUserActivitySourceAppId"];
  }

  else
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:@"MKUserActivitySourceAppId"];
  }

  return v13;
}

+ (id)_sharedSessionURLForPunchoutURL:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  if ([MEMORY[0x1E69A2220] isValidMapsURLForAppendingSharedSessionID:v4])
  {
    v5 = v3;
    v6 = [MEMORY[0x1E69A2710] sharedInstance];
    if ([v6 shareSessionWithMaps])
    {
      v7 = [v5 containsString:@"user_session_entity"];

      if (v7)
      {
LABEL_7:
        if (([v5 containsString:@"MKURLSourceAppId"] & 1) == 0)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [MEMORY[0x1E696AAE8] mainBundle];
          v14 = [v13 bundleIdentifier];
          v15 = [v12 stringWithFormat:@"%@&%@=%@", v5, @"MKURLSourceAppId", v14];

          v5 = v15;
        }

        v16 = [MEMORY[0x1E695DFF8] URLWithString:v5];

        goto LABEL_12;
      }

      v8 = [MEMORY[0x1E69A2710] sharedInstance];
      v6 = [v8 mapsUserSessionEntity];

      v9 = MEMORY[0x1E696AEC0];
      v10 = [v6 sessionEntityString];
      v11 = [v9 stringWithFormat:@"%@&%@", v5, v10];

      v5 = v11;
    }

    goto LABEL_7;
  }

  v16 = v4;
LABEL_12:

LABEL_13:

  return v16;
}

+ (MKMapItem)mapItemWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"MKMapItemIsCurrentLocation"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = +[MKMapItem mapItemForCurrentLocation];
  }

  else
  {
    v7 = [v3 objectForKey:@"MKMapItemGEOMapItem"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69A21E0]) initWithData:v7];
      v9 = [[MKMapItem alloc] initWithGeoMapItem:v8 isPlaceHolderPlace:0];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E69A2348]);
      v11 = [v3 objectForKey:@"MKMapItemGEOPlace"];
      v8 = [v10 initWithData:v11];

      v9 = [[MKMapItem alloc] initWithPlace:v8];
    }

    v6 = v9;

    v12 = [v3 objectForKeyedSubscript:@"MKMapItemName"];

    if (v12)
    {
      v13 = [v3 objectForKeyedSubscript:@"MKMapItemName"];
      [v6 setName:v13];
    }

    v14 = [v3 objectForKeyedSubscript:@"MKMapItemPhoneNumber"];

    if (v14)
    {
      v15 = [v3 objectForKeyedSubscript:@"MKMapItemPhoneNumber"];
      [v6 setPhoneNumber:v15];
    }

    v16 = [v3 objectForKeyedSubscript:@"MKMapItemURLString"];

    if (v16)
    {
      v17 = MEMORY[0x1E695DFF8];
      v18 = [v3 objectForKeyedSubscript:@"MKMapItemURLString"];
      v19 = [v17 URLWithString:v18];
      [v6 setUrl:v19];
    }

    v20 = [v3 objectForKeyedSubscript:@"MKMapItemTimeZoneName"];

    if (v20)
    {
      v21 = MEMORY[0x1E695DFE8];
      v22 = [v3 objectForKeyedSubscript:@"MKMapItemTimeZoneName"];
      v23 = [v21 timeZoneWithName:v22];
      [v6 setTimeZone:v23];
    }
  }

  return v6;
}

+ (id)standardOptionsFromPlistCompatibleDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"MKLaunchOptionsMapCenter"];
  v5 = [v3 objectForKey:@"MKLaunchOptionsMapSpan"];
  v6 = [v3 objectForKey:@"MKLaunchOptionsSerializedCameraKey"];
  v7 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsSerializedTimePointKey"];
  v8 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsSerializedAutomobileOptions"];
  v9 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsSerializedTransitOptions"];
  v10 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsSerializedWalkingOptions"];
  v11 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsSerializedCyclingOptions"];
  if (v4 || v5 || v6 || v7 || v8 || v9 || v10 || (v12 = v3, v11))
  {
    v48 = v11;
    v12 = [v3 mutableCopy];
    v47 = v10;
    if (v4)
    {
      v13 = [v4 objectForKey:@"MKLaunchOptionsMapCenterLatitude"];
      v14 = [v4 objectForKey:@"MKLaunchOptionsMapCenterLongitude"];
      v15 = v14;
      if (v13 && v14)
      {
        [v13 doubleValue];
        v17 = v16;
        [v15 doubleValue];
        v19 = CLLocationCoordinate2DMake(v17, v18);
        [MEMORY[0x1E696B098] valueWithMKCoordinate:{v19.latitude, v19.longitude}];
        v45 = v9;
        v20 = v8;
        v21 = v7;
        v22 = v5;
        v23 = v6;
        v25 = v24 = v4;
        [v12 setObject:v25 forKey:@"MKLaunchOptionsMapCenter"];

        v4 = v24;
        v6 = v23;
        v5 = v22;
        v7 = v21;
        v8 = v20;
        v9 = v45;
      }

      else
      {
        [v12 removeObjectForKey:@"MKLaunchOptionsMapCenter"];
      }

      v10 = v47;
    }

    if (v5)
    {
      v26 = [v5 objectForKey:@"MKLaunchOptionsMapSpanLatitude"];
      v27 = [v5 objectForKey:@"MKLaunchOptionsMapSpanLongitude"];
      v28 = v27;
      if (v26 && v27)
      {
        [v26 doubleValue];
        v30 = v29;
        [v28 doubleValue];
        [MEMORY[0x1E696B098] valueWithMKCoordinateSpan:{v30, v31}];
        v46 = v9;
        v32 = v8;
        v33 = v7;
        v34 = v5;
        v35 = v6;
        v37 = v36 = v4;
        [v12 setObject:v37 forKey:@"MKLaunchOptionsMapSpan"];

        v4 = v36;
        v6 = v35;
        v5 = v34;
        v7 = v33;
        v8 = v32;
        v9 = v46;
      }

      else
      {
        [v12 removeObjectForKey:@"MKLaunchOptionsMapSpan"];
      }

      v10 = v47;
    }

    if (v6)
    {
      v38 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
      if (v38)
      {
        [v12 setObject:v38 forKeyedSubscript:@"MKLaunchOptionsCameraKey"];
      }

      [v12 removeObjectForKey:@"MKLaunchOptionsSerializedCameraKey"];

      v10 = v47;
    }

    if (v7)
    {
      v39 = [objc_alloc(MEMORY[0x1E69A26F0]) initWithData:v7];
      if (v39)
      {
        [v12 setObject:v39 forKeyedSubscript:@"MKLaunchOptionsTimePointKey"];
      }

      [v12 removeObjectForKey:@"MKLaunchOptionsSerializedTimePointKey"];
    }

    if (v8)
    {
      v40 = [objc_alloc(MEMORY[0x1E69A1B90]) initWithData:v8];
      if (v40)
      {
        [v12 setObject:v40 forKeyedSubscript:@"MKLaunchOptionsAutomobileOptions"];
      }

      [v12 removeObjectForKey:@"MKLaunchOptionsSerializedAutomobileOptions"];
    }

    if (v9)
    {
      v41 = [objc_alloc(MEMORY[0x1E69A2668]) initWithData:v9];
      if (v41)
      {
        [v12 setObject:v41 forKeyedSubscript:@"MKLaunchOptionsTransitOptions"];
      }

      [v12 removeObjectForKey:@"MKLaunchOptionsSerializedTransitOptions"];
    }

    if (v10)
    {
      v42 = [objc_alloc(MEMORY[0x1E69A2768]) initWithData:v10];
      if (v42)
      {
        [v12 setObject:v42 forKeyedSubscript:@"MKLaunchOptionsWalkingOptions"];
      }

      [v12 removeObjectForKey:@"MKLaunchOptionsSerializedWalkingOptions"];
    }

    if (v48)
    {
      v43 = [objc_alloc(MEMORY[0x1E69A1CE0]) initWithData:v48];
      if (v43)
      {
        [v12 setObject:v43 forKeyedSubscript:@"MKLaunchOptionsCyclingOptions"];
      }

      [v12 removeObjectForKey:@"MKLaunchOptionsSerializedCyclingOptions"];
    }

    v11 = v48;
  }

  return v12;
}

+ (id)plistCompatibleDictionaryFromStandardOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"MKLaunchOptionsMapCenter"];
  v5 = [v3 objectForKey:@"MKLaunchOptionsMapSpan"];
  v6 = [v3 objectForKey:@"MKLaunchOptionsCameraKey"];
  v7 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsTimePointKey"];
  v8 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsAutomobileOptions"];
  v9 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsWalkingOptions"];
  v10 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsTransitOptions"];
  v11 = [v3 objectForKeyedSubscript:@"MKLaunchOptionsCyclingOptions"];
  if (v4 || v5 || v6 || v7 || v8 || v9 || v10 || (v12 = v3, v11))
  {
    v43 = v11;
    v12 = [v3 mutableCopy];
    v13 = 0x1E695D000;
    v41 = v4;
    v42 = v5;
    if (v4)
    {
      [v4 MKCoordinateValue];
      v15 = v14;
      v39 = MEMORY[0x1E695DF20];
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [MEMORY[0x1E696AD98] numberWithDouble:v15];
      v17 = v10;
      v18 = v7;
      v19 = v9;
      v21 = v20 = v6;
      v22 = [v39 dictionaryWithObjectsAndKeys:{v16, @"MKLaunchOptionsMapCenterLatitude", v21, @"MKLaunchOptionsMapCenterLongitude", 0}];

      v6 = v20;
      v9 = v19;
      v7 = v18;
      v10 = v17;

      v4 = v41;
      v5 = v42;
      [v12 setObject:v22 forKey:@"MKLaunchOptionsMapCenter"];

      v13 = 0x1E695D000uLL;
    }

    if (v5)
    {
      [v5 MKCoordinateSpanValue];
      v24 = v23;
      v40 = *(v13 + 3872);
      v25 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [MEMORY[0x1E696AD98] numberWithDouble:v24];
      v26 = v10;
      v27 = v7;
      v28 = v9;
      v30 = v29 = v6;
      v31 = [v40 dictionaryWithObjectsAndKeys:{v25, @"MKLaunchOptionsMapSpanLatitude", v30, @"MKLaunchOptionsMapSpanLongitude", 0}];

      v6 = v29;
      v9 = v28;
      v7 = v27;
      v10 = v26;

      v4 = v41;
      v5 = v42;
      [v12 setObject:v31 forKey:@"MKLaunchOptionsMapSpan"];
    }

    if (v6)
    {
      v32 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
      [v12 setObject:v32 forKeyedSubscript:@"MKLaunchOptionsSerializedCameraKey"];
      [v12 removeObjectForKey:@"MKLaunchOptionsCameraKey"];
    }

    if (v7)
    {
      v33 = [v7 data];
      [v12 setObject:v33 forKeyedSubscript:@"MKLaunchOptionsSerializedTimePointKey"];

      [v12 removeObjectForKey:@"MKLaunchOptionsTimePointKey"];
    }

    if (v8)
    {
      v34 = [v8 data];
      [v12 setObject:v34 forKeyedSubscript:@"MKLaunchOptionsSerializedAutomobileOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsAutomobileOptions"];
    }

    if (v10)
    {
      v35 = [v8 data];
      [v12 setObject:v35 forKeyedSubscript:@"MKLaunchOptionsSerializedTransitOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsTransitOptions"];
    }

    if (v9)
    {
      v36 = [v8 data];
      [v12 setObject:v36 forKeyedSubscript:@"MKLaunchOptionsSerializedWalkingOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsWalkingOptions"];
    }

    if (v43)
    {
      v37 = [v8 data];
      [v12 setObject:v37 forKeyedSubscript:@"MKLaunchOptionsSerializedCyclingOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsCyclingOptions"];
    }

    v11 = v43;
  }

  return v12;
}

+ (void)openMapsWithItems:(id)a3 launchOptions:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v7 = [MKMapItem urlForMapItems:a3 options:a4];
  if (v7)
  {
    v8 = +[MKSystemController sharedInstance];
    [v8 openURL:v7 completionHandler:v9];
  }

  else if (v9)
  {
    v9[2](v9, 0);
  }
}

+ (BOOL)openMapsWithItems:(NSArray *)mapItems launchOptions:(NSDictionary *)launchOptions
{
  v4 = [MKMapItem urlForMapItems:mapItems options:launchOptions];
  if (v4)
  {
    v5 = +[MKUsageCounter sharedCounter];
    [v5 countUsageOfTypeIfNeeded:56];

    v6 = +[MKSystemController sharedInstance];
    v7 = [v6 openURL:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)openMapsWithItems:(NSArray *)mapItems launchOptions:(NSDictionary *)launchOptions fromScene:(UIScene *)scene completionHandler:(void *)completion
{
  v12 = scene;
  v9 = completion;
  v10 = [MKMapItem urlForMapItems:mapItems options:launchOptions];
  if (v10)
  {
    v11 = +[MKSystemController sharedInstance];
    [v11 openURL:v10 fromScene:v12 completionHandler:v9];
  }

  else if (v9)
  {
    v9[2](v9, 0);
  }
}

+ (id)_localizedNextOpeningDayOftheWeekFormatter
{
  if (_localizedNextOpeningDayOftheWeekFormatter_onceHoursToken != -1)
  {
    dispatch_once(&_localizedNextOpeningDayOftheWeekFormatter_onceHoursToken, &__block_literal_global_475_20779);
  }

  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [_localizedNextOpeningDayOftheWeekFormatter_dayOfWeekFormatterFull setTimeZone:v2];

  v3 = _localizedNextOpeningDayOftheWeekFormatter_dayOfWeekFormatterFull;

  return v3;
}

uint64_t __55__MKMapItem__localizedNextOpeningDayOftheWeekFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _localizedNextOpeningDayOftheWeekFormatter_dayOfWeekFormatterFull;
  _localizedNextOpeningDayOftheWeekFormatter_dayOfWeekFormatterFull = v0;

  [_localizedNextOpeningDayOftheWeekFormatter_dayOfWeekFormatterFull setDateFormat:@"cccc"];
  v2 = _localizedNextOpeningDayOftheWeekFormatter_dayOfWeekFormatterFull;

  return [v2 setFormattingContext:1];
}

+ (id)_localizedNextOpeningHoursFormatter
{
  if (_localizedNextOpeningHoursFormatter_onceHoursToken != -1)
  {
    dispatch_once(&_localizedNextOpeningHoursFormatter_onceHoursToken, &__block_literal_global_472);
  }

  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [_localizedNextOpeningHoursFormatter_hoursFormatter setTimeZone:v2];

  v3 = _localizedNextOpeningHoursFormatter_hoursFormatter;

  return v3;
}

uint64_t __48__MKMapItem__localizedNextOpeningHoursFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _localizedNextOpeningHoursFormatter_hoursFormatter;
  _localizedNextOpeningHoursFormatter_hoursFormatter = v0;

  [_localizedNextOpeningHoursFormatter_hoursFormatter setDateStyle:0];
  v2 = _localizedNextOpeningHoursFormatter_hoursFormatter;

  return [v2 setTimeStyle:1];
}

uint64_t __38__MKMapItem_mapItemForCurrentLocation__block_invoke()
{
  v0 = [[MKMapItem alloc] initWithGeoMapItem:0 isPlaceHolderPlace:0];
  v1 = mapItemForCurrentLocation_currentLocationItem;
  mapItemForCurrentLocation_currentLocationItem = v0;

  v2 = mapItemForCurrentLocation_currentLocationItem;

  return [v2 setIsCurrentLocation:1];
}

- (void)encodeWithCoder:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MKMapItem *)self isCurrentLocation])
  {
    [v4 encodeBool:1 forKey:@"isCurrentLocation"];
  }

  else
  {
    v5 = [(MKMapItem *)self _geoMapItemStorageForPersistence];
    v6 = [v5 data];
    v7 = [v6 copy];

    if (v7 && [v7 length])
    {
      [v4 encodeObject:v7 forKey:@"data"];
      if (self->_useCustomPOICategory)
      {
        [v4 encodeBool:1 forKey:@"usePOICategory"];
        [v4 encodeObject:self->_customPOICategory forKey:@"poiCategory"];
      }

      address = self->_address;
      if (address)
      {
        v9 = [(MKAddress *)address fullAddress];
        [v4 encodeObject:v9 forKey:@"fullAddress"];

        v10 = [(MKAddress *)self->_address shortAddress];

        if (v10)
        {
          v11 = [(MKAddress *)self->_address shortAddress];
          [v4 encodeObject:v11 forKey:@"shortAddress"];
        }
      }
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = MKErrorDomain;
      v17 = *MEMORY[0x1E696A578];
      v14 = _MKLocalizedStringFromThisBundle(@"Data serialization failed");
      v18[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v16 = [v12 errorWithDomain:v13 code:1 userInfo:v15];
      [v4 failWithError:v16];
    }
  }
}

- (MKMapItem)initWithCoder:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 decodeBoolForKey:@"isCurrentLocation"])
  {
    v5 = [objc_opt_class() mapItemForCurrentLocation];
  }

  else
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v7 = v6;
    if (v6 && [v6 length] && !(objc_msgSend(v7, "length") >> 20) && (objc_msgSend(MEMORY[0x1E69A21E0], "mapItemStorageForSerializedMapItemStorage:", v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [(MKMapItem *)self initWithGeoMapItem:v8 isPlaceHolderPlace:1];
      v11 = [v4 decodeBoolForKey:@"usePOICategory"];
      v10->_useCustomPOICategory = v11;
      if (v11)
      {
        v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
        customPOICategory = v10->_customPOICategory;
        v10->_customPOICategory = v12;
      }

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAddress"];
      if (v14)
      {
        v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortAddress"];
        v16 = [[MKAddress alloc] initWithFullAddress:v14 shortAddress:v15];
        address = v10->_address;
        v10->_address = v16;
      }
    }

    else
    {

      v18 = MEMORY[0x1E696ABC0];
      v19 = MKErrorDomain;
      v24 = *MEMORY[0x1E696A578];
      v20 = _MKLocalizedStringFromThisBundle(@"Data deserialization failed");
      v25[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v22 = [v18 errorWithDomain:v19 code:1 userInfo:v21];
      [v4 failWithError:v22];

      v10 = 0;
    }

    self = v10;

    v5 = self;
  }

  return v5;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 isEqualToString:@"com.apple.mapkit.map-item"])
  {
    v10 = [*MEMORY[0x1E6983078] identifier];
    v11 = [v6 isEqualToString:v10];

    if (v11)
    {
      v12 = [(MKMapItem *)self _placeCardContact];
      v13 = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
      v14 = [v13 absoluteString];
      v15 = v14;
      if (v14 && [v14 length])
      {
        v16 = [v12 mutableCopy];
        v17 = [v16 urlAddresses];
        v18 = MEMORY[0x1E695CEE0];
        v19 = _MKLocalizedStringFromThisBundle(@"map url");
        v20 = [v18 labeledValueWithLabel:v19 value:v15];
        v21 = [v17 arrayByAddingObject:v20];

        [v16 setUrlAddresses:v21];
        v22 = [v16 copy];

        v12 = v22;
      }

      v23 = MEMORY[0x1E695CE30];
      v54[0] = v12;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      v51 = 0;
      v25 = [v23 dataWithContacts:v24 error:&v51];

      v7[2](v7, v25, 0);
    }

    else
    {
      v26 = [*MEMORY[0x1E6983030] identifier];
      v27 = [v6 isEqualToString:v26];

      if (v27)
      {
        v12 = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
        v28 = [(MKMapItem *)self name];
        [v12 _setTitle:v28];

        v29 = [v12 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];
        goto LABEL_13;
      }

      v31 = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
      v32 = [v31 containsObject:v6];

      if (v32)
      {
        v33 = [(MKMapItem *)self name];
        v34 = v33;
        v35 = &stru_1F15B23C0;
        if (v33)
        {
          v35 = v33;
        }

        v36 = v35;

        v8 = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
        v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v36];
        v37 = *MEMORY[0x1E69DB670];
        v38 = [(__CFString *)v36 length];

        [v9 addAttribute:v37 value:v8 range:{0, v38}];
        v39 = [v9 copy];
        v40 = [v39 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];

        goto LABEL_3;
      }

      v41 = [*MEMORY[0x1E6982E18] identifier];
      v42 = [v6 isEqualToString:v41];

      if (!v42)
      {
        v47 = MEMORY[0x1E696ABC0];
        v48 = MKErrorDomain;
        v52 = *MEMORY[0x1E696A578];
        v49 = _MKLocalizedStringFromThisBundle(@"Unsupported type identifier");
        v53 = v49;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v8 = [v47 errorWithDomain:v48 code:1 userInfo:v50];

        (v7)[2](v7, 0, v8);
        goto LABEL_4;
      }

      v43 = [(MKMapItem *)self name];
      v44 = v43;
      if (!v43)
      {
        v43 = &stru_1F15B23C0;
      }

      v12 = [(__CFString *)v43 _navigation_sanitizedStringForDisplayInHTML];

      v13 = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
      v45 = MEMORY[0x1E696AEC0];
      v46 = [v13 absoluteString];
      v15 = [v45 stringWithFormat:@"<a href=%@>%@</a>", v46, v12];

      v25 = [v15 dataUsingEncoding:4];
      v7[2](v7, v25, 0);
    }

LABEL_13:
    goto LABEL_14;
  }

  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v9 = [v8 copy];
  v7[2](v7, v9, 0);
LABEL_3:

LABEL_4:
LABEL_14:

  return 0;
}

- (id)formattedNumberOfReviewsIncludingProvider:(BOOL)a3 formatter:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (![(MKMapItem *)self _hasUserRatingScore])
  {
    v13 = 0;
    goto LABEL_34;
  }

  v7 = [(MKMapItem *)self reviewsProviderDisplayName];
  v8 = [(MKMapItem *)self _sampleSizeForUserRatingScore];
  v9 = [(MKMapItem *)self _reviews];
  v10 = [v9 count];

  v11 = [(MKMapItem *)self _tips];
  v12 = [v11 count];

  if (v8 == 1)
  {
    if (v6)
    {
      [v6 stringFromNumber:&unk_1F16114D0];
    }

    else
    {
      [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F16114D0 numberStyle:0];
    }
    v15 = ;
    if (v4 && [v7 length])
    {
      if (v10)
      {
        v16 = @"MapItemReviewProvider_Singular";
LABEL_31:
        v19 = _MKLocalizedStringFromThisBundle(v16);
        v20 = MEMORY[0x1E696AEC0];
        v22 = v7;
        goto LABEL_32;
      }

      if (v12)
      {
        v16 = @"MapItemTipProvider_Singular";
        goto LABEL_31;
      }

      goto LABEL_37;
    }

    if (v10)
    {
      v17 = @"MapItemReview_Singular";
    }

    else
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v17 = @"MapItemTip_Singular";
    }
  }

  else
  {
    if (v6)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
      [v6 stringFromNumber:v14];
    }

    else
    {
      v18 = MEMORY[0x1E696ADA0];
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
      [v18 localizedStringFromNumber:v14 numberStyle:0];
    }
    v15 = ;

    if (v4 && [v7 length])
    {
      if (v10)
      {
        v16 = @"MapItemReviewProvider_Plural";
        goto LABEL_31;
      }

      if (v12)
      {
        v16 = @"MapItemTipProvider_Plural";
        goto LABEL_31;
      }

LABEL_37:
      v13 = 0;
      goto LABEL_33;
    }

    if (v10)
    {
      v17 = @"MapItemReview_Plural";
    }

    else
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v17 = @"MapItemTip_Plural";
    }
  }

  v19 = _MKLocalizedStringFromThisBundle(v17);
  v20 = MEMORY[0x1E696AEC0];
LABEL_32:
  v13 = [v20 localizedStringWithFormat:v19, v15, v22];

LABEL_33:
LABEL_34:

  return v13;
}

- (void)_updateTransitInfoWithMapItem:(id)a3
{
  v4 = a3;
  self->_isTransitInfoUpdated = 1;
  v14 = v4;
  v5 = [v4 _geoMapItem];
  v6 = [v5 _transitInfo];
  if (self->_updatedTransitInfo != v6)
  {
    objc_storeStrong(&self->_updatedTransitInfo, v6);
    v7 = [v5 _transitAttribution];
    updatedTransitAttribution = self->_updatedTransitAttribution;
    self->_updatedTransitAttribution = v7;

    v9 = [v14 _transitInfoUpdatedDate];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF00] date];
    }

    transitInfoUpdatedDate = self->_transitInfoUpdatedDate;
    self->_transitInfoUpdatedDate = v11;

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"kMapItemTransitInfoDidUpdateNotification" object:self];
  }
}

- (void)_markTransitInfoUpdated
{
  v3 = [MEMORY[0x1E695DF00] date];
  transitInfoUpdatedDate = self->_transitInfoUpdatedDate;
  self->_transitInfoUpdatedDate = v3;
}

- (id)_reviewForIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(MKMapItem *)self _reviews];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 _geoReview];
          v11 = [v10 _identifier];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v58[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v8 isEqualToString:@"com.apple.mapkit.map-item"])
  {
    v16 = [*MEMORY[0x1E6983078] identifier];
    v17 = [v8 isEqualToString:v16];

    if (v17)
    {
      v18 = [MEMORY[0x1E695CE30] contactsWithData:v7 error:a5];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 firstObject];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 urlAddresses];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v23 = [v22 reverseObjectEnumerator];
          v24 = [v23 countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v24)
          {
            v25 = v24;
            v43 = v22;
            v44 = v21;
            v45 = v19;
            v46 = v8;
            v26 = *v48;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v48 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = MEMORY[0x1E695DFF8];
                v29 = [*(*(&v47 + 1) + 8 * i) value];
                v30 = [v28 URLWithString:v29];

                if (v30)
                {
                  v31 = [objc_opt_class() _mapItemBackedByURL:v30];
                  if (v31)
                  {
                    v9 = v31;

                    goto LABEL_27;
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v47 objects:v56 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

            v9 = 0;
LABEL_27:
            v8 = v46;
            v21 = v44;
            v19 = v45;
            v22 = v43;
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      v32 = [*MEMORY[0x1E6983030] identifier];
      v33 = [v8 isEqualToString:v32];

      if (v33)
      {
        v19 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:v7 typeIdentifier:v8 error:a5];
        if (v19)
        {
          v9 = [objc_opt_class() _mapItemBackedByURL:v19];
        }

        else
        {
          v9 = 0;
        }

LABEL_31:

        goto LABEL_32;
      }

      if (a5)
      {
        v34 = MEMORY[0x1E696ABC0];
        v35 = MKErrorDomain;
        v54 = *MEMORY[0x1E696A578];
        v36 = _MKLocalizedStringFromThisBundle(@"Unsupported type identifier");
        v55 = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        *a5 = [v34 errorWithDomain:v35 code:1 userInfo:v37];

        v9 = 0;
        goto LABEL_32;
      }
    }

LABEL_36:
    v9 = 0;
    goto LABEL_37;
  }

  v51 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v51];
  v10 = v51;
  if (!(v9 | v10))
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = MKErrorDomain;
    v57 = *MEMORY[0x1E696A578];
    v13 = _MKLocalizedStringFromThisBundle(@"Data deserialization failed");
    v58[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v10 = [v11 errorWithDomain:v12 code:1 userInfo:v14];
  }

  if (a5)
  {
    v15 = v10;
    *a5 = v10;
  }

LABEL_32:
  if (a5 && !v9)
  {
    if (!*a5)
    {
      v38 = MEMORY[0x1E696ABC0];
      v39 = MKErrorDomain;
      v52 = *MEMORY[0x1E696A578];
      v40 = _MKLocalizedStringFromThisBundle(@"Unrecognized data");
      v53 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *a5 = [v38 errorWithDomain:v39 code:1 userInfo:v41];
    }

    goto LABEL_36;
  }

LABEL_37:

  return v9;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = [*MEMORY[0x1E6983078] identifier];
  v6[1] = v2;
  v3 = [*MEMORY[0x1E6983030] identifier];
  v6[2] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];

  return v4;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [*MEMORY[0x1E6983078] identifier];
  v8[1] = v2;
  v3 = [*MEMORY[0x1E6983030] identifier];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

+ (void)_mapItemsWithSerializedPlaceDataResponse:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MKMapService sharedService];
  [v7 _mapItemsForResponseData:v6 handler:v5];
}

+ (MKMapItem)mapItemWithSerializedPlaceData:(id)a3 serializedDetourInfo:(id)a4 currentLocation:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (v7 && [v7 length])
  {
    v9 = [MEMORY[0x1E69A21E0] mapItemStorageForSerializedPlaceData:v7 serializedDetourInfo:v8];
    v10 = v9;
    if (v9 && [v9 conformsToProtocol:&unk_1F1671998])
    {
      v11 = v10;
      if ([v11 isValid])
      {
        if (v5)
        {
          v12 = [[MKMapItem alloc] initWithGeoMapItemAsCurrentLocation:v11];
        }

        else
        {
          v12 = [MKMapItem _itemWithGeoMapItem:v11];
        }

        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_itemWithContact:(id)a3 geoMapItem:(id)a4
{
  v6 = a3;
  v7 = [a1 _itemWithGeoMapItem:a4];
  if (v6)
  {
    v8 = [MEMORY[0x1E695CD80] stringFromContact:v6 style:0];
    if ([v8 length])
    {
      [v7 setName:v8];
    }

    v9 = [v6 phoneNumbers];
    if ([v9 count])
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [v10 value];

      v12 = [v11 stringValue];
      [v7 setPhoneNumber:v12];
    }
  }

  return v7;
}

+ (id)_itemWithGeoMapItem:(id)a3
{
  v3 = a3;
  v4 = [[MKMapItem alloc] initWithGeoMapItem:v3 isPlaceHolderPlace:0];

  return v4;
}

+ (id)_mapItemWithWithLocation:(id)a3 addressDictionary:(id)a4 name:(id)a5 businessURL:(id)a6 phoneNumber:(id)a7 sessionID:(id)a8 muid:(unint64_t)a9 attributionID:(id)a10 sampleSizeForUserRatingScore:(unsigned int)a11 normalizedUserRatingScore:(float)a12
{
  v19 = MEMORY[0x1E69A21A0];
  v20 = a10;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [v19 alloc];
  v28 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v26];

  LODWORD(v33) = a11;
  *&v29 = a12;
  v30 = [v27 initWithWithLocation:v28 addressDictionary:v25 name:v24 businessURL:v23 phoneNumber:v22 sessionID:v21 muid:v29 attributionID:a9 sampleSizeForUserRatingScore:v20 normalizedUserRatingScore:v33];

  if (v30)
  {
    v31 = [MKMapItem _itemWithGeoMapItem:v30];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)_getHasAvailableSecondaryAppClipWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__MKMapItem_GEOQuickLinkHelper___getHasAvailableSecondaryAppClipWithCompletion___block_invoke;
  v6[3] = &unk_1E76C94F8;
  v7 = v4;
  v5 = v4;
  [(MKMapItem *)self _getFirstAvailableSecondaryAppClipLinkWithCompletion:v6];
}

uint64_t __80__MKMapItem_GEOQuickLinkHelper___getHasAvailableSecondaryAppClipWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)_getHasAvailableAppClipWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MKMapItem_GEOQuickLinkHelper___getHasAvailableAppClipWithCompletion___block_invoke;
  v6[3] = &unk_1E76C94F8;
  v7 = v4;
  v5 = v4;
  [(MKMapItem *)self _getFirstAvailableAppClipLinkWithCompletion:v6];
}

uint64_t __71__MKMapItem_GEOQuickLinkHelper___getHasAvailableAppClipWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)_getFirstAvailableAppClipLinkFromQuickLinks:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v22 = v6;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MapKit.MKMapItem+GEOQuickLinkHelper.%p.queue", v5];
    v9 = [v8 UTF8String];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);

    v12 = dispatch_group_create();
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v5;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        v18 = 0;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * v18);
          if (v19 && [*(*(&v32 + 1) + 8 * v18) type] == 2)
          {
            dispatch_group_enter(v12);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke;
            block[3] = &unk_1E76CD0D0;
            block[4] = v19;
            v20 = v11;
            v29 = v20;
            v30 = v13;
            v31 = v12;
            dispatch_async(v20, block);
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke_4;
    v24[3] = &unk_1E76CAA70;
    v25 = v14;
    v26 = v13;
    v7 = v22;
    v27 = v22;
    v21 = v13;
    dispatch_group_notify(v12, v11, v24);

    v5 = v23;
  }
}

void __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke(uint64_t a1)
{
  v2 = +[MKClipServices sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke_2;
  v10[3] = &unk_1E76C94D0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v9;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v8;
  v12 = v7;
  [v2 appClipWithQuickLink:v3 completion:v10];
}

void __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke_4(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 URLString];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke_5;
  v12[3] = &unk_1E76CDA20;
  v10 = *(a1 + 48);
  v13 = v3;
  v14 = v10;
  v11 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke_3;
  v9[3] = &unk_1E76CD0D0;
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __88__MKMapItem_GEOQuickLinkHelper___getFirstAvailableAppClipLinkFromQuickLinks_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) URLString];
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

- (void)_getFirstAvailableSecondaryAppClipLinkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MKMapItem *)self _secondaryQuickLinks];
  [(MKMapItem *)self _getFirstAvailableAppClipLinkFromQuickLinks:v5 completion:v4];
}

- (void)_getFirstAvailableAppClipLinkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MKMapItem *)self _quickLinks];
  [(MKMapItem *)self _getFirstAvailableAppClipLinkFromQuickLinks:v5 completion:v4];
}

- (BOOL)_mapkit_canAtLeastOneAttributionShowAddPhotosLocally
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldAddPhotosLocally])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_mapkit_canAtLeastOneAttributionShowPhotosLocally
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldHandlePhotosLocally])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (unint64_t)_mapkit_numberOfPhotosAvailableForFlatList
{
  v3 = [(MKMapItem *)self _geoMapItem];
  v4 = [v3 _captionedPhotoAlbums];
  v5 = [v4 count];

  if (v5 > 1)
  {
    return 0;
  }

  v6 = [(MKMapItem *)self _geoMapItem];
  if (([v6 _hasCaptionedPhotoAlbum] & 1) == 0)
  {

LABEL_6:
    v14 = [(MKMapItem *)self _geoMapItem];
    v15 = [v14 _photos];
    v16 = [v15 count];

    if (v16)
    {
      v10 = [(MKMapItem *)self _geoMapItem];
      v13 = [v10 _totalPhotoCount];
      goto LABEL_8;
    }

    return 0;
  }

  v7 = [(MKMapItem *)self _geoMapItem];
  v8 = [v7 _captionedPhotoAlbums];
  v9 = [v8 count];

  if (v9 != 1)
  {
    goto LABEL_6;
  }

  v10 = [(MKMapItem *)self _geoMapItem];
  v11 = [v10 _captionedPhotoAlbums];
  v12 = [v11 firstObject];
  v13 = [v12 totalNumberOfPhotosAvailable];

LABEL_8:
  return v13;
}

- (id)_mapkit_resolvedFlatPhotoList
{
  v3 = [(MKMapItem *)self _geoMapItem];
  v4 = [v3 _captionedPhotoAlbums];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    v6 = [(MKMapItem *)self _geoMapItem];
    if ([v6 _hasCaptionedPhotoAlbum])
    {
      v7 = [(MKMapItem *)self _geoMapItem];
      v8 = [v7 _captionedPhotoAlbums];
      v9 = [v8 count];

      if (v9 == 1)
      {
        v10 = [(MKMapItem *)self _geoMapItem];
        v11 = [v10 _captionedPhotoAlbums];
        v12 = [v11 firstObject];
        v13 = [v12 photoList];
        v14 = [v13 copy];

LABEL_8:
        goto LABEL_10;
      }
    }

    else
    {
    }

    v15 = [(MKMapItem *)self _geoMapItem];
    v16 = [v15 _photos];
    v17 = [v16 count];

    if (v17)
    {
      v10 = [(MKMapItem *)self _geoMapItem];
      v11 = [v10 _photos];
      v14 = [v11 copy];
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)_mapkit_preferredFirstPhotoVendor
{
  v3 = [(MKMapItem *)self _allPhotoAttributions];
  v4 = [v3 count];

  if (v4 <= 1)
  {
    v6 = [(MKMapItem *)self _allPhotoAttributions];
    v5 = [v6 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_mapkit_hasMultiplePhotoVendors
{
  v2 = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [v2 count] > 1;

  return v3;
}

- (BOOL)_mapkit_hasSinglePhotoVendor
{
  v2 = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [v2 count] == 1;

  return v3;
}

- (BOOL)_mapkit_hasFlatListOfPhotos
{
  v2 = [(MKMapItem *)self _mapkit_resolvedFlatPhotoList];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_mapkit_supportsFullScreenExperience
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MKMapItem *)self _mapkit_resolvedFlatPhotoList];
  v3 = v2;
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v11 + 1) + 8 * i) displayFullScreenPhotoGallery])
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_restaurantLink_firstProviderDisplayName
{
  v3 = [(MKMapItem *)self _restaurantLink_firstVendorID];
  if (v3)
  {
    v4 = [(MKMapItem *)self _geoMapItem];
    v5 = [v4 _featureLink];
    v6 = [v5 displayNameForVendorID:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_restaurantLink_firstProviderPlaceIdentifier
{
  v3 = [(MKMapItem *)self _restaurantLink_firstVendorID];
  if (v3)
  {
    v4 = [(MKMapItem *)self _geoMapItem];
    v5 = [v4 _featureLink];
    v6 = [v5 featureProviders];

    v7 = [v6 firstObject];
    v8 = [v7 objectForKeyedSubscript:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_restaurantLink_firstVendorID
{
  v2 = [(MKMapItem *)self _geoMapItem];
  v3 = [v2 _featureLink];
  v4 = [v3 featureProviders];

  v5 = [v4 firstObject];
  v6 = [v5 allKeys];
  v7 = [v6 firstObject];

  return v7;
}

- (id)_restaurantLink_firstProviderIdentifier
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v3 BOOLForKey:@"RestaurantReservationAppBundleIDs"])
  {
    v4 = [(MKMapItem *)self _restaurantLink_overridenBundleIDsForVendorIDs];
    v5 = [(MKMapItem *)self _restaurantLink_firstVendorID];
    v6 = [v4 objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = [(MKMapItem *)self _geoMapItem];
    v8 = [v7 _featureLink];
    v9 = [(MKMapItem *)self _restaurantLink_firstVendorID];
    v10 = [v8 applicationsForVendorID:v9];
    v4 = [v10 firstObject];

    v6 = [v4 appBundleIdentifier];
  }

  return v6;
}

- (unint64_t)_restaurantExtensionModeForFirstProvider
{
  v3 = [(MKMapItem *)self _geoMapItem];
  v4 = [v3 _featureLink];
  v5 = [(MKMapItem *)self _restaurantLink_firstVendorID];
  v6 = [v4 extensionModeForVendorID:v5];

  return v6;
}

- (BOOL)_restaurantLink_hasFeatureType:(unint64_t)a3
{
  v4 = [(MKMapItem *)self _geoMapItem];
  v5 = [v4 _featureLink];
  v6 = [v5 featureTypes];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v6 containsObject:v7];

  return v8;
}

- (BOOL)_hasRestaurantExtensionInfo
{
  v3 = [(MKMapItem *)self _geoMapItem];
  v4 = [v3 _featureLink];
  if ([v4 hasFeatures])
  {
    v5 = [(MKMapItem *)self _restaurantLink_firstProviderIdentifier];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_vCardFilename
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MKMapItem *)self name];
  v4 = [v2 stringWithFormat:@"%@.loc.vcf", v3];

  return v4;
}

- (id)_vCardRepresentation
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__41191;
  v14 = __Block_byref_object_dispose__41192;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v3 = [*MEMORY[0x1E6983078] identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MKMapItem_MKMapItemVCardHelpers___vCardRepresentation__block_invoke;
  v7[3] = &unk_1E76CCFC8;
  v7[4] = &v10;
  v7[5] = v8;
  v4 = [(MKMapItem *)self loadDataWithTypeIdentifier:v3 forItemProviderCompletionHandler:v7];

  v5 = v11[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __56__MKMapItem_MKMapItemVCardHelpers___vCardRepresentation__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)_htmlRepresentation
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__41191;
  v14 = __Block_byref_object_dispose__41192;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v3 = [*MEMORY[0x1E6982E18] identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MKMapItem_MKMapItemExtras___htmlRepresentation__block_invoke;
  v7[3] = &unk_1E76CCFC8;
  v7[4] = &v10;
  v7[5] = v8;
  v4 = [(MKMapItem *)self loadDataWithTypeIdentifier:v3 forItemProviderCompletionHandler:v7];

  v5 = v11[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __49__MKMapItem_MKMapItemExtras___htmlRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)_mapsDataString
{
  if ([(MKMapItem *)self _hasMUID])
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MKMapItem _muid](self, "_muid")}];
    v5 = [v3 dictionaryWithObjectsAndKeys:{&unk_1F1611CC8, @"MKMapItemPlaceCardVersion", v4, @"MKMapItemPlaceCardID", 0}];

    v6 = [(MKMapItem *)self _geoMapItem];
    if ([v6 _hasResultProviderID])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "_resultProviderID")}];
      [v5 setObject:v7 forKey:@"MKMapItemPlaceCardResultProvider"];
    }

    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:0];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithLabelMarker:(id)a3
{
  v4 = a3;
  v5 = [_MKLabelMarkerItem labelMarkerItemWithLabelMarker:v4];
  v6 = [(MKMapItem *)self initWithGeoMapItem:v5 isPlaceHolderPlace:0];

  if (v6)
  {
    if ([v4 featureType] == 5)
    {
      [(MKMapItem *)v6 setIsMapItemTypeTransit:1];
    }

    [v4 coordinate];
    v8 = v7;
    [v4 coordinate];
    [(MKMapItem *)v6 setPresentCoordinate:v8];
    v9 = v6;
  }

  return v6;
}

- (id)_placeCardContact
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF18]);
  if ([(MKMapItem *)self _isMapItemTypeBusiness])
  {
    [v3 setContactType:1];
    v4 = [(MKMapItem *)self place];
    v5 = [v4 name];
    [v3 setOrganizationName:v5];

    v6 = MEMORY[0x1E695CBD8];
  }

  else
  {
    [v3 setContactType:0];
    if ([(MKMapItem *)self _isMapItemTypeAddress])
    {
      v6 = MEMORY[0x1E695CB60];
      goto LABEL_7;
    }

    v4 = [(MKMapItem *)self name];
    [v3 setGivenName:v4];
    v6 = MEMORY[0x1E695CB60];
  }

LABEL_7:
  v7 = *v6;
  v8 = [(MKMapItem *)self _cnPostalAddress];
  if (v8)
  {
    v9 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v7 value:v8];
    v10 = v9;
    if (v9)
    {
      v24[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v3 setPostalAddresses:v11];
    }
  }

  v12 = [(MKMapItem *)self phoneNumber];
  if ([v12 length])
  {
    v13 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v12];
    v14 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v7 value:v13];
    v23 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v3 setPhoneNumbers:v15];
  }

  v16 = [(MKMapItem *)self url];
  v17 = [v16 absoluteString];

  if ([v17 length])
  {
    v18 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CBD0] value:v17];
    v22 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v3 setUrlAddresses:v19];
  }

  v20 = [(MKMapItem *)self _mapsDataString];
  if ([v20 length])
  {
    [v3 setMapsData:v20];
  }

  return v3;
}

- (BOOL)_isEmptyContactMapItem
{
  [(MKMapItem *)self _coordinate];
  v3 = fabs(v2) > 180.0;
  return fabs(v4) > 90.0 || v3;
}

- (MKMapItem)initWithContact:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 postalAddresses];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v16 + 1) + 8 * v10) value];
      v8 = [v12 dictionaryRepresentation];

      if ([v8 count])
      {
        break;
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = [(MKMapItem *)self initWithAddressDictionary:v8];
  if (v13)
  {
    v14 = [MEMORY[0x1E695CD80] stringFromContact:v4 style:0];
    [(MKMapItem *)v13 setName:v14];
  }

  return v13;
}

+ (id)_mapItemFromVCardRepresentation:(id)a3 error:(id *)a4
{
  v5 = *MEMORY[0x1E6983078];
  v6 = a3;
  v7 = [v5 identifier];
  v8 = [MKMapItem objectWithItemProviderData:v6 typeIdentifier:v7 error:a4];

  return v8;
}

+ (id)ticketForMapsDataString:(id)a3 name:(id)a4
{
  v5 = a4;
  v6 = [a3 dataUsingEncoding:4];
  v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
  v8 = [v7 objectForKey:@"MKMapItemPlaceCardVersion"];
  v9 = [v8 integerValue];

  v10 = 0;
  if (v9 == 1)
  {
    v11 = [v7 objectForKey:@"MKMapItemPlaceCardID"];
    if (v11)
    {
      v12 = [v7 objectForKey:@"MKMapItemPlaceCardResultProvider"];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 intValue];
      }

      else
      {
        v14 = 0;
      }

      v15 = -[MKMapItemIdentifier initWithMUID:]([MKMapItemIdentifier alloc], "initWithMUID:", [v11 unsignedLongLongValue]);
      v16 = +[MKMapService sharedService];
      v10 = [v16 ticketForURLQuery:v5 identifier:v15 resultProviderId:v14 contentProvider:0 maxResults:1 traits:0];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (void)_fillOutRequest:(id)a3 withMapsDataString:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [a4 dataUsingEncoding:4];
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
    v8 = [v7 objectForKey:@"MKMapItemPlaceCardVersion"];
    v9 = [v8 integerValue];

    if (v9 == 1)
    {
      v10 = [v7 objectForKey:@"MKMapItemPlaceCardID"];
      if (v10)
      {
        v11 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(v11, "unsignedLongLongValue")}];

          v11 = v12;
        }

        v16[0] = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
        [v5 _setMuids:v13];

        v14 = [v7 objectForKey:@"MKMapItemPlaceCardResultProvider"];
        v15 = v14;
        if (v14)
        {
          [v5 _setResultProviderID:{objc_msgSend(v14, "intValue")}];
        }
      }
    }
  }
}

+ (id)contactsAddressKeysForGeoAddressKeys
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695CC30];
  v9[0] = @"Street";
  v9[1] = @"City";
  v3 = *MEMORY[0x1E695CC00];
  v10[0] = v2;
  v10[1] = v3;
  v4 = *MEMORY[0x1E695CC28];
  v9[2] = @"State";
  v9[3] = @"ZIP";
  v5 = *MEMORY[0x1E695CC18];
  v10[2] = v4;
  v10[3] = v5;
  v9[4] = @"Country";
  v9[5] = @"CountryCode";
  v6 = *MEMORY[0x1E695CC10];
  v10[4] = *MEMORY[0x1E695CC08];
  v10[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

+ (id)contactsAddressDictionaryFromGeoAddressDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[MKMapItem contactsAddressKeysForGeoAddressKeys];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

        v15 = v14;

        v16 = [v3 objectForKeyedSubscript:v11];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end
@interface MKMapItem
+ (BOOL)_isDirectionsActionURL:(id)l;
+ (BOOL)_shouldUseUniversalLinkForMapItems:(id)items options:(id)options;
+ (BOOL)openMapsWithItems:(NSArray *)mapItems launchOptions:(NSDictionary *)launchOptions;
+ (BOOL)valueIsValid:(id)valid forKey:(id)key;
+ (MKMapItem)mapItemForCurrentLocation;
+ (MKMapItem)mapItemWithDictionary:(id)dictionary;
+ (MKMapItem)mapItemWithSerializedPlaceData:(id)data serializedDetourInfo:(id)info currentLocation:(BOOL)location;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)_defaultNavigationURLForURL:(id)l;
+ (id)_deserializeResourceOptionsFromURL:(id)l error:(id *)error;
+ (id)_itemWithContact:(id)contact geoMapItem:(id)item;
+ (id)_itemWithGeoMapItem:(id)item;
+ (id)_launchOptionsFromResourceOptionsDictionary:(id)dictionary;
+ (id)_launchOptionsWithOptions:(id)options;
+ (id)_localizedNextOpeningDayOftheWeekFormatter;
+ (id)_localizedNextOpeningHoursFormatter;
+ (id)_mapItemBackedByURL:(id)l;
+ (id)_mapItemFromVCardRepresentation:(id)representation error:(id *)error;
+ (id)_mapItemWithWithLocation:(id)location addressDictionary:(id)dictionary name:(id)name businessURL:(id)l phoneNumber:(id)number sessionID:(id)d muid:(unint64_t)muid attributionID:(id)self0 sampleSizeForUserRatingScore:(unsigned int)self1 normalizedUserRatingScore:(float)self2;
+ (id)_sharedSessionURLForPunchoutURL:(id)l;
+ (id)_sharedSessionUserInfoForPunchoutUserInfo:(id)info;
+ (id)_sourceAppIdFromLaunchURL:(id)l;
+ (id)_universalLinkForMapItems:(id)items options:(id)options;
+ (id)_urlForLocation:(id)location address:(id)address label:(id)label options:(id)options;
+ (id)_urlForMapItemHandles:(id)handles options:(id)options;
+ (id)contactsAddressDictionaryFromGeoAddressDictionary:(id)dictionary;
+ (id)contactsAddressKeysForGeoAddressKeys;
+ (id)launchOptionsFromURL:(id)l;
+ (id)mapItemsFromURL:(id)l options:(id *)options;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)plistCompatibleDictionaryFromStandardOptions:(id)options;
+ (id)sanitizeArray:(id)array forKey:(id)key;
+ (id)sanitizeDictionary:(id)dictionary;
+ (id)sanitizeObject:(id)object forKey:(id)key;
+ (id)standardOptionsFromPlistCompatibleDictionary:(id)dictionary;
+ (id)ticketForMapsDataString:(id)string name:(id)name;
+ (id)urlForMapItem:(id)item options:(id)options;
+ (id)urlForMapItems:(id)items options:(id)options;
+ (void)_fillOutRequest:(id)request withMapsDataString:(id)string;
+ (void)_mapItemFromHandle:(id)handle completionHandler:(id)handler;
+ (void)_mapItemsFromHandleURL:(id)l completionHandler:(id)handler;
+ (void)_mapItemsFromPunchInHintsURL:(id)l maxResults:(unsigned int)results completionHandler:(id)handler;
+ (void)_mapItemsWithSerializedPlaceDataResponse:(id)response handler:(id)handler;
+ (void)_openDefaultNavigationWithItems:(id)items launchOptions:(id)options fromScene:(id)scene completionHandler:(id)handler;
+ (void)_openDefaultNavigationWithURL:(id)l fromScene:(id)scene completionHandler:(id)handler;
+ (void)openMapsWithItems:(NSArray *)mapItems launchOptions:(NSDictionary *)launchOptions fromScene:(UIScene *)scene completionHandler:(void *)completion;
+ (void)openMapsWithItems:(id)items launchOptions:(id)options completionHandler:(id)handler;
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
- (BOOL)_isEquivalentURLRepresentationTo:(id)to;
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
- (BOOL)_restaurantLink_hasFeatureType:(unint64_t)type;
- (BOOL)hasAmenityType:(int)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)openInMapsWithLaunchOptions:(NSDictionary *)launchOptions;
- (BOOL)valueForAmenityType:(int)type;
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
- (MKMapItem)initWithAddressDictionary:(id)dictionary;
- (MKMapItem)initWithCLLocation:(id)location placeType:(int)type;
- (MKMapItem)initWithCoder:(id)coder;
- (MKMapItem)initWithContact:(id)contact;
- (MKMapItem)initWithGeoMapItem:(id)item isPlaceHolderPlace:(BOOL)place;
- (MKMapItem)initWithGeoMapItemAsCurrentLocation:(id)location;
- (MKMapItem)initWithLocation:(id)location address:(id)address;
- (MKMapItem)initWithPlace:(id)place isPlaceHolderPlace:(BOOL)holderPlace;
- (MKMapItem)initWithPlacemark:(MKPlacemark *)placemark;
- (MKMapItem)initWithUrlRepresentation:(id)representation;
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
- (id)_addressFormattedAsTitlesForMapRect:(id)rect;
- (id)_addressFormattedAsWeatherDisplayName;
- (id)_addressFormattedAsWeatherLocationName;
- (id)_addressOrNil:(id)nil;
- (id)_attributionFor:(id)for sourceStringFormat:(id)format moreSourceStringFormat:(id)stringFormat imageTintColor:(id)color;
- (id)_bestWalletHeroImageForSize:(CGSize)size allowSmaller:(BOOL)smaller;
- (id)_cnPostalAddress;
- (id)_createFullSharingURLWithLookAroundViewState:(id)state includeSensitiveFields:(BOOL)fields;
- (id)_factoidWithSemantic:(int)semantic;
- (id)_formatterForAdamId;
- (id)_fullAddressWithMultiline:(BOOL)multiline;
- (id)_getBusiness;
- (id)_htmlRepresentation;
- (id)_identifier;
- (id)_initWithLabelMarker:(id)marker;
- (id)_isolatedPlace;
- (id)_localizedNextOpeningStringShort:(BOOL)short;
- (id)_location;
- (id)_mapkit_preferredFirstPhotoVendor;
- (id)_mapkit_resolvedFlatPhotoList;
- (id)_mapsDataString;
- (id)_nameFromPlaceData;
- (id)_placeCardContact;
- (id)_postalAddressFromMeCardUsingAddressIdentifier:(id)identifier;
- (id)_restaurantLink_firstProviderDisplayName;
- (id)_restaurantLink_firstProviderIdentifier;
- (id)_restaurantLink_firstProviderPlaceIdentifier;
- (id)_restaurantLink_firstVendorID;
- (id)_reviewForIdentifier:(id)identifier;
- (id)_urlExtraStorage;
- (id)_vCardFilename;
- (id)_vCardRepresentation;
- (id)_walletHeroImageProviderName;
- (id)dictionaryRepresentation;
- (id)formattedNumberOfReviewsIncludingProvider:(BOOL)provider formatter:(id)formatter;
- (id)hoursBuilderForSearchResultCellForOptions:(unint64_t)options conciseStyle:(BOOL)style openAt:(id)at;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)urlRepresentation;
- (id)venueLabelWithContext:(unint64_t)context;
- (int)_browseCategory_placeCardType;
- (int)_placecardRenderingMode;
- (int64_t)_venueFeatureType;
- (unint64_t)_mapkit_numberOfPhotosAvailableForFlatList;
- (unint64_t)_restaurantExtensionModeForFirstProvider;
- (unint64_t)hash;
- (void)_getFirstAvailableAppClipLinkFromQuickLinks:(id)links completion:(id)completion;
- (void)_getFirstAvailableAppClipLinkWithCompletion:(id)completion;
- (void)_getFirstAvailableSecondaryAppClipLinkWithCompletion:(id)completion;
- (void)_getHasAvailableAppClipWithCompletion:(id)completion;
- (void)_getHasAvailableSecondaryAppClipWithCompletion:(id)completion;
- (void)_launchActivityForBrandItem;
- (void)_markTransitInfoUpdated;
- (void)_refreshAttribution;
- (void)_updateRealTimeEVChargerAvailability:(id)availability;
- (void)_updateTransitInfoWithMapItem:(id)item;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)openInMapsWithLaunchOptions:(NSDictionary *)launchOptions fromScene:(UIScene *)scene completionHandler:(void *)completion;
- (void)openInMapsWithLaunchOptions:(id)options completionHandler:(id)handler;
- (void)preloadTransitInfoWithCompletion:(id)completion;
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
  name = [(GEOMapItemStorageUserValues *)self->_userValues name];

  if (name)
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_didResolveAttributionToken];
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
    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    _place = [_geoMapItem _place];
    place = self->_place;
    self->_place = _place;

    name = [(GEOMapItemStorageUserValues *)self->_userValues name];

    if (name)
    {
      name2 = [(GEOMapItemStorageUserValues *)self->_userValues name];
      [(GEOPlace *)self->_place setName:name2];
    }
  }

  v8 = self->_place;

  return v8;
}

- (BOOL)_hasResolvablePartialInformation
{
  place = [(MKMapItem *)self place];
  if (place)
  {
    v4 = place;
    metadata = [(MKMapItem *)self metadata];
    if (metadata)
    {
    }

    else
    {
      geoMapItem = self->_geoMapItem;

      if (!geoMapItem)
      {
        place2 = [(MKMapItem *)self place];
        firstBusiness = [place2 firstBusiness];
        hasUID = [firstBusiness hasUID];

        return hasUID;
      }
    }
  }

  [(MKMapItem *)self _coordinate];
  if (!CLLocationCoordinate2DIsValid(v17))
  {
    _geoAddress = [(MKMapItem *)self _geoAddress];
    structuredAddress = [_geoAddress structuredAddress];
    if (structuredAddress)
    {
    }

    else
    {
      _geoAddress2 = [(MKMapItem *)self _geoAddress];
      formattedAddressLines = [_geoAddress2 formattedAddressLines];

      if (!formattedAddressLines)
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
    _isolatedPlace = [(MKMapItem *)self _isolatedPlace];
    firstBusiness = [_isolatedPlace firstBusiness];

    if (firstBusiness)
    {
      v6 = [[MKMapItemMetadata alloc] initWithBusiness:firstBusiness];
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
  _isolatedPlace = [(MKMapItem *)self _isolatedPlace];
  _geo_isolate_unlock();

  return _isolatedPlace;
}

- (NSString)phoneNumber
{
  phoneNumber = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
  v4 = [phoneNumber length];

  if (v4)
  {
    phoneNumber2 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
LABEL_5:
    v6 = phoneNumber2;
    goto LABEL_6;
  }

  if ([(GEOMapItem *)self->_geoMapItem _hasTelephone])
  {
    phoneNumber2 = [(GEOMapItem *)self->_geoMapItem _telephone];
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
  _messageLink = [(GEOMapItem *)self->_geoMapItem _messageLink];
  navBackgroundColorString = [_messageLink navBackgroundColorString];

  if (navBackgroundColorString)
  {
    v4 = [MEMORY[0x1E69DC888] _maps_colorFromHexString:navBackgroundColorString];
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
    _transitDisplayName = [(MKMapItem *)self _transitDisplayName];
    if ([_transitDisplayName length])
    {
      name = _transitDisplayName;
      v5 = name;
      goto LABEL_19;
    }
  }

  else
  {
    _transitDisplayName = 0;
  }

  place = [(MKMapItem *)self place];
  if (!place)
  {
LABEL_10:
    name = [(GEOMapItem *)self->_geoMapItem name];

    if (![name length])
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

  name2 = [(GEOMapItemStorageUserValues *)self->_userValues name];

  if (!name2)
  {
    name = [place name];

    if ([name length])
    {
      goto LABEL_16;
    }

    _transitDisplayName = name;
  }

  firstBusiness = [place firstBusiness];
  name = [firstBusiness name];

  if ([name length])
  {
LABEL_16:
    v10 = name;
    goto LABEL_17;
  }

  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  _transitDisplayName = [addressObject name];

  if (![_transitDisplayName length])
  {
    goto LABEL_10;
  }

  v10 = _transitDisplayName;
LABEL_17:
  name = v10;
LABEL_18:
  v5 = v10;

LABEL_19:

  return v5;
}

- (BOOL)_hasTransitDisplayName
{
  _transitInfo = [(MKMapItem *)self _transitInfo];
  displayName = [_transitInfo displayName];
  v4 = [displayName length] != 0;

  return v4;
}

- (NSString)_localizedResponseTime
{
  _messageLink = [(GEOMapItem *)self->_geoMapItem _messageLink];
  responseTime = [_messageLink responseTime];
  if (responseTime > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76C9380[responseTime]);
  }

  return v4;
}

- (UIColor)_navTintBrandColor
{
  _messageLink = [(GEOMapItem *)self->_geoMapItem _messageLink];
  navTintColorString = [_messageLink navTintColorString];

  if (navTintColorString)
  {
    v4 = [MEMORY[0x1E69DC888] _maps_colorFromHexString:navTintColorString];
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
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v3 = _MKBestWalletHeroPhotoForGEOMapItem(_geoMapItem);
  v4 = v3;
  if (v3)
  {
    attribution = [v3 attribution];
    providerName = [attribution providerName];
  }

  else
  {
    providerName = 0;
  }

  return providerName;
}

- (id)_bestWalletHeroImageForSize:(CGSize)size allowSmaller:(BOOL)smaller
{
  smallerCopy = smaller;
  height = size.height;
  width = size.width;
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v8 = _MKBestWalletHeroPhotoForGEOMapItem(_geoMapItem);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 bestPhotoForSize:smallerCopy allowSmaller:{width, height}];
    v11 = [v10 url];

    if (v11)
    {
      v12 = [v10 url];

      goto LABEL_6;
    }
  }

  v12 = [_geoMapItem _bestHeroBrandIconURLForSize:smallerCopy allowSmaller:{width, height}];
LABEL_6:

  return v12;
}

+ (void)_mapItemsFromPunchInHintsURL:(id)l maxResults:(unsigned int)results completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  if (handlerCopy)
  {
    resultsCopy = results;
    selfCopy = self;
    scheme = [lCopy scheme];
    v11 = [scheme isEqualToString:@"x-maps-punchinhint"];

    if (v11)
    {
      v12 = MEMORY[0x1E696AF20];
      absoluteString = [lCopy absoluteString];
      v36 = [v12 componentsWithString:absoluteString];

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
          name = [v18 name];
          v20 = [name isEqualToString:@"pm"];

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

        value = [v18 value];

        if (value && [value length])
        {
          v23 = [objc_alloc(MEMORY[0x1E69A25B0]) initWithEncodedString:value];
          v24 = +[MKMapService sharedService];
          defaultTraits = [v24 defaultTraits];

          spotlightEncodedString = [v23 spotlightEncodedString];
          [defaultTraits setSpotlightSearchPunchinEncodedString:spotlightEncodedString];

          v26 = +[MKMapService sharedService];
          completedSearchQuery = [v23 completedSearchQuery];
          v28 = [v26 ticketForSearchQuery:completedSearchQuery completionItem:0 maxResults:resultsCopy traits:defaultTraits];

          v29 = objc_opt_new();
          v30 = [selfCopy _launchOptionsFromResourceOptionsDictionary:v29];
          v31 = [v30 mutableCopy];

          objc_initWeak(&location, v28);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __88__MKMapItem_PunchInHintsSPI___mapItemsFromPunchInHintsURL_maxResults_completionHandler___block_invoke;
          v37[3] = &unk_1E76C6B60;
          v39 = handlerCopy;
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

        value = 0;
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:MKErrorDomain code:1 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v23);
LABEL_17:
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v22);
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
    _venueFeatureType = [(MKMapItem *)self _venueFeatureType];
    if (_venueFeatureType == 2)
    {
      v4 = 13;
    }

    else
    {
      v4 = 0;
    }

    if (_venueFeatureType == 1)
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
  _identifier = [(MKMapItem *)self _identifier];
  if (_identifier)
  {
    _hasVenueFeatureType = [(MKMapItem *)self _hasVenueFeatureType];
  }

  else
  {
    _hasVenueFeatureType = 0;
  }

  return _hasVenueFeatureType;
}

- (BOOL)_browseCategory_canDisplayBrowseCategoriesForPlace
{
  _browseCategories = [(MKMapItem *)self _browseCategories];
  v3 = [_browseCategories count] != 0;

  return v3;
}

- (BOOL)_browseCategory_canDisplayBrowseCategoriesForVenue
{
  _identifier = [(MKMapItem *)self _identifier];
  if (_identifier && [(MKMapItem *)self _hasVenueFeatureType]&& ((v4 = [(MKMapItem *)self _venueFeatureType], v4 > 4) || ((1 << v4) & 0x19) == 0))
  {
    _browseCategories = [(MKMapItem *)self _browseCategories];
    v5 = [_browseCategories count] != 0;
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
  name = [(MKMapItem *)self name];
  v6 = name;
  if (name)
  {
    v7 = name;
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
  _hikeSummary = [(GEOMapItem *)self->_geoMapItem _hikeSummary];
  if (_hikeSummary)
  {
    _hikeAssociatedInfo = [(GEOMapItem *)self->_geoMapItem _hikeAssociatedInfo];
    if (_hikeAssociatedInfo)
    {
      _hikeGeometry = [(GEOMapItem *)self->_geoMapItem _hikeGeometry];
      v6 = _hikeGeometry != 0;
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
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];

  if (!_clientAttributes)
  {
    return 0;
  }

  _geoMapItem2 = [(MKMapItem *)self _geoMapItem];
  contactIsMe = [_geoMapItem2 contactIsMe];

  if (!contactIsMe)
  {
    return 0;
  }

  _geoMapItem3 = [(MKMapItem *)self _geoMapItem];
  _clientAttributes2 = [_geoMapItem3 _clientAttributes];
  correctedLocationAttributes = [_clientAttributes2 correctedLocationAttributes];
  hasCorrectedAddress = [correctedLocationAttributes hasCorrectedAddress];

  return hasCorrectedAddress;
}

- (BOOL)_hasCorrectedHomeWorkCoordinate
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];

  if (!_clientAttributes)
  {
    return 0;
  }

  _geoMapItem2 = [(MKMapItem *)self _geoMapItem];
  contactIsMe = [_geoMapItem2 contactIsMe];

  if (!contactIsMe)
  {
    return 0;
  }

  _geoMapItem3 = [(MKMapItem *)self _geoMapItem];
  _clientAttributes2 = [_geoMapItem3 _clientAttributes];
  correctedLocationAttributes = [_clientAttributes2 correctedLocationAttributes];
  hasCorrectedCoordinate = [correctedLocationAttributes hasCorrectedCoordinate];

  return hasCorrectedCoordinate;
}

- (NSString)reviewsProviderDisplayName
{
  _reviewsAttribution = [(MKMapItem *)self _reviewsAttribution];
  if ([_reviewsAttribution requiresAttributionInCallout])
  {
    providerName = [_reviewsAttribution providerName];
  }

  else
  {
    providerName = 0;
  }

  return providerName;
}

- (NSArray)_tips
{
  v19 = *MEMORY[0x1E69E9840];
  _tips = [(GEOMapItem *)self->_geoMapItem _tips];
  if ([_tips count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = _tips;
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
            [array addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (NSArray)_reviews
{
  v20 = *MEMORY[0x1E69E9840];
  _reviews = [(GEOMapItem *)self->_geoMapItem _reviews];
  v4 = [_reviews count];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = _reviews;
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
  _placecardLayoutData = [(GEOMapItem *)self->_geoMapItem _placecardLayoutData];
  currentModuleLayoutEntry = [_placecardLayoutData currentModuleLayoutEntry];
  renderingMode = [currentModuleLayoutEntry renderingMode];

  return renderingMode;
}

- (GEOModuleLayoutEntry)_placecardLayout
{
  _placecardLayoutData = [(GEOMapItem *)self->_geoMapItem _placecardLayoutData];
  currentModuleLayoutEntry = [_placecardLayoutData currentModuleLayoutEntry];

  return currentModuleLayoutEntry;
}

- (BOOL)_isMessageIDVerified
{
  _messageLink = [(GEOMapItem *)self->_geoMapItem _messageLink];
  isVerified = [_messageLink isVerified];

  return isVerified;
}

- (NSString)_messageURLString
{
  _messageLink = [(GEOMapItem *)self->_geoMapItem _messageLink];
  messageURLString = [_messageLink messageURLString];

  return messageURLString;
}

- (NSString)_messageID
{
  _messageLink = [(GEOMapItem *)self->_geoMapItem _messageLink];
  messageID = [_messageLink messageID];

  return messageID;
}

- (BOOL)_isMapItemTypeBrand
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v3 = [_geoMapItem _placeDisplayType] == 5;

  return v3;
}

- (BOOL)_isMapItemTypeAddress
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v3 = [_geoMapItem _placeDisplayType] == 3;

  return v3;
}

- (BOOL)_isMapItemTypeSettlement
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v3 = [_geoMapItem _placeDisplayType] == 2;

  return v3;
}

- (BOOL)_isMapItemTypeBusiness
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v3 = [_geoMapItem _placeDisplayType] == 1;

  return v3;
}

- (BOOL)_isMapItemTypeUnknown
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v3 = [_geoMapItem _placeDisplayType] == 0;

  return v3;
}

- (id)_attributionFor:(id)for sourceStringFormat:(id)format moreSourceStringFormat:(id)stringFormat imageTintColor:(id)color
{
  forCopy = for;
  formatCopy = format;
  stringFormatCopy = stringFormat;
  colorCopy = color;
  providerName = [forCopy providerName];
  attributionURLs = [forCopy attributionURLs];
  if ([attributionURLs count])
  {
    v16 = stringFormatCopy;
  }

  else
  {
    v16 = formatCopy;
  }

  v17 = v16;

  if (!v17)
  {
    if (formatCopy)
    {
      v18 = formatCopy;
    }

    else
    {
      v18 = stringFormatCopy;
    }

    v17 = v18;
  }

  v19 = +[MKSystemController sharedInstance];
  [v19 screenScale];
  if (colorCopy)
  {
    v20 = [forCopy providerSnippetLogoImageForScale:?];

LABEL_11:
    v21 = [v20 _mapkit_templateImageWithTintColor:colorCopy];

    v22 = colorCopy != 0;
    goto LABEL_14;
  }

  v21 = [forCopy providerLogoImageForScale:?];

  if (!v21)
  {
    v25 = +[MKSystemController sharedInstance];
    [v25 screenScale];
    v20 = [forCopy providerSnippetLogoImageForScale:?];

    colorCopy = [MEMORY[0x1E69DC888] labelColor];
    goto LABEL_11;
  }

  v22 = 0;
LABEL_14:
  v23 = [(MKMapItem *)self _attributionWithDisplayName:providerName attributionFormat:v17 logo:v21 isSnippetLogo:v22];

  return v23;
}

- (NSString)_reviewsDisplayName
{
  _reviewsAttribution = [(MKMapItem *)self _reviewsAttribution];
  providerName = [_reviewsAttribution providerName];

  return providerName;
}

- (BOOL)_hasLookAroundStorefront
{
  _storefrontPresentationInfo = [(GEOMapItem *)self->_geoMapItem _storefrontPresentationInfo];
  v3 = _storefrontPresentationInfo != 0;

  return v3;
}

- (void)_updateRealTimeEVChargerAvailability:(id)availability
{
  v4 = MEMORY[0x1E69A1D60];
  availabilityCopy = availability;
  v6 = [v4 alloc];
  _geoMapItem = [availabilityCopy _geoMapItem];

  _placeData = [_geoMapItem _placeData];
  obj = [v6 initWithPlaceData:_placeData];

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
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _associatedApp = [(GEOMapItem *)self->_geoMapItem _associatedApp];
  alternateAppAdamIds = [_associatedApp alternateAppAdamIds];

  v6 = [alternateAppAdamIds countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(alternateAppAdamIds);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        _formatterForAdamId = [(MKMapItem *)self _formatterForAdamId];
        v12 = [_formatterForAdamId numberFromString:v10];
        [array addObject:v12];
      }

      v7 = [alternateAppAdamIds countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

- (NSNumber)_preferedAppAdamID
{
  _formatterForAdamId = [(MKMapItem *)self _formatterForAdamId];
  _associatedApp = [(GEOMapItem *)self->_geoMapItem _associatedApp];
  preferredAppAdamId = [_associatedApp preferredAppAdamId];
  v6 = [_formatterForAdamId numberFromString:preferredAppAdamId];

  return v6;
}

- (id)venueLabelWithContext:(unint64_t)context
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  v5 = addressObject;
  if (context - 1 >= 3)
  {
    contextCopy = 0;
  }

  else
  {
    contextCopy = context;
  }

  v7 = [addressObject venueLabel:contextCopy];

  return v7;
}

- (id)_cnPostalAddress
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  cnPostalAddress = [addressObject cnPostalAddress];

  return cnPostalAddress;
}

- (id)_addressFormattedAsLocation
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  locationAddress = [addressObject locationAddress];

  return locationAddress;
}

- (id)_addressFormattedAsTitlesForMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  v8 = [addressObject titlesForMapRect:{v6, v5, var0, var1}];

  return v8;
}

- (id)_addressFormattedAsWeatherLocationName
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  weatherLocationName = [addressObject weatherLocationName];
  v5 = [(MKMapItem *)self _addressOrNil:weatherLocationName];

  return v5;
}

- (id)_addressFormattedAsWeatherDisplayName
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  weatherDisplayName = [addressObject weatherDisplayName];
  v5 = [(MKMapItem *)self _addressOrNil:weatherDisplayName];

  return v5;
}

- (id)_addressFormattedAsSinglelineAddress
{
  _clientAttributes = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  hasCorrectedLocationAttributes = [_clientAttributes hasCorrectedLocationAttributes];

  if (hasCorrectedLocationAttributes)
  {
    _clientAttributes2 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    correctedLocationAttributes = [_clientAttributes2 correctedLocationAttributes];
    _addressFormattedAsSinglelineAddress = [correctedLocationAttributes _addressFormattedAsSinglelineAddress];

    if ([_addressFormattedAsSinglelineAddress length])
    {
      goto LABEL_5;
    }
  }

  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  v9 = [addressObject fullAddressWithMultiline:0];
  _addressFormattedAsSinglelineAddress = [(MKMapItem *)self _addressOrNil:v9];

LABEL_5:

  return _addressFormattedAsSinglelineAddress;
}

- (id)_addressFormattedAsShortenedAddress
{
  if ([(MKMapItem *)self _venueFeatureType]== 4)
  {
    addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
    venueShortAddress = [addressObject venueShortAddress];

    if ([venueShortAddress length])
    {
      goto LABEL_8;
    }
  }

  _clientAttributes = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  hasCorrectedLocationAttributes = [_clientAttributes hasCorrectedLocationAttributes];

  if (hasCorrectedLocationAttributes)
  {
    _clientAttributes2 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    correctedLocationAttributes = [_clientAttributes2 correctedLocationAttributes];
    venueShortAddress = [correctedLocationAttributes _addressFormattedAsShortenedAddress];

    if ([venueShortAddress length])
    {
      goto LABEL_8;
    }
  }

  addressObject2 = [(GEOMapItem *)self->_geoMapItem addressObject];
  shortAddress = [addressObject2 shortAddress];
  venueShortAddress = [(MKMapItem *)self _addressOrNil:shortAddress];

LABEL_8:

  return venueShortAddress;
}

- (id)_addressFormattedAsName
{
  _clientAttributes = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  hasCorrectedLocationAttributes = [_clientAttributes hasCorrectedLocationAttributes];

  if (hasCorrectedLocationAttributes)
  {
    _clientAttributes2 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    correctedLocationAttributes = [_clientAttributes2 correctedLocationAttributes];
    _addressFormattedAsName = [correctedLocationAttributes _addressFormattedAsName];

    if ([_addressFormattedAsName length])
    {
      goto LABEL_5;
    }
  }

  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  name = [addressObject name];
  _addressFormattedAsName = [(MKMapItem *)self _addressOrNil:name];

LABEL_5:

  return _addressFormattedAsName;
}

- (id)_addressFormattedAsMultilineAddress
{
  _clientAttributes = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  hasCorrectedLocationAttributes = [_clientAttributes hasCorrectedLocationAttributes];

  if (hasCorrectedLocationAttributes)
  {
    _clientAttributes2 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
    correctedLocationAttributes = [_clientAttributes2 correctedLocationAttributes];

    _formattedPostalAddress = [correctedLocationAttributes _formattedPostalAddress];
  }

  else
  {
    _formattedPostalAddress = 0;
  }

  if (![_formattedPostalAddress length])
  {
    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    contactIsMe = [_geoMapItem contactIsMe];

    if (contactIsMe)
    {
      _clientAttributes3 = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
      addressBookAttributes = [_clientAttributes3 addressBookAttributes];
      addressIdentifier = [addressBookAttributes addressIdentifier];

      if ([addressIdentifier length])
      {
        v13 = [(MKMapItem *)self _postalAddressFromMeCardUsingAddressIdentifier:addressIdentifier];
        v14 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v13 style:0];

        _formattedPostalAddress = v14;
      }
    }
  }

  if ([_formattedPostalAddress length])
  {
    v15 = _formattedPostalAddress;
  }

  else
  {
    addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
    v17 = [addressObject fullAddressWithMultiline:1];
    v18 = [(MKMapItem *)self _addressOrNil:v17];

    if (v18)
    {
      v15 = v18;
    }

    else
    {
      fullAddress = [(MKAddress *)self->_address fullAddress];
      v15 = [(MKMapItem *)self _addressOrNil:fullAddress];
    }
  }

  return v15;
}

- (id)_postalAddressFromMeCardUsingAddressIdentifier:(id)identifier
{
  v23[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
  postalAddresses = [v6 postalAddresses];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __60__MKMapItem__postalAddressFromMeCardUsingAddressIdentifier___block_invoke;
  v14 = &unk_1E76C9360;
  v8 = identifierCopy;
  v15 = v8;
  v16 = &v17;
  [postalAddresses enumerateObjectsUsingBlock:&v11];

  value = [v18[5] value];

  _Block_object_dispose(&v17, 8);

  return value;
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
  geoAddress = [(GEOMapItem *)self->_geoMapItem geoAddress];
  structuredAddress = [geoAddress structuredAddress];
  thoroughfare = [structuredAddress thoroughfare];
  v6 = [(MKMapItem *)self _addressOrNil:thoroughfare];

  return v6;
}

- (id)_addressFormattedAsCity
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  v4 = [addressObject cityDisplayNameWithFallback:0];
  v5 = [(MKMapItem *)self _addressOrNil:v4];

  return v5;
}

- (id)_addressOrNil:(id)nil
{
  nilCopy = nil;
  if ([nilCopy length])
  {
    v4 = nilCopy;
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

  _geoAddress = [(MKMapItem *)self _geoAddress];
  structuredAddress = [_geoAddress structuredAddress];
  countryCode = [structuredAddress countryCode];
  uppercaseString = [countryCode uppercaseString];

  if (-[MKMapItem _isMapItemTypeTransit](self, "_isMapItemTypeTransit") || ![uppercaseString length])
  {
    v3 = 1;
  }

  else
  {
    mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    v3 = [mEMORY[0x1E69A1CD8] countryCode:uppercaseString supportsFeature:1];
  }

  return v3;
}

- (id)_urlExtraStorage
{
  if (GEOConfigGetBOOL())
  {
    v3 = objc_opt_new();
    phoneNumber = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];

    v5 = phoneNumber == 0;
    if (phoneNumber)
    {
      phoneNumber2 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
      v7 = [phoneNumber2 copy];
      [v3 setPhoneNumber:v7];
    }

    v8 = [(GEOMapItemStorageUserValues *)self->_userValues url];

    if (v8)
    {
      v9 = [(GEOMapItemStorageUserValues *)self->_userValues url];
      [v3 setUrl:v9];

      v5 = 0;
    }

    _styleAttributes = [(MKMapItem *)self _styleAttributes];
    v11 = _styleAttributes;
    if (_styleAttributes && [_styleAttributes hasAttributes])
    {
      v12 = [objc_alloc(MEMORY[0x1E69A25E0]) initWithGEOFeatureStyleAttributes:v11];
      [v3 setStyleAttributes:v12];

      v5 = 0;
    }

    _displayMapRegion = [(MKMapItem *)self _displayMapRegion];

    if (_displayMapRegion)
    {
      _displayMapRegion2 = [(MKMapItem *)self _displayMapRegion];
      v15 = [_displayMapRegion2 copy];
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

- (id)_createFullSharingURLWithLookAroundViewState:(id)state includeSensitiveFields:(BOOL)fields
{
  fieldsCopy = fields;
  stateCopy = state;
  place = [(MKMapItem *)self place];
  [place coordinate];
  v9 = v8;
  [place coordinate];
  v11 = v10;
  if (fieldsCopy)
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
    _urlExtraStorage = [(MKMapItem *)self _urlExtraStorage];
    v14 = [_MKURLBuilder URLForCoordinate:0 address:v12 label:_urlExtraStorage extraStorage:0 useWebPlaceCard:v9, v11];
    goto LABEL_21;
  }

  if ([(GEOMapItem *)self->_geoMapItem contactIsMe]&& ([(GEOMapItem *)self->_geoMapItem contactAddressType]== 1 || [(GEOMapItem *)self->_geoMapItem contactAddressType]== 2))
  {
    [(MKMapItem *)self _coordinate];
    v9 = v15;
    v11 = v16;
  }

  _urlExtraStorage = [(MKMapItem *)self _addressFormattedAsSinglelineAddress];
  _muid = [(MKMapItem *)self _muid];
  localSearchProviderID = [place localSearchProviderID];
  if (place)
  {
    if (!_muid)
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
    if (!_muid)
    {
LABEL_17:
      _urlExtraStorage2 = [(MKMapItem *)self _urlExtraStorage];
      stateCopy = [_MKURLBuilder URLForCoordinate:_urlExtraStorage address:v12 label:_urlExtraStorage2 extraStorage:0 useWebPlaceCard:stateCopy muninViewState:v9, v11];
LABEL_19:
      v14 = stateCopy;
      goto LABEL_20;
    }
  }

  if (!localSearchProviderID)
  {
    goto LABEL_17;
  }

  if (!MapsFeature_IsEnabled_URLUnification())
  {
    _urlExtraStorage2 = [(MKMapItem *)self _urlExtraStorage];
    stateCopy = [_MKURLBuilder URLForInternalBusiness:v12 id:_muid provider:localSearchProviderID coordinate:_urlExtraStorage address:_urlExtraStorage2 extraStorage:0 useWebPlaceCard:v9 muninViewState:v11, stateCopy];
    goto LABEL_19;
  }

  _urlExtraStorage2 = [(MKMapItem *)self _identifier];
  _urlExtraStorage3 = [(MKMapItem *)self _urlExtraStorage];
  v14 = [_MKURLBuilder URLForCoordinate:_urlExtraStorage address:v12 label:_urlExtraStorage2 mapItemIdentifier:_urlExtraStorage3 extraStorage:0 useWebPlaceCard:stateCopy muninViewState:v9, v11];

LABEL_20:
LABEL_21:

  return v14;
}

- (id)_fullAddressWithMultiline:(BOOL)multiline
{
  if (multiline)
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

- (BOOL)_isEquivalentURLRepresentationTo:(id)to
{
  toCopy = to;
  if (-[MKMapItem isCurrentLocation](self, "isCurrentLocation") && ([toCopy isCurrentLocation] & 1) != 0)
  {
    v5 = 1;
  }

  else if ((!-[MKMapItem isCurrentLocation](self, "isCurrentLocation") || [toCopy isCurrentLocation]) && (-[MKMapItem isCurrentLocation](self, "isCurrentLocation") || (objc_msgSend(toCopy, "isCurrentLocation") & 1) == 0))
  {
    place = [(MKMapItem *)self place];
    place2 = [toCopy place];
    v8 = place2;
    v5 = 0;
    if (place && place2)
    {
      v5 = [place _isEquivalentURLRepresentationTo:place2];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKMapItem)initWithUrlRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"currentloc"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [(MKMapItem *)self initWithGeoMapItem:0 isPlaceHolderPlace:0];
    [(MKMapItem *)v7 setIsCurrentLocation:1];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69A2348]) initWithUrlRepresentation:representationCopy];
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
    urlRepresentation = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    place = [(MKMapItem *)self place];
    urlRepresentation = [place urlRepresentation];
  }

  return urlRepresentation;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_isCurrentLocation)
  {
    _geoMapItemStorageForPersistence = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:_geoMapItemStorageForPersistence forKey:@"MKMapItemIsCurrentLocation"];
  }

  else
  {
    name = [(GEOMapItemStorageUserValues *)self->_userValues name];

    if (name)
    {
      name2 = [(GEOMapItemStorageUserValues *)self->_userValues name];
      [dictionary setObject:name2 forKey:@"MKMapItemName"];
    }

    phoneNumber = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];

    if (phoneNumber)
    {
      phoneNumber2 = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
      [dictionary setObject:phoneNumber2 forKey:@"MKMapItemPhoneNumber"];
    }

    v9 = [(GEOMapItemStorageUserValues *)self->_userValues url];

    if (v9)
    {
      v10 = [(GEOMapItemStorageUserValues *)self->_userValues url];
      [dictionary setObject:v10 forKey:@"MKMapItemURLString"];
    }

    timeZoneName = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];

    if (timeZoneName)
    {
      timeZoneName2 = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];
      [dictionary setObject:timeZoneName2 forKey:@"MKMapItemTimeZoneName"];
    }

    if (self->_geoMapItem)
    {
      _geoMapItemStorageForPersistence = [(MKMapItem *)self _geoMapItemStorageForPersistence];
      data = [_geoMapItemStorageForPersistence data];
      if (data)
      {
        data2 = [_geoMapItemStorageForPersistence data];
        [dictionary setObject:data2 forKey:@"MKMapItemGEOMapItem"];
      }
    }

    else
    {
      place = [(MKMapItem *)self place];

      if (!place)
      {
        goto LABEL_18;
      }

      _geoMapItemStorageForPersistence = [(MKMapItem *)self place];
      data = [_geoMapItemStorageForPersistence data];
      [dictionary setObject:data forKey:@"MKMapItemGEOPlace"];
    }
  }

LABEL_18:

  return dictionary;
}

- (NSData)_handle
{
  if (self->_geoMapItem)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    v4 = [mEMORY[0x1E69A2208] handleForMapItem:self->_geoMapItem];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)openInMapsWithLaunchOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MKMapItem urlForMapItem:self options:options];
  if (v6)
  {
    v7 = +[MKSystemController sharedInstance];
    [v7 openURL:v6 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
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
  _poiClaim = [(MKMapItem *)self _poiClaim];
  isClaimable = [_poiClaim isClaimable];

  return isClaimable;
}

- (BOOL)_isClaimed
{
  _poiClaim = [(MKMapItem *)self _poiClaim];
  isClaimed = [_poiClaim isClaimed];

  return isClaimed;
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
    _placeData = [(GEOMapItem *)self->_geoMapItem _placeData];
    v7 = [v5 initWithPlaceData:_placeData];

    v8 = self->_chargerAvailability;
    self->_chargerAvailability = v7;
    v9 = v7;

    v3 = self->_chargerAvailability;
  }

  return v3;
}

- (id)_factoidWithSemantic:(int)semantic
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _encyclopedicInfo = [(MKMapItem *)self _encyclopedicInfo];
  factoids = [_encyclopedicInfo factoids];

  v6 = [factoids countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(factoids);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 semantic] == semantic)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [factoids countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  pointOfInterestCategory = [(MKMapItem *)self pointOfInterestCategory];

  v4 = [(MKMapItem *)self _factoidWithSemantic:1];
  v5 = v4;
  v6 = 0;
  if (pointOfInterestCategory == @"MKPOICategoryEVCharger" && v4)
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
  _chargerNumberString = [(MKMapItem *)self _chargerNumberString];
  v3 = [_chargerNumberString length] != 0;

  return v3;
}

- (GEOBusinessHours)_messageBusinessHours
{
  _messageLink = [(GEOMapItem *)self->_geoMapItem _messageLink];
  messageBusinessHours = [_messageLink messageBusinessHours];

  return messageBusinessHours;
}

- (id)_localizedNextOpeningStringShort:(BOOL)short
{
  shortCopy = short;
  v100 = *MEMORY[0x1E69E9840];
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _messageLink = [_geoMapItem _messageLink];
  messageBusinessHours = [_messageLink messageBusinessHours];
  placeDailyHours = [messageBusinessHours placeDailyHours];

  _geoMapItem2 = [(MKMapItem *)self _geoMapItem];
  _messageLink2 = [_geoMapItem2 _messageLink];
  timeZone = [_messageLink2 timeZone];

  date = [MEMORY[0x1E695DF00] date];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [currentCalendar components:512 fromDate:date];

  v79 = v13;
  weekday = [v13 weekday];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v80 = timeZone;
  [currentCalendar2 setTimeZone:timeZone];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = placeDailyHours;
  v17 = [v16 countByEnumeratingWithState:&v92 objects:v99 count:16];
  v81 = date;
  v82 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = *v93;
    v70 = *v93;
    v72 = weekday;
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
        dayOfWeekRange = [v21 dayOfWeekRange];
        if (weekday >= dayOfWeekRange && weekday - dayOfWeekRange < v23)
        {
          v25 = [currentCalendar2 components:96 fromDate:date];
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          openIntervals = [v21 openIntervals];
          v27 = [openIntervals countByEnumeratingWithState:&v88 objects:v98 count:16];
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
                  objc_enumerationMutation(openIntervals);
                }

                v31 = *(*(&v88 + 1) + 8 * i);
                startDate = [v31 startDate];
                v33 = [currentCalendar2 components:96 fromDate:startDate];

                hour = [v33 hour];
                if (hour > [v25 hour] || (v35 = objc_msgSend(v33, "hour"), v35 == objc_msgSend(v25, "hour")) && (v36 = objc_msgSend(v33, "minute"), v36 > objc_msgSend(v25, "minute")))
                {
                  v52 = +[MKMapItem _localizedNextOpeningHoursFormatter];
                  startDate2 = [v31 startDate];
                  v54 = [v52 stringFromDate:startDate2];

                  if (shortCopy)
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

              v28 = [openIntervals countByEnumeratingWithState:&v88 objects:v98 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          date = v81;
          v16 = v82;
          v19 = v70;
          weekday = v72;
          v18 = v74;
        }

        ++v20;
      }

      while (v20 != v18);
      v18 = [v16 countByEnumeratingWithState:&v92 objects:v99 count:16];
    }

    while (v18);
  }

  v37 = [currentCalendar2 components:528 fromDate:date];
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
          weekday2 = [v37 weekday];
          v44 = ((j - 1 + weekday2) * 0x2492492492492493uLL) >> 64;
          v45 = j + weekday2 - 7 * ((v44 + ((j - 1 + weekday2 - v44) >> 1)) >> 2);
          dayOfWeekRange2 = [v42 dayOfWeekRange];
          if (v45 >= dayOfWeekRange2 && v45 - dayOfWeekRange2 < v47)
          {
            memset(v83, 0, sizeof(v83));
            openIntervals = [v42 openIntervals];
            if ([openIntervals countByEnumeratingWithState:v83 objects:v96 count:16])
            {
              v57 = **(&v83[0] + 1);
              if (j == 1)
              {
                v58 = +[MKMapItem _localizedNextOpeningHoursFormatter];
                startDate3 = [v57 startDate];
                v60 = [v58 stringFromDate:startDate3];

                if (shortCopy)
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
                if (shortCopy)
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
                startDate4 = [v57 startDate];
                v71 = [v62 stringFromDate:startDate4];
                v66 = +[MKMapItem _localizedNextOpeningHoursFormatter];
                startDate5 = [v57 startDate];
                v68 = [v66 stringFromDate:startDate5];
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

- (id)hoursBuilderForSearchResultCellForOptions:(unint64_t)options conciseStyle:(BOOL)style openAt:(id)at
{
  styleCopy = style;
  atCopy = at;
  v9 = [(NSDictionary *)self->_cachedHoursBuilder mutableCopy];
  cachedHoursBuilder = self->_cachedHoursBuilder;
  if (!cachedHoursBuilder)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);

    objc_storeStrong(&self->_cachedHoursBuilder, v11);
    cachedHoursBuilder = self->_cachedHoursBuilder;
    v9 = v11;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v13 = [(NSDictionary *)cachedHoursBuilder objectForKey:v12];

  if (!v13)
  {
    v13 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:self localizedHoursStringOptions:options conciseStyle:styleCopy openAt:atCopy];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    [v9 setObject:v13 forKey:v14];

    v15 = [v9 copy];
    v16 = self->_cachedHoursBuilder;
    self->_cachedHoursBuilder = v15;
  }

  v17 = v13;

  return v17;
}

- (BOOL)valueForAmenityType:(int)type
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _amenities = [(GEOMapItem *)self->_geoMapItem _amenities];
  v5 = [_amenities countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_amenities);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 amenityType] == type)
        {
          isAmenityPresent = [v9 isAmenityPresent];
          goto LABEL_11;
        }
      }

      v6 = [_amenities countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  isAmenityPresent = 0;
LABEL_11:

  return isAmenityPresent;
}

- (BOOL)hasAmenityType:(int)type
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _amenities = [(GEOMapItem *)self->_geoMapItem _amenities];
  v5 = [_amenities countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_amenities);
        }

        if ([*(*(&v11 + 1) + 8 * i) amenityType] == type)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [_amenities countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    firstObject = [v4 firstObject];
    v6 = self->_firstLocalizedCategoryName;
    self->_firstLocalizedCategoryName = firstObject;

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
    _placeData = [(GEOMapItem *)self->_geoMapItem _placeData];

    if (_placeData)
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
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = MKCurrencySymbolForLocale(currentLocale);

  _priceRange = [(GEOMapItem *)self->_geoMapItem _priceRange];
  if (_priceRange)
  {
    v6 = _priceRange;
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
  _priceDescription = [(GEOMapItem *)self->_geoMapItem _priceDescription];
  priceDescription = [_priceDescription priceDescription];

  return priceDescription;
}

- (BOOL)_hasPriceDescription
{
  _priceDescription = [(GEOMapItem *)self->_geoMapItem _priceDescription];
  hasPriceDescription = [_priceDescription hasPriceDescription];

  return hasPriceDescription;
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
    _identifier = [(GEOMapItem *)self->_geoMapItem _identifier];
    v5 = [(MKMapItemIdentifier *)v3 initWithGEOMapItemIdentifier:_identifier];
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
    _alternateIdentifiers = [(GEOMapItem *)self->_geoMapItem _alternateIdentifiers];
    v5 = [_alternateIdentifiers count];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DFA8]);
      _alternateIdentifiers2 = [(GEOMapItem *)self->_geoMapItem _alternateIdentifiers];
      v8 = [v6 initWithCapacity:{objc_msgSend(_alternateIdentifiers2, "count")}];

      _alternateIdentifiers3 = [(GEOMapItem *)self->_geoMapItem _alternateIdentifiers];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __33__MKMapItem_alternateIdentifiers__block_invoke;
      v17[3] = &unk_1E76C9240;
      v18 = v8;
      v10 = v8;
      [_alternateIdentifiers3 enumerateObjectsUsingBlock:v17];

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
  _identifier = [(MKMapItem *)self _identifier];
  geoMapItemIdentifier = [(MKMapItemIdentifier *)_identifier geoMapItemIdentifier];
  if ([geoMapItemIdentifier hasMapsIdentifierString])
  {
    v4 = _identifier;
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
  _muninViewState = [(GEOMapItem *)self->_geoMapItem _muninViewState];
  v3 = _muninViewState != 0;

  return v3;
}

- (void)preloadTransitInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    _transitInfo = [(MKMapItem *)self _transitInfo];
    labelItems = [_transitInfo labelItems];
    v7 = [labelItems count];

    if (v7)
    {
      objc_initWeak(&location, self);
      v8 = [MKTransitInfoPreloader alloc];
      _transitInfo2 = [(MKMapItem *)self _transitInfo];
      labelItems2 = [_transitInfo2 labelItems];
      v11 = [(MKTransitInfoPreloader *)v8 initWithTransitLabels:labelItems2];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__MKMapItem_preloadTransitInfoWithCompletion___block_invoke;
      v12[3] = &unk_1E76C9218;
      objc_copyWeak(&v14, &location);
      v13 = completionCopy;
      [(MKTransitInfoPreloader *)v11 preloadWithCompletion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      completionCopy[2](completionCopy);
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
    _transitInfo = [(GEOMapItem *)self->_geoMapItem _transitInfo];
    defaultTransitInfo = self->_defaultTransitInfo;
    self->_defaultTransitInfo = _transitInfo;
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
    _transitAttribution = updatedTransitAttribution;
  }

  else
  {
    _transitAttribution = [(GEOMapItem *)self->_geoMapItem _transitAttribution];
  }

  return _transitAttribution;
}

- (BOOL)_hasTransitLabels
{
  _transitInfo = [(MKMapItem *)self _transitInfo];
  labelItems = [_transitInfo labelItems];
  v4 = [labelItems count] != 0;

  return v4;
}

- (NSString)_transitDisplayName
{
  _transitInfo = [(MKMapItem *)self _transitInfo];
  displayName = [_transitInfo displayName];

  return displayName;
}

- (BOOL)_isMapItemTypeTransit
{
  if ([(MKMapItem *)self _hasTransit]|| self->_isMapItemTypeTransit)
  {
    return 1;
  }

  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  v3 = [_geoMapItem _placeDisplayType] == 4;

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
    referenceFrame = [(GEOMapItem *)self->_geoMapItem referenceFrame];
    if (referenceFrame == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (referenceFrame == 2);
    }

    v9 = __22__MKMapItem__location__block_invoke(v8, v4, v6);
  }

  else
  {
    clLocation = [(GEOPlace *)self->_place clLocation];
    v11 = clLocation;
    if (clLocation)
    {
      v12 = clLocation;
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
  place = [(MKMapItem *)self place];
  firstBusiness = [place firstBusiness];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sources = [firstBusiness sources];
  v5 = [sources countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sources);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        sourceName = [v9 sourceName];
        v11 = [sourceName caseInsensitiveCompare:@"yelp"];

        if (!v11)
        {
          sourceId = [v9 sourceId];
          goto LABEL_11;
        }
      }

      v6 = [sources countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  sourceId = 0;
LABEL_11:

  return sourceId;
}

- (void)setUrl:(NSURL *)url
{
  absoluteString = [(NSURL *)url absoluteString];
  userValues = [(MKMapItem *)self userValues];
  [userValues setUrl:absoluteString];
}

- (NSURL)url
{
  v3 = [(GEOMapItemStorageUserValues *)self->_userValues url];

  if (!v3 || (v4 = MEMORY[0x1E695DFF8], -[GEOMapItemStorageUserValues url](self->_userValues, "url"), v5 = objc_claimAutoreleasedReturnValue(), [v4 URLWithString:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    place = [(MKMapItem *)self place];

    if (place)
    {
      place2 = [(MKMapItem *)self place];
      firstBusiness = [place2 firstBusiness];

      _businessURL = [firstBusiness uRL];
    }

    else
    {
      _businessURL = [(GEOMapItem *)self->_geoMapItem _businessURL];
    }

    if ([_businessURL length])
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:_businessURL];
      scheme = [v6 scheme];
      v12 = [scheme length];

      if (!v12)
      {
        v13 = MEMORY[0x1E695DFF8];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@", _businessURL];
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
  place = [(MKMapItem *)self place];
  firstBusiness = [place firstBusiness];

  if (!firstBusiness)
  {
    firstBusiness = objc_alloc_init(MEMORY[0x1E69A1BA8]);
    place2 = [(MKMapItem *)self place];
    [place2 addBusiness:firstBusiness];
  }

  return firstBusiness;
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  v4 = timeZone;
  v5 = v4;
  if (v4)
  {
    v11 = v4;
    name = [(NSTimeZone *)v4 name];
    userValues = [(MKMapItem *)self userValues];
    [userValues setTimeZoneName:name];

    data = [(NSTimeZone *)v11 data];
    userValues2 = [(MKMapItem *)self userValues];
    [userValues2 setTimeZoneData:data];
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
  timeZoneName = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];
  if (timeZoneName)
  {
    v4 = MEMORY[0x1E695DFE8];
    timeZoneName2 = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneName];
    timeZoneData = [(GEOMapItemStorageUserValues *)self->_userValues timeZoneData];
    timezone = [v4 timeZoneWithName:timeZoneName2 data:timeZoneData];
  }

  else
  {
    timezone = [(GEOMapItem *)self->_geoMapItem timezone];
  }

  return timezone;
}

- (MKPointOfInterestCategory)pointOfInterestCategory
{
  if (self->_useCustomPOICategory)
  {
    v2 = self->_customPOICategory;
  }

  else
  {
    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    _poiCategory = [_geoMapItem _poiCategory];

    if (_poiCategory)
    {
      v2 = MKPointOfInterestCategoryForGEOPOICategory(_poiCategory);
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
  pointOfInterestCategory = [(MKMapItem *)self pointOfInterestCategory];
  if (v7 | pointOfInterestCategory && ([(NSString *)self->_customPOICategory isEqual:v7]& 1) == 0)
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
  phoneNumber = [(GEOMapItemStorageUserValues *)self->_userValues phoneNumber];
  v4 = [phoneNumber length];

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
  userValues = [(MKMapItem *)self userValues];
  [userValues setPhoneNumber:v5];
}

- (void)setName:(NSString *)name
{
  v4 = [(NSString *)name copy];
  userValues = [(MKMapItem *)self userValues];
  [userValues setName:v4];

  name = [(GEOMapItemStorageUserValues *)self->_userValues name];
  [(GEOPlace *)self->_place setName:name];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    if ([v6 isCurrentLocation])
    {
      isCurrentLocation = [(MKMapItem *)self isCurrentLocation];
LABEL_15:

      goto LABEL_16;
    }

    if ([(GEOMapItem *)self->_geoMapItem isEqualToMapItem:v6[2]])
    {
      userValues = self->_userValues;
      if (userValues == v6[13] || [(GEOMapItemStorageUserValues *)userValues isEqual:?])
      {
        pointOfInterestCategory = [v6 pointOfInterestCategory];
        if (!pointOfInterestCategory)
        {
          pointOfInterestCategory2 = [(MKMapItem *)self pointOfInterestCategory];
          if (!pointOfInterestCategory2)
          {
            goto LABEL_12;
          }
        }

        pointOfInterestCategory3 = [v6 pointOfInterestCategory];
        pointOfInterestCategory4 = [(MKMapItem *)self pointOfInterestCategory];
        v12 = [pointOfInterestCategory3 isEqual:pointOfInterestCategory4];

        if (pointOfInterestCategory)
        {

          if (v12)
          {
LABEL_12:
            place = [(MKMapItem *)self place];
            place2 = [v6 place];
            isCurrentLocation = [place isEqual:place2];

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

    isCurrentLocation = 0;
    goto LABEL_15;
  }

  isCurrentLocation = 0;
LABEL_16:

  return isCurrentLocation;
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
    place = [(MKMapItem *)self place];
    v6 = [place hash];

    return v6;
  }
}

- (NSString)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  name = [(MKMapItem *)self name];
  if (name)
  {
    [dictionary setObject:name forKeyedSubscript:@"name"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MKMapItem isCurrentLocation](self, "isCurrentLocation")}];
  [dictionary setObject:v5 forKeyedSubscript:@"isCurrentLocation"];

  phoneNumber = [(MKMapItem *)self phoneNumber];
  if (phoneNumber)
  {
    [dictionary setObject:phoneNumber forKeyedSubscript:@"phoneNumber"];
  }

  timeZone = [(MKMapItem *)self timeZone];
  if (timeZone)
  {
    [dictionary setObject:timeZone forKeyedSubscript:@"timeZone"];
  }

  v8 = [(MKMapItem *)self url];
  if (v8)
  {
    [dictionary setObject:v8 forKeyedSubscript:@"url"];
  }

  placemark = [(MKMapItem *)self placemark];
  if (placemark)
  {
    [dictionary setObject:placemark forKeyedSubscript:@"placemark"];
  }

  address = [(MKMapItem *)self address];
  fullAddress = [address fullAddress];

  if (fullAddress)
  {
    address2 = [(MKMapItem *)self address];
    fullAddress2 = [address2 fullAddress];
    [dictionary setObject:fullAddress2 forKeyedSubscript:@"address"];
  }

  v14 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = MKMapItem;
  v15 = [(MKMapItem *)&v18 description];
  v16 = [v14 stringWithFormat:@"%@ %@", v15, dictionary];

  return v16;
}

- (void)_refreshAttribution
{
  v32 = *MEMORY[0x1E69E9840];
  geo_assert_isolated();
  v3 = [_MKMapItemPlaceAttribution alloc];
  _attribution = [(GEOMapItem *)self->_geoMapItem _attribution];
  v5 = [(_MKMapItemPlaceAttribution *)v3 initWithGEOMapItemAttribution:_attribution];
  attribution = self->_attribution;
  self->_attribution = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  _allPhotoAttributions = [(GEOMapItem *)self->_geoMapItem _allPhotoAttributions];
  v9 = [_allPhotoAttributions countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(_allPhotoAttributions);
        }

        v13 = [[_MKMapItemPhotosAttribution alloc] initWithGEOMapItemAttribution:*(*(&v27 + 1) + 8 * v12)];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [_allPhotoAttributions countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  firstObject = [v7 firstObject];
  photosAttribution = self->_photosAttribution;
  self->_photosAttribution = firstObject;

  v16 = [v7 copy];
  allPhotoAttributions = self->_allPhotoAttributions;
  self->_allPhotoAttributions = v16;

  v18 = [_MKMapItemReviewsAttribution alloc];
  _reviewsAttribution = [(GEOMapItem *)self->_geoMapItem _reviewsAttribution];
  v20 = [(_MKMapItemReviewsAttribution *)v18 initWithGEOMapItemAttribution:_reviewsAttribution];
  reviewsAttribution = self->_reviewsAttribution;
  self->_reviewsAttribution = v20;

  v22 = [_MKMapItemAttribution alloc];
  _encyclopedicInfo = [(GEOMapItem *)self->_geoMapItem _encyclopedicInfo];
  encyclopedicAttribution = [_encyclopedicInfo encyclopedicAttribution];
  v25 = [(_MKMapItemAttribution *)v22 initWithGEOMapItemAttribution:encyclopedicAttribution];
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
      geoFenceMapRegion = [(GEOMapItem *)geoMapItem geoFenceMapRegion];
      if (geoFenceMapRegion)
      {
        _location2 = [MEMORY[0x1E695FBB0] circularRegionFromMapRegion:geoFenceMapRegion];
        referenceFrame = [(GEOMapItem *)self->_geoMapItem referenceFrame];
        if (referenceFrame == 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2 * (referenceFrame == 2);
        }

        [_location2 setGeoReferenceFrame:v8];
      }

      else
      {
        _location2 = 0;
      }

      v19 = [MKPlacemark alloc];
      _location = [(MKMapItem *)self _location];
      addressDictionary = [(GEOMapItem *)self->_geoMapItem addressDictionary];
      geoAddress = [(GEOMapItem *)self->_geoMapItem geoAddress];
      structuredAddress = [geoAddress structuredAddress];
      areaOfInterests = [structuredAddress areaOfInterests];
      v15 = v19;
      v16 = _location;
      v17 = addressDictionary;
      v18 = _location2;
    }

    else
    {
      geoFenceMapRegion = [(MKMapItem *)self place];
      v9 = [MKPlacemark alloc];
      _location2 = [(MKMapItem *)self _location];
      _location = [geoFenceMapRegion addressDictionary];
      addressDictionary = [geoFenceMapRegion clRegion];
      geoAddress = [geoFenceMapRegion address];
      structuredAddress = [geoAddress structuredAddress];
      areaOfInterests = [structuredAddress areaOfInterests];
      v15 = v9;
      v16 = _location2;
      v17 = _location;
      v18 = addressDictionary;
    }

    v2 = [(MKPlacemark *)v15 initWithLocation:v16 addressDictionary:v17 region:v18 areasOfInterest:areaOfInterests];
  }

  return v2;
}

- (MKMapItem)initWithPlacemark:(MKPlacemark *)placemark
{
  v4 = placemark;
  _geoMapItem = [(MKPlacemark *)v4 _geoMapItem];
  if (_geoMapItem)
  {
    v6 = [(MKMapItem *)self initWithGeoMapItem:_geoMapItem isPlaceHolderPlace:1];
  }

  else
  {
    mkPostalAddressDictionary = [(MKPlacemark *)v4 mkPostalAddressDictionary];

    v8 = [objc_alloc(MEMORY[0x1E69A2348]) initWithPlacemark:v4];
    if (mkPostalAddressDictionary)
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

- (MKMapItem)initWithLocation:(id)location address:(id)address
{
  locationCopy = location;
  addressCopy = address;
  _geoMapItem = [addressCopy _geoMapItem];

  if (_geoMapItem)
  {
    _geoMapItem2 = [addressCopy _geoMapItem];
    v10 = [(MKMapItem *)self initWithGeoMapItem:_geoMapItem2 isPlaceHolderPlace:1];
  }

  else
  {
    _geoMapItem2 = [objc_alloc(MEMORY[0x1E69A2348]) initWithCLLocation:locationCopy];
    v11 = [(MKMapItem *)self initWithPlace:_geoMapItem2];
    v10 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_address, address);
    }
  }

  v12 = v10;

  return v12;
}

- (MKMapItem)initWithCLLocation:(id)location placeType:(int)type
{
  v4 = *&type;
  v6 = MEMORY[0x1E69A2348];
  locationCopy = location;
  v8 = [v6 alloc];
  [locationCopy coordinate];
  v10 = v9;
  [locationCopy coordinate];
  v12 = v11;

  v13 = [v8 initWithLatitude:v4 longitude:v10 placeType:v12];
  v14 = [(MKMapItem *)self initWithPlace:v13];

  return v14;
}

- (MKMapItem)initWithAddressDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [MKPlacemark alloc];
  v6 = [(MKPlacemark *)v5 initWithCoordinate:dictionaryCopy addressDictionary:*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8)];

  v7 = [(MKMapItem *)self initWithPlacemark:v6];
  return v7;
}

- (MKMapItem)initWithPlace:(id)place isPlaceHolderPlace:(BOOL)holderPlace
{
  holderPlaceCopy = holderPlace;
  v6 = [MEMORY[0x1E69A21E0] mapItemStorageForPlace:place];
  v7 = [(MKMapItem *)self initWithGeoMapItem:v6 isPlaceHolderPlace:holderPlaceCopy];

  return v7;
}

- (MKMapItem)initWithGeoMapItem:(id)item isPlaceHolderPlace:(BOOL)place
{
  itemCopy = item;
  v8 = [(MKMapItem *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_geoMapItem, item);
    v9->_isPlaceHolder = place;
    if (!v9->_geoMapItem)
    {
LABEL_9:
      v22 = v9;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userValues = [(GEOMapItem *)v9->_geoMapItem userValues];
      userValues = v9->_userValues;
      v9->_userValues = userValues;
    }

    place = [(GEOMapItem *)v9->_geoMapItem _placeData];
    if (!place)
    {
      _placeResult = [(GEOMapItem *)v9->_geoMapItem _placeResult];

      if (_placeResult)
      {
        goto LABEL_8;
      }

      _place = [(GEOMapItem *)v9->_geoMapItem _place];
      place = v9->_place;
      v9->_place = _place;
    }

LABEL_8:
    objc_initWeak(&location, v9);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    geoMapItem = v9->_geoMapItem;
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v17 = *MEMORY[0x1E69A1668];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __51__MKMapItem_initWithGeoMapItem_isPlaceHolderPlace___block_invoke;
    v28 = &unk_1E76C91F0;
    objc_copyWeak(&v29, &location);
    v18 = [defaultCenter addObserverForName:v17 object:geoMapItem queue:mainQueue usingBlock:&v25];
    didResolveAttributionToken = v9->_didResolveAttributionToken;
    v9->_didResolveAttributionToken = v18;

    [itemCopy coordinate];
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

- (MKMapItem)initWithGeoMapItemAsCurrentLocation:(id)location
{
  v3 = [(MKMapItem *)self initWithGeoMapItem:location isPlaceHolderPlace:0];
  [(MKMapItem *)v3 setIsCurrentLocation:1];
  return v3;
}

+ (id)_launchOptionsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
  mainBundle2 = [optionsCopy objectForKey:@"MKLaunchOptionsReferralIdentifierKey"];
  if (!mainBundle2)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (!bundleIdentifier)
    {
      goto LABEL_5;
    }

    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    [v4 setObject:bundleIdentifier2 forKey:@"MKLaunchOptionsReferralIdentifierKey"];
  }

LABEL_5:
  v9 = [optionsCopy objectForKeyedSubscript:@"_MKLaunchOptionsRoutingArrivalDateKey"];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69A26F0]);
    [v10 setType:1];
    [v9 timeIntervalSinceReferenceDate];
    [v10 setTime:?];
    [v4 setObject:v10 forKey:@"MKLaunchOptionsTimePointKey"];
  }

  mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
  v12 = mEMORY[0x1E69A2710];
  if (mEMORY[0x1E69A2710] && [mEMORY[0x1E69A2710] shareSessionWithMaps])
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

+ (id)_defaultNavigationURLForURL:(id)l
{
  v55 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (![MEMORY[0x1E69A2220] isValidMapURL:lCopy])
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"geo-navigation"])
    {
      buildForDefaultNavigation = lCopy;
LABEL_29:

      goto LABEL_36;
    }

    if ([lowercaseString isEqualToString:@"mapitem"])
    {
      [self mapItemsFromURL:lCopy options:0];
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
              _geoMapItem = [v24 _geoMapItem];
              [_geoMapItem coordinate];
              v41 = v40;
              v43 = v42;
              _addressFormattedAsSinglelineAddress = [v24 _addressFormattedAsSinglelineAddress];
              name = [v24 name];
              v46 = [v38 initForCoordinate:_addressFormattedAsSinglelineAddress address:name label:{v41, v43}];

              buildForDefaultNavigation = [v46 buildForDefaultNavigation];

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
      if (![lowercaseString isEqualToString:@"x-maps-mapitemhandles"])
      {
        goto LABEL_35;
      }

      v49 = 0;
      v25 = [self _deserializeResourceOptionsFromURL:lCopy error:&v49];
      v9 = [v25 objectForKey:@"MKMapItemLaunchHandles"];
      if (v9)
      {
        v27 = [MEMORY[0x1E69A26D8] locationQueryItemsWithMapItemHandles:v9];
        firstObject = [v27 firstObject];
        if (firstObject)
        {
          v29 = firstObject;
          v30 = objc_alloc(MEMORY[0x1E69A2218]);
          [v29 coordinate];
          v32 = v31;
          v34 = v33;
          address = [v29 address];
          name2 = [v29 name];
          v37 = [v30 initForCoordinate:address address:name2 label:{v32, v34}];

          buildForDefaultNavigation = [v37 buildForDefaultNavigation];

          goto LABEL_29;
        }
      }
    }

    goto LABEL_35;
  }

  lowercaseString = [objc_alloc(MEMORY[0x1E69A2220]) initWithURL:lCopy];
  [lowercaseString parseIncludingCustomParameters:0];
  if ([lowercaseString actionType] == 1)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2218]);
    directionsSourceAddressString = [lowercaseString directionsSourceAddressString];
    directionsDestinationAddressStrings = [lowercaseString directionsDestinationAddressStrings];
    v9 = [v6 initForDirectionsFrom:directionsSourceAddressString toDestinations:directionsDestinationAddressStrings transport:4 directionsOptions:0];
LABEL_8:

    goto LABEL_9;
  }

  if ([lowercaseString actionType] == 4)
  {
    v12 = objc_alloc(MEMORY[0x1E69A2218]);
    directionsSourceAddressString = [lowercaseString locationQueryItem];
    [directionsSourceAddressString coordinate];
    v14 = v13;
    v16 = v15;
    directionsDestinationAddressStrings = [lowercaseString locationQueryItem];
    address2 = [directionsDestinationAddressStrings address];
    locationQueryItem = [lowercaseString locationQueryItem];
    name3 = [locationQueryItem name];
    v9 = [v12 initForCoordinate:address2 address:name3 label:{v14, v16}];

    goto LABEL_8;
  }

  if ([lowercaseString actionType] == 3)
  {
    v26 = objc_alloc(MEMORY[0x1E69A2218]);
    directionsSourceAddressString = [lowercaseString searchQuery];
    v9 = [v26 initForSearch:directionsSourceAddressString];
LABEL_9:

    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  if ([lowercaseString actionType] == 2)
  {
    v47 = objc_alloc(MEMORY[0x1E69A2218]);
    [lowercaseString centerCoordinate];
    v9 = [v47 initForMapFrameWithCenter:0xFFFFFFFFLL distance:0 heading:? pitch:? mapType:? trackingMode:? span:?];
    if (v9)
    {
LABEL_10:
      buildForDefaultNavigation = [v9 buildForDefaultNavigation];
LABEL_28:

      goto LABEL_29;
    }
  }

LABEL_35:

  buildForDefaultNavigation = [MEMORY[0x1E695DFF8] URLWithString:@"geo-navigation://"];
LABEL_36:

  return buildForDefaultNavigation;
}

+ (void)_openDefaultNavigationWithURL:(id)l fromScene:(id)scene completionHandler:(id)handler
{
  lCopy = l;
  sceneCopy = scene;
  handlerCopy = handler;
  if ([_MKURLHandler canHandleURL:lCopy])
  {
    if (MapsFeature_IsEnabled_DefaultNavigation1PEnabled())
    {
      mEMORY[0x1E69A2720] = [MEMORY[0x1E69A2720] sharedService];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __71__MKMapItem__openDefaultNavigationWithURL_fromScene_completionHandler___block_invoke;
      v13[3] = &unk_1E76C9310;
      v14 = lCopy;
      v15 = sceneCopy;
      v16 = handlerCopy;
      selfCopy = self;
      [mEMORY[0x1E69A2720] getMapsDefaultNavigationAppState:v13];
    }

    else
    {
      v12 = +[MKSystemController sharedInstance];
      [v12 openURL:lCopy fromScene:sceneCopy completionHandler:handlerCopy];
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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

+ (void)_openDefaultNavigationWithItems:(id)items launchOptions:(id)options fromScene:(id)scene completionHandler:(id)handler
{
  handlerCopy = handler;
  sceneCopy = scene;
  v12 = [MKMapItem urlForMapItems:items options:options];
  [self _openDefaultNavigationWithURL:v12 fromScene:sceneCopy completionHandler:handlerCopy];
}

+ (id)_urlForLocation:(id)location address:(id)address label:(id)label options:(id)options
{
  v28[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  optionsCopy = options;
  labelCopy = label;
  locationCopy = location;
  [locationCopy coordinate];
  v15 = v14;
  v17 = v16;
  if ([addressCopy length])
  {
    v26 = addressCopy;
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
  referenceFrame = [locationCopy referenceFrame];

  if (referenceFrame == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * (referenceFrame == 2);
  }

  [v20 setReferenceFrame:v22];
  v23 = [[self alloc] initWithPlace:v20];
  [v23 setName:labelCopy];

  v24 = [self urlForMapItem:v23 options:optionsCopy];

  return v24;
}

+ (id)_urlForMapItemHandles:(id)handles options:(id)options
{
  v20 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  optionsCopy = options;
  if ([handlesCopy count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:handlesCopy forKeyedSubscript:@"MKMapItemLaunchHandles"];
    v9 = [self _launchOptionsWithOptions:optionsCopy];

    if (v9)
    {
      optionsCopy = [MKMapItem plistCompatibleDictionaryFromStandardOptions:v9];

      [dictionary setObject:optionsCopy forKey:@"MKMapItemLaunchAdditionsLaunchOptions"];
    }

    else
    {
      optionsCopy = 0;
    }

    v17 = 0;
    v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v17];
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

+ (id)_universalLinkForMapItems:(id)items options:(id)options
{
  v111 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  optionsCopy = options;
  v8 = [self _isDirectionsActionURL:optionsCopy];
  if (![itemsCopy count] || !v8)
  {
    firstObject = [itemsCopy firstObject];
    v12 = objc_alloc_init(MEMORY[0x1E69A26D8]);
    v13 = v12;
    if (firstObject)
    {
      _geoMapItem = [firstObject _geoMapItem];
      [_geoMapItem coordinate];
      [v13 setCoordinate:?];
    }

    else
    {
      [v12 setCoordinate:{-180.0, -180.0}];
    }

    _geoMapItem2 = [firstObject _geoMapItem];
    _identifier = [_geoMapItem2 _identifier];
    [v13 setMapItemIdentifier:_identifier];

    _addressFormattedAsSinglelineAddress = [firstObject _addressFormattedAsSinglelineAddress];
    [v13 setAddress:_addressFormattedAsSinglelineAddress];

    name = [firstObject name];
    [v13 setName:name];

    v40 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsLaunchIntoRAP"];
    bOOLValue = [v40 BOOLValue];

    v42 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsCurrentLocationPlacecard"];
    if ([v42 BOOLValue])
    {

      if (!bOOLValue)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    isCurrentLocation = [firstObject isCurrentLocation];

    if (bOOLValue)
    {
LABEL_37:
      v44 = MEMORY[0x1E69A2218];
      mapItemIdentifier = [v13 mapItemIdentifier];
      [v13 coordinate];
      v47 = v46;
      v49 = v48;
      address = [v13 address];
      uRLForPlaceForCurrentLocation = [v44 URLForReportAProblemWithMapItemIdentifier:mapItemIdentifier coordinate:address address:{v47, v49}];
LABEL_38:

LABEL_43:
      goto LABEL_44;
    }

    if (isCurrentLocation)
    {
LABEL_42:
      uRLForPlaceForCurrentLocation = [MEMORY[0x1E69A2218] URLForPlaceForCurrentLocation];
      goto LABEL_43;
    }

    resolvedLocation = [v13 resolvedLocation];

    if (resolvedLocation)
    {
      v64 = MEMORY[0x1E69A2218];
      [v13 coordinate];
      v66 = v65;
      v68 = v67;
      mapItemIdentifier = [v13 address];
      address = [v13 name];
      mapItemIdentifier2 = [v13 mapItemIdentifier];
      uRLForPlaceForCurrentLocation = [v64 URLForCoordinate:mapItemIdentifier address:address label:mapItemIdentifier2 mapItemIdentifier:{v66, v68}];

      goto LABEL_38;
    }

    v70 = [objc_alloc(MEMORY[0x1E69A26E0]) initWithLaunchOptions:optionsCopy];
    [v13 coordinate];
    v72 = v71;
    v74 = v73;
    v75 = MEMORY[0x1E69A27D0];
    if ([v70 hasMapType])
    {
      mapType = [v70 mapType];
    }

    else
    {
      mapType = 0;
    }

    v78 = *(v75 + 16);
    v77 = *(v75 + 24);
    if ([v70 hasCamera])
    {
      camera = [v70 camera];
      v80 = 0.0;
      v81 = 0.0;
      if ([camera hasAltitude])
      {
        [camera altitude];
        v81 = v82;
      }

      if ([camera hasHeading])
      {
        [camera heading];
        v80 = v83;
      }

      v84 = 0.0;
      if ([camera hasPitch])
      {
        [camera pitch];
        v84 = v85;
      }

      v105 = v77;
      v86 = v78;
      if ([camera hasLatitude] && objc_msgSend(camera, "hasLongitude"))
      {
        [camera latitude];
        v88 = v87;
        [camera longitude];
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
        uRLForPlaceForCurrentLocation = [MEMORY[0x1E69A2218] URLForMapFrameWithCenter:mapType distance:0 heading:v72 pitch:v74 mapType:v81 trackingMode:v80 span:{v84, v78, v77}];

        goto LABEL_43;
      }

      v105 = v77;
      v86 = v78;
      camera = [v70 centerSpan];
      [camera latitude];
      v88 = v91;
      [camera longitude];
      v90 = v92;
      if (fabs(v92) > 180.0 || fabs(v88) > 90.0)
      {
        v88 = v72;
        v90 = v74;
      }

      else
      {
        [camera latitudeDelta];
        v94 = v93;
        [camera longitudeDelta];
        if (v94 >= 0.0 && v94 <= 180.0)
        {
          v96 = v95;
          if (v95 >= 0.0 && v95 <= 360.0)
          {
            [camera latitudeDelta];
            if (v97 > 0.0)
            {
              [camera longitudeDelta];
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

  v9 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsDirectionsMode"];
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
  v15 = [optionsCopy objectForKeyedSubscript:@"_MKLaunchOptionsRoutingAvoidHighwaysKey"];
  bOOLValue2 = [v15 BOOLValue];

  v17 = [optionsCopy objectForKeyedSubscript:@"_MKLaunchOptionsRoutingAvoidTollsKey"];
  bOOLValue3 = [v17 BOOLValue];

  v19 = objc_alloc_init(MEMORY[0x1E69A26C8]);
  v20 = v19;
  if (bOOLValue2)
  {
    [v19 setAvoidOptions:&unk_1F16121B0];
  }

  v102 = optionsCopy;
  if (bOOLValue3)
  {
    [v20 setAvoidOptions:&unk_1F16121C8];
  }

  v99 = v20;
  v103 = itemsCopy;
  v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v21 = itemsCopy;
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
        name2 = [v27 name];
        [v28 setName:name2];

        _addressFormattedAsSinglelineAddress2 = [v27 _addressFormattedAsSinglelineAddress];
        [v28 setAddress:_addressFormattedAsSinglelineAddress2];

        _geoMapItem3 = [v27 _geoMapItem];
        _identifier2 = [_geoMapItem3 _identifier];

        if (_identifier2)
        {
          _geoMapItem4 = [v27 _geoMapItem];
          _identifier3 = [_geoMapItem4 _identifier];
          [v28 setMapItemIdentifier:_identifier3];
        }

        _geoMapItem5 = [v27 _geoMapItem];
        [_geoMapItem5 coordinate];
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

  uRLForPlaceForCurrentLocation = [MEMORY[0x1E69A2218] URLForDirectionsFrom:v24 toDestinationItems:v104 transport:v100 directionsOptions:v99];

  optionsCopy = v102;
  itemsCopy = v103;
LABEL_44:
  mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
  v53 = mEMORY[0x1E69A2710];
  if (mEMORY[0x1E69A2710] && [mEMORY[0x1E69A2710] shareSessionWithMaps])
  {
    mEMORY[0x1E69A2710]2 = [MEMORY[0x1E69A2710] sharedInstance];
    mapsUserSessionEntity = [mEMORY[0x1E69A2710]2 mapsUserSessionEntity];

    v56 = MEMORY[0x1E695DFF8];
    v57 = MEMORY[0x1E696AEC0];
    absoluteString = [uRLForPlaceForCurrentLocation absoluteString];
    sessionEntityString = [mapsUserSessionEntity sessionEntityString];
    v60 = [v57 stringWithFormat:@"%@&%@", absoluteString, sessionEntityString];
    v61 = [v56 URLWithString:v60];

    uRLForPlaceForCurrentLocation = v61;
  }

  return uRLForPlaceForCurrentLocation;
}

+ (BOOL)_shouldUseUniversalLinkForMapItems:(id)items options:(id)options
{
  v38 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  optionsCopy = options;
  if (GEOConfigGetBOOL() && MapsFeature_IsEnabled_URLUnification() && ((v8 = [self _isDirectionsActionURL:optionsCopy], objc_msgSend(itemsCopy, "count") < 2) || v8))
  {
    if (v8)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = itemsCopy;
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
            identifier = [v16 identifier];
            if (identifier)
            {
            }

            else
            {
              userValues = [v16 userValues];
              hasName = [userValues hasName];

              if (hasName)
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
    allKeys = [optionsCopy allKeys];
    v23 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          if (![v11 containsObject:*(*(&v27 + 1) + 8 * j)])
          {
            v9 = 0;
            goto LABEL_29;
          }
        }

        v24 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
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

+ (BOOL)_isDirectionsActionURL:(id)l
{
  v3 = [l objectForKeyedSubscript:@"MKLaunchOptionsDirectionsMode"];
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

+ (id)urlForMapItems:(id)items options:(id)options
{
  v32 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  optionsCopy = options;
  if ([self _shouldUseUniversalLinkForMapItems:itemsCopy options:optionsCopy])
  {
    v8 = [self _universalLinkForMapItems:itemsCopy options:optionsCopy];
  }

  else
  {
    if (![itemsCopy count])
    {
      array = [MEMORY[0x1E695DEC8] array];

      itemsCopy = array;
    }

    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    itemsCopy = itemsCopy;
    v12 = [itemsCopy countByEnumeratingWithState:&v25 objects:v31 count:16];
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
            objc_enumerationMutation(itemsCopy);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v13 = [itemsCopy countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v13);
    }

    [v10 setObject:v11 forKey:@"MKMapItemLaunchAdditionsMapItems"];
    v17 = [self _launchOptionsWithOptions:optionsCopy];

    if (v17)
    {
      optionsCopy = [MKMapItem plistCompatibleDictionaryFromStandardOptions:v17];

      [v10 setObject:optionsCopy forKey:@"MKMapItemLaunchAdditionsLaunchOptions"];
    }

    else
    {
      optionsCopy = 0;
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

+ (id)urlForMapItem:(id)item options:(id)options
{
  v6 = MEMORY[0x1E695DEC8];
  optionsCopy = options;
  if (item)
  {
    [v6 arrayWithObject:item];
  }

  else
  {
    [v6 array];
  }
  v8 = ;
  v9 = [self urlForMapItems:v8 options:optionsCopy];

  return v9;
}

+ (id)_mapItemBackedByURL:(id)l
{
  v4 = MEMORY[0x1E69A26B0];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  if (v6 && [v6 isValid])
  {
    v7 = [[self alloc] initWithGeoMapItem:v6 isPlaceHolderPlace:{objc_msgSend(v6, "_hasResolvablePartialInformation")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)mapItemsFromURL:(id)l options:(id *)options
{
  v34[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = lCopy;
  if (options)
  {
    *options = 0;
  }

  scheme = [lCopy scheme];
  v9 = [scheme isEqualToString:@"mapitem"];

  if ((v9 & 1) == 0)
  {
    v24 = [self _mapItemBackedByURL:v7];
    v23 = v24;
    if (v24)
    {
      v34[0] = v24;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v10 = [self _deserializeResourceOptionsFromURL:v7 error:0];
  if (!v10)
  {
    v23 = 0;
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  selfCopy = self;
  v27 = v10;
  optionsCopy = options;
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
  if (optionsCopy)
  {
    *optionsCopy = [selfCopy _launchOptionsFromResourceOptionsDictionary:v27];
  }

LABEL_22:

  return v12;
}

+ (id)sanitizeDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKeyedSubscript:v10];
        v12 = [self sanitizeObject:v11 forKey:v10];

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

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = dictionaryCopy;
LABEL_13:

  return v13;
}

+ (id)sanitizeArray:(id)array forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  keyCopy = key;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = arrayCopy;
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
        v14 = [keyCopy stringByAppendingString:{@"Children", v18}];
        v15 = [self sanitizeObject:v13 forKey:v14];

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

+ (id)sanitizeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([self valueIsValid:objectCopy forKey:keyCopy])
  {
    v8 = objectCopy;
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [self sanitizeArray:v8 forKey:keyCopy];

    v8 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69A1608]];

    if (!v10)
    {
      v11 = [self sanitizeDictionary:v8];

      v8 = v11;
    }
  }

  return v8;
}

+ (BOOL)valueIsValid:(id)valid forKey:(id)key
{
  validCopy = valid;
  keyCopy = key;
  if (valueIsValid_forKey__onceToken != -1)
  {
    dispatch_once(&valueIsValid_forKey__onceToken, &__block_literal_global_590);
  }

  v7 = [valueIsValid_forKey__keys objectForKeyedSubscript:keyCopy] && (objc_opt_isKindOfClass() & 1) != 0;

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

+ (id)launchOptionsFromURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v6 = [scheme isEqualToString:@"mapitem"];

  if (v6)
  {
    v7 = [self _deserializeResourceOptionsFromURL:lCopy error:0];
    if (v7)
    {
      v8 = [self _launchOptionsFromResourceOptionsDictionary:v7];
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

+ (id)_launchOptionsFromResourceOptionsDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"MKMapItemLaunchAdditionsLaunchOptions"];
  v5 = [self _launchOptionsWithOptions:v4];

  if (v5)
  {
    v6 = [MKMapItem standardOptionsFromPlistCompatibleDictionary:v5];

    v7 = [v6 objectForKey:@"MKLaunchOptionsSessionIDLowKey"];
    v8 = v7;
    if (v7)
    {
      longLongValue = [v7 longLongValue];
      v10 = [v6 objectForKey:@"MKLaunchOptionsSessionIDHighKey"];
      longLongValue2 = [v10 longLongValue];

      v12 = objc_alloc(MEMORY[0x1E69A2718]);
      v13 = [v6 objectForKey:@"MKLaunchOptionsSessionCreationTimeKey"];
      [v13 doubleValue];
      v15 = v14;
      v16 = [v6 objectForKey:@"MKLaunchOptionsSessionSequenceNumberKey"];
      v17 = [v12 initWithSessionID:longLongValue2 sessionCreationTime:longLongValue sequenceNumber:{objc_msgSend(v16, "unsignedIntValue"), v15}];

      mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
      [mEMORY[0x1E69A2710] setMapsUserSessionEntity:v17];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_deserializeResourceOptionsFromURL:(id)l error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  resourceSpecifier = [l resourceSpecifier];
  if ([resourceSpecifier length] > 1)
  {
    v8 = [resourceSpecifier substringFromIndex:2];
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:error];
      v7 = [self sanitizeDictionary:v10];

      if (v7)
      {
        v11 = v7;
      }

      else
      {
        if (error)
        {
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
        }

        v12 = MKGetMKDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (error)
          {
            v13 = *error;
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

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_mapItemsFromHandleURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (handlerCopy)
  {
    scheme = [lCopy scheme];
    v9 = [scheme isEqualToString:@"x-maps-mapitemhandles"];

    if (v9)
    {
      v36 = 0;
      v10 = [self _deserializeResourceOptionsFromURL:lCopy error:&v36];
      v11 = v36;
      if (v10)
      {
        v12 = [self _launchOptionsFromResourceOptionsDictionary:v10];
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
          v28 = handlerCopy;
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
          (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0], v12, 0);
        }
      }

      else
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v11);
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v23);
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

+ (void)_mapItemFromHandle:(id)handle completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    handleCopy = handle;
    v7 = +[MKMapService sharedService];
    defaultTraits = [v7 defaultTraits];

    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__MKMapItem__mapItemFromHandle_completionHandler___block_invoke;
    v10[3] = &unk_1E76C9270;
    v11 = handlerCopy;
    [mEMORY[0x1E69A2208] resolveMapItemFromHandle:handleCopy withTraits:defaultTraits useCache:0 completionHandler:v10];
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

+ (id)_sourceAppIdFromLaunchURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [absoluteString componentsSeparatedByString:@"MKURLSourceAppId"];
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

+ (id)_sharedSessionUserInfoForPunchoutUserInfo:(id)info
{
  infoCopy = info;
  mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
  shareSessionWithMaps = [mEMORY[0x1E69A2710] shareSessionWithMaps];

  v6 = infoCopy;
  if (shareSessionWithMaps)
  {
    mEMORY[0x1E69A2710]2 = [MEMORY[0x1E69A2710] sharedInstance];
    mapsUserSessionEntity = [mEMORY[0x1E69A2710]2 mapsUserSessionEntity];
    sessionEntityString = [mapsUserSessionEntity sessionEntityString];

    if ([infoCopy count])
    {
      v10 = [infoCopy mutableCopy];
      [v10 setObject:sessionEntityString forKeyedSubscript:@"MKUserActivitySharedSessionKey"];
      v6 = [v10 copy];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:sessionEntityString forKey:@"MKUserActivitySharedSessionKey"];
      v10 = infoCopy;
    }
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([v6 count])
  {
    v13 = [v6 mutableCopy];
    [v13 setObject:bundleIdentifier forKeyedSubscript:@"MKUserActivitySourceAppId"];
  }

  else
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:bundleIdentifier forKey:@"MKUserActivitySourceAppId"];
  }

  return v13;
}

+ (id)_sharedSessionURLForPunchoutURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
  if ([MEMORY[0x1E69A2220] isValidMapsURLForAppendingSharedSessionID:v4])
  {
    v5 = lCopy;
    mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
    if ([mEMORY[0x1E69A2710] shareSessionWithMaps])
    {
      v7 = [v5 containsString:@"user_session_entity"];

      if (v7)
      {
LABEL_7:
        if (([v5 containsString:@"MKURLSourceAppId"] & 1) == 0)
        {
          v12 = MEMORY[0x1E696AEC0];
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v15 = [v12 stringWithFormat:@"%@&%@=%@", v5, @"MKURLSourceAppId", bundleIdentifier];

          v5 = v15;
        }

        v16 = [MEMORY[0x1E695DFF8] URLWithString:v5];

        goto LABEL_12;
      }

      mEMORY[0x1E69A2710]2 = [MEMORY[0x1E69A2710] sharedInstance];
      mEMORY[0x1E69A2710] = [mEMORY[0x1E69A2710]2 mapsUserSessionEntity];

      v9 = MEMORY[0x1E696AEC0];
      sessionEntityString = [mEMORY[0x1E69A2710] sessionEntityString];
      v11 = [v9 stringWithFormat:@"%@&%@", v5, sessionEntityString];

      v5 = v11;
    }

    goto LABEL_7;
  }

  v16 = v4;
LABEL_12:

LABEL_13:

  return v16;
}

+ (MKMapItem)mapItemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"MKMapItemIsCurrentLocation"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = +[MKMapItem mapItemForCurrentLocation];
  }

  else
  {
    v7 = [dictionaryCopy objectForKey:@"MKMapItemGEOMapItem"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69A21E0]) initWithData:v7];
      v9 = [[MKMapItem alloc] initWithGeoMapItem:v8 isPlaceHolderPlace:0];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E69A2348]);
      v11 = [dictionaryCopy objectForKey:@"MKMapItemGEOPlace"];
      v8 = [v10 initWithData:v11];

      v9 = [[MKMapItem alloc] initWithPlace:v8];
    }

    v6 = v9;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemName"];

    if (v12)
    {
      v13 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemName"];
      [v6 setName:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemPhoneNumber"];

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemPhoneNumber"];
      [v6 setPhoneNumber:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemURLString"];

    if (v16)
    {
      v17 = MEMORY[0x1E695DFF8];
      v18 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemURLString"];
      v19 = [v17 URLWithString:v18];
      [v6 setUrl:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemTimeZoneName"];

    if (v20)
    {
      v21 = MEMORY[0x1E695DFE8];
      v22 = [dictionaryCopy objectForKeyedSubscript:@"MKMapItemTimeZoneName"];
      v23 = [v21 timeZoneWithName:v22];
      [v6 setTimeZone:v23];
    }
  }

  return v6;
}

+ (id)standardOptionsFromPlistCompatibleDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"MKLaunchOptionsMapCenter"];
  v5 = [dictionaryCopy objectForKey:@"MKLaunchOptionsMapSpan"];
  v6 = [dictionaryCopy objectForKey:@"MKLaunchOptionsSerializedCameraKey"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"MKLaunchOptionsSerializedTimePointKey"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"MKLaunchOptionsSerializedAutomobileOptions"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"MKLaunchOptionsSerializedTransitOptions"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"MKLaunchOptionsSerializedWalkingOptions"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"MKLaunchOptionsSerializedCyclingOptions"];
  if (v4 || v5 || v6 || v7 || v8 || v9 || v10 || (v12 = dictionaryCopy, v11))
  {
    v48 = v11;
    v12 = [dictionaryCopy mutableCopy];
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

+ (id)plistCompatibleDictionaryFromStandardOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKey:@"MKLaunchOptionsMapCenter"];
  v5 = [optionsCopy objectForKey:@"MKLaunchOptionsMapSpan"];
  v6 = [optionsCopy objectForKey:@"MKLaunchOptionsCameraKey"];
  v7 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsTimePointKey"];
  v8 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsAutomobileOptions"];
  v9 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsWalkingOptions"];
  v10 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsTransitOptions"];
  v11 = [optionsCopy objectForKeyedSubscript:@"MKLaunchOptionsCyclingOptions"];
  if (v4 || v5 || v6 || v7 || v8 || v9 || v10 || (v12 = optionsCopy, v11))
  {
    v43 = v11;
    v12 = [optionsCopy mutableCopy];
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
      data = [v7 data];
      [v12 setObject:data forKeyedSubscript:@"MKLaunchOptionsSerializedTimePointKey"];

      [v12 removeObjectForKey:@"MKLaunchOptionsTimePointKey"];
    }

    if (v8)
    {
      data2 = [v8 data];
      [v12 setObject:data2 forKeyedSubscript:@"MKLaunchOptionsSerializedAutomobileOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsAutomobileOptions"];
    }

    if (v10)
    {
      data3 = [v8 data];
      [v12 setObject:data3 forKeyedSubscript:@"MKLaunchOptionsSerializedTransitOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsTransitOptions"];
    }

    if (v9)
    {
      data4 = [v8 data];
      [v12 setObject:data4 forKeyedSubscript:@"MKLaunchOptionsSerializedWalkingOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsWalkingOptions"];
    }

    if (v43)
    {
      data5 = [v8 data];
      [v12 setObject:data5 forKeyedSubscript:@"MKLaunchOptionsSerializedCyclingOptions"];

      [v12 removeObjectForKey:@"MKLaunchOptionsCyclingOptions"];
    }

    v11 = v43;
  }

  return v12;
}

+ (void)openMapsWithItems:(id)items launchOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [MKMapItem urlForMapItems:items options:options];
  if (v7)
  {
    v8 = +[MKSystemController sharedInstance];
    [v8 openURL:v7 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
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

  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [_localizedNextOpeningDayOftheWeekFormatter_dayOfWeekFormatterFull setTimeZone:localTimeZone];

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

  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [_localizedNextOpeningHoursFormatter_hoursFormatter setTimeZone:localTimeZone];

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

- (void)encodeWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([(MKMapItem *)self isCurrentLocation])
  {
    [coderCopy encodeBool:1 forKey:@"isCurrentLocation"];
  }

  else
  {
    _geoMapItemStorageForPersistence = [(MKMapItem *)self _geoMapItemStorageForPersistence];
    data = [_geoMapItemStorageForPersistence data];
    v7 = [data copy];

    if (v7 && [v7 length])
    {
      [coderCopy encodeObject:v7 forKey:@"data"];
      if (self->_useCustomPOICategory)
      {
        [coderCopy encodeBool:1 forKey:@"usePOICategory"];
        [coderCopy encodeObject:self->_customPOICategory forKey:@"poiCategory"];
      }

      address = self->_address;
      if (address)
      {
        fullAddress = [(MKAddress *)address fullAddress];
        [coderCopy encodeObject:fullAddress forKey:@"fullAddress"];

        shortAddress = [(MKAddress *)self->_address shortAddress];

        if (shortAddress)
        {
          shortAddress2 = [(MKAddress *)self->_address shortAddress];
          [coderCopy encodeObject:shortAddress2 forKey:@"shortAddress"];
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
      [coderCopy failWithError:v16];
    }
  }
}

- (MKMapItem)initWithCoder:(id)coder
{
  v25[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:@"isCurrentLocation"])
  {
    selfCopy = [objc_opt_class() mapItemForCurrentLocation];
  }

  else
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v7 = v6;
    if (v6 && [v6 length] && !(objc_msgSend(v7, "length") >> 20) && (objc_msgSend(MEMORY[0x1E69A21E0], "mapItemStorageForSerializedMapItemStorage:", v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [(MKMapItem *)self initWithGeoMapItem:v8 isPlaceHolderPlace:1];
      v11 = [coderCopy decodeBoolForKey:@"usePOICategory"];
      v10->_useCustomPOICategory = v11;
      if (v11)
      {
        v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
        customPOICategory = v10->_customPOICategory;
        v10->_customPOICategory = v12;
      }

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAddress"];
      if (v14)
      {
        v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortAddress"];
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
      [coderCopy failWithError:v22];

      v10 = 0;
    }

    self = v10;

    selfCopy = self;
  }

  return selfCopy;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v54[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (![identifierCopy isEqualToString:@"com.apple.mapkit.map-item"])
  {
    identifier = [*MEMORY[0x1E6983078] identifier];
    v11 = [identifierCopy isEqualToString:identifier];

    if (v11)
    {
      _placeCardContact = [(MKMapItem *)self _placeCardContact];
      v13 = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
      absoluteString = [v13 absoluteString];
      v15 = absoluteString;
      if (absoluteString && [absoluteString length])
      {
        v16 = [_placeCardContact mutableCopy];
        urlAddresses = [v16 urlAddresses];
        v18 = MEMORY[0x1E695CEE0];
        v19 = _MKLocalizedStringFromThisBundle(@"map url");
        v20 = [v18 labeledValueWithLabel:v19 value:v15];
        v21 = [urlAddresses arrayByAddingObject:v20];

        [v16 setUrlAddresses:v21];
        v22 = [v16 copy];

        _placeCardContact = v22;
      }

      v23 = MEMORY[0x1E695CE30];
      v54[0] = _placeCardContact;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      v51 = 0;
      v25 = [v23 dataWithContacts:v24 error:&v51];

      handlerCopy[2](handlerCopy, v25, 0);
    }

    else
    {
      identifier2 = [*MEMORY[0x1E6983030] identifier];
      v27 = [identifierCopy isEqualToString:identifier2];

      if (v27)
      {
        _placeCardContact = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
        name = [(MKMapItem *)self name];
        [_placeCardContact _setTitle:name];

        v29 = [_placeCardContact loadDataWithTypeIdentifier:identifierCopy forItemProviderCompletionHandler:handlerCopy];
        goto LABEL_13;
      }

      writableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
      v32 = [writableTypeIdentifiersForItemProvider containsObject:identifierCopy];

      if (v32)
      {
        name2 = [(MKMapItem *)self name];
        v34 = name2;
        v35 = &stru_1F15B23C0;
        if (name2)
        {
          v35 = name2;
        }

        v36 = v35;

        v8 = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
        v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v36];
        v37 = *MEMORY[0x1E69DB670];
        v38 = [(__CFString *)v36 length];

        [v9 addAttribute:v37 value:v8 range:{0, v38}];
        v39 = [v9 copy];
        v40 = [v39 loadDataWithTypeIdentifier:identifierCopy forItemProviderCompletionHandler:handlerCopy];

        goto LABEL_3;
      }

      identifier3 = [*MEMORY[0x1E6982E18] identifier];
      v42 = [identifierCopy isEqualToString:identifier3];

      if (!v42)
      {
        v47 = MEMORY[0x1E696ABC0];
        v48 = MKErrorDomain;
        v52 = *MEMORY[0x1E696A578];
        v49 = _MKLocalizedStringFromThisBundle(@"Unsupported type identifier");
        v53 = v49;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v8 = [v47 errorWithDomain:v48 code:1 userInfo:v50];

        (handlerCopy)[2](handlerCopy, 0, v8);
        goto LABEL_4;
      }

      name3 = [(MKMapItem *)self name];
      v44 = name3;
      if (!name3)
      {
        name3 = &stru_1F15B23C0;
      }

      _placeCardContact = [(__CFString *)name3 _navigation_sanitizedStringForDisplayInHTML];

      v13 = [(MKMapItem *)self _fullSharingURLIncludingSensitiveFields:1];
      v45 = MEMORY[0x1E696AEC0];
      absoluteString2 = [v13 absoluteString];
      v15 = [v45 stringWithFormat:@"<a href=%@>%@</a>", absoluteString2, _placeCardContact];

      v25 = [v15 dataUsingEncoding:4];
      handlerCopy[2](handlerCopy, v25, 0);
    }

LABEL_13:
    goto LABEL_14;
  }

  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v9 = [v8 copy];
  handlerCopy[2](handlerCopy, v9, 0);
LABEL_3:

LABEL_4:
LABEL_14:

  return 0;
}

- (id)formattedNumberOfReviewsIncludingProvider:(BOOL)provider formatter:(id)formatter
{
  providerCopy = provider;
  formatterCopy = formatter;
  if (![(MKMapItem *)self _hasUserRatingScore])
  {
    v13 = 0;
    goto LABEL_34;
  }

  reviewsProviderDisplayName = [(MKMapItem *)self reviewsProviderDisplayName];
  _sampleSizeForUserRatingScore = [(MKMapItem *)self _sampleSizeForUserRatingScore];
  _reviews = [(MKMapItem *)self _reviews];
  v10 = [_reviews count];

  _tips = [(MKMapItem *)self _tips];
  v12 = [_tips count];

  if (_sampleSizeForUserRatingScore == 1)
  {
    if (formatterCopy)
    {
      [formatterCopy stringFromNumber:&unk_1F16114D0];
    }

    else
    {
      [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F16114D0 numberStyle:0];
    }
    v15 = ;
    if (providerCopy && [reviewsProviderDisplayName length])
    {
      if (v10)
      {
        v16 = @"MapItemReviewProvider_Singular";
LABEL_31:
        v19 = _MKLocalizedStringFromThisBundle(v16);
        v20 = MEMORY[0x1E696AEC0];
        v22 = reviewsProviderDisplayName;
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
    if (formatterCopy)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_sampleSizeForUserRatingScore];
      [formatterCopy stringFromNumber:v14];
    }

    else
    {
      v18 = MEMORY[0x1E696ADA0];
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_sampleSizeForUserRatingScore];
      [v18 localizedStringFromNumber:v14 numberStyle:0];
    }
    v15 = ;

    if (providerCopy && [reviewsProviderDisplayName length])
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

- (void)_updateTransitInfoWithMapItem:(id)item
{
  itemCopy = item;
  self->_isTransitInfoUpdated = 1;
  v14 = itemCopy;
  _geoMapItem = [itemCopy _geoMapItem];
  _transitInfo = [_geoMapItem _transitInfo];
  if (self->_updatedTransitInfo != _transitInfo)
  {
    objc_storeStrong(&self->_updatedTransitInfo, _transitInfo);
    _transitAttribution = [_geoMapItem _transitAttribution];
    updatedTransitAttribution = self->_updatedTransitAttribution;
    self->_updatedTransitAttribution = _transitAttribution;

    _transitInfoUpdatedDate = [v14 _transitInfoUpdatedDate];
    v10 = _transitInfoUpdatedDate;
    if (_transitInfoUpdatedDate)
    {
      date = _transitInfoUpdatedDate;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    transitInfoUpdatedDate = self->_transitInfoUpdatedDate;
    self->_transitInfoUpdatedDate = date;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"kMapItemTransitInfoDidUpdateNotification" object:self];
  }
}

- (void)_markTransitInfoUpdated
{
  date = [MEMORY[0x1E695DF00] date];
  transitInfoUpdatedDate = self->_transitInfoUpdatedDate;
  self->_transitInfoUpdatedDate = date;
}

- (id)_reviewForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _reviews = [(MKMapItem *)self _reviews];
    v6 = [_reviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(_reviews);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          _geoReview = [v9 _geoReview];
          _identifier = [_geoReview _identifier];
          v12 = [_identifier isEqualToString:identifierCopy];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [_reviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v58[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  if (![identifierCopy isEqualToString:@"com.apple.mapkit.map-item"])
  {
    identifier = [*MEMORY[0x1E6983078] identifier];
    v17 = [identifierCopy isEqualToString:identifier];

    if (v17)
    {
      v18 = [MEMORY[0x1E695CE30] contactsWithData:dataCopy error:error];
      if (v18)
      {
        v19 = v18;
        firstObject = [v18 firstObject];
        if (firstObject)
        {
          v21 = firstObject;
          urlAddresses = [firstObject urlAddresses];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          reverseObjectEnumerator = [urlAddresses reverseObjectEnumerator];
          v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v24)
          {
            v25 = v24;
            v43 = urlAddresses;
            v44 = v21;
            v45 = v19;
            v46 = identifierCopy;
            v26 = *v48;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v48 != v26)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                v28 = MEMORY[0x1E695DFF8];
                value = [*(*(&v47 + 1) + 8 * i) value];
                v30 = [v28 URLWithString:value];

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

              v25 = [reverseObjectEnumerator countByEnumeratingWithState:&v47 objects:v56 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

            v9 = 0;
LABEL_27:
            identifierCopy = v46;
            v21 = v44;
            v19 = v45;
            urlAddresses = v43;
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
      identifier2 = [*MEMORY[0x1E6983030] identifier];
      v33 = [identifierCopy isEqualToString:identifier2];

      if (v33)
      {
        v19 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy error:error];
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

      if (error)
      {
        v34 = MEMORY[0x1E696ABC0];
        v35 = MKErrorDomain;
        v54 = *MEMORY[0x1E696A578];
        v36 = _MKLocalizedStringFromThisBundle(@"Unsupported type identifier");
        v55 = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        *error = [v34 errorWithDomain:v35 code:1 userInfo:v37];

        v9 = 0;
        goto LABEL_32;
      }
    }

LABEL_36:
    v9 = 0;
    goto LABEL_37;
  }

  v51 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v51];
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

  if (error)
  {
    v15 = v10;
    *error = v10;
  }

LABEL_32:
  if (error && !v9)
  {
    if (!*error)
    {
      v38 = MEMORY[0x1E696ABC0];
      v39 = MKErrorDomain;
      v52 = *MEMORY[0x1E696A578];
      v40 = _MKLocalizedStringFromThisBundle(@"Unrecognized data");
      v53 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *error = [v38 errorWithDomain:v39 code:1 userInfo:v41];
    }

    goto LABEL_36;
  }

LABEL_37:

  return v9;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v6[3] = *MEMORY[0x1E69E9840];
  identifier = [*MEMORY[0x1E6983078] identifier];
  v6[1] = identifier;
  identifier2 = [*MEMORY[0x1E6983030] identifier];
  v6[2] = identifier2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];

  return v4;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v8[3] = *MEMORY[0x1E69E9840];
  identifier = [*MEMORY[0x1E6983078] identifier];
  v8[1] = identifier;
  identifier2 = [*MEMORY[0x1E6983030] identifier];
  v8[2] = identifier2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
  v6 = [v4 arrayByAddingObjectsFromArray:writableTypeIdentifiersForItemProvider];

  return v6;
}

+ (void)_mapItemsWithSerializedPlaceDataResponse:(id)response handler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  v7 = +[MKMapService sharedService];
  [v7 _mapItemsForResponseData:responseCopy handler:handlerCopy];
}

+ (MKMapItem)mapItemWithSerializedPlaceData:(id)data serializedDetourInfo:(id)info currentLocation:(BOOL)location
{
  locationCopy = location;
  dataCopy = data;
  infoCopy = info;
  if (dataCopy && [dataCopy length])
  {
    v9 = [MEMORY[0x1E69A21E0] mapItemStorageForSerializedPlaceData:dataCopy serializedDetourInfo:infoCopy];
    v10 = v9;
    if (v9 && [v9 conformsToProtocol:&unk_1F1671998])
    {
      v11 = v10;
      if ([v11 isValid])
      {
        if (locationCopy)
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

+ (id)_itemWithContact:(id)contact geoMapItem:(id)item
{
  contactCopy = contact;
  v7 = [self _itemWithGeoMapItem:item];
  if (contactCopy)
  {
    v8 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
    if ([v8 length])
    {
      [v7 setName:v8];
    }

    phoneNumbers = [contactCopy phoneNumbers];
    if ([phoneNumbers count])
    {
      v10 = [phoneNumbers objectAtIndexedSubscript:0];
      value = [v10 value];

      stringValue = [value stringValue];
      [v7 setPhoneNumber:stringValue];
    }
  }

  return v7;
}

+ (id)_itemWithGeoMapItem:(id)item
{
  itemCopy = item;
  v4 = [[MKMapItem alloc] initWithGeoMapItem:itemCopy isPlaceHolderPlace:0];

  return v4;
}

+ (id)_mapItemWithWithLocation:(id)location addressDictionary:(id)dictionary name:(id)name businessURL:(id)l phoneNumber:(id)number sessionID:(id)d muid:(unint64_t)muid attributionID:(id)self0 sampleSizeForUserRatingScore:(unsigned int)self1 normalizedUserRatingScore:(float)self2
{
  v19 = MEMORY[0x1E69A21A0];
  iDCopy = iD;
  dCopy = d;
  numberCopy = number;
  lCopy = l;
  nameCopy = name;
  dictionaryCopy = dictionary;
  locationCopy = location;
  v27 = [v19 alloc];
  v28 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];

  LODWORD(v33) = score;
  *&v29 = ratingScore;
  v30 = [v27 initWithWithLocation:v28 addressDictionary:dictionaryCopy name:nameCopy businessURL:lCopy phoneNumber:numberCopy sessionID:dCopy muid:v29 attributionID:muid sampleSizeForUserRatingScore:iDCopy normalizedUserRatingScore:v33];

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

- (void)_getHasAvailableSecondaryAppClipWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__MKMapItem_GEOQuickLinkHelper___getHasAvailableSecondaryAppClipWithCompletion___block_invoke;
  v6[3] = &unk_1E76C94F8;
  v7 = completionCopy;
  v5 = completionCopy;
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

- (void)_getHasAvailableAppClipWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MKMapItem_GEOQuickLinkHelper___getHasAvailableAppClipWithCompletion___block_invoke;
  v6[3] = &unk_1E76C94F8;
  v7 = completionCopy;
  v5 = completionCopy;
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

- (void)_getFirstAvailableAppClipLinkFromQuickLinks:(id)links completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  linksCopy = links;
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v22 = completionCopy;
    linksCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MapKit.MKMapItem+GEOQuickLinkHelper.%p.queue", linksCopy];
    uTF8String = [linksCopy UTF8String];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);

    v12 = dispatch_group_create();
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(linksCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = linksCopy;
    v14 = linksCopy;
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

    linksCopy = v23;
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

- (void)_getFirstAvailableSecondaryAppClipLinkWithCompletion:(id)completion
{
  completionCopy = completion;
  _secondaryQuickLinks = [(MKMapItem *)self _secondaryQuickLinks];
  [(MKMapItem *)self _getFirstAvailableAppClipLinkFromQuickLinks:_secondaryQuickLinks completion:completionCopy];
}

- (void)_getFirstAvailableAppClipLinkWithCompletion:(id)completion
{
  completionCopy = completion;
  _quickLinks = [(MKMapItem *)self _quickLinks];
  [(MKMapItem *)self _getFirstAvailableAppClipLinkFromQuickLinks:_quickLinks completion:completionCopy];
}

- (BOOL)_mapkit_canAtLeastOneAttributionShowAddPhotosLocally
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _allPhotoAttributions = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [_allPhotoAttributions countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(_allPhotoAttributions);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldAddPhotosLocally])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_allPhotoAttributions countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  _allPhotoAttributions = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [_allPhotoAttributions countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(_allPhotoAttributions);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldHandlePhotosLocally])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_allPhotoAttributions countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _captionedPhotoAlbums = [_geoMapItem _captionedPhotoAlbums];
  v5 = [_captionedPhotoAlbums count];

  if (v5 > 1)
  {
    return 0;
  }

  _geoMapItem2 = [(MKMapItem *)self _geoMapItem];
  if (([_geoMapItem2 _hasCaptionedPhotoAlbum] & 1) == 0)
  {

LABEL_6:
    _geoMapItem3 = [(MKMapItem *)self _geoMapItem];
    _photos = [_geoMapItem3 _photos];
    v16 = [_photos count];

    if (v16)
    {
      _geoMapItem4 = [(MKMapItem *)self _geoMapItem];
      _totalPhotoCount = [_geoMapItem4 _totalPhotoCount];
      goto LABEL_8;
    }

    return 0;
  }

  _geoMapItem5 = [(MKMapItem *)self _geoMapItem];
  _captionedPhotoAlbums2 = [_geoMapItem5 _captionedPhotoAlbums];
  v9 = [_captionedPhotoAlbums2 count];

  if (v9 != 1)
  {
    goto LABEL_6;
  }

  _geoMapItem4 = [(MKMapItem *)self _geoMapItem];
  _captionedPhotoAlbums3 = [_geoMapItem4 _captionedPhotoAlbums];
  firstObject = [_captionedPhotoAlbums3 firstObject];
  _totalPhotoCount = [firstObject totalNumberOfPhotosAvailable];

LABEL_8:
  return _totalPhotoCount;
}

- (id)_mapkit_resolvedFlatPhotoList
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _captionedPhotoAlbums = [_geoMapItem _captionedPhotoAlbums];
  v5 = [_captionedPhotoAlbums count];

  if (v5 <= 1)
  {
    _geoMapItem2 = [(MKMapItem *)self _geoMapItem];
    if ([_geoMapItem2 _hasCaptionedPhotoAlbum])
    {
      _geoMapItem3 = [(MKMapItem *)self _geoMapItem];
      _captionedPhotoAlbums2 = [_geoMapItem3 _captionedPhotoAlbums];
      v9 = [_captionedPhotoAlbums2 count];

      if (v9 == 1)
      {
        _geoMapItem4 = [(MKMapItem *)self _geoMapItem];
        _captionedPhotoAlbums3 = [_geoMapItem4 _captionedPhotoAlbums];
        firstObject = [_captionedPhotoAlbums3 firstObject];
        photoList = [firstObject photoList];
        v14 = [photoList copy];

LABEL_8:
        goto LABEL_10;
      }
    }

    else
    {
    }

    _geoMapItem5 = [(MKMapItem *)self _geoMapItem];
    _photos = [_geoMapItem5 _photos];
    v17 = [_photos count];

    if (v17)
    {
      _geoMapItem4 = [(MKMapItem *)self _geoMapItem];
      _captionedPhotoAlbums3 = [_geoMapItem4 _photos];
      v14 = [_captionedPhotoAlbums3 copy];
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)_mapkit_preferredFirstPhotoVendor
{
  _allPhotoAttributions = [(MKMapItem *)self _allPhotoAttributions];
  v4 = [_allPhotoAttributions count];

  if (v4 <= 1)
  {
    _allPhotoAttributions2 = [(MKMapItem *)self _allPhotoAttributions];
    firstObject = [_allPhotoAttributions2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)_mapkit_hasMultiplePhotoVendors
{
  _allPhotoAttributions = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [_allPhotoAttributions count] > 1;

  return v3;
}

- (BOOL)_mapkit_hasSinglePhotoVendor
{
  _allPhotoAttributions = [(MKMapItem *)self _allPhotoAttributions];
  v3 = [_allPhotoAttributions count] == 1;

  return v3;
}

- (BOOL)_mapkit_hasFlatListOfPhotos
{
  _mapkit_resolvedFlatPhotoList = [(MKMapItem *)self _mapkit_resolvedFlatPhotoList];
  v3 = [_mapkit_resolvedFlatPhotoList count] != 0;

  return v3;
}

- (BOOL)_mapkit_supportsFullScreenExperience
{
  v16 = *MEMORY[0x1E69E9840];
  _mapkit_resolvedFlatPhotoList = [(MKMapItem *)self _mapkit_resolvedFlatPhotoList];
  v3 = _mapkit_resolvedFlatPhotoList;
  if (_mapkit_resolvedFlatPhotoList)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = _mapkit_resolvedFlatPhotoList;
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
  _restaurantLink_firstVendorID = [(MKMapItem *)self _restaurantLink_firstVendorID];
  if (_restaurantLink_firstVendorID)
  {
    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    _featureLink = [_geoMapItem _featureLink];
    v6 = [_featureLink displayNameForVendorID:_restaurantLink_firstVendorID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_restaurantLink_firstProviderPlaceIdentifier
{
  _restaurantLink_firstVendorID = [(MKMapItem *)self _restaurantLink_firstVendorID];
  if (_restaurantLink_firstVendorID)
  {
    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    _featureLink = [_geoMapItem _featureLink];
    featureProviders = [_featureLink featureProviders];

    firstObject = [featureProviders firstObject];
    v8 = [firstObject objectForKeyedSubscript:_restaurantLink_firstVendorID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_restaurantLink_firstVendorID
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _featureLink = [_geoMapItem _featureLink];
  featureProviders = [_featureLink featureProviders];

  firstObject = [featureProviders firstObject];
  allKeys = [firstObject allKeys];
  firstObject2 = [allKeys firstObject];

  return firstObject2;
}

- (id)_restaurantLink_firstProviderIdentifier
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"RestaurantReservationAppBundleIDs"])
  {
    _restaurantLink_overridenBundleIDsForVendorIDs = [(MKMapItem *)self _restaurantLink_overridenBundleIDsForVendorIDs];
    _restaurantLink_firstVendorID = [(MKMapItem *)self _restaurantLink_firstVendorID];
    appBundleIdentifier = [_restaurantLink_overridenBundleIDsForVendorIDs objectForKeyedSubscript:_restaurantLink_firstVendorID];
  }

  else
  {
    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    _featureLink = [_geoMapItem _featureLink];
    _restaurantLink_firstVendorID2 = [(MKMapItem *)self _restaurantLink_firstVendorID];
    v10 = [_featureLink applicationsForVendorID:_restaurantLink_firstVendorID2];
    _restaurantLink_overridenBundleIDsForVendorIDs = [v10 firstObject];

    appBundleIdentifier = [_restaurantLink_overridenBundleIDsForVendorIDs appBundleIdentifier];
  }

  return appBundleIdentifier;
}

- (unint64_t)_restaurantExtensionModeForFirstProvider
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _featureLink = [_geoMapItem _featureLink];
  _restaurantLink_firstVendorID = [(MKMapItem *)self _restaurantLink_firstVendorID];
  v6 = [_featureLink extensionModeForVendorID:_restaurantLink_firstVendorID];

  return v6;
}

- (BOOL)_restaurantLink_hasFeatureType:(unint64_t)type
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _featureLink = [_geoMapItem _featureLink];
  featureTypes = [_featureLink featureTypes];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v8 = [featureTypes containsObject:v7];

  return v8;
}

- (BOOL)_hasRestaurantExtensionInfo
{
  _geoMapItem = [(MKMapItem *)self _geoMapItem];
  _featureLink = [_geoMapItem _featureLink];
  if ([_featureLink hasFeatures])
  {
    _restaurantLink_firstProviderIdentifier = [(MKMapItem *)self _restaurantLink_firstProviderIdentifier];
    v6 = [_restaurantLink_firstProviderIdentifier length] != 0;
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
  name = [(MKMapItem *)self name];
  v4 = [v2 stringWithFormat:@"%@.loc.vcf", name];

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
  identifier = [*MEMORY[0x1E6983078] identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MKMapItem_MKMapItemVCardHelpers___vCardRepresentation__block_invoke;
  v7[3] = &unk_1E76CCFC8;
  v7[4] = &v10;
  v7[5] = v8;
  v4 = [(MKMapItem *)self loadDataWithTypeIdentifier:identifier forItemProviderCompletionHandler:v7];

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
  identifier = [*MEMORY[0x1E6982E18] identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MKMapItem_MKMapItemExtras___htmlRepresentation__block_invoke;
  v7[3] = &unk_1E76CCFC8;
  v7[4] = &v10;
  v7[5] = v8;
  v4 = [(MKMapItem *)self loadDataWithTypeIdentifier:identifier forItemProviderCompletionHandler:v7];

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

    _geoMapItem = [(MKMapItem *)self _geoMapItem];
    if ([_geoMapItem _hasResultProviderID])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(_geoMapItem, "_resultProviderID")}];
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

- (id)_initWithLabelMarker:(id)marker
{
  markerCopy = marker;
  v5 = [_MKLabelMarkerItem labelMarkerItemWithLabelMarker:markerCopy];
  v6 = [(MKMapItem *)self initWithGeoMapItem:v5 isPlaceHolderPlace:0];

  if (v6)
  {
    if ([markerCopy featureType] == 5)
    {
      [(MKMapItem *)v6 setIsMapItemTypeTransit:1];
    }

    [markerCopy coordinate];
    v8 = v7;
    [markerCopy coordinate];
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
    place = [(MKMapItem *)self place];
    name = [place name];
    [v3 setOrganizationName:name];

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

    place = [(MKMapItem *)self name];
    [v3 setGivenName:place];
    v6 = MEMORY[0x1E695CB60];
  }

LABEL_7:
  v7 = *v6;
  _cnPostalAddress = [(MKMapItem *)self _cnPostalAddress];
  if (_cnPostalAddress)
  {
    v9 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v7 value:_cnPostalAddress];
    v10 = v9;
    if (v9)
    {
      v24[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v3 setPostalAddresses:v11];
    }
  }

  phoneNumber = [(MKMapItem *)self phoneNumber];
  if ([phoneNumber length])
  {
    v13 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:phoneNumber];
    v14 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v7 value:v13];
    v23 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v3 setPhoneNumbers:v15];
  }

  v16 = [(MKMapItem *)self url];
  absoluteString = [v16 absoluteString];

  if ([absoluteString length])
  {
    v18 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CBD0] value:absoluteString];
    v22 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v3 setUrlAddresses:v19];
  }

  _mapsDataString = [(MKMapItem *)self _mapsDataString];
  if ([_mapsDataString length])
  {
    [v3 setMapsData:_mapsDataString];
  }

  return v3;
}

- (BOOL)_isEmptyContactMapItem
{
  [(MKMapItem *)self _coordinate];
  v3 = fabs(v2) > 180.0;
  return fabs(v4) > 90.0 || v3;
}

- (MKMapItem)initWithContact:(id)contact
{
  v21 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  postalAddresses = [contactCopy postalAddresses];
  v6 = [postalAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    dictionaryRepresentation = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    v11 = dictionaryRepresentation;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(postalAddresses);
      }

      value = [*(*(&v16 + 1) + 8 * v10) value];
      dictionaryRepresentation = [value dictionaryRepresentation];

      if ([dictionaryRepresentation count])
      {
        break;
      }

      ++v10;
      v11 = dictionaryRepresentation;
      if (v7 == v10)
      {
        v7 = [postalAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    dictionaryRepresentation = 0;
  }

  v13 = [(MKMapItem *)self initWithAddressDictionary:dictionaryRepresentation];
  if (v13)
  {
    v14 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
    [(MKMapItem *)v13 setName:v14];
  }

  return v13;
}

+ (id)_mapItemFromVCardRepresentation:(id)representation error:(id *)error
{
  v5 = *MEMORY[0x1E6983078];
  representationCopy = representation;
  identifier = [v5 identifier];
  v8 = [MKMapItem objectWithItemProviderData:representationCopy typeIdentifier:identifier error:error];

  return v8;
}

+ (id)ticketForMapsDataString:(id)string name:(id)name
{
  nameCopy = name;
  v6 = [string dataUsingEncoding:4];
  v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
  v8 = [v7 objectForKey:@"MKMapItemPlaceCardVersion"];
  integerValue = [v8 integerValue];

  v10 = 0;
  if (integerValue == 1)
  {
    v11 = [v7 objectForKey:@"MKMapItemPlaceCardID"];
    if (v11)
    {
      v12 = [v7 objectForKey:@"MKMapItemPlaceCardResultProvider"];
      v13 = v12;
      if (v12)
      {
        intValue = [v12 intValue];
      }

      else
      {
        intValue = 0;
      }

      v15 = -[MKMapItemIdentifier initWithMUID:]([MKMapItemIdentifier alloc], "initWithMUID:", [v11 unsignedLongLongValue]);
      v16 = +[MKMapService sharedService];
      v10 = [v16 ticketForURLQuery:nameCopy identifier:v15 resultProviderId:intValue contentProvider:0 maxResults:1 traits:0];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (void)_fillOutRequest:(id)request withMapsDataString:(id)string
{
  v16[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (requestCopy)
  {
    v6 = [string dataUsingEncoding:4];
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
    v8 = [v7 objectForKey:@"MKMapItemPlaceCardVersion"];
    integerValue = [v8 integerValue];

    if (integerValue == 1)
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
        [requestCopy _setMuids:v13];

        v14 = [v7 objectForKey:@"MKMapItemPlaceCardResultProvider"];
        v15 = v14;
        if (v14)
        {
          [requestCopy _setResultProviderID:{objc_msgSend(v14, "intValue")}];
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

+ (id)contactsAddressDictionaryFromGeoAddressDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = +[MKMapItem contactsAddressKeysForGeoAddressKeys];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
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

        v16 = [dictionaryCopy objectForKeyedSubscript:v11];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end
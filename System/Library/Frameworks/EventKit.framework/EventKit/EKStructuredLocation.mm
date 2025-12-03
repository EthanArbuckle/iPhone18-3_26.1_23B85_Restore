@interface EKStructuredLocation
+ (EKStructuredLocation)locationWithCalLocation:(id)location;
+ (EKStructuredLocation)locationWithGEOMapItem:(id)item;
+ (EKStructuredLocation)locationWithMapItem:(MKMapItem *)mapItem;
+ (EKStructuredLocation)locationWithPlacemark:(id)placemark;
+ (EKStructuredLocation)locationWithTitle:(NSString *)title;
+ (id)_stringByStrippingControlCharactersFromString:(id)string;
+ (id)displayLabelForContact:(id)contact unlocalizedLabel:(id)label;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (id)knownSingleValueKeysToSkipForUIComparison;
- (BOOL)_reset;
- (BOOL)hasKnownSpatialData;
- (BOOL)isEqualToLocation:(id)location;
- (BOOL)isPrediction;
- (BOOL)isStructured;
- (CLLocation)geoLocation;
- (EKStructuredLocation)initWithPersistentObject:(id)object objectForCopy:(id)copy;
- (NSString)contactLabel;
- (double)radius;
- (id)cacheKey;
- (id)calLocation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)geoURLString;
- (id)semanticIdentifier;
- (void)setGeoLocation:(CLLocation *)geoLocation;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setRadius:(double)radius;
- (void)setReferenceFrame:(id)frame;
- (void)updateFromMapItem:(id)item;
@end

@implementation EKStructuredLocation

- (BOOL)isPrediction
{
  predictedLOI = [(EKStructuredLocation *)self predictedLOI];
  v3 = predictedLOI != 0;

  return v3;
}

- (CLLocation)geoLocation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__EKStructuredLocation_geoLocation__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"geoLocation" populateBlock:v4];

  return v2;
}

id __35__EKStructuredLocation_geoLocation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) latitude];
  v3 = [*(a1 + 32) longitude];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v14 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) referenceFrame];
    v7 = [v6 integerValue];

    [v2 doubleValue];
    v9 = v8;
    [v4 doubleValue];
    v11 = CLLocationCoordinate2DMake(v9, v10);
    v12 = objc_alloc(MEMORY[0x1E6985C40]);
    v13 = [MEMORY[0x1E695DF00] date];
    v14 = [v12 initWithCoordinate:v13 altitude:v7 horizontalAccuracy:v11.latitude verticalAccuracy:v11.longitude timestamp:0.0 referenceFrame:{0.0, -1.0}];
  }

  return v14;
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_11 != -1)
  {
    +[EKStructuredLocation knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_11;

  return v3;
}

void __54__EKStructuredLocation_knownIdentityKeysForComparison__block_invoke()
{
  v0 = knownIdentityKeysForComparison_keys_11;
  knownIdentityKeysForComparison_keys_11 = &unk_1F1B6B230;
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_10 != -1)
  {
    +[EKStructuredLocation knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_10;

  return v3;
}

void __57__EKStructuredLocation_knownSingleValueKeysForComparison__block_invoke()
{
  v8[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992A48];
  v8[0] = *MEMORY[0x1E6992A30];
  v8[1] = v0;
  v1 = *MEMORY[0x1E6992A58];
  v8[2] = *MEMORY[0x1E6992A50];
  v8[3] = v1;
  v2 = *MEMORY[0x1E6992A68];
  v8[4] = *MEMORY[0x1E6992A60];
  v8[5] = v2;
  v3 = *MEMORY[0x1E6992A78];
  v8[6] = *MEMORY[0x1E6992A70];
  v8[7] = v3;
  v4 = *MEMORY[0x1E6992A88];
  v8[8] = *MEMORY[0x1E6992A80];
  v8[9] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:10];
  v6 = knownSingleValueKeysForComparison_keys_10;
  knownSingleValueKeysForComparison_keys_10 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysToSkipForUIComparison
{
  if (knownSingleValueKeysToSkipForUIComparison_onceToken != -1)
  {
    +[EKStructuredLocation knownSingleValueKeysToSkipForUIComparison];
  }

  v3 = knownSingleValueKeysToSkipForUIComparison_keys;

  return v3;
}

void __65__EKStructuredLocation_knownSingleValueKeysToSkipForUIComparison__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992A78];
  v4[0] = *MEMORY[0x1E6992A50];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownSingleValueKeysToSkipForUIComparison_keys;
  knownSingleValueKeysToSkipForUIComparison_keys = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_6 != -1)
  {
    +[EKStructuredLocation knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_6;

  return v3;
}

void __49__EKStructuredLocation_knownRelationshipWeakKeys__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992A38];
  v4[0] = *MEMORY[0x1E6992A40];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownRelationshipWeakKeys_keys_6;
  knownRelationshipWeakKeys_keys_6 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (EKStructuredLocation)locationWithTitle:(NSString *)title
{
  v3 = title;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTitle:v3];

  return v4;
}

+ (id)_stringByStrippingControlCharactersFromString:(id)string
{
  v3 = _stringByStrippingControlCharactersFromString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[EKStructuredLocation _stringByStrippingControlCharactersFromString:];
  }

  v5 = [stringCopy componentsSeparatedByCharactersInSet:_stringByStrippingControlCharactersFromString__s_charSet];

  v6 = [v5 componentsJoinedByString:&stru_1F1B49D68];

  return v6;
}

uint64_t __70__EKStructuredLocation__stringByStrippingControlCharactersFromString___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = _stringByStrippingControlCharactersFromString__s_charSet;
  _stringByStrippingControlCharactersFromString__s_charSet = v1;

  [_stringByStrippingControlCharactersFromString__s_charSet invert];
  v3 = _stringByStrippingControlCharactersFromString__s_charSet;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = _stringByStrippingControlCharactersFromString__s_charSet;

  return [v5 invert];
}

+ (EKStructuredLocation)locationWithPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  objc_opt_class();
  v4 = objc_opt_new();
  name = [placemarkCopy name];
  [v4 setTitle:name];

  postalAddress = [placemarkCopy postalAddress];
  formattedAddressString = [postalAddress formattedAddressString];
  [v4 setAddress:formattedAddressString];

  location = [placemarkCopy location];
  [v4 setGeoLocation:location];

  region = [placemarkCopy region];

  [region radius];
  [v4 setRadius:?];

  return v4;
}

+ (EKStructuredLocation)locationWithMapItem:(MKMapItem *)mapItem
{
  v4 = mapItem;
  v5 = objc_opt_class();
  placemark = [(MKMapItem *)v4 placemark];
  v7 = [v5 locationWithPlacemark:placemark];

  name = [(MKMapItem *)v4 name];
  v9 = [self _stringByStrippingControlCharactersFromString:name];
  [v7 setTitle:v9];

  _handle = [(MKMapItem *)v4 _handle];

  [v7 setMapKitHandle:_handle];

  return v7;
}

+ (EKStructuredLocation)locationWithGEOMapItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E695FC20] placemarkWithGEOMapItem:itemCopy];
  v6 = [v4 locationWithPlacemark:v5];

  _place = [itemCopy _place];
  name = [_place name];
  if (name)
  {
    [v6 setTitle:name];
  }

  else
  {
    name2 = [itemCopy name];
    [v6 setTitle:name2];
  }

  eKWeakLinkClass() = [EKWeakLinkClass() sharedService];
  v11 = [eKWeakLinkClass() handleForMapItem:itemCopy];
  [v6 setMapKitHandle:v11];

  return v6;
}

+ (EKStructuredLocation)locationWithCalLocation:(id)location
{
  locationCopy = location;
  title = [locationCopy title];
  v6 = [self locationWithTitle:title];

  address = [locationCopy address];
  [v6 setAddress:address];

  [locationCopy radius];
  [v6 setRadius:?];
  location = [locationCopy location];
  [v6 setGeoLocation:location];

  mapKitHandle = [locationCopy mapKitHandle];

  [v6 setMapKitHandle:mapKitHandle];

  return v6;
}

- (EKStructuredLocation)initWithPersistentObject:(id)object objectForCopy:(id)copy
{
  objectCopy = object;
  copyCopy = copy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Trying to initialize an EKStructuredLocation as a copy of an object that is not an EKStructuredLocation" userInfo:0];
    [v8 raise];
  }

  v12.receiver = self;
  v12.super_class = EKStructuredLocation;
  v9 = [(EKObject *)&v12 initWithPersistentObject:objectCopy objectForCopy:copyCopy];
  if (v9)
  {
    predictedLOI = [copyCopy predictedLOI];
    [(EKStructuredLocation *)v9 setPredictedLOI:predictedLOI];
  }

  return v9;
}

- (BOOL)isStructured
{
  geoLocation = [(EKStructuredLocation *)self geoLocation];
  if (geoLocation)
  {
    v4 = 1;
  }

  else
  {
    contactLabel = [(EKStructuredLocation *)self contactLabel];
    v4 = contactLabel != 0;
  }

  return v4;
}

- (BOOL)hasKnownSpatialData
{
  geoLocation = [(EKStructuredLocation *)self geoLocation];
  if (geoLocation)
  {
    v4 = 1;
  }

  else
  {
    mapKitHandle = [(EKStructuredLocation *)self mapKitHandle];
    v4 = mapKitHandle != 0;
  }

  return v4;
}

- (void)setReferenceFrame:(id)frame
{
  [(EKObject *)self setSingleChangedValue:frame forKey:*MEMORY[0x1E6992A78]];

  [(EKStructuredLocation *)self _clearGeoLocationCache];
}

- (void)setLatitude:(id)latitude
{
  [(EKObject *)self setSingleChangedValue:latitude forKey:*MEMORY[0x1E6992A58]];

  [(EKStructuredLocation *)self _clearGeoLocationCache];
}

- (void)setLongitude:(id)longitude
{
  [(EKObject *)self setSingleChangedValue:longitude forKey:*MEMORY[0x1E6992A60]];

  [(EKStructuredLocation *)self _clearGeoLocationCache];
}

- (void)setGeoLocation:(CLLocation *)geoLocation
{
  if (geoLocation)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = geoLocation;
    [(CLLocation *)v5 coordinate];
    v6 = [v4 numberWithDouble:?];
    [(EKStructuredLocation *)self setLatitude:v6];

    v7 = MEMORY[0x1E696AD98];
    [(CLLocation *)v5 coordinate];
    v9 = [v7 numberWithDouble:v8];
    [(EKStructuredLocation *)self setLongitude:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLLocation referenceFrame](v5, "referenceFrame")}];
    [(EKStructuredLocation *)self setReferenceFrame:v10];
  }

  else
  {
    v11 = 0;
    [(EKStructuredLocation *)self setLatitude:0];
    [(EKStructuredLocation *)self setLongitude:0];
    [(EKStructuredLocation *)self setReferenceFrame:0];
  }

  [(EKObject *)self setCachedValue:geoLocation forKey:@"geoLocation"];
}

- (id)cacheKey
{
  v3 = MEMORY[0x1E696AEC0];
  latitude = [(EKStructuredLocation *)self latitude];
  [latitude floatValue];
  v6 = v5;
  longitude = [(EKStructuredLocation *)self longitude];
  [longitude floatValue];
  v9 = [v3 stringWithFormat:@"%4f, %4f", *&v6, v8];

  return v9;
}

- (double)radius
{
  radiusRaw = [(EKStructuredLocation *)self radiusRaw];
  [radiusRaw doubleValue];
  v4 = v3;

  return v4;
}

- (void)setRadius:(double)radius
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [(EKStructuredLocation *)self setRadiusRaw:v4];
}

- (NSString)contactLabel
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992A48]];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"ab://" withString:&stru_1F1B49D68];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"ab\\://" withString:&stru_1F1B49D68];

  stringByRemovingPercentEncoding = [v4 stringByRemovingPercentEncoding];

  if ([stringByRemovingPercentEncoding length])
  {
    v6 = stringByRemovingPercentEncoding;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;

  return v6;
}

- (BOOL)_reset
{
  v7.receiver = self;
  v7.super_class = EKStructuredLocation;
  _reset = [(EKObject *)&v7 _reset];
  if (_reset)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__EKStructuredLocation__reset__block_invoke;
    v6[3] = &unk_1E77FE7D0;
    v6[4] = self;
    LOBYTE(_reset) = [(EKObject *)self _resetIfBackingObjectIsOfClass:v4 fetchResetFrozenObjectBlock:v6];
  }

  return _reset;
}

id __30__EKStructuredLocation__reset__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 eventStore];
  v5 = [v4 reminderStore];
  v6 = [v5 resetBackingLocationWithBackingLocation:v3];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v17.receiver = self;
    v17.super_class = EKStructuredLocation;
    return [(EKObject *)&v17 copyWithZone:zone];
  }

  else
  {
    v5 = objc_alloc_init(EKStructuredLocation);
    title = [(EKStructuredLocation *)self title];
    [(EKStructuredLocation *)v5 setTitle:title];

    geoLocation = [(EKStructuredLocation *)self geoLocation];
    [(EKStructuredLocation *)v5 setGeoLocation:geoLocation];

    mapKitHandle = [(EKStructuredLocation *)self mapKitHandle];
    [(EKStructuredLocation *)v5 setMapKitHandle:mapKitHandle];

    [(EKStructuredLocation *)self radius];
    [(EKStructuredLocation *)v5 setRadius:?];
    backingObject = [(EKObject *)self backingObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      address = [(EKStructuredLocation *)self address];
      [(EKStructuredLocation *)v5 setAddress:address];

      contactLabel = [(EKStructuredLocation *)self contactLabel];
      [(EKStructuredLocation *)v5 setContactLabel:contactLabel];

      routing = [(EKStructuredLocation *)self routing];
      [(EKStructuredLocation *)v5 setRouting:routing];

      derivedFrom = [(EKStructuredLocation *)self derivedFrom];
      [(EKStructuredLocation *)v5 setDerivedFrom:derivedFrom];

      predictedLOI = [(EKStructuredLocation *)self predictedLOI];
      [(EKStructuredLocation *)v5 setPredictedLOI:predictedLOI];

      [(EKStructuredLocation *)v5 setImprecise:[(EKStructuredLocation *)self isImprecise]];
    }
  }

  return v5;
}

- (BOOL)isEqualToLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    title = [(EKStructuredLocation *)self title];
    if (title)
    {
    }

    else
    {
      title2 = [locationCopy title];

      if (!title2)
      {
        goto LABEL_7;
      }
    }

    title3 = [(EKStructuredLocation *)self title];
    title4 = [locationCopy title];
    isKindOfClass &= [title3 isEqualToString:title4];

LABEL_7:
    address = [(EKStructuredLocation *)self address];
    if (address)
    {
    }

    else
    {
      address2 = [locationCopy address];

      if (!address2)
      {
        goto LABEL_11;
      }
    }

    address3 = [(EKStructuredLocation *)self address];
    address4 = [locationCopy address];
    isKindOfClass &= [address3 isEqualToString:address4];

LABEL_11:
    contactLabel = [(EKStructuredLocation *)self contactLabel];
    if (contactLabel)
    {
    }

    else
    {
      contactLabel2 = [locationCopy contactLabel];

      if (!contactLabel2)
      {
        goto LABEL_15;
      }
    }

    contactLabel3 = [(EKStructuredLocation *)self contactLabel];
    contactLabel4 = [locationCopy contactLabel];
    isKindOfClass &= [contactLabel3 isEqualToString:contactLabel4];

LABEL_15:
    geoLocation = [(EKStructuredLocation *)self geoLocation];
    if (geoLocation)
    {
    }

    else
    {
      geoLocation2 = [locationCopy geoLocation];

      if (!geoLocation2)
      {
        goto LABEL_22;
      }
    }

    geoLocation3 = [(EKStructuredLocation *)self geoLocation];
    [geoLocation3 coordinate];
    v23 = v22;
    geoLocation4 = [locationCopy geoLocation];
    [geoLocation4 coordinate];
    v26 = vabdd_f64(v23, v25) < 2.22044605e-16;

    geoLocation5 = [(EKStructuredLocation *)self geoLocation];
    [geoLocation5 coordinate];
    v29 = v28;
    geoLocation6 = [locationCopy geoLocation];
    [geoLocation6 coordinate];
    v32 = vabdd_f64(v29, v31) < 2.22044605e-16 && v26;
    isKindOfClass &= v32;

LABEL_22:
    mapKitHandle = [(EKStructuredLocation *)self mapKitHandle];
    if (mapKitHandle)
    {
    }

    else
    {
      mapKitHandle2 = [locationCopy mapKitHandle];

      if (!mapKitHandle2)
      {
LABEL_26:
        [(EKStructuredLocation *)self radius];
        v38 = v37;
        [locationCopy radius];
        v7 = isKindOfClass & (vabdd_f64(v38, v39) < 2.22044605e-16);
        goto LABEL_27;
      }
    }

    mapKitHandle3 = [(EKStructuredLocation *)self mapKitHandle];
    mapKitHandle4 = [locationCopy mapKitHandle];
    isKindOfClass &= [mapKitHandle3 isEqualToData:mapKitHandle4];

    goto LABEL_26;
  }

  v7 = 0;
LABEL_27:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(EKStructuredLocation *)self title];
  address = [(EKStructuredLocation *)self address];
  geoLocation = [(EKStructuredLocation *)self geoLocation];
  contactLabel = [(EKStructuredLocation *)self contactLabel];
  routing = [(EKStructuredLocation *)self routing];
  [(EKStructuredLocation *)self radius];
  v11 = [v3 stringWithFormat:@"%@ <%p> {title = %@ address = %@; geo = %@; abID = %@; routing = %@; radius = %f;}", v4, self, title, address, geoLocation, contactLabel, routing, v10];;

  return v11;
}

- (id)calLocation
{
  v3 = objc_alloc_init(MEMORY[0x1E6992FD8]);
  title = [(EKStructuredLocation *)self title];
  [v3 setTitle:title];

  address = [(EKStructuredLocation *)self address];
  [v3 setAddress:address];

  title2 = [(EKStructuredLocation *)self title];
  [v3 setDisplayName:title2];

  [v3 setType:1];
  [(EKStructuredLocation *)self radius];
  [v3 setRadius:?];
  geoLocation = [(EKStructuredLocation *)self geoLocation];
  [v3 setLocation:geoLocation];

  routing = [(EKStructuredLocation *)self routing];
  [v3 setRouteType:routing];

  mapKitHandle = [(EKStructuredLocation *)self mapKitHandle];
  [v3 setMapKitHandle:mapKitHandle];

  return v3;
}

- (id)geoURLString
{
  v3 = MEMORY[0x1E696AEC0];
  geoLocation = [(EKStructuredLocation *)self geoLocation];
  [geoLocation coordinate];
  v6 = v5;
  geoLocation2 = [(EKStructuredLocation *)self geoLocation];
  [geoLocation2 coordinate];
  v9 = [v3 stringWithFormat:@"geo:%f, %f", v6, v8];

  return v9;
}

- (void)updateFromMapItem:(id)item
{
  itemCopy = item;
  placemark = [itemCopy placemark];
  location = [placemark location];
  [(EKStructuredLocation *)self setGeoLocation:location];

  placemark2 = [itemCopy placemark];
  region = [placemark2 region];
  [region radius];
  [(EKStructuredLocation *)self setRadius:?];

  _handle = [itemCopy _handle];

  [(EKStructuredLocation *)self setMapKitHandle:_handle];
}

+ (id)displayLabelForContact:(id)contact unlocalizedLabel:(id)label
{
  contactCopy = contact;
  v6 = MEMORY[0x1E695CD80];
  labelCopy = label;
  v8 = [v6 stringFromContact:contactCopy style:0];
  v9 = [MEMORY[0x1E695CEE0] localizedStringForLabel:labelCopy];

  capitalizedString = [v9 capitalizedString];

  if ([contactCopy contactType] == 1)
  {
    goto LABEL_2;
  }

  if (capitalizedString)
  {
    defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
    identifier = [contactCopy identifier];
    v14 = [defaultProvider contactIdentifierIsMe:identifier];

    if (!v14 && v8)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = EKBundle();
      v17 = [v16 localizedStringForKey:@"%@’s %@" value:&stru_1F1B49D68 table:0];
      v18 = [v15 localizedStringWithFormat:v17, v8, capitalizedString];

      goto LABEL_9;
    }

    v11 = capitalizedString;
    goto LABEL_8;
  }

  if (v8)
  {
LABEL_2:
    v11 = v8;
LABEL_8:
    v18 = v11;
    goto LABEL_9;
  }

  v18 = 0;
LABEL_9:
  if ([v18 length])
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)semanticIdentifier
{
  title = [(EKStructuredLocation *)self title];
  address = [(EKStructuredLocation *)self address];
  mapKitHandle = [(EKStructuredLocation *)self mapKitHandle];
  contactLabel = [(EKStructuredLocation *)self contactLabel];
  latitude = [(EKStructuredLocation *)self latitude];
  longitude = [(EKStructuredLocation *)self longitude];
  v9 = MEMORY[0x1E696AD98];
  [(EKStructuredLocation *)self radius];
  v10 = [v9 numberWithDouble:?];
  v11 = [EKStructuredLocationSemanticIdentifierGenerator semanticIdentifierForLocationWithTitle:title address:address mapKitHandle:mapKitHandle contactLabel:contactLabel latitude:latitude longitude:longitude radius:v10];

  return v11;
}

@end
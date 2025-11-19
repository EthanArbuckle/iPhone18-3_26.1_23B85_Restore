@interface EKStructuredLocation
+ (EKStructuredLocation)locationWithCalLocation:(id)a3;
+ (EKStructuredLocation)locationWithGEOMapItem:(id)a3;
+ (EKStructuredLocation)locationWithMapItem:(MKMapItem *)mapItem;
+ (EKStructuredLocation)locationWithPlacemark:(id)a3;
+ (EKStructuredLocation)locationWithTitle:(NSString *)title;
+ (id)_stringByStrippingControlCharactersFromString:(id)a3;
+ (id)displayLabelForContact:(id)a3 unlocalizedLabel:(id)a4;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (id)knownSingleValueKeysToSkipForUIComparison;
- (BOOL)_reset;
- (BOOL)hasKnownSpatialData;
- (BOOL)isEqualToLocation:(id)a3;
- (BOOL)isPrediction;
- (BOOL)isStructured;
- (CLLocation)geoLocation;
- (EKStructuredLocation)initWithPersistentObject:(id)a3 objectForCopy:(id)a4;
- (NSString)contactLabel;
- (double)radius;
- (id)cacheKey;
- (id)calLocation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)geoURLString;
- (id)semanticIdentifier;
- (void)setGeoLocation:(CLLocation *)geoLocation;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setRadius:(double)radius;
- (void)setReferenceFrame:(id)a3;
- (void)updateFromMapItem:(id)a3;
@end

@implementation EKStructuredLocation

- (BOOL)isPrediction
{
  v2 = [(EKStructuredLocation *)self predictedLOI];
  v3 = v2 != 0;

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

+ (id)_stringByStrippingControlCharactersFromString:(id)a3
{
  v3 = _stringByStrippingControlCharactersFromString__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[EKStructuredLocation _stringByStrippingControlCharactersFromString:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:_stringByStrippingControlCharactersFromString__s_charSet];

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

+ (EKStructuredLocation)locationWithPlacemark:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [v3 name];
  [v4 setTitle:v5];

  v6 = [v3 postalAddress];
  v7 = [v6 formattedAddressString];
  [v4 setAddress:v7];

  v8 = [v3 location];
  [v4 setGeoLocation:v8];

  v9 = [v3 region];

  [v9 radius];
  [v4 setRadius:?];

  return v4;
}

+ (EKStructuredLocation)locationWithMapItem:(MKMapItem *)mapItem
{
  v4 = mapItem;
  v5 = objc_opt_class();
  v6 = [(MKMapItem *)v4 placemark];
  v7 = [v5 locationWithPlacemark:v6];

  v8 = [(MKMapItem *)v4 name];
  v9 = [a1 _stringByStrippingControlCharactersFromString:v8];
  [v7 setTitle:v9];

  v10 = [(MKMapItem *)v4 _handle];

  [v7 setMapKitHandle:v10];

  return v7;
}

+ (EKStructuredLocation)locationWithGEOMapItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E695FC20] placemarkWithGEOMapItem:v3];
  v6 = [v4 locationWithPlacemark:v5];

  v7 = [v3 _place];
  v8 = [v7 name];
  if (v8)
  {
    [v6 setTitle:v8];
  }

  else
  {
    v9 = [v3 name];
    [v6 setTitle:v9];
  }

  v10 = [EKWeakLinkClass() sharedService];
  v11 = [v10 handleForMapItem:v3];
  [v6 setMapKitHandle:v11];

  return v6;
}

+ (EKStructuredLocation)locationWithCalLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [a1 locationWithTitle:v5];

  v7 = [v4 address];
  [v6 setAddress:v7];

  [v4 radius];
  [v6 setRadius:?];
  v8 = [v4 location];
  [v6 setGeoLocation:v8];

  v9 = [v4 mapKitHandle];

  [v6 setMapKitHandle:v9];

  return v6;
}

- (EKStructuredLocation)initWithPersistentObject:(id)a3 objectForCopy:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Trying to initialize an EKStructuredLocation as a copy of an object that is not an EKStructuredLocation" userInfo:0];
    [v8 raise];
  }

  v12.receiver = self;
  v12.super_class = EKStructuredLocation;
  v9 = [(EKObject *)&v12 initWithPersistentObject:v6 objectForCopy:v7];
  if (v9)
  {
    v10 = [v7 predictedLOI];
    [(EKStructuredLocation *)v9 setPredictedLOI:v10];
  }

  return v9;
}

- (BOOL)isStructured
{
  v3 = [(EKStructuredLocation *)self geoLocation];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EKStructuredLocation *)self contactLabel];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)hasKnownSpatialData
{
  v3 = [(EKStructuredLocation *)self geoLocation];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EKStructuredLocation *)self mapKitHandle];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)setReferenceFrame:(id)a3
{
  [(EKObject *)self setSingleChangedValue:a3 forKey:*MEMORY[0x1E6992A78]];

  [(EKStructuredLocation *)self _clearGeoLocationCache];
}

- (void)setLatitude:(id)a3
{
  [(EKObject *)self setSingleChangedValue:a3 forKey:*MEMORY[0x1E6992A58]];

  [(EKStructuredLocation *)self _clearGeoLocationCache];
}

- (void)setLongitude:(id)a3
{
  [(EKObject *)self setSingleChangedValue:a3 forKey:*MEMORY[0x1E6992A60]];

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
  v4 = [(EKStructuredLocation *)self latitude];
  [v4 floatValue];
  v6 = v5;
  v7 = [(EKStructuredLocation *)self longitude];
  [v7 floatValue];
  v9 = [v3 stringWithFormat:@"%4f, %4f", *&v6, v8];

  return v9;
}

- (double)radius
{
  v2 = [(EKStructuredLocation *)self radiusRaw];
  [v2 doubleValue];
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

  v5 = [v4 stringByRemovingPercentEncoding];

  if ([v5 length])
  {
    v6 = v5;
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
  v3 = [(EKObject *)&v7 _reset];
  if (v3)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__EKStructuredLocation__reset__block_invoke;
    v6[3] = &unk_1E77FE7D0;
    v6[4] = self;
    LOBYTE(v3) = [(EKObject *)self _resetIfBackingObjectIsOfClass:v4 fetchResetFrozenObjectBlock:v6];
  }

  return v3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v17.receiver = self;
    v17.super_class = EKStructuredLocation;
    return [(EKObject *)&v17 copyWithZone:a3];
  }

  else
  {
    v5 = objc_alloc_init(EKStructuredLocation);
    v6 = [(EKStructuredLocation *)self title];
    [(EKStructuredLocation *)v5 setTitle:v6];

    v7 = [(EKStructuredLocation *)self geoLocation];
    [(EKStructuredLocation *)v5 setGeoLocation:v7];

    v8 = [(EKStructuredLocation *)self mapKitHandle];
    [(EKStructuredLocation *)v5 setMapKitHandle:v8];

    [(EKStructuredLocation *)self radius];
    [(EKStructuredLocation *)v5 setRadius:?];
    v9 = [(EKObject *)self backingObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(EKStructuredLocation *)self address];
      [(EKStructuredLocation *)v5 setAddress:v11];

      v12 = [(EKStructuredLocation *)self contactLabel];
      [(EKStructuredLocation *)v5 setContactLabel:v12];

      v13 = [(EKStructuredLocation *)self routing];
      [(EKStructuredLocation *)v5 setRouting:v13];

      v14 = [(EKStructuredLocation *)self derivedFrom];
      [(EKStructuredLocation *)v5 setDerivedFrom:v14];

      v15 = [(EKStructuredLocation *)self predictedLOI];
      [(EKStructuredLocation *)v5 setPredictedLOI:v15];

      [(EKStructuredLocation *)v5 setImprecise:[(EKStructuredLocation *)self isImprecise]];
    }
  }

  return v5;
}

- (BOOL)isEqualToLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = [(EKStructuredLocation *)self title];
    if (v6)
    {
    }

    else
    {
      v8 = [v4 title];

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v9 = [(EKStructuredLocation *)self title];
    v10 = [v4 title];
    isKindOfClass &= [v9 isEqualToString:v10];

LABEL_7:
    v11 = [(EKStructuredLocation *)self address];
    if (v11)
    {
    }

    else
    {
      v12 = [v4 address];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    v13 = [(EKStructuredLocation *)self address];
    v14 = [v4 address];
    isKindOfClass &= [v13 isEqualToString:v14];

LABEL_11:
    v15 = [(EKStructuredLocation *)self contactLabel];
    if (v15)
    {
    }

    else
    {
      v16 = [v4 contactLabel];

      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v17 = [(EKStructuredLocation *)self contactLabel];
    v18 = [v4 contactLabel];
    isKindOfClass &= [v17 isEqualToString:v18];

LABEL_15:
    v19 = [(EKStructuredLocation *)self geoLocation];
    if (v19)
    {
    }

    else
    {
      v20 = [v4 geoLocation];

      if (!v20)
      {
        goto LABEL_22;
      }
    }

    v21 = [(EKStructuredLocation *)self geoLocation];
    [v21 coordinate];
    v23 = v22;
    v24 = [v4 geoLocation];
    [v24 coordinate];
    v26 = vabdd_f64(v23, v25) < 2.22044605e-16;

    v27 = [(EKStructuredLocation *)self geoLocation];
    [v27 coordinate];
    v29 = v28;
    v30 = [v4 geoLocation];
    [v30 coordinate];
    v32 = vabdd_f64(v29, v31) < 2.22044605e-16 && v26;
    isKindOfClass &= v32;

LABEL_22:
    v33 = [(EKStructuredLocation *)self mapKitHandle];
    if (v33)
    {
    }

    else
    {
      v34 = [v4 mapKitHandle];

      if (!v34)
      {
LABEL_26:
        [(EKStructuredLocation *)self radius];
        v38 = v37;
        [v4 radius];
        v7 = isKindOfClass & (vabdd_f64(v38, v39) < 2.22044605e-16);
        goto LABEL_27;
      }
    }

    v35 = [(EKStructuredLocation *)self mapKitHandle];
    v36 = [v4 mapKitHandle];
    isKindOfClass &= [v35 isEqualToData:v36];

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
  v5 = [(EKStructuredLocation *)self title];
  v6 = [(EKStructuredLocation *)self address];
  v7 = [(EKStructuredLocation *)self geoLocation];
  v8 = [(EKStructuredLocation *)self contactLabel];
  v9 = [(EKStructuredLocation *)self routing];
  [(EKStructuredLocation *)self radius];
  v11 = [v3 stringWithFormat:@"%@ <%p> {title = %@ address = %@; geo = %@; abID = %@; routing = %@; radius = %f;}", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (id)calLocation
{
  v3 = objc_alloc_init(MEMORY[0x1E6992FD8]);
  v4 = [(EKStructuredLocation *)self title];
  [v3 setTitle:v4];

  v5 = [(EKStructuredLocation *)self address];
  [v3 setAddress:v5];

  v6 = [(EKStructuredLocation *)self title];
  [v3 setDisplayName:v6];

  [v3 setType:1];
  [(EKStructuredLocation *)self radius];
  [v3 setRadius:?];
  v7 = [(EKStructuredLocation *)self geoLocation];
  [v3 setLocation:v7];

  v8 = [(EKStructuredLocation *)self routing];
  [v3 setRouteType:v8];

  v9 = [(EKStructuredLocation *)self mapKitHandle];
  [v3 setMapKitHandle:v9];

  return v3;
}

- (id)geoURLString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EKStructuredLocation *)self geoLocation];
  [v4 coordinate];
  v6 = v5;
  v7 = [(EKStructuredLocation *)self geoLocation];
  [v7 coordinate];
  v9 = [v3 stringWithFormat:@"geo:%f, %f", v6, v8];

  return v9;
}

- (void)updateFromMapItem:(id)a3
{
  v4 = a3;
  v5 = [v4 placemark];
  v6 = [v5 location];
  [(EKStructuredLocation *)self setGeoLocation:v6];

  v7 = [v4 placemark];
  v8 = [v7 region];
  [v8 radius];
  [(EKStructuredLocation *)self setRadius:?];

  v9 = [v4 _handle];

  [(EKStructuredLocation *)self setMapKitHandle:v9];
}

+ (id)displayLabelForContact:(id)a3 unlocalizedLabel:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695CD80];
  v7 = a4;
  v8 = [v6 stringFromContact:v5 style:0];
  v9 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v7];

  v10 = [v9 capitalizedString];

  if ([v5 contactType] == 1)
  {
    goto LABEL_2;
  }

  if (v10)
  {
    v12 = [MEMORY[0x1E6992F50] defaultProvider];
    v13 = [v5 identifier];
    v14 = [v12 contactIdentifierIsMe:v13];

    if (!v14 && v8)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = EKBundle();
      v17 = [v16 localizedStringForKey:@"%@’s %@" value:&stru_1F1B49D68 table:0];
      v18 = [v15 localizedStringWithFormat:v17, v8, v10];

      goto LABEL_9;
    }

    v11 = v10;
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
  v3 = [(EKStructuredLocation *)self title];
  v4 = [(EKStructuredLocation *)self address];
  v5 = [(EKStructuredLocation *)self mapKitHandle];
  v6 = [(EKStructuredLocation *)self contactLabel];
  v7 = [(EKStructuredLocation *)self latitude];
  v8 = [(EKStructuredLocation *)self longitude];
  v9 = MEMORY[0x1E696AD98];
  [(EKStructuredLocation *)self radius];
  v10 = [v9 numberWithDouble:?];
  v11 = [EKStructuredLocationSemanticIdentifierGenerator semanticIdentifierForLocationWithTitle:v3 address:v4 mapKitHandle:v5 contactLabel:v6 latitude:v7 longitude:v8 radius:v10];

  return v11;
}

@end
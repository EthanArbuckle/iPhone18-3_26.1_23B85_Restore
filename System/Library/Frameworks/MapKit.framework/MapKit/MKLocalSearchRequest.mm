@interface MKLocalSearchRequest
+ (MKLocalSearchRequest)searchRequestWithCompletion:(id)completion;
- (MKCoordinateRegion)region;
- (MKLocalSearchRequest)init;
- (MKLocalSearchRequest)initWithCompletion:(MKLocalSearchCompletion *)completion;
- (MKLocalSearchRequest)initWithMapsURL:(id)l;
- (MKLocalSearchRequest)initWithNaturalLanguageQuery:(NSString *)naturalLanguageQuery;
- (MKLocalSearchRequest)initWithNaturalLanguageQuery:(NSString *)naturalLanguageQuery region:(MKCoordinateRegion)region;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setContactsDataString:(id)string;
@end

@implementation MKLocalSearchRequest

- (MKLocalSearchRequest)init
{
  v3.receiver = self;
  v3.super_class = MKLocalSearchRequest;
  return [(MKLocalSearchRequest *)&v3 init];
}

+ (MKLocalSearchRequest)searchRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [[MKLocalSearchRequest alloc] initWithCompletion:completionCopy];

  return v4;
}

- (MKCoordinateRegion)region
{
  latitude = self->_region.center.latitude;
  longitude = self->_region.center.longitude;
  latitudeDelta = self->_region.span.latitudeDelta;
  longitudeDelta = self->_region.span.longitudeDelta;
  result.span.longitudeDelta = longitudeDelta;
  result.span.latitudeDelta = latitudeDelta;
  result.center.longitude = longitude;
  result.center.latitude = latitude;
  return result;
}

- (void)_setContactsDataString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_contactsDataString isEqualToString:?])
  {
    objc_storeStrong(&self->_contactsDataString, string);
    [MKMapItem _fillOutRequest:self withMapsDataString:self->_contactsDataString];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MKLocalSearchRequest;
  v4 = [(MKLocalSearchRequest *)&v8 description];
  _dictionaryRepresentation = [(MKLocalSearchRequest *)self _dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, _dictionaryRepresentation];

  return v6;
}

- (id)_dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  naturalLanguageQuery = self->_naturalLanguageQuery;
  if (naturalLanguageQuery)
  {
    [dictionary setObject:naturalLanguageQuery forKey:@"naturalLanguageQuery"];
  }

  if (self->_hasRegion)
  {
    latitudeDelta = self->_region.span.latitudeDelta;
    longitudeDelta = self->_region.span.longitudeDelta;
    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&self->_region.center.latitude, *&self->_region.center.longitude];
    v10 = [v8 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v9, *&latitudeDelta, *&longitudeDelta];

    [v4 setObject:v10 forKey:@"region"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_regionPriority];
    [v4 setObject:v11 forKey:@"regionPriority"];
  }

  geoCompletionItem = self->_geoCompletionItem;
  if (geoCompletionItem)
  {
    [v4 setObject:geoCompletionItem forKey:@"completionItem"];
  }

  deviceLocation = self->_deviceLocation;
  if (deviceLocation)
  {
    [v4 setObject:deviceLocation forKey:@"deviceLocation"];
  }

  merchantParameters = self->_merchantParameters;
  if (merchantParameters)
  {
    [v4 setObject:merchantParameters forKey:@"merchantParameters"];
  }

  externalTransitLookupParameters = self->_externalTransitLookupParameters;
  if (externalTransitLookupParameters)
  {
    [v4 setObject:externalTransitLookupParameters forKey:@"externalTransitLookupParameters"];
  }

  phoneNumbers = self->_phoneNumbers;
  if (phoneNumbers)
  {
    [v4 setObject:phoneNumbers forKey:@"phoneNumbers"];
  }

  muids = self->_muids;
  if (muids)
  {
    [v4 setObject:muids forKey:@"muids"];
  }

  if (self->_resultProviderID)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v4 setObject:v18 forKey:@"resultProviderID"];
  }

  canonicalSearchString = self->_canonicalSearchString;
  if (canonicalSearchString)
  {
    [v4 setObject:canonicalSearchString forKey:@"canonicalSearchString"];
  }

  if (self->_resultTypes)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v4 setObject:v20 forKey:@"resultTypes"];
  }

  pointOfInterestFilter = self->_pointOfInterestFilter;
  if (pointOfInterestFilter)
  {
    [v4 setObject:pointOfInterestFilter forKey:@"pointOfInterestFilter"];
  }

  addressFilter = self->_addressFilter;
  if (addressFilter)
  {
    [v4 setObject:addressFilter forKey:@"addressFilter"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_naturalLanguageQuery copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  *(v4 + 16) = self->_hasRegion;
  center = self->_region.center;
  *(v4 + 40) = self->_region.span;
  *(v4 + 24) = center;
  *(v4 + 128) = self->_regionPriority;
  objc_storeStrong((v4 + 64), self->_geoCompletionItem);
  v8 = [(CLLocation *)self->_deviceLocation copy];
  v9 = *(v4 + 72);
  *(v4 + 72) = v8;

  v10 = [(_MKLocalSearchMerchantParameters *)self->_merchantParameters copy];
  v11 = *(v4 + 80);
  *(v4 + 80) = v10;

  v12 = [(_MKLocalSearchExternalTransitLookupParameters *)self->_externalTransitLookupParameters copy];
  v13 = *(v4 + 88);
  *(v4 + 88) = v12;

  v14 = [(NSArray *)self->_phoneNumbers copy];
  v15 = *(v4 + 96);
  *(v4 + 96) = v14;

  v16 = [(NSArray *)self->_muids copy];
  v17 = *(v4 + 104);
  *(v4 + 104) = v16;

  *(v4 + 60) = self->_resultProviderID;
  v18 = [(NSString *)self->_canonicalSearchString copy];
  v19 = *(v4 + 120);
  *(v4 + 120) = v18;

  *(v4 + 57) = self->_hasSentFeedbackForCompletion;
  v20 = [(MKPointOfInterestFilter *)self->_pointOfInterestFilter copy];
  v21 = *(v4 + 144);
  *(v4 + 144) = v20;

  v22 = [(MKAddressFilter *)self->_addressFilter copy];
  v23 = *(v4 + 152);
  *(v4 + 152) = v22;

  *(v4 + 136) = self->_resultTypes;
  return v4;
}

- (MKLocalSearchRequest)initWithMapsURL:(id)l
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = [(MKLocalSearchRequest *)self init];
  if (v6)
  {
    if (!lCopy)
    {
      p_super = GEOFindOrCreateLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        *buf = 138543362;
        v24 = v15;
        _os_log_impl(&dword_1A2EA0000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ called with nil for a URL", buf, 0xCu);
      }

      goto LABEL_19;
    }

    v7 = [[_MKURLParser alloc] initWithURL:lCopy];
    if (!v7)
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138543618;
        v24 = v17;
        v25 = 2114;
        v26 = lCopy;
        _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_ERROR, "%{public}@ could not build a parser for %{public}@", buf, 0x16u);
      }

      p_super = 0;
      goto LABEL_19;
    }

    p_super = &v7->super;
    if ([(_MKURLParser *)v7 parseIncludingCustomParameters:0])
    {
      searchUID = [p_super searchUID];
      searchProviderID = [p_super searchProviderID];
      if (searchUID)
      {
        v11 = searchProviderID;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:searchUID];
        v22 = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        [(MKLocalSearchRequest *)v6 _setMuids:v13];

        [(MKLocalSearchRequest *)v6 _setResultProviderID:v11];
        v14 = v6;
LABEL_20:

        goto LABEL_21;
      }

      v18 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v19 = NSStringFromSelector(a2);
      *buf = 138543618;
      v24 = v19;
      v25 = 2114;
      v26 = lCopy;
      v20 = "%{public}@ could not find a muid in %{public}@";
    }

    else
    {
      v18 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

LABEL_19:
        v14 = 0;
        goto LABEL_20;
      }

      v19 = NSStringFromSelector(a2);
      *buf = 138543618;
      v24 = v19;
      v25 = 2114;
      v26 = lCopy;
      v20 = "%{public}@ failed parsing %{public}@";
    }

    _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);

    goto LABEL_18;
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (MKLocalSearchRequest)initWithNaturalLanguageQuery:(NSString *)naturalLanguageQuery region:(MKCoordinateRegion)region
{
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  longitude = region.center.longitude;
  latitude = region.center.latitude;
  v9 = naturalLanguageQuery;
  v10 = [(MKLocalSearchRequest *)self init];
  v11 = v10;
  if (v10)
  {
    [(MKLocalSearchRequest *)v10 setNaturalLanguageQuery:v9];
    [(MKLocalSearchRequest *)v11 setRegion:latitude, longitude, latitudeDelta, longitudeDelta];
    v12 = v11;
  }

  return v11;
}

- (MKLocalSearchRequest)initWithNaturalLanguageQuery:(NSString *)naturalLanguageQuery
{
  v4 = naturalLanguageQuery;
  v5 = [(MKLocalSearchRequest *)self init];
  v6 = v5;
  if (v5)
  {
    [(MKLocalSearchRequest *)v5 setNaturalLanguageQuery:v4];
    v7 = v6;
  }

  return v6;
}

- (MKLocalSearchRequest)initWithCompletion:(MKLocalSearchCompletion *)completion
{
  v4 = completion;
  v11.receiver = self;
  v11.super_class = MKLocalSearchRequest;
  v5 = [(MKLocalSearchRequest *)&v11 init];
  if (v5)
  {
    queryLine = [(MKLocalSearchCompletion *)v4 queryLine];
    [(MKLocalSearchRequest *)v5 setNaturalLanguageQuery:queryLine];

    geoCompletionItem = [(MKLocalSearchCompletion *)v4 geoCompletionItem];
    geoCompletionItem = v5->_geoCompletionItem;
    v5->_geoCompletionItem = geoCompletionItem;

    v5->_hasSentFeedbackForCompletion = [(MKLocalSearchCompletion *)v4 _alreadySentFeedback];
    v9 = v5;
  }

  return v5;
}

@end
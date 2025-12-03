@interface AutocompleteItem
+ (id)keysForServerCompletion:(id)completion;
- (AutocompleteItem)initWithLocalCompletion:(id)completion sourceType:(int64_t)type sourceSubtype:(int64_t)subtype hasPriorityOverride:(BOOL)override priorityOverride:(int64_t)priorityOverride matchInfo:(id)info;
- (AutocompleteItem)initWithPersonalizedItem:(id)item matchInfo:(id)info;
- (AutocompleteItem)initWithServerCompletion:(id)completion hasPriorityOverride:(BOOL)override priorityOverride:(int64_t)priorityOverride serverResultScoreMetadata:(id)metadata;
- (CLLocationCoordinate2D)coordinate;
- (PersonalizedItemSource)source;
- (id)_searchItemForString:(id)string;
- (id)leafPersonalizedAutocompleteItems;
@end

@implementation AutocompleteItem

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->source);

  return WeakRetained;
}

- (id)leafPersonalizedAutocompleteItems
{
  selfCopy = self;
  v2 = [NSArray arrayWithObjects:&selfCopy count:1];

  return v2;
}

- (CLLocationCoordinate2D)coordinate
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    [(MKMapItem *)mapItem _coordinate];
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)_searchItemForString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MSPMutableHistoryEntrySearch);
  [v4 setQuery:stringCopy];

  v8 = 0;
  v5 = [v4 transferToImmutableIfValidWithError:&v8];
  v6 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v5];

  return v6;
}

- (AutocompleteItem)initWithPersonalizedItem:(id)item matchInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = AutocompleteItem;
  v8 = [(AutocompleteItem *)&v26 init];
  if (v8)
  {
    v8->_sourceType = [itemCopy sourceType];
    v8->_sourceSubtype = [itemCopy sourceSubtype];
    if ([itemCopy hasPriorityOverride])
    {
      v8->_hasPriorityOverride = 1;
      v8->_priorityOverride = [itemCopy priorityOverride];
    }

    serverResultScoreMetadata = [itemCopy serverResultScoreMetadata];
    serverResultScoreMetadata = v8->_serverResultScoreMetadata;
    v8->_serverResultScoreMetadata = serverResultScoreMetadata;

    v8->_hidden = [itemCopy hidden];
    hasServerItemIndex = [itemCopy hasServerItemIndex];
    v8->_hasServerItemIndex = hasServerItemIndex;
    if (hasServerItemIndex)
    {
      v8->_serverSectionIndex = [itemCopy serverSectionIndex];
      serverItemIndexInSection = [itemCopy serverItemIndexInSection];
    }

    else
    {
      serverItemIndexInSection = 0x7FFFFFFFFFFFFFFFLL;
      v8->_serverSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8->_serverItemIndexInSection = serverItemIndexInSection;
    autocompleteObject = [itemCopy autocompleteObject];
    object = v8->_object;
    v8->_object = autocompleteObject;

    keys = [itemCopy keys];
    keys = v8->_keys;
    v8->_keys = keys;

    title = [itemCopy title];
    value = [title value];
    title = v8->_title;
    v8->_title = value;

    subtitle = [itemCopy subtitle];
    value2 = [subtitle value];
    subtitle = v8->_subtitle;
    v8->_subtitle = value2;

    mapItem = [itemCopy mapItem];
    mapItem = v8->_mapItem;
    v8->_mapItem = mapItem;

    objc_storeStrong(&v8->_matchInfo, info);
  }

  return v8;
}

- (AutocompleteItem)initWithLocalCompletion:(id)completion sourceType:(int64_t)type sourceSubtype:(int64_t)subtype hasPriorityOverride:(BOOL)override priorityOverride:(int64_t)priorityOverride matchInfo:(id)info
{
  completionCopy = completion;
  infoCopy = info;
  v110.receiver = self;
  v110.super_class = AutocompleteItem;
  v17 = [(AutocompleteItem *)&v110 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_67;
  }

  objc_storeStrong(&v17->_object, completion);
  v18->_sourceType = type;
  v18->_sourceSubtype = subtype;
  v18->_hasPriorityOverride = override;
  v18->_priorityOverride = priorityOverride;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = completionCopy;
      displayString = [v27 displayString];
      title = v18->_title;
      v18->_title = displayString;

      subtitle = v18->_subtitle;
      v18->_subtitle = &stru_1016631F0;

      displayString2 = [v27 displayString];
      if (!infoCopy)
      {
        infoCopy = [AutocompleteMatchInfo matchInfoWithType:1];
      }

      goto LABEL_56;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = completionCopy;
      compositeName = [v40 compositeName];
      v42 = v18->_title;
      v18->_title = compositeName;

      goto LABEL_55;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = completionCopy;
      title = [v40 title];
      v64 = v18->_title;
      v18->_title = title;

      subTitle = [v40 subTitle];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = completionCopy;
        displayName = [v40 displayName];
        v74 = v18->_title;
        v18->_title = displayName;

        subTitle = [v40 address];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              displayString2 = completionCopy;
              objc_storeStrong(&v18->_title, completion);
              v105 = [(AutocompleteItem *)v18 _searchItemForString:displayString2];
              object = v18->_object;
              v18->_object = v105;

              if (!infoCopy)
              {
                v72 = 0;
                goto LABEL_47;
              }

              goto LABEL_56;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              displayString2 = 0;
              v18->_hidden = 1;
              goto LABEL_56;
            }

            v40 = completionCopy;
            userProvidedName = [v40 userProvidedName];
            if ([userProvidedName length])
            {
              [v40 userProvidedName];
            }

            else
            {
              [v40 routeName];
            }
            v108 = ;
            v109 = v18->_title;
            v18->_title = v108;

LABEL_55:
            displayString2 = 0;
            goto LABEL_56;
          }

          v40 = completionCopy;
          mapItem = [v40 mapItem];
          mapItem = v18->_mapItem;
          v18->_mapItem = mapItem;
LABEL_53:

          if (!infoCopy)
          {
            infoCopy = [AutocompleteMatchInfo matchInfoWithType:0];
          }

          goto LABEL_55;
        }

        v40 = completionCopy;
        mKMapItem = [v40 MKMapItem];
        v76 = v18->_mapItem;
        v18->_mapItem = mKMapItem;

        title2 = [v40 title];
        v78 = v18->_title;
        v18->_title = title2;

        subTitle = [v40 subtitle];
      }
    }

    mapItem = v18->_subtitle;
    v18->_subtitle = subTitle;
    goto LABEL_53;
  }

  v19 = completionCopy;
  v20 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
  objc_opt_class();
  v21 = v19;
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (v23 && ([v23 historyEntry], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "conformsToProtocol:", v20), v24, v25))
  {
    v26 = v21;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    v32 = v21;
    v33 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
    objc_opt_class();
    v34 = v32;
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    if (v36 && ([v36 historyEntry], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "conformsToProtocol:", v33), v37, v38))
    {
      v39 = v34;
    }

    else
    {
      v39 = 0;
    }

    historyEntry = [v39 historyEntry];
    geoMapItem = [historyEntry geoMapItem];
    v45 = [MKMapItem _itemWithGeoMapItem:geoMapItem];
    v46 = v18->_mapItem;
    v18->_mapItem = v45;

    displayString2 = 0;
    if (!infoCopy)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v47 = v21;
    v48 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
    objc_opt_class();
    v49 = v47;
    if (objc_opt_isKindOfClass())
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;

    if (v51 && ([v51 historyEntry], v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "conformsToProtocol:", v48), v52, v53))
    {
      v54 = v49;
    }

    else
    {
      v54 = 0;
    }

    if (!v54)
    {
      displayString2 = 0;
      v18->_hidden = 1;
      if (infoCopy)
      {
        goto LABEL_56;
      }

      goto LABEL_46;
    }

    v55 = v49;
    v56 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
    objc_opt_class();
    v57 = v55;
    if (objc_opt_isKindOfClass())
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;

    if (v59 && ([v59 historyEntry], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "conformsToProtocol:", v56), v60, v61))
    {
      v62 = v57;
    }

    else
    {
      v62 = 0;
    }

    historyEntry2 = [v62 historyEntry];
    query = [historyEntry2 query];
    v68 = v18->_title;
    v18->_title = query;

    historyEntry3 = [v62 historyEntry];
    locationDisplayString = [historyEntry3 locationDisplayString];
    v71 = v18->_subtitle;
    v18->_subtitle = locationDisplayString;

    displayString2 = [NSString stringWithFormat:@"%@\n%@", v18->_title, v18->_subtitle];

    if (!infoCopy)
    {
LABEL_46:
      v72 = 1;
LABEL_47:
      infoCopy = [AutocompleteMatchInfo matchInfoWithType:v72];
    }
  }

LABEL_56:
  if (!v18->_mapItem)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[AddressBookAddressItemKey alloc] initWithAddressBookAddress:completionCopy];
LABEL_62:
      v80 = v85;
      goto LABEL_63;
    }

    if (displayString2)
    {
      v85 = [[AutocompleteStringKey alloc] initWithString:displayString2];
      goto LABEL_62;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = completionCopy;
        v94 = [AutocompleteStringKey alloc];
        routeID = [v93 routeID];

        uUIDString = [routeID UUIDString];
        v80 = [(AutocompleteStringKey *)v94 initWithString:uUIDString];

        goto LABEL_63;
      }

      v85 = [NSString stringWithFormat:@"%@\n%@", v18->_title, v18->_subtitle];
      goto LABEL_62;
    }

    v89 = completionCopy;
    handle = [v89 handle];
    if (handle)
    {
    }

    else
    {
      contact = [v89 contact];
      if (contact)
      {
        v99 = contact;
        contact2 = [v89 contact];
        postalAddresses = [contact2 postalAddresses];
        v102 = [postalAddresses count];

        if (v102 == 1)
        {
          v103 = [AddressBookAddressItemKey alloc];
          contact3 = [v89 contact];
          v104 = [AddressBookAddress singleAddressForContact:contact3];
          v80 = [(AddressBookAddressItemKey *)v103 initWithAddressBookAddress:v104];

          goto LABEL_72;
        }
      }
    }

    v91 = [AutocompleteStringKey alloc];
    contact3 = [v89 identifier];
    v80 = [(AutocompleteStringKey *)v91 initWithString:contact3];
LABEL_72:

    goto LABEL_63;
  }

  v80 = [[PersonalizedMapItemKey alloc] initWithMapItem:v18->_mapItem];
  name = [(MKMapItem *)v18->_mapItem name];
  v82 = v18->_title;
  v18->_title = name;

  _addressFormattedAsShortenedAddress = [(MKMapItem *)v18->_mapItem _addressFormattedAsShortenedAddress];
  v84 = v18->_subtitle;
  v18->_subtitle = _addressFormattedAsShortenedAddress;

LABEL_63:
  if (v80)
  {
    [NSSet setWithObject:v80];
  }

  else
  {
    +[NSSet set];
  }
  v86 = ;
  keys = v18->_keys;
  v18->_keys = v86;

  objc_storeStrong(&v18->_matchInfo, infoCopy);
LABEL_67:

  return v18;
}

- (AutocompleteItem)initWithServerCompletion:(id)completion hasPriorityOverride:(BOOL)override priorityOverride:(int64_t)priorityOverride serverResultScoreMetadata:(id)metadata
{
  completionCopy = completion;
  metadataCopy = metadata;
  v26.receiver = self;
  v26.super_class = AutocompleteItem;
  v13 = [(AutocompleteItem *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_object, completion);
    *&v14->_sourceType = xmmword_1011FDDA0;
    v14->_hasPriorityOverride = override;
    v14->_priorityOverride = priorityOverride;
    objc_storeStrong(&v14->_serverResultScoreMetadata, metadata);
    v14->_hasServerItemIndex = 1;
    v14->_serverSectionIndex = [completionCopy serverSectionIndex];
    v14->_serverItemIndexInSection = [completionCopy serverItemIndexInSection];
    mapItem = [completionCopy mapItem];
    mapItem = v14->_mapItem;
    v14->_mapItem = mapItem;

    title = [completionCopy title];
    title = v14->_title;
    v14->_title = title;

    subtitle = [completionCopy subtitle];
    subtitle = v14->_subtitle;
    v14->_subtitle = subtitle;

    v21 = [AutocompleteItem keysForServerCompletion:completionCopy];
    keys = v14->_keys;
    v14->_keys = v21;

    v23 = [AutocompleteMatchInfo matchInfoWithType:0];
    matchInfo = v14->_matchInfo;
    v14->_matchInfo = v23;
  }

  return v14;
}

+ (id)keysForServerCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NSMutableSet set];
  clientResolved = [completionCopy clientResolved];

  if (clientResolved)
  {
    clientResolved2 = [completionCopy clientResolved];
    itemType = [clientResolved2 itemType];

    if ((itemType - 1) < 2 || itemType == 6)
    {
      v9 = objc_alloc_init(ClientTypeResolver);
      personalizedItemSource = [(ClientTypeResolver *)v9 personalizedItemSource];
      v11 = [personalizedItemSource cachedAddressWithType:itemType];

      if (v11)
      {
        v8 = [[AddressBookAddressItemKey alloc] initWithAddressBookAddress:v11];
      }

      else
      {
        personalizedItemSource2 = [(ClientTypeResolver *)v9 personalizedItemSource];
        v13 = [personalizedItemSource2 cachedLOIWithType:itemType];

        if (v13)
        {
          v14 = [[MapsLocationOfInterest alloc] initWithLocationOfInterest:v13 geoMapItem:0];
          v8 = [[LocationOfInterestItemKey alloc] initWithLocationOfInterest:v14];
        }

        else
        {
          v8 = 0;
        }
      }

      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (itemType != 3)
      {
        goto LABEL_15;
      }

      v8 = +[ParkedCar personalizedItemKey];
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    [v4 addObject:v8];
  }

LABEL_15:
  mapItem = [completionCopy mapItem];

  if (mapItem)
  {
    v16 = [PersonalizedMapItemKey alloc];
    mapItem2 = [completionCopy mapItem];
    v18 = [(PersonalizedMapItemKey *)v16 initWithMapItem:mapItem2];
    [v4 addObject:v18];
  }

  else
  {
    v33 = 0.0;
    v34 = 0.0;
    if ([completionCopy getCoordinate:&v33])
    {
      v19 = [CLLocation alloc];
      v20 = [v19 initWithLatitude:v33 longitude:v34];
      v21 = [[MKMapItem alloc] initWithCLLocation:v20 placeType:{objc_msgSend(completionCopy, "_placeType")}];
      title = [completionCopy title];
      [v21 setName:title];

      _hasDisambiguationRadiusMeters = [completionCopy _hasDisambiguationRadiusMeters];
      v24 = [PersonalizedMapItemKey alloc];
      v25 = v24;
      if (_hasDisambiguationRadiusMeters)
      {
        [completionCopy _disambiguationRadiusMeters];
        v26 = [(PersonalizedMapItemKey *)v25 initWithMapItem:v21 disambiguationRadiusMeters:?];
      }

      else
      {
        v26 = [(PersonalizedMapItemKey *)v24 initWithMapItem:v21];
      }

      v27 = v26;
      [v4 addObject:v26];
    }
  }

  if ([v4 count])
  {
    v28 = [v4 copy];
  }

  else
  {
    title2 = [completionCopy title];
    subtitle = [completionCopy subtitle];
    v31 = [NSString stringWithFormat:@"%@\n%@", title2, subtitle];
    v28 = [NSSet setWithObject:v31];
  }

  return v28;
}

@end
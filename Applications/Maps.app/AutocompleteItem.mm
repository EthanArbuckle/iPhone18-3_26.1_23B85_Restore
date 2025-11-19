@interface AutocompleteItem
+ (id)keysForServerCompletion:(id)a3;
- (AutocompleteItem)initWithLocalCompletion:(id)a3 sourceType:(int64_t)a4 sourceSubtype:(int64_t)a5 hasPriorityOverride:(BOOL)a6 priorityOverride:(int64_t)a7 matchInfo:(id)a8;
- (AutocompleteItem)initWithPersonalizedItem:(id)a3 matchInfo:(id)a4;
- (AutocompleteItem)initWithServerCompletion:(id)a3 hasPriorityOverride:(BOOL)a4 priorityOverride:(int64_t)a5 serverResultScoreMetadata:(id)a6;
- (CLLocationCoordinate2D)coordinate;
- (PersonalizedItemSource)source;
- (id)_searchItemForString:(id)a3;
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
  v4 = self;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

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

- (id)_searchItemForString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSPMutableHistoryEntrySearch);
  [v4 setQuery:v3];

  v8 = 0;
  v5 = [v4 transferToImmutableIfValidWithError:&v8];
  v6 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v5];

  return v6;
}

- (AutocompleteItem)initWithPersonalizedItem:(id)a3 matchInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = AutocompleteItem;
  v8 = [(AutocompleteItem *)&v26 init];
  if (v8)
  {
    v8->_sourceType = [v6 sourceType];
    v8->_sourceSubtype = [v6 sourceSubtype];
    if ([v6 hasPriorityOverride])
    {
      v8->_hasPriorityOverride = 1;
      v8->_priorityOverride = [v6 priorityOverride];
    }

    v9 = [v6 serverResultScoreMetadata];
    serverResultScoreMetadata = v8->_serverResultScoreMetadata;
    v8->_serverResultScoreMetadata = v9;

    v8->_hidden = [v6 hidden];
    v11 = [v6 hasServerItemIndex];
    v8->_hasServerItemIndex = v11;
    if (v11)
    {
      v8->_serverSectionIndex = [v6 serverSectionIndex];
      v12 = [v6 serverItemIndexInSection];
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v8->_serverSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8->_serverItemIndexInSection = v12;
    v13 = [v6 autocompleteObject];
    object = v8->_object;
    v8->_object = v13;

    v15 = [v6 keys];
    keys = v8->_keys;
    v8->_keys = v15;

    v17 = [v6 title];
    v18 = [v17 value];
    title = v8->_title;
    v8->_title = v18;

    v20 = [v6 subtitle];
    v21 = [v20 value];
    subtitle = v8->_subtitle;
    v8->_subtitle = v21;

    v23 = [v6 mapItem];
    mapItem = v8->_mapItem;
    v8->_mapItem = v23;

    objc_storeStrong(&v8->_matchInfo, a4);
  }

  return v8;
}

- (AutocompleteItem)initWithLocalCompletion:(id)a3 sourceType:(int64_t)a4 sourceSubtype:(int64_t)a5 hasPriorityOverride:(BOOL)a6 priorityOverride:(int64_t)a7 matchInfo:(id)a8
{
  v15 = a3;
  v16 = a8;
  v110.receiver = self;
  v110.super_class = AutocompleteItem;
  v17 = [(AutocompleteItem *)&v110 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_67;
  }

  objc_storeStrong(&v17->_object, a3);
  v18->_sourceType = a4;
  v18->_sourceSubtype = a5;
  v18->_hasPriorityOverride = a6;
  v18->_priorityOverride = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v15;
      v28 = [v27 displayString];
      title = v18->_title;
      v18->_title = v28;

      subtitle = v18->_subtitle;
      v18->_subtitle = &stru_1016631F0;

      v31 = [v27 displayString];
      if (!v16)
      {
        v16 = [AutocompleteMatchInfo matchInfoWithType:1];
      }

      goto LABEL_56;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v15;
      v41 = [v40 compositeName];
      v42 = v18->_title;
      v18->_title = v41;

      goto LABEL_55;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v15;
      v63 = [v40 title];
      v64 = v18->_title;
      v18->_title = v63;

      v65 = [v40 subTitle];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v15;
        v73 = [v40 displayName];
        v74 = v18->_title;
        v18->_title = v73;

        v65 = [v40 address];
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
              v31 = v15;
              objc_storeStrong(&v18->_title, a3);
              v105 = [(AutocompleteItem *)v18 _searchItemForString:v31];
              object = v18->_object;
              v18->_object = v105;

              if (!v16)
              {
                v72 = 0;
                goto LABEL_47;
              }

              goto LABEL_56;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v31 = 0;
              v18->_hidden = 1;
              goto LABEL_56;
            }

            v40 = v15;
            v107 = [v40 userProvidedName];
            if ([v107 length])
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
            v31 = 0;
            goto LABEL_56;
          }

          v40 = v15;
          v97 = [v40 mapItem];
          mapItem = v18->_mapItem;
          v18->_mapItem = v97;
LABEL_53:

          if (!v16)
          {
            v16 = [AutocompleteMatchInfo matchInfoWithType:0];
          }

          goto LABEL_55;
        }

        v40 = v15;
        v75 = [v40 MKMapItem];
        v76 = v18->_mapItem;
        v18->_mapItem = v75;

        v77 = [v40 title];
        v78 = v18->_title;
        v18->_title = v77;

        v65 = [v40 subtitle];
      }
    }

    mapItem = v18->_subtitle;
    v18->_subtitle = v65;
    goto LABEL_53;
  }

  v19 = v15;
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

    v43 = [v39 historyEntry];
    v44 = [v43 geoMapItem];
    v45 = [MKMapItem _itemWithGeoMapItem:v44];
    v46 = v18->_mapItem;
    v18->_mapItem = v45;

    v31 = 0;
    if (!v16)
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
      v31 = 0;
      v18->_hidden = 1;
      if (v16)
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

    v66 = [v62 historyEntry];
    v67 = [v66 query];
    v68 = v18->_title;
    v18->_title = v67;

    v69 = [v62 historyEntry];
    v70 = [v69 locationDisplayString];
    v71 = v18->_subtitle;
    v18->_subtitle = v70;

    v31 = [NSString stringWithFormat:@"%@\n%@", v18->_title, v18->_subtitle];

    if (!v16)
    {
LABEL_46:
      v72 = 1;
LABEL_47:
      v16 = [AutocompleteMatchInfo matchInfoWithType:v72];
    }
  }

LABEL_56:
  if (!v18->_mapItem)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[AddressBookAddressItemKey alloc] initWithAddressBookAddress:v15];
LABEL_62:
      v80 = v85;
      goto LABEL_63;
    }

    if (v31)
    {
      v85 = [[AutocompleteStringKey alloc] initWithString:v31];
      goto LABEL_62;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v15;
        v94 = [AutocompleteStringKey alloc];
        v95 = [v93 routeID];

        v96 = [v95 UUIDString];
        v80 = [(AutocompleteStringKey *)v94 initWithString:v96];

        goto LABEL_63;
      }

      v85 = [NSString stringWithFormat:@"%@\n%@", v18->_title, v18->_subtitle];
      goto LABEL_62;
    }

    v89 = v15;
    v90 = [v89 handle];
    if (v90)
    {
    }

    else
    {
      v98 = [v89 contact];
      if (v98)
      {
        v99 = v98;
        v100 = [v89 contact];
        v101 = [v100 postalAddresses];
        v102 = [v101 count];

        if (v102 == 1)
        {
          v103 = [AddressBookAddressItemKey alloc];
          v92 = [v89 contact];
          v104 = [AddressBookAddress singleAddressForContact:v92];
          v80 = [(AddressBookAddressItemKey *)v103 initWithAddressBookAddress:v104];

          goto LABEL_72;
        }
      }
    }

    v91 = [AutocompleteStringKey alloc];
    v92 = [v89 identifier];
    v80 = [(AutocompleteStringKey *)v91 initWithString:v92];
LABEL_72:

    goto LABEL_63;
  }

  v80 = [[PersonalizedMapItemKey alloc] initWithMapItem:v18->_mapItem];
  v81 = [(MKMapItem *)v18->_mapItem name];
  v82 = v18->_title;
  v18->_title = v81;

  v83 = [(MKMapItem *)v18->_mapItem _addressFormattedAsShortenedAddress];
  v84 = v18->_subtitle;
  v18->_subtitle = v83;

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

  objc_storeStrong(&v18->_matchInfo, v16);
LABEL_67:

  return v18;
}

- (AutocompleteItem)initWithServerCompletion:(id)a3 hasPriorityOverride:(BOOL)a4 priorityOverride:(int64_t)a5 serverResultScoreMetadata:(id)a6
{
  v11 = a3;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = AutocompleteItem;
  v13 = [(AutocompleteItem *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_object, a3);
    *&v14->_sourceType = xmmword_1011FDDA0;
    v14->_hasPriorityOverride = a4;
    v14->_priorityOverride = a5;
    objc_storeStrong(&v14->_serverResultScoreMetadata, a6);
    v14->_hasServerItemIndex = 1;
    v14->_serverSectionIndex = [v11 serverSectionIndex];
    v14->_serverItemIndexInSection = [v11 serverItemIndexInSection];
    v15 = [v11 mapItem];
    mapItem = v14->_mapItem;
    v14->_mapItem = v15;

    v17 = [v11 title];
    title = v14->_title;
    v14->_title = v17;

    v19 = [v11 subtitle];
    subtitle = v14->_subtitle;
    v14->_subtitle = v19;

    v21 = [AutocompleteItem keysForServerCompletion:v11];
    keys = v14->_keys;
    v14->_keys = v21;

    v23 = [AutocompleteMatchInfo matchInfoWithType:0];
    matchInfo = v14->_matchInfo;
    v14->_matchInfo = v23;
  }

  return v14;
}

+ (id)keysForServerCompletion:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v5 = [v3 clientResolved];

  if (v5)
  {
    v6 = [v3 clientResolved];
    v7 = [v6 itemType];

    if ((v7 - 1) < 2 || v7 == 6)
    {
      v9 = objc_alloc_init(ClientTypeResolver);
      v10 = [(ClientTypeResolver *)v9 personalizedItemSource];
      v11 = [v10 cachedAddressWithType:v7];

      if (v11)
      {
        v8 = [[AddressBookAddressItemKey alloc] initWithAddressBookAddress:v11];
      }

      else
      {
        v12 = [(ClientTypeResolver *)v9 personalizedItemSource];
        v13 = [v12 cachedLOIWithType:v7];

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
      if (v7 != 3)
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
  v15 = [v3 mapItem];

  if (v15)
  {
    v16 = [PersonalizedMapItemKey alloc];
    v17 = [v3 mapItem];
    v18 = [(PersonalizedMapItemKey *)v16 initWithMapItem:v17];
    [v4 addObject:v18];
  }

  else
  {
    v33 = 0.0;
    v34 = 0.0;
    if ([v3 getCoordinate:&v33])
    {
      v19 = [CLLocation alloc];
      v20 = [v19 initWithLatitude:v33 longitude:v34];
      v21 = [[MKMapItem alloc] initWithCLLocation:v20 placeType:{objc_msgSend(v3, "_placeType")}];
      v22 = [v3 title];
      [v21 setName:v22];

      v23 = [v3 _hasDisambiguationRadiusMeters];
      v24 = [PersonalizedMapItemKey alloc];
      v25 = v24;
      if (v23)
      {
        [v3 _disambiguationRadiusMeters];
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
    v29 = [v3 title];
    v30 = [v3 subtitle];
    v31 = [NSString stringWithFormat:@"%@\n%@", v29, v30];
    v28 = [NSSet setWithObject:v31];
  }

  return v28;
}

@end
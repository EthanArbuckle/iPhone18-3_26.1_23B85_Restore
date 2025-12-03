@interface AddressBookAddress
+ (id)_completionQueue;
+ (id)_completionsByAddress;
+ (id)_geocodedMapItemsByAddress;
+ (id)singleAddressForContact:(id)contact;
+ (void)didReceiveMemoryWarning;
+ (void)initialize;
- (AddressBookAddress)init;
- (AddressBookAddress)initWithCNContactIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier;
- (AddressBookAddress)initWithContact:(id)contact addressValue:(id)value;
- (AddressBookAddress)initWithRecordID:(int)d addressID:(int)iD;
- (BOOL)hasStreetAddress;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHomeWorkSchoolAddress;
- (BOOL)isMeCard;
- (MKMapItem)generatedMapItem;
- (MKMapItem)geocodedMapItem;
- (NSDictionary)addressDictionary;
- (NSString)compositeName;
- (NSString)localizedLabel;
- (NSString)phoneticName;
- (NSString)shortAddress;
- (NSString)singleLineAddress;
- (NSString)spokenNameForNavigation;
- (NSString)waypointCompositeName;
- (id)_addressResolutionQueue;
- (id)_carMeCardTitle;
- (id)compositeNameMatchesForSearchString:(id)string;
- (id)entryWithTicket:(id)ticket;
- (id)initForTest;
- (id)thumbnailIconWithScale:(double)scale size:(unint64_t)size;
- (int)addressType;
- (void)_cancelDeferredAddressResolutionTimerIfNeeded;
- (void)_handleResolvedAddress:(id)address geocodedMapItem:(id)item;
- (void)_resolveContactIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier completion:(id)completion;
- (void)_setSuppressStoreUpdateNotifications:(BOOL)notifications;
- (void)_updateMapItemClientAttributes;
- (void)dealloc;
- (void)forwardGeocodeAddress:(id)address;
- (void)storeUpdated:(id)updated;
- (void)updateModel:(id)model;
@end

@implementation AddressBookAddress

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"didReceiveMemoryWarning" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }
}

- (void)forwardGeocodeAddress:(id)address
{
  addressCopy = address;
  objc_initWeak(&location, self);
  if (!self->_geocodedMapItem)
  {
    _completionQueue = [objc_opt_class() _completionQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100771E44;
    v15[3] = &unk_10165DEA0;
    v12 = &v17;
    objc_copyWeak(&v17, &location);
    v15[4] = self;
    v16 = addressCopy;
    dispatch_async(_completionQueue, v15);

    v13 = &v16;
    goto LABEL_12;
  }

  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ([v9 isEqualToString:v8] & 1) == 0)
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    *buf = 138543362;
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will not forward geocode address, already have geocoded map item, returning that", buf, 0xCu);
  }

  if (addressCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100771DAC;
    block[3] = &unk_101660648;
    v12 = &v20;
    objc_copyWeak(&v20, &location);
    v13 = &v19;
    v19 = addressCopy;
    dispatch_async(&_dispatch_main_q, block);
LABEL_12:

    objc_destroyWeak(v12);
  }

  objc_destroyWeak(&location);
}

- (id)thumbnailIconWithScale:(double)scale size:(unint64_t)size
{
  addressType = [(AddressBookAddress *)self addressType];
  switch(addressType)
  {
    case 3u:
      v8 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      break;
    case 2u:
      v8 = +[GEOFeatureStyleAttributes workStyleAttributes];
      break;
    case 1u:
      v8 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      break;
    default:
      goto LABEL_16;
  }

  geocodedMapItem = v8;
  if (!v8)
  {
LABEL_16:
    v17 = sub_100771D58();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
LABEL_26:

      geocodedMapItem = [(AddressBookAddress *)self geocodedMapItem];
      v25 = [MKMapItem _maps_markerImageForMapItem:geocodedMapItem scale:size size:0 useMarkerFallback:scale];
      goto LABEL_30;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_25;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v20, selfCopy, v22];

        goto LABEL_23;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v20, selfCopy];
LABEL_23:

LABEL_25:
    scaleCopy = scale;
    *buf = 138543874;
    v30 = selfCopy;
    v31 = 2048;
    v32 = scaleCopy;
    v33 = 2048;
    sizeCopy2 = size;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] generating marker thumbnail for scale %#.1lf, size %lu", buf, 0x20u);

    goto LABEL_26;
  }

  v10 = sub_100771D58();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_28;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(AddressBookAddress *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy2, v15];

        goto LABEL_15;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy2];
LABEL_15:

LABEL_28:
    scaleCopy2 = scale;
    *buf = 138543874;
    v30 = selfCopy2;
    v31 = 2048;
    v32 = scaleCopy2;
    v33 = 2048;
    sizeCopy2 = size;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] generating thumbnail for scale %#.1lf, size %lu", buf, 0x20u);
  }

  v25 = [MKIconManager imageForStyle:geocodedMapItem size:size forScale:0 format:scale];
LABEL_30:
  v27 = v25;

  return v27;
}

- (void)_updateMapItemClientAttributes
{
  _geoMapItem = [(MKMapItem *)self->_geocodedMapItem _geoMapItem];
  if (!_geoMapItem)
  {
    goto LABEL_16;
  }

  v4 = sub_100771D58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v25 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] updating map item client attributes", buf, 0xCu);
  }

  _clientAttributes = [_geoMapItem _clientAttributes];
  v12 = _clientAttributes;
  if (_clientAttributes)
  {
    v13 = _clientAttributes;
  }

  else
  {
    v13 = objc_alloc_init(GEOMapItemClientAttributes);
  }

  v14 = v13;

  addressType = [(AddressBookAddress *)self addressType];
  contact = [(AddressBookAddress *)self contact];
  if (contact)
  {
    v17 = [CNContactFormatter stringFromContact:contact style:0];
  }

  else
  {
    v17 = 0;
  }

  isMeCard = [(AddressBookAddress *)self isMeCard];
  v19 = objc_alloc_init(GEOMapItemAddressBookAttributes);
  [v19 setAddressType:addressType];
  [v19 setIsMe:isMeCard];
  [v19 setName:v17];
  identifier = [(CNLabeledValue *)self->_address identifier];
  [v19 setAddressIdentifier:identifier];

  [v14 setAddressBookAttributes:v19];
  v21 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItem clientAttributes:v14];
  v22 = [[MKMapItem alloc] initWithGeoMapItem:v21 isPlaceHolderPlace:0];
  geocodedMapItem = self->_geocodedMapItem;
  self->_geocodedMapItem = v22;

LABEL_16:
}

- (id)compositeNameMatchesForSearchString:(id)string
{
  stringCopy = string;
  compositeName = [(AddressBookAddress *)self compositeName];
  v6 = [compositeName _maps_prefixMatchesForSearchString:stringCopy];

  return v6;
}

- (BOOL)hasStreetAddress
{
  value = [(CNLabeledValue *)self->_address value];
  street = [value street];
  v4 = [street length] != 0;

  return v4;
}

- (NSDictionary)addressDictionary
{
  value = [(CNLabeledValue *)self->_address value];
  dictionaryRepresentation = [value dictionaryRepresentation];
  v4 = [dictionaryRepresentation copy];

  return v4;
}

- (BOOL)isHomeWorkSchoolAddress
{
  isMeCard = [(AddressBookAddress *)self isMeCard];
  if (isMeCard)
  {
    isMeCard = [(AddressBookAddress *)self addressType];
    if (isMeCard != 1)
    {
      LOBYTE(isMeCard) = [(AddressBookAddress *)self addressType]== 2 || [(AddressBookAddress *)self addressType]== 3;
    }
  }

  return isMeCard;
}

- (BOOL)isMeCard
{
  v3 = +[AddressBookManager sharedManager];
  meCard = [v3 meCard];
  identifier = [meCard identifier];
  LOBYTE(self) = [identifier isEqualToString:self->_contactIdentifier];

  return self;
}

- (int)addressType
{
  contact = [(AddressBookAddress *)self contact];
  contactType = [contact contactType];

  if (contactType)
  {
    return 0;
  }

  label = [(CNLabeledValue *)self->_address label];
  v7 = [label isEqualToString:CNLabelHome];

  if (v7)
  {
    return 1;
  }

  label2 = [(CNLabeledValue *)self->_address label];
  v9 = [label2 isEqualToString:CNLabelWork];

  if (v9)
  {
    return 2;
  }

  label3 = [(CNLabeledValue *)self->_address label];
  v11 = [label3 isEqualToString:CNLabelSchool];

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return 3;
}

- (NSString)spokenNameForNavigation
{
  if (![(AddressBookAddress *)self isValid])
  {
    _maps_spokenNameForNavigation = 0;
    goto LABEL_14;
  }

  contact = [(AddressBookAddress *)self contact];
  _maps_spokenNameForNavigation = [contact _maps_spokenNameForNavigation];

  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_12;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_9:

LABEL_12:
    *buf = 138543619;
    v14 = selfCopy;
    v15 = 2113;
    v16 = _maps_spokenNameForNavigation;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] generated spoken name for navigation: %{private}@", buf, 0x16u);
  }

LABEL_14:

  return _maps_spokenNameForNavigation;
}

- (NSString)phoneticName
{
  if (![(AddressBookAddress *)self isValid])
  {
    v4 = 0;
    goto LABEL_14;
  }

  contact = [(AddressBookAddress *)self contact];
  v4 = [CNContactFormatter stringFromContact:contact style:1];

  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_12;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_9:

LABEL_12:
    *buf = 138543619;
    v14 = selfCopy;
    v15 = 2113;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] generated phonetic name %{private}@", buf, 0x16u);
  }

LABEL_14:

  return v4;
}

- (NSString)waypointCompositeName
{
  if (![(AddressBookAddress *)self isValid])
  {
    v10 = 0;
    goto LABEL_19;
  }

  compositeName = [(AddressBookAddress *)self compositeName];
  localizedLabel = [(AddressBookAddress *)self localizedLabel];
  localizedCapitalizedString = [localizedLabel localizedCapitalizedString];

  if (compositeName && localizedCapitalizedString)
  {
    addressType = [(AddressBookAddress *)self addressType];
    switch(addressType)
    {
      case 3u:
        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"Contact_Address_Book_School_Location_Waypoint_Name";
        break;
      case 2u:
        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"Contact_Address_Book_Work_Location_Waypoint_Name";
        break;
      case 1u:
        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"Contact_Address_Book_Home_Location_Waypoint_Name";
        break;
      default:
        iOSLegacyIdentifier = [(CNLabeledValue *)self->_address iOSLegacyIdentifier];
        v13 = CNContactIOSLegacyIdentifierInvalid;
        v14 = +[NSBundle mainBundle];
        v8 = v14;
        if (iOSLegacyIdentifier == v13)
        {
          v15 = @"Contact_Address_Book_Find_My_Cached_Location_Waypoint_Name";
        }

        else
        {
          v15 = @"Contact_Address_Book_Other_Location_Waypoint_Name";
        }

        v11 = [v14 localizedStringForKey:v15 value:@"localized string not found" table:0];
        v17 = localizedCapitalizedString;
        goto LABEL_17;
    }

    v11 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];
LABEL_17:
    v10 = [NSString stringWithFormat:v11, compositeName, v17];

    goto LABEL_18;
  }

  v10 = compositeName;
LABEL_18:

LABEL_19:

  return v10;
}

- (NSString)compositeName
{
  if ([(AddressBookAddress *)self isValid])
  {
    contact = [(AddressBookAddress *)self contact];
    v4 = [CNContactFormatter stringFromContact:contact style:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)singleLineAddress
{
  generatedMapItem = [(AddressBookAddress *)self generatedMapItem];
  _addressFormattedAsSinglelineAddress = [generatedMapItem _addressFormattedAsSinglelineAddress];

  return _addressFormattedAsSinglelineAddress;
}

- (NSString)shortAddress
{
  generatedMapItem = [(AddressBookAddress *)self generatedMapItem];
  _addressFormattedAsShortenedAddress = [generatedMapItem _addressFormattedAsShortenedAddress];

  return _addressFormattedAsShortenedAddress;
}

- (MKMapItem)generatedMapItem
{
  geocodedMapItem = self->_geocodedMapItem;
  if (!geocodedMapItem)
  {
    geocodedMapItem = self->_generatedMapItemCache;
    if (!geocodedMapItem)
    {
      v4 = sub_100771D58();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        value = [(CNLabeledValue *)self->_address value];
        dictionaryRepresentation = [value dictionaryRepresentation];

        LODWORD(v19) = 0;
        v13 = [[GEOMapItemAssistant alloc] initWithWithLocation:0 addressDictionary:dictionaryRepresentation name:0 businessURL:0 phoneNumber:0 sessionID:0 muid:0.0 attributionID:0 sampleSizeForUserRatingScore:0 normalizedUserRatingScore:v19];
        contact = [(AddressBookAddress *)self contact];
        v15 = [MKMapItem _itemWithContact:contact geoMapItem:v13];
        generatedMapItemCache = self->_generatedMapItemCache;
        self->_generatedMapItemCache = v15;

        geocodedMapItem = self->_generatedMapItemCache;
        goto LABEL_11;
      }

      selfCopy = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      if (objc_opt_respondsToSelector())
      {
        v8 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
        v9 = v8;
        if (v8 && ![v8 isEqualToString:v7])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

          goto LABEL_9;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

      *buf = 138543362;
      v21 = selfCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] generating map item cache", buf, 0xCu);

      goto LABEL_10;
    }
  }

LABEL_11:
  v17 = geocodedMapItem;

  return v17;
}

- (NSString)localizedLabel
{
  label = [(CNLabeledValue *)self->_address label];
  v3 = [CNLabeledValue localizedStringForLabel:label];

  return v3;
}

- (void)_handleResolvedAddress:(id)address geocodedMapItem:(id)item
{
  addressCopy = address;
  itemCopy = item;
  v8 = sub_100771D58();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543875;
    v25 = selfCopy;
    v26 = 2113;
    v27 = addressCopy;
    v28 = 2113;
    v29 = itemCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] storing resolved address and map item (address: %{private}@, mapItem: %{private}@", buf, 0x20u);
  }

  address = self->_address;
  self->_address = addressCopy;
  v16 = addressCopy;

  identifier = [(CNLabeledValue *)v16 identifier];
  addressIdentifier = self->_addressIdentifier;
  self->_addressIdentifier = identifier;

  geocodedMapItem = self->_geocodedMapItem;
  self->_geocodedMapItem = itemCopy;
  v20 = itemCopy;

  generatedMapItemCache = self->_generatedMapItemCache;
  self->_generatedMapItemCache = 0;

  identifier2 = [(CNContact *)self->_contact identifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = identifier2;
}

- (void)_resolveContactIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  addressIdentifierCopy = addressIdentifier;
  completionCopy = completion;
  v11 = sub_100771D58();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v41 = selfCopy;
    v42 = 2114;
    v43 = identifierCopy;
    v44 = 2114;
    v45 = addressIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] will resolve contact ID %{public}@, address ID %{public}@", buf, 0x20u);
  }

  v18 = +[AddressBookManager sharedManager];
  v19 = [v18 contactForCNContactIdentifier:identifierCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  postalAddresses = [v19 postalAddresses];
  v21 = [postalAddresses countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v31 = v19;
    v32 = v18;
    v33 = completionCopy;
    v34 = identifierCopy;
    v23 = 0;
    v24 = *v36;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(postalAddresses);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        if (![addressIdentifierCopy length])
        {
          v27 = v26;

          if ([(PersistentAddressBookAddress *)self addressID]== -1)
          {
            v30 = 0;
            goto LABEL_26;
          }

          v23 = v27;
        }

        identifier = [v26 identifier];
        v29 = [identifier isEqualToString:addressIdentifierCopy];

        if (v29)
        {
          v27 = v26;

          v18 = v32;
          v30 = [v32 mapItemFormShortcutForCNIdentifier:addressIdentifierCopy];
          completionCopy = v33;
          identifierCopy = v34;
          goto LABEL_27;
        }
      }

      v22 = [postalAddresses countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v30 = 0;
    v27 = v23;
LABEL_26:
    completionCopy = v33;
    identifierCopy = v34;
    v18 = v32;
LABEL_27:
    v19 = v31;
  }

  else
  {
    v30 = 0;
    v27 = 0;
  }

  completionCopy[2](completionCopy, v27, v30);
}

- (id)_addressResolutionQueue
{
  addressResolutionQueue = self->_addressResolutionQueue;
  if (!addressResolutionQueue)
  {
    v4 = sub_100771D58();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("com.apple.Maps.AddressBook.AddressResolution", v11);
      v13 = self->_addressResolutionQueue;
      self->_addressResolutionQueue = v12;

      addressResolutionQueue = self->_addressResolutionQueue;
      goto LABEL_10;
    }

    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v16 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] initialising address resolution queue", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:

  return addressResolutionQueue;
}

- (void)_cancelDeferredAddressResolutionTimerIfNeeded
{
  if (self->_deferredAddressResolutionTimer)
  {
    v3 = sub_10006515C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      [(GCDTimer *)self->_deferredAddressResolutionTimer invalidate];
      deferredAddressResolutionTimer = self->_deferredAddressResolutionTimer;
      self->_deferredAddressResolutionTimer = 0;

      return;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    fireDate = [(GCDTimer *)self->_deferredAddressResolutionTimer fireDate];
    [fireDate timeIntervalSinceNow];
    *buf = 138543618;
    v14 = selfCopy;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] cancelling previous deferred address resolution timer (had %#.1lfs to go)", buf, 0x16u);

    goto LABEL_9;
  }
}

- (void)storeUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    name = [updatedCopy name];
    *buf = 138543618;
    v47 = selfCopy;
    v48 = 2114;
    v49 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] store updated from %{public}@...", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  if (!+[NSThread isMainThread])
  {
    v31 = sub_100771D58();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
LABEL_30:

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007750A0;
      block[3] = &unk_101661340;
      objc_copyWeak(&v44, &location);
      v43 = updatedCopy;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v44);
      goto LABEL_31;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_29;
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    if (objc_opt_respondsToSelector())
    {
      v35 = [(AddressBookAddress *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v36 = v35;
      if (v35 && ([v35 isEqualToString:v34] & 1) == 0)
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v34, selfCopy2, v36];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v34, selfCopy2];
LABEL_27:

LABEL_29:
    *buf = 138543362;
    v47 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}@] ... dispatching to main queue to process notification", buf, 0xCu);

    goto LABEL_30;
  }

  [(AddressBookAddress *)self _cancelDeferredAddressResolutionTimerIfNeeded];
  v13 = self->_contactIdentifier;
  v14 = self->_addressIdentifier;
  v15 = sub_100771D58();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    selfCopy3 = self;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(AddressBookAddress *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ([v19 isEqualToString:v18] & 1) == 0)
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy3, v20];

        goto LABEL_18;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy3];
LABEL_18:

    v22 = selfCopy3;
    GEOConfigGetDouble();
    *buf = 138543618;
    v47 = v22;
    v48 = 2048;
    v49 = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] scheduling deferred address resolution in %#.1lfs", buf, 0x16u);
  }

  GEOConfigGetDouble();
  v25 = v24;
  _addressResolutionQueue = [(AddressBookAddress *)self _addressResolutionQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1007750F4;
  v38[3] = &unk_101628750;
  objc_copyWeak(&v41, &location);
  v27 = v13;
  v39 = v27;
  v28 = v14;
  v40 = v28;
  v29 = [GCDTimer scheduledTimerWithTimeInterval:_addressResolutionQueue queue:0 repeating:v38 block:v25];
  deferredAddressResolutionTimer = self->_deferredAddressResolutionTimer;
  self->_deferredAddressResolutionTimer = v29;

  objc_destroyWeak(&v41);
LABEL_31:
  objc_destroyWeak(&location);
}

- (void)_setSuppressStoreUpdateNotifications:(BOOL)notifications
{
  if (self->_suppressStoreUpdateNotifications != notifications)
  {
    notificationsCopy = notifications;
    self->_suppressStoreUpdateNotifications = notifications;
    v5 = sub_100771D58();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (notificationsCopy)
    {
      if (!v6)
      {
LABEL_10:

        v13 = +[NSNotificationCenter defaultCenter];
        [v13 removeObserver:self name:CNContactStoreDidChangeNotification object:0];

        return;
      }

      selfCopy = self;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      if (objc_opt_respondsToSelector())
      {
        v10 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
        v11 = v10;
        if (v10 && ![v10 isEqualToString:v9])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

          goto LABEL_9;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_9:

      *buf = 138543362;
      v22 = selfCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] suppressing store update notifications", buf, 0xCu);

      goto LABEL_10;
    }

    if (!v6)
    {
      goto LABEL_18;
    }

    selfCopy2 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(AddressBookAddress *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy2, v18];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy2];
LABEL_17:

    *buf = 138543362;
    v22 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] resuming store update notifications, will update immediately", buf, 0xCu);

LABEL_18:
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:self selector:"deferReactingToStoreUpdates" name:CNContactStoreDidChangeNotification object:0];

    [(AddressBookAddress *)self storeUpdated:0];
  }
}

- (MKMapItem)geocodedMapItem
{
  geocodedMapItem = self->_geocodedMapItem;
  if (!geocodedMapItem)
  {
    v4 = +[AddressBookManager sharedManager];
    v5 = [v4 mapItemFormShortcutForCNIdentifier:self->_contactIdentifier];
    v6 = self->_geocodedMapItem;
    self->_geocodedMapItem = v5;

    v7 = sub_100771D58();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      geocodedMapItem = self->_geocodedMapItem;
      goto LABEL_10;
    }

    selfCopy = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

    contactIdentifier = self->_contactIdentifier;
    v15 = self->_geocodedMapItem;
    *buf = 138543875;
    v18 = selfCopy;
    v19 = 2114;
    v20 = contactIdentifier;
    v21 = 2113;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] resolved map item shortcut for identifier %{public}@: %{private}@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:

  return geocodedMapItem;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AddressBookAddress;
  [(AddressBookAddress *)&v4 dealloc];
}

- (AddressBookAddress)initWithCNContactIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier
{
  identifierCopy = identifier;
  addressIdentifierCopy = addressIdentifier;
  v7 = [(AddressBookAddress *)self init];
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = sub_100771D58();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(AddressBookAddress *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_8;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

    *buf = 138543874;
    v42 = v14;
    v43 = 2114;
    v44 = identifierCopy;
    v45 = 2114;
    v46 = addressIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] initialising with contact ID %{public}@, address ID %{public}@", buf, 0x20u);
  }

  v15 = +[NSDate date];
  [v15 timeIntervalSinceReferenceDate];
  v7->_timestamp = v16;

  v17 = +[AddressBookManager sharedManager];
  v18 = [v17 contactForCNContactIdentifier:identifierCopy];
  contact = v7->_contact;
  v7->_contact = v18;

  v20 = v7->_contact;
  if (v20)
  {
    v34 = identifierCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    postalAddresses = [(CNContact *)v20 postalAddresses];
    v22 = [postalAddresses countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(postalAddresses);
          }

          v26 = *(*(&v36 + 1) + 8 * i);
          if (!v7->_address)
          {
            objc_storeStrong(&v7->_address, *(*(&v36 + 1) + 8 * i));
          }

          identifier = [v26 identifier];
          v28 = [identifier isEqualToString:addressIdentifierCopy];

          if (v28)
          {
            objc_storeStrong(&v7->_address, v26);

            goto LABEL_22;
          }
        }

        v23 = [postalAddresses countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
    identifier2 = [(CNLabeledValue *)v7->_address identifier];
    addressIdentifier = v7->_addressIdentifier;
    v7->_addressIdentifier = identifier2;

    identifier3 = [(CNContact *)v7->_contact identifier];
    contactIdentifier = v7->_contactIdentifier;
    v7->_contactIdentifier = identifier3;
    identifierCopy = v34;
  }

  else
  {
    contactIdentifier = sub_100771D58();
    if (os_log_type_enabled(contactIdentifier, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, contactIdentifier, OS_LOG_TYPE_INFO, "There is no contact. It could be HWS shortcuts.", buf, 2u);
    }
  }

LABEL_26:
  return v7;
}

- (AddressBookAddress)initWithRecordID:(int)d addressID:(int)iD
{
  v5 = *&d;
  v6 = [(AddressBookAddress *)self init];
  if (!v6)
  {
    return v6;
  }

  v7 = sub_100771D58();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(AddressBookAddress *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

    *buf = 138543874;
    v36 = v13;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] initialising with record ID %ld, address ID %ld", buf, 0x20u);
  }

  v14 = +[NSDate date];
  [v14 timeIntervalSinceReferenceDate];
  v6->_timestamp = v15;

  v16 = +[AddressBookManager sharedManager];
  v17 = [v16 contactForRecordId:v5];
  contact = v6->_contact;
  v6->_contact = v17;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  postalAddresses = [(CNContact *)v6->_contact postalAddresses];
  v20 = [postalAddresses countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    while (2)
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(postalAddresses);
        }

        v24 = *(*(&v30 + 1) + 8 * v23);
        if (iD == -1)
        {
          objc_storeStrong(&v6->_address, *(*(&v30 + 1) + 8 * v23));

          goto LABEL_23;
        }

        if (!v6->_address)
        {
          objc_storeStrong(&v6->_address, *(*(&v30 + 1) + 8 * v23));
        }

        if ([v24 iOSLegacyIdentifier] == iD)
        {
          objc_storeStrong(&v6->_address, v24);
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [postalAddresses countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
  identifier = [(CNLabeledValue *)v6->_address identifier];
  addressIdentifier = v6->_addressIdentifier;
  v6->_addressIdentifier = identifier;

  identifier2 = [(CNContact *)v6->_contact identifier];
  contactIdentifier = v6->_contactIdentifier;
  v6->_contactIdentifier = identifier2;

  return v6;
}

- (AddressBookAddress)init
{
  v6.receiver = self;
  v6.super_class = AddressBookAddress;
  v2 = [(AddressBookAddress *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"deferReactingToStoreUpdates" name:CNContactStoreDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"deferReactingToStoreUpdates" name:@"CorrectedMapItemsUpdated" object:0];
  }

  return v2;
}

- (id)initForTest
{
  v3 = sub_100771D58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AddressBookAddress *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] initialising for test", buf, 0xCu);
  }

  return [(AddressBookAddress *)self init];
}

- (AddressBookAddress)initWithContact:(id)contact addressValue:(id)value
{
  contactCopy = contact;
  valueCopy = value;
  v8 = [(AddressBookAddress *)self init];
  if (v8)
  {
    v9 = sub_100771D58();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v16 = [contactCopy copy];
      contact = v8->_contact;
      v8->_contact = v16;

      v18 = [valueCopy copy];
      address = v8->_address;
      v8->_address = v18;

      identifier = [(CNContact *)v8->_contact identifier];
      contactIdentifier = v8->_contactIdentifier;
      v8->_contactIdentifier = identifier;

      identifier2 = [(CNLabeledValue *)v8->_address identifier];
      addressIdentifier = v8->_addressIdentifier;
      v8->_addressIdentifier = identifier2;

      v24 = +[NSDate date];
      [v24 timeIntervalSinceReferenceDate];
      v8->_timestamp = v25;

      objc_initWeak(buf, v8);
      v26 = [MapsSuggestionsCanKicker alloc];
      GEOConfigGetDouble();
      v28 = v27;
      GEOConfigGetDouble();
      v30 = v29;
      v31 = &_dispatch_main_q;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100776658;
      v35[3] = &unk_101661B98;
      objc_copyWeak(&v36, buf);
      v32 = [v26 initWithName:@"ContactsUpdatedCanKicker" time:&_dispatch_main_q leeway:v35 queue:v28 block:v30];
      canKicker = v8->_canKicker;
      v8->_canKicker = v32;

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
      goto LABEL_10;
    }

    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(AddressBookAddress *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_8;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_8:

    *buf = 138543875;
    v38 = v15;
    v39 = 2113;
    v40 = contactCopy;
    v41 = 2113;
    v42 = valueCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] initialising with contact %{private}@ / %{private}@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contact = [(AddressBookAddress *)self contact];
      contact2 = [(AddressBookAddress *)v5 contact];
      if ([contact isEqual:contact2])
      {
        v8 = [(CNLabeledValue *)self->_address isEqual:v5->_address];
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
  }

  return v8;
}

+ (void)didReceiveMemoryWarning
{
  _geocodedMapItemsByAddress = [self _geocodedMapItemsByAddress];
  [_geocodedMapItemsByAddress removeAllObjects];
}

+ (id)_completionQueue
{
  if (qword_10195D1D0 != -1)
  {
    dispatch_once(&qword_10195D1D0, &stru_1016287B0);
  }

  v3 = qword_10195D1C8;

  return v3;
}

+ (id)_completionsByAddress
{
  if (qword_10195D1C0 != -1)
  {
    dispatch_once(&qword_10195D1C0, &stru_101628790);
  }

  v3 = qword_10195D1B8;

  return v3;
}

+ (id)_geocodedMapItemsByAddress
{
  if (qword_10195D1B0 != -1)
  {
    dispatch_once(&qword_10195D1B0, &stru_101628770);
  }

  v3 = qword_10195D1A8;

  return v3;
}

+ (id)singleAddressForContact:(id)contact
{
  contactCopy = contact;
  v4 = [AddressBookAddress alloc];
  postalAddresses = [contactCopy postalAddresses];
  firstObject = [postalAddresses firstObject];
  v7 = [(AddressBookAddress *)v4 initWithContact:contactCopy addressValue:firstObject];

  return v7;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  geocodedMapItem = [(AddressBookAddress *)self geocodedMapItem];
  [modelCopy setMapItem:geocodedMapItem];

  if ([(AddressBookAddress *)self isMeCard])
  {
    _carMeCardTitle = [(AddressBookAddress *)self _carMeCardTitle];
    v7 = @"me";
  }

  else
  {
    compositeName = [(AddressBookAddress *)self compositeName];
    v9 = [compositeName length];

    if (v9)
    {
      _carMeCardTitle = [(AddressBookAddress *)self compositeName];
      v7 = @"composite";
    }

    else
    {
      _carMeCardTitle = [(AddressBookAddress *)self shortAddress];
      v7 = @"address";
    }
  }

  [modelCopy setFirstLine:_carMeCardTitle];

  singleLineAddress = [(AddressBookAddress *)self singleLineAddress];
  [modelCopy setSecondLine:singleLineAddress];

  v11 = [NSString stringWithFormat:@"[Contacts %@]", v7];
  [modelCopy setDebugSubtitle:v11];

  mapItem = [modelCopy mapItem];

  if (!mapItem)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100801EA0;
    v13[3] = &unk_101630438;
    v14 = modelCopy;
    [(AddressBookAddress *)self forwardGeocodeAddress:v13];
  }
}

- (id)_carMeCardTitle
{
  addressValue = [(AddressBookAddress *)self addressValue];
  label = [addressValue label];

  if ([label isEqualToString:CNLabelHome])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card Home";
LABEL_9:
    v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

    goto LABEL_10;
  }

  if ([label isEqualToString:CNLabelWork])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card Work";
    goto LABEL_9;
  }

  if ([label isEqualToString:CNLabelSchool])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card School";
    goto LABEL_9;
  }

  if ([label isEqualToString:CNLabelOther])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card Other";
    goto LABEL_9;
  }

  v7 = label;
LABEL_10:

  return v7;
}

- (id)entryWithTicket:(id)ticket
{
  if ([(AddressBookAddress *)self isValid])
  {
    v4 = [[GEORPSuggestionEntry alloc] initWithType:2];
    compositeName = [(AddressBookAddress *)self compositeName];
    [v4 safeAddDisplayLine:compositeName];

    singleLineAddress = [(AddressBookAddress *)self singleLineAddress];
    [v4 safeAddDisplayLine:singleLineAddress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
@interface AddressBookAddress
+ (id)_completionQueue;
+ (id)_completionsByAddress;
+ (id)_geocodedMapItemsByAddress;
+ (id)singleAddressForContact:(id)a3;
+ (void)didReceiveMemoryWarning;
+ (void)initialize;
- (AddressBookAddress)init;
- (AddressBookAddress)initWithCNContactIdentifier:(id)a3 addressIdentifier:(id)a4;
- (AddressBookAddress)initWithContact:(id)a3 addressValue:(id)a4;
- (AddressBookAddress)initWithRecordID:(int)a3 addressID:(int)a4;
- (BOOL)hasStreetAddress;
- (BOOL)isEqual:(id)a3;
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
- (id)compositeNameMatchesForSearchString:(id)a3;
- (id)entryWithTicket:(id)a3;
- (id)initForTest;
- (id)thumbnailIconWithScale:(double)a3 size:(unint64_t)a4;
- (int)addressType;
- (void)_cancelDeferredAddressResolutionTimerIfNeeded;
- (void)_handleResolvedAddress:(id)a3 geocodedMapItem:(id)a4;
- (void)_resolveContactIdentifier:(id)a3 addressIdentifier:(id)a4 completion:(id)a5;
- (void)_setSuppressStoreUpdateNotifications:(BOOL)a3;
- (void)_updateMapItemClientAttributes;
- (void)dealloc;
- (void)forwardGeocodeAddress:(id)a3;
- (void)storeUpdated:(id)a3;
- (void)updateModel:(id)a3;
@end

@implementation AddressBookAddress

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:a1 selector:"didReceiveMemoryWarning" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }
}

- (void)forwardGeocodeAddress:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (!self->_geocodedMapItem)
  {
    v14 = [objc_opt_class() _completionQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100771E44;
    v15[3] = &unk_10165DEA0;
    v12 = &v17;
    objc_copyWeak(&v17, &location);
    v15[4] = self;
    v16 = v4;
    dispatch_async(v14, v15);

    v13 = &v16;
    goto LABEL_12;
  }

  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ([v9 isEqualToString:v8] & 1) == 0)
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will not forward geocode address, already have geocoded map item, returning that", buf, 0xCu);
  }

  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100771DAC;
    block[3] = &unk_101660648;
    v12 = &v20;
    objc_copyWeak(&v20, &location);
    v13 = &v19;
    v19 = v4;
    dispatch_async(&_dispatch_main_q, block);
LABEL_12:

    objc_destroyWeak(v12);
  }

  objc_destroyWeak(&location);
}

- (id)thumbnailIconWithScale:(double)a3 size:(unint64_t)a4
{
  v7 = [(AddressBookAddress *)self addressType];
  switch(v7)
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

  v9 = v8;
  if (!v8)
  {
LABEL_16:
    v17 = sub_100771D58();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
LABEL_26:

      v9 = [(AddressBookAddress *)self geocodedMapItem];
      v25 = [MKMapItem _maps_markerImageForMapItem:v9 scale:a4 size:0 useMarkerFallback:a3];
      goto LABEL_30;
    }

    v18 = self;
    if (!v18)
    {
      v23 = @"<nil>";
      goto LABEL_25;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [(AddressBookAddress *)v18 performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

        goto LABEL_23;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_23:

LABEL_25:
    v24 = a3;
    *buf = 138543874;
    v30 = v23;
    v31 = 2048;
    v32 = v24;
    v33 = 2048;
    v34 = a4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] generating marker thumbnail for scale %#.1lf, size %lu", buf, 0x20u);

    goto LABEL_26;
  }

  v10 = sub_100771D58();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_28;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(AddressBookAddress *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_15;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_15:

LABEL_28:
    v26 = a3;
    *buf = 138543874;
    v30 = v16;
    v31 = 2048;
    v32 = v26;
    v33 = 2048;
    v34 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] generating thumbnail for scale %#.1lf, size %lu", buf, 0x20u);
  }

  v25 = [MKIconManager imageForStyle:v9 size:a4 forScale:0 format:a3];
LABEL_30:
  v27 = v25;

  return v27;
}

- (void)_updateMapItemClientAttributes
{
  v3 = [(MKMapItem *)self->_geocodedMapItem _geoMapItem];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = sub_100771D58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookAddress *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] updating map item client attributes", buf, 0xCu);
  }

  v11 = [v3 _clientAttributes];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(GEOMapItemClientAttributes);
  }

  v14 = v13;

  v15 = [(AddressBookAddress *)self addressType];
  v16 = [(AddressBookAddress *)self contact];
  if (v16)
  {
    v17 = [CNContactFormatter stringFromContact:v16 style:0];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(AddressBookAddress *)self isMeCard];
  v19 = objc_alloc_init(GEOMapItemAddressBookAttributes);
  [v19 setAddressType:v15];
  [v19 setIsMe:v18];
  [v19 setName:v17];
  v20 = [(CNLabeledValue *)self->_address identifier];
  [v19 setAddressIdentifier:v20];

  [v14 setAddressBookAttributes:v19];
  v21 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v3 clientAttributes:v14];
  v22 = [[MKMapItem alloc] initWithGeoMapItem:v21 isPlaceHolderPlace:0];
  geocodedMapItem = self->_geocodedMapItem;
  self->_geocodedMapItem = v22;

LABEL_16:
}

- (id)compositeNameMatchesForSearchString:(id)a3
{
  v4 = a3;
  v5 = [(AddressBookAddress *)self compositeName];
  v6 = [v5 _maps_prefixMatchesForSearchString:v4];

  return v6;
}

- (BOOL)hasStreetAddress
{
  v2 = [(CNLabeledValue *)self->_address value];
  v3 = [v2 street];
  v4 = [v3 length] != 0;

  return v4;
}

- (NSDictionary)addressDictionary
{
  v2 = [(CNLabeledValue *)self->_address value];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isHomeWorkSchoolAddress
{
  v3 = [(AddressBookAddress *)self isMeCard];
  if (v3)
  {
    v3 = [(AddressBookAddress *)self addressType];
    if (v3 != 1)
    {
      LOBYTE(v3) = [(AddressBookAddress *)self addressType]== 2 || [(AddressBookAddress *)self addressType]== 3;
    }
  }

  return v3;
}

- (BOOL)isMeCard
{
  v3 = +[AddressBookManager sharedManager];
  v4 = [v3 meCard];
  v5 = [v4 identifier];
  LOBYTE(self) = [v5 isEqualToString:self->_contactIdentifier];

  return self;
}

- (int)addressType
{
  v3 = [(AddressBookAddress *)self contact];
  v4 = [v3 contactType];

  if (v4)
  {
    return 0;
  }

  v6 = [(CNLabeledValue *)self->_address label];
  v7 = [v6 isEqualToString:CNLabelHome];

  if (v7)
  {
    return 1;
  }

  v8 = [(CNLabeledValue *)self->_address label];
  v9 = [v8 isEqualToString:CNLabelWork];

  if (v9)
  {
    return 2;
  }

  v10 = [(CNLabeledValue *)self->_address label];
  v11 = [v10 isEqualToString:CNLabelSchool];

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
    v4 = 0;
    goto LABEL_14;
  }

  v3 = [(AddressBookAddress *)self contact];
  v4 = [v3 _maps_spokenNameForNavigation];

  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_12;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_12:
    *buf = 138543619;
    v14 = v11;
    v15 = 2113;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] generated spoken name for navigation: %{private}@", buf, 0x16u);
  }

LABEL_14:

  return v4;
}

- (NSString)phoneticName
{
  if (![(AddressBookAddress *)self isValid])
  {
    v4 = 0;
    goto LABEL_14;
  }

  v3 = [(AddressBookAddress *)self contact];
  v4 = [CNContactFormatter stringFromContact:v3 style:1];

  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_12;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_12:
    *buf = 138543619;
    v14 = v11;
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

  v3 = [(AddressBookAddress *)self compositeName];
  v4 = [(AddressBookAddress *)self localizedLabel];
  v5 = [v4 localizedCapitalizedString];

  if (v3 && v5)
  {
    v6 = [(AddressBookAddress *)self addressType];
    switch(v6)
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
        v12 = [(CNLabeledValue *)self->_address iOSLegacyIdentifier];
        v13 = CNContactIOSLegacyIdentifierInvalid;
        v14 = +[NSBundle mainBundle];
        v8 = v14;
        if (v12 == v13)
        {
          v15 = @"Contact_Address_Book_Find_My_Cached_Location_Waypoint_Name";
        }

        else
        {
          v15 = @"Contact_Address_Book_Other_Location_Waypoint_Name";
        }

        v11 = [v14 localizedStringForKey:v15 value:@"localized string not found" table:0];
        v17 = v5;
        goto LABEL_17;
    }

    v11 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];
LABEL_17:
    v10 = [NSString stringWithFormat:v11, v3, v17];

    goto LABEL_18;
  }

  v10 = v3;
LABEL_18:

LABEL_19:

  return v10;
}

- (NSString)compositeName
{
  if ([(AddressBookAddress *)self isValid])
  {
    v3 = [(AddressBookAddress *)self contact];
    v4 = [CNContactFormatter stringFromContact:v3 style:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)singleLineAddress
{
  v2 = [(AddressBookAddress *)self generatedMapItem];
  v3 = [v2 _addressFormattedAsSinglelineAddress];

  return v3;
}

- (NSString)shortAddress
{
  v2 = [(AddressBookAddress *)self generatedMapItem];
  v3 = [v2 _addressFormattedAsShortenedAddress];

  return v3;
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

        v11 = [(CNLabeledValue *)self->_address value];
        v12 = [v11 dictionaryRepresentation];

        LODWORD(v19) = 0;
        v13 = [[GEOMapItemAssistant alloc] initWithWithLocation:0 addressDictionary:v12 name:0 businessURL:0 phoneNumber:0 sessionID:0 muid:0.0 attributionID:0 sampleSizeForUserRatingScore:0 normalizedUserRatingScore:v19];
        v14 = [(AddressBookAddress *)self contact];
        v15 = [MKMapItem _itemWithContact:v14 geoMapItem:v13];
        generatedMapItemCache = self->_generatedMapItemCache;
        self->_generatedMapItemCache = v15;

        geocodedMapItem = self->_generatedMapItemCache;
        goto LABEL_11;
      }

      v5 = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      if (objc_opt_respondsToSelector())
      {
        v8 = [(AddressBookAddress *)v5 performSelector:"accessibilityIdentifier"];
        v9 = v8;
        if (v8 && ![v8 isEqualToString:v7])
        {
          v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

          goto LABEL_9;
        }
      }

      v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

      *buf = 138543362;
      v21 = v10;
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
  v2 = [(CNLabeledValue *)self->_address label];
  v3 = [CNLabeledValue localizedStringForLabel:v2];

  return v3;
}

- (void)_handleResolvedAddress:(id)a3 geocodedMapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100771D58();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_10;
    }

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

LABEL_10:
    *buf = 138543875;
    v25 = v14;
    v26 = 2113;
    v27 = v6;
    v28 = 2113;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] storing resolved address and map item (address: %{private}@, mapItem: %{private}@", buf, 0x20u);
  }

  address = self->_address;
  self->_address = v6;
  v16 = v6;

  v17 = [(CNLabeledValue *)v16 identifier];
  addressIdentifier = self->_addressIdentifier;
  self->_addressIdentifier = v17;

  geocodedMapItem = self->_geocodedMapItem;
  self->_geocodedMapItem = v7;
  v20 = v7;

  generatedMapItemCache = self->_generatedMapItemCache;
  self->_generatedMapItemCache = 0;

  v22 = [(CNContact *)self->_contact identifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v22;
}

- (void)_resolveContactIdentifier:(id)a3 addressIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100771D58();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_10;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(AddressBookAddress *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_8;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v41 = v17;
    v42 = 2114;
    v43 = v8;
    v44 = 2114;
    v45 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] will resolve contact ID %{public}@, address ID %{public}@", buf, 0x20u);
  }

  v18 = +[AddressBookManager sharedManager];
  v19 = [v18 contactForCNContactIdentifier:v8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = [v19 postalAddresses];
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v31 = v19;
    v32 = v18;
    v33 = v10;
    v34 = v8;
    v23 = 0;
    v24 = *v36;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        if (![v9 length])
        {
          v27 = v26;

          if ([(PersistentAddressBookAddress *)self addressID]== -1)
          {
            v30 = 0;
            goto LABEL_26;
          }

          v23 = v27;
        }

        v28 = [v26 identifier];
        v29 = [v28 isEqualToString:v9];

        if (v29)
        {
          v27 = v26;

          v18 = v32;
          v30 = [v32 mapItemFormShortcutForCNIdentifier:v9];
          v10 = v33;
          v8 = v34;
          goto LABEL_27;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v30 = 0;
    v27 = v23;
LABEL_26:
    v10 = v33;
    v8 = v34;
    v18 = v32;
LABEL_27:
    v19 = v31;
  }

  else
  {
    v30 = 0;
    v27 = 0;
  }

  v10[2](v10, v27, v30);
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

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookAddress *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v16 = v10;
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

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AddressBookAddress *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    v10 = [(GCDTimer *)self->_deferredAddressResolutionTimer fireDate];
    [v10 timeIntervalSinceNow];
    *buf = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] cancelling previous deferred address resolution timer (had %#.1lfs to go)", buf, 0x16u);

    goto LABEL_9;
  }
}

- (void)storeUpdated:(id)a3
{
  v4 = a3;
  v5 = sub_100771D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookAddress *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = [v4 name];
    *buf = 138543618;
    v47 = v11;
    v48 = 2114;
    v49 = v12;
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
      v43 = v4;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v44);
      goto LABEL_31;
    }

    v32 = self;
    if (!v32)
    {
      v37 = @"<nil>";
      goto LABEL_29;
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    if (objc_opt_respondsToSelector())
    {
      v35 = [(AddressBookAddress *)v32 performSelector:"accessibilityIdentifier"];
      v36 = v35;
      if (v35 && ([v35 isEqualToString:v34] & 1) == 0)
      {
        v37 = [NSString stringWithFormat:@"%@<%p, %@>", v34, v32, v36];

        goto LABEL_27;
      }
    }

    v37 = [NSString stringWithFormat:@"%@<%p>", v34, v32];
LABEL_27:

LABEL_29:
    *buf = 138543362;
    v47 = v37;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}@] ... dispatching to main queue to process notification", buf, 0xCu);

    goto LABEL_30;
  }

  [(AddressBookAddress *)self _cancelDeferredAddressResolutionTimerIfNeeded];
  v13 = self->_contactIdentifier;
  v14 = self->_addressIdentifier;
  v15 = sub_100771D58();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = self;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(AddressBookAddress *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ([v19 isEqualToString:v18] & 1) == 0)
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_18;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_18:

    v22 = v21;
    GEOConfigGetDouble();
    *buf = 138543618;
    v47 = v22;
    v48 = 2048;
    v49 = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] scheduling deferred address resolution in %#.1lfs", buf, 0x16u);
  }

  GEOConfigGetDouble();
  v25 = v24;
  v26 = [(AddressBookAddress *)self _addressResolutionQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1007750F4;
  v38[3] = &unk_101628750;
  objc_copyWeak(&v41, &location);
  v27 = v13;
  v39 = v27;
  v28 = v14;
  v40 = v28;
  v29 = [GCDTimer scheduledTimerWithTimeInterval:v26 queue:0 repeating:v38 block:v25];
  deferredAddressResolutionTimer = self->_deferredAddressResolutionTimer;
  self->_deferredAddressResolutionTimer = v29;

  objc_destroyWeak(&v41);
LABEL_31:
  objc_destroyWeak(&location);
}

- (void)_setSuppressStoreUpdateNotifications:(BOOL)a3
{
  if (self->_suppressStoreUpdateNotifications != a3)
  {
    v3 = a3;
    self->_suppressStoreUpdateNotifications = a3;
    v5 = sub_100771D58();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (!v6)
      {
LABEL_10:

        v13 = +[NSNotificationCenter defaultCenter];
        [v13 removeObserver:self name:CNContactStoreDidChangeNotification object:0];

        return;
      }

      v7 = self;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      if (objc_opt_respondsToSelector())
      {
        v10 = [(AddressBookAddress *)v7 performSelector:"accessibilityIdentifier"];
        v11 = v10;
        if (v10 && ![v10 isEqualToString:v9])
        {
          v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

          goto LABEL_9;
        }
      }

      v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] suppressing store update notifications", buf, 0xCu);

      goto LABEL_10;
    }

    if (!v6)
    {
      goto LABEL_18;
    }

    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(AddressBookAddress *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_17;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

    *buf = 138543362;
    v22 = v19;
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

    v8 = self;
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

    contactIdentifier = self->_contactIdentifier;
    v15 = self->_geocodedMapItem;
    *buf = 138543875;
    v18 = v13;
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

- (AddressBookAddress)initWithCNContactIdentifier:(id)a3 addressIdentifier:(id)a4
{
  v6 = a3;
  v35 = a4;
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
    v44 = v6;
    v45 = 2114;
    v46 = v35;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] initialising with contact ID %{public}@, address ID %{public}@", buf, 0x20u);
  }

  v15 = +[NSDate date];
  [v15 timeIntervalSinceReferenceDate];
  v7->_timestamp = v16;

  v17 = +[AddressBookManager sharedManager];
  v18 = [v17 contactForCNContactIdentifier:v6];
  contact = v7->_contact;
  v7->_contact = v18;

  v20 = v7->_contact;
  if (v20)
  {
    v34 = v6;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = [(CNContact *)v20 postalAddresses];
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v36 + 1) + 8 * i);
          if (!v7->_address)
          {
            objc_storeStrong(&v7->_address, *(*(&v36 + 1) + 8 * i));
          }

          v27 = [v26 identifier];
          v28 = [v27 isEqualToString:v35];

          if (v28)
          {
            objc_storeStrong(&v7->_address, v26);

            goto LABEL_22;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
    v29 = [(CNLabeledValue *)v7->_address identifier];
    addressIdentifier = v7->_addressIdentifier;
    v7->_addressIdentifier = v29;

    v31 = [(CNContact *)v7->_contact identifier];
    contactIdentifier = v7->_contactIdentifier;
    v7->_contactIdentifier = v31;
    v6 = v34;
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

- (AddressBookAddress)initWithRecordID:(int)a3 addressID:(int)a4
{
  v5 = *&a3;
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
    v40 = a4;
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
  v19 = [(CNContact *)v6->_contact postalAddresses];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * v23);
        if (a4 == -1)
        {
          objc_storeStrong(&v6->_address, *(*(&v30 + 1) + 8 * v23));

          goto LABEL_23;
        }

        if (!v6->_address)
        {
          objc_storeStrong(&v6->_address, *(*(&v30 + 1) + 8 * v23));
        }

        if ([v24 iOSLegacyIdentifier] == a4)
        {
          objc_storeStrong(&v6->_address, v24);
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
  v25 = [(CNLabeledValue *)v6->_address identifier];
  addressIdentifier = v6->_addressIdentifier;
  v6->_addressIdentifier = v25;

  v27 = [(CNContact *)v6->_contact identifier];
  contactIdentifier = v6->_contactIdentifier;
  v6->_contactIdentifier = v27;

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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AddressBookAddress *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] initialising for test", buf, 0xCu);
  }

  return [(AddressBookAddress *)self init];
}

- (AddressBookAddress)initWithContact:(id)a3 addressValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AddressBookAddress *)self init];
  if (v8)
  {
    v9 = sub_100771D58();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v16 = [v6 copy];
      contact = v8->_contact;
      v8->_contact = v16;

      v18 = [v7 copy];
      address = v8->_address;
      v8->_address = v18;

      v20 = [(CNContact *)v8->_contact identifier];
      contactIdentifier = v8->_contactIdentifier;
      v8->_contactIdentifier = v20;

      v22 = [(CNLabeledValue *)v8->_address identifier];
      addressIdentifier = v8->_addressIdentifier;
      v8->_addressIdentifier = v22;

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
    v40 = v6;
    v41 = 2113;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] initialising with contact %{private}@ / %{private}@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AddressBookAddress *)self contact];
      v7 = [(AddressBookAddress *)v5 contact];
      if ([v6 isEqual:v7])
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
  v2 = [a1 _geocodedMapItemsByAddress];
  [v2 removeAllObjects];
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

+ (id)singleAddressForContact:(id)a3
{
  v3 = a3;
  v4 = [AddressBookAddress alloc];
  v5 = [v3 postalAddresses];
  v6 = [v5 firstObject];
  v7 = [(AddressBookAddress *)v4 initWithContact:v3 addressValue:v6];

  return v7;
}

- (void)updateModel:(id)a3
{
  v4 = a3;
  v5 = [(AddressBookAddress *)self geocodedMapItem];
  [v4 setMapItem:v5];

  if ([(AddressBookAddress *)self isMeCard])
  {
    v6 = [(AddressBookAddress *)self _carMeCardTitle];
    v7 = @"me";
  }

  else
  {
    v8 = [(AddressBookAddress *)self compositeName];
    v9 = [v8 length];

    if (v9)
    {
      v6 = [(AddressBookAddress *)self compositeName];
      v7 = @"composite";
    }

    else
    {
      v6 = [(AddressBookAddress *)self shortAddress];
      v7 = @"address";
    }
  }

  [v4 setFirstLine:v6];

  v10 = [(AddressBookAddress *)self singleLineAddress];
  [v4 setSecondLine:v10];

  v11 = [NSString stringWithFormat:@"[Contacts %@]", v7];
  [v4 setDebugSubtitle:v11];

  v12 = [v4 mapItem];

  if (!v12)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100801EA0;
    v13[3] = &unk_101630438;
    v14 = v4;
    [(AddressBookAddress *)self forwardGeocodeAddress:v13];
  }
}

- (id)_carMeCardTitle
{
  v2 = [(AddressBookAddress *)self addressValue];
  v3 = [v2 label];

  if ([v3 isEqualToString:CNLabelHome])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card Home";
LABEL_9:
    v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

    goto LABEL_10;
  }

  if ([v3 isEqualToString:CNLabelWork])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card Work";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:CNLabelSchool])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card School";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:CNLabelOther])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"CarPlay Me Card Other";
    goto LABEL_9;
  }

  v7 = v3;
LABEL_10:

  return v7;
}

- (id)entryWithTicket:(id)a3
{
  if ([(AddressBookAddress *)self isValid])
  {
    v4 = [[GEORPSuggestionEntry alloc] initWithType:2];
    v5 = [(AddressBookAddress *)self compositeName];
    [v4 safeAddDisplayLine:v5];

    v6 = [(AddressBookAddress *)self singleLineAddress];
    [v4 safeAddDisplayLine:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
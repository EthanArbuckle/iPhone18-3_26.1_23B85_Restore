@interface AddressBookAddressWaypointRequest
+ (id)_clientAttributesForAddress:(id)a3;
- (AddressBookAddressWaypointRequest)initWithAddress:(id)a3 mapItem:(id)a4;
- (BOOL)isEquivalentToOtherRequest:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (id)waypointIconWithScale:(double)a3;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)recordRAPInformation:(id)a3;
@end

@implementation AddressBookAddressWaypointRequest

- (void)recordRAPInformation:(id)a3
{
  addressString = self->_addressString;
  v4 = a3;
  [v4 setSingleLineAddressString:addressString];
  [v4 setOrigin:1];
}

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AddressBookAddressWaypointRequest *)self cachedLoadResult];

  if (v14)
  {
    v15 = [(AddressBookAddressWaypointRequest *)self cachedLoadResult];
    v12[2](v12, v15);

    v16 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100C7074C;
    v25[3] = &unk_10164F520;
    objc_copyWeak(&v27, &location);
    v26 = v12;
    v17 = objc_retainBlock(v25);
    v18 = [(AddressBookAddressWaypointRequest *)self addressString];
    v19 = [(AddressBookAddressWaypointRequest *)self clientAttributes];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100C707BC;
    v22[3] = &unk_101650BB0;
    objc_copyWeak(&v24, &location);
    v20 = v17;
    v23 = v20;
    v16 = [GEOComposedWaypoint composedWaypointForAddressString:v18 traits:v10 clientAttributes:v19 completionHandler:v22 networkActivityHandler:v13];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (BOOL)isEquivalentToOtherRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(AddressBookAddressWaypointRequest *)self addressString];
    v7 = [v5 addressString];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)waypointName
{
  v3 = [(AddressBookAddressWaypointRequest *)self contact];
  if (v3)
  {
    v4 = v3;
    v5 = [(AddressBookAddressWaypointRequest *)self address];

    if (v5)
    {
      v6 = [(AddressBookAddressWaypointRequest *)self address];
      v7 = [v6 waypointCompositeName];
LABEL_6:
      v9 = v7;
      goto LABEL_8;
    }
  }

  v8 = [(MKMapItem *)self->_mapItem name];
  if (v8)
  {
    v7 = v8;
    v6 = v7;
    goto LABEL_6;
  }

  v9 = MKLocalizedStringForUnknownLocation();
  v6 = 0;
LABEL_8:

  return v9;
}

- (id)waypointIconWithScale:(double)a3
{
  v4 = [(AddressBookAddressWaypointRequest *)self address];
  v5 = [v4 thumbnailIconWithScale:2 size:a3];

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = kCLLocationCoordinate2DInvalid.latitude;
  longitude = kCLLocationCoordinate2DInvalid.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, @"addressString", self->_addressString);
  (*v4)(v6, @"clientAttributes", self->_clientAttributes);
  (*v4)(v6, @"contact", &self->_contact->super.isa);
  (*v4)(v6, @"mapItem", &self->_mapItem->super.isa);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C70D84;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(AddressBookAddressWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookAddressWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (NSString)description
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C70FD4;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(AddressBookAddressWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookAddressWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAddress:mapItem:", self->_address, self->_mapItem}];
  objc_storeStrong(v4 + 6, self->_cachedLoadResult);
  return v4;
}

- (AddressBookAddressWaypointRequest)initWithAddress:(id)a3 mapItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 isValid])
  {
    v26.receiver = self;
    v26.super_class = AddressBookAddressWaypointRequest;
    v9 = [(AddressBookAddressWaypointRequest *)&v26 init];
    if (v9)
    {
      v10 = [v7 singleLineAddress];
      v11 = [objc_opt_class() _clientAttributesForAddress:v7];
      v12 = [v7 contact];
      if (!v8)
      {
        v13 = [MKMapItem alloc];
        v14 = [v7 addressDictionary];
        v8 = [v13 initWithAddressDictionary:v14];
      }

      objc_storeStrong(&v9->_address, a3);
      v15 = [v10 copy];
      addressString = v9->_addressString;
      v9->_addressString = v15;

      v17 = [v11 copy];
      clientAttributes = v9->_clientAttributes;
      v9->_clientAttributes = v17;

      contact = v9->_contact;
      v9->_contact = v12;
      v20 = v12;

      objc_storeStrong(&v9->_mapItem, v8);
    }

    self = v9;
    v21 = self;
  }

  else
  {
    v22 = sub_100798F84();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412546;
      v28 = v24;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Invalid %@ was passed in: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  return v21;
}

+ (id)_clientAttributesForAddress:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GEOMapItemAddressBookAttributes);
  v5 = [v3 compositeName];
  [v4 setName:v5];

  v6 = [v3 spokenNameForNavigation];
  if ([v6 length])
  {
    [v4 setSpokenName:v6];
  }

  [v4 setAddressType:{objc_msgSend(v3, "addressType")}];
  [v4 setIsMe:{objc_msgSend(v3, "isMeCard")}];
  v7 = [v3 addressValue];
  v8 = [v7 identifier];
  [v4 setAddressIdentifier:v8];

  v9 = [v3 contact];
  v10 = [v9 identifier];
  [v4 setContactIdentifier:v10];

  v11 = objc_alloc_init(GEOMapItemClientAttributes);
  [v11 setAddressBookAttributes:v4];

  return v11;
}

@end
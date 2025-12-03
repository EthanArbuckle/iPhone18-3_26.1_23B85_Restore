@interface AddressBookAddressWaypointRequest
+ (id)_clientAttributesForAddress:(id)address;
- (AddressBookAddressWaypointRequest)initWithAddress:(id)address mapItem:(id)item;
- (BOOL)isEquivalentToOtherRequest:(id)request;
- (CLLocationCoordinate2D)coordinate;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (id)waypointIconWithScale:(double)scale;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)recordRAPInformation:(id)information;
@end

@implementation AddressBookAddressWaypointRequest

- (void)recordRAPInformation:(id)information
{
  addressString = self->_addressString;
  informationCopy = information;
  [informationCopy setSingleLineAddressString:addressString];
  [informationCopy setOrigin:1];
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  traitsCopy = traits;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  activityHandlerCopy = activityHandler;
  cachedLoadResult = [(AddressBookAddressWaypointRequest *)self cachedLoadResult];

  if (cachedLoadResult)
  {
    cachedLoadResult2 = [(AddressBookAddressWaypointRequest *)self cachedLoadResult];
    completionHandlerCopy[2](completionHandlerCopy, cachedLoadResult2);

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
    v26 = completionHandlerCopy;
    v17 = objc_retainBlock(v25);
    addressString = [(AddressBookAddressWaypointRequest *)self addressString];
    clientAttributes = [(AddressBookAddressWaypointRequest *)self clientAttributes];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100C707BC;
    v22[3] = &unk_101650BB0;
    objc_copyWeak(&v24, &location);
    v20 = v17;
    v23 = v20;
    v16 = [GEOComposedWaypoint composedWaypointForAddressString:addressString traits:traitsCopy clientAttributes:clientAttributes completionHandler:v22 networkActivityHandler:activityHandlerCopy];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (BOOL)isEquivalentToOtherRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = requestCopy;
    addressString = [(AddressBookAddressWaypointRequest *)self addressString];
    addressString2 = [v5 addressString];

    v8 = [addressString isEqualToString:addressString2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)waypointName
{
  contact = [(AddressBookAddressWaypointRequest *)self contact];
  if (contact)
  {
    v4 = contact;
    address = [(AddressBookAddressWaypointRequest *)self address];

    if (address)
    {
      address2 = [(AddressBookAddressWaypointRequest *)self address];
      waypointCompositeName = [address2 waypointCompositeName];
LABEL_6:
      v9 = waypointCompositeName;
      goto LABEL_8;
    }
  }

  name = [(MKMapItem *)self->_mapItem name];
  if (name)
  {
    waypointCompositeName = name;
    address2 = waypointCompositeName;
    goto LABEL_6;
  }

  v9 = MKLocalizedStringForUnknownLocation();
  address2 = 0;
LABEL_8:

  return v9;
}

- (id)waypointIconWithScale:(double)scale
{
  address = [(AddressBookAddressWaypointRequest *)self address];
  v5 = [address thumbnailIconWithScale:2 size:scale];

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

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, @"addressString", self->_addressString);
  (*v4)(blockCopy, @"clientAttributes", self->_clientAttributes);
  (*v4)(blockCopy, @"contact", &self->_contact->super.isa);
  (*v4)(blockCopy, @"mapItem", &self->_mapItem->super.isa);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C70D84;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(AddressBookAddressWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C70FD4;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(AddressBookAddressWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAddress:mapItem:", self->_address, self->_mapItem}];
  objc_storeStrong(v4 + 6, self->_cachedLoadResult);
  return v4;
}

- (AddressBookAddressWaypointRequest)initWithAddress:(id)address mapItem:(id)item
{
  addressCopy = address;
  itemCopy = item;
  if ([addressCopy isValid])
  {
    v26.receiver = self;
    v26.super_class = AddressBookAddressWaypointRequest;
    v9 = [(AddressBookAddressWaypointRequest *)&v26 init];
    if (v9)
    {
      singleLineAddress = [addressCopy singleLineAddress];
      v11 = [objc_opt_class() _clientAttributesForAddress:addressCopy];
      contact = [addressCopy contact];
      if (!itemCopy)
      {
        v13 = [MKMapItem alloc];
        addressDictionary = [addressCopy addressDictionary];
        itemCopy = [v13 initWithAddressDictionary:addressDictionary];
      }

      objc_storeStrong(&v9->_address, address);
      v15 = [singleLineAddress copy];
      addressString = v9->_addressString;
      v9->_addressString = v15;

      v17 = [v11 copy];
      clientAttributes = v9->_clientAttributes;
      v9->_clientAttributes = v17;

      contact = v9->_contact;
      v9->_contact = contact;
      v20 = contact;

      objc_storeStrong(&v9->_mapItem, itemCopy);
    }

    self = v9;
    selfCopy = self;
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
      v30 = addressCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Invalid %@ was passed in: %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_clientAttributesForAddress:(id)address
{
  addressCopy = address;
  v4 = objc_alloc_init(GEOMapItemAddressBookAttributes);
  compositeName = [addressCopy compositeName];
  [v4 setName:compositeName];

  spokenNameForNavigation = [addressCopy spokenNameForNavigation];
  if ([spokenNameForNavigation length])
  {
    [v4 setSpokenName:spokenNameForNavigation];
  }

  [v4 setAddressType:{objc_msgSend(addressCopy, "addressType")}];
  [v4 setIsMe:{objc_msgSend(addressCopy, "isMeCard")}];
  addressValue = [addressCopy addressValue];
  identifier = [addressValue identifier];
  [v4 setAddressIdentifier:identifier];

  contact = [addressCopy contact];
  identifier2 = [contact identifier];
  [v4 setContactIdentifier:identifier2];

  v11 = objc_alloc_init(GEOMapItemClientAttributes);
  [v11 setAddressBookAttributes:v4];

  return v11;
}

@end
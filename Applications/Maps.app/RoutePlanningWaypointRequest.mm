@interface RoutePlanningWaypointRequest
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (RoutePlanningWaypointRequest)initWithWaypointPlaceholder:(id)placeholder request:(id)request preferredNameSource:(unint64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)nameWithResolvedWaypoint:(id)waypoint allowCurrentLocation:(BOOL)location;
- (void)_maps_buildDescriptionWithBlock:(id)block;
@end

@implementation RoutePlanningWaypointRequest

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, @"waypointRequest", self->_waypointRequest);
  v7 = [NSNumber numberWithUnsignedInteger:self->_preferredNameSource];
  (*v4)(blockCopy, @"preferredNameSource", v7);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100CE4DCC;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RoutePlanningWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(RoutePlanningWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  v16 = sub_100CE501C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RoutePlanningWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(RoutePlanningWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if ([(RoutePlanningWaypointRequest *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    waypointPlaceholder = self->_waypointPlaceholder;
    waypointPlaceholder = [(RoutePlanningWaypointRequest *)v5 waypointPlaceholder];
    if ([(WaypointPlaceholder *)waypointPlaceholder isEqual:waypointPlaceholder])
    {
      waypointRequest = self->_waypointRequest;
      waypointRequest = [(RoutePlanningWaypointRequest *)v5 waypointRequest];
      if ([(WaypointRequest *)waypointRequest isEqual:waypointRequest])
      {
        preferredNameSource = self->_preferredNameSource;
        v11 = preferredNameSource == [(RoutePlanningWaypointRequest *)v5 preferredNameSource];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  waypointPlaceholder = self->_waypointPlaceholder;
  waypointRequest = self->_waypointRequest;
  preferredNameSource = self->_preferredNameSource;

  return [v4 initWithWaypointPlaceholder:waypointPlaceholder request:waypointRequest preferredNameSource:preferredNameSource];
}

- (id)nameWithResolvedWaypoint:(id)waypoint allowCurrentLocation:(BOOL)location
{
  waypointCopy = waypoint;
  v7 = waypointCopy;
  if (location || ![waypointCopy isCurrentLocation])
  {
    if ([(RoutePlanningWaypointRequest *)self preferredNameSource])
    {
      if (!v7 || ([v7 isCurrentLocation] & 1) != 0)
      {
        name2 = 0;
LABEL_19:
        if ([name2 length])
        {
          goto LABEL_23;
        }

        waypointPlaceholder = [(RoutePlanningWaypointRequest *)self waypointPlaceholder];
        name = [waypointPlaceholder name];
        goto LABEL_21;
      }

      waypointRequest = [[SearchResult alloc] initWithComposedWaypoint:v7];
      name2 = [(SearchResult *)waypointRequest name];
    }

    else
    {
      addressBookAddress = [v7 addressBookAddress];
      if (addressBookAddress)
      {
      }

      else
      {
        name2 = [v7 findMyHandle];

        if (!name2)
        {
          goto LABEL_19;
        }
      }

      waypointRequest = [(RoutePlanningWaypointRequest *)self waypointRequest];
      waypointName = [(SearchResult *)waypointRequest waypointName];
      v15 = waypointName;
      if (waypointName)
      {
        name2 = waypointName;
      }

      else
      {
        waypointPlaceholder2 = [(RoutePlanningWaypointRequest *)self waypointPlaceholder];
        name2 = [waypointPlaceholder2 name];
      }
    }

    goto LABEL_19;
  }

  waypointPlaceholder = [v7 mkMapItem];
  _addressFormattedAsShortenedAddress = [waypointPlaceholder _addressFormattedAsShortenedAddress];
  if (_addressFormattedAsShortenedAddress)
  {
    name = _addressFormattedAsShortenedAddress;
    name2 = name;
LABEL_21:
    v16 = name;
    goto LABEL_22;
  }

  v16 = MKLocalizedStringForUnknownLocation();
  name2 = 0;
LABEL_22:

  name2 = v16;
LABEL_23:

  return name2;
}

- (RoutePlanningWaypointRequest)initWithWaypointPlaceholder:(id)placeholder request:(id)request preferredNameSource:(unint64_t)source
{
  placeholderCopy = placeholder;
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = RoutePlanningWaypointRequest;
  v11 = [(RoutePlanningWaypointRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_waypointPlaceholder, placeholder);
    v13 = [requestCopy copyWithZone:0];
    waypointRequest = v12->_waypointRequest;
    v12->_waypointRequest = v13;

    v12->_preferredNameSource = source;
  }

  return v12;
}

@end
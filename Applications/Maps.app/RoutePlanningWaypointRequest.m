@interface RoutePlanningWaypointRequest
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (RoutePlanningWaypointRequest)initWithWaypointPlaceholder:(id)a3 request:(id)a4 preferredNameSource:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nameWithResolvedWaypoint:(id)a3 allowCurrentLocation:(BOOL)a4;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
@end

@implementation RoutePlanningWaypointRequest

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, @"waypointRequest", self->_waypointRequest);
  v7 = [NSNumber numberWithUnsignedInteger:self->_preferredNameSource];
  (*v4)(v6, @"preferredNameSource", v7);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100CE4DCC;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RoutePlanningWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100CE501C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RoutePlanningWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if ([(RoutePlanningWaypointRequest *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    waypointPlaceholder = self->_waypointPlaceholder;
    v7 = [(RoutePlanningWaypointRequest *)v5 waypointPlaceholder];
    if ([(WaypointPlaceholder *)waypointPlaceholder isEqual:v7])
    {
      waypointRequest = self->_waypointRequest;
      v9 = [(RoutePlanningWaypointRequest *)v5 waypointRequest];
      if ([(WaypointRequest *)waypointRequest isEqual:v9])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  waypointPlaceholder = self->_waypointPlaceholder;
  waypointRequest = self->_waypointRequest;
  preferredNameSource = self->_preferredNameSource;

  return [v4 initWithWaypointPlaceholder:waypointPlaceholder request:waypointRequest preferredNameSource:preferredNameSource];
}

- (id)nameWithResolvedWaypoint:(id)a3 allowCurrentLocation:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 || ![v6 isCurrentLocation])
  {
    if ([(RoutePlanningWaypointRequest *)self preferredNameSource])
    {
      if (!v7 || ([v7 isCurrentLocation] & 1) != 0)
      {
        v11 = 0;
LABEL_19:
        if ([v11 length])
        {
          goto LABEL_23;
        }

        v8 = [(RoutePlanningWaypointRequest *)self waypointPlaceholder];
        v10 = [v8 name];
        goto LABEL_21;
      }

      v13 = [[SearchResult alloc] initWithComposedWaypoint:v7];
      v11 = [(SearchResult *)v13 name];
    }

    else
    {
      v12 = [v7 addressBookAddress];
      if (v12)
      {
      }

      else
      {
        v11 = [v7 findMyHandle];

        if (!v11)
        {
          goto LABEL_19;
        }
      }

      v13 = [(RoutePlanningWaypointRequest *)self waypointRequest];
      v14 = [(SearchResult *)v13 waypointName];
      v15 = v14;
      if (v14)
      {
        v11 = v14;
      }

      else
      {
        v17 = [(RoutePlanningWaypointRequest *)self waypointPlaceholder];
        v11 = [v17 name];
      }
    }

    goto LABEL_19;
  }

  v8 = [v7 mkMapItem];
  v9 = [v8 _addressFormattedAsShortenedAddress];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
LABEL_21:
    v16 = v10;
    goto LABEL_22;
  }

  v16 = MKLocalizedStringForUnknownLocation();
  v11 = 0;
LABEL_22:

  v11 = v16;
LABEL_23:

  return v11;
}

- (RoutePlanningWaypointRequest)initWithWaypointPlaceholder:(id)a3 request:(id)a4 preferredNameSource:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = RoutePlanningWaypointRequest;
  v11 = [(RoutePlanningWaypointRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_waypointPlaceholder, a3);
    v13 = [v10 copyWithZone:0];
    waypointRequest = v12->_waypointRequest;
    v12->_waypointRequest = v13;

    v12->_preferredNameSource = a5;
  }

  return v12;
}

@end
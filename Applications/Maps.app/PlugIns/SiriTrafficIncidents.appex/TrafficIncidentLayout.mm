@interface TrafficIncidentLayout
- (BOOL)isIncidentTypeDisplayedOnMap:(int)map;
- (BOOL)isIncidentTypeSupported:(int)supported;
- (BOOL)shouldInvalidateLayout;
- (BOOL)shouldInvalidateLayoutForLocation:(id)location;
- (TrafficIncidentLayout)initWithCoder:(id)coder;
- (TrafficIncidentLayout)initWithLayoutFormConfig:(id)config location:(id)location;
- (void)_populateLayoutFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrafficIncidentLayout

- (TrafficIncidentLayout)initWithLayoutFormConfig:(id)config location:(id)location
{
  configCopy = config;
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = TrafficIncidentLayout;
  v8 = [(TrafficIncidentLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_layoutRequestLocation, location);
    [(TrafficIncidentLayout *)v9 _populateLayoutFields:configCopy];
  }

  return v9;
}

- (TrafficIncidentLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TrafficIncidentLayout;
  v5 = [(TrafficIncidentLayout *)&v13 init];
  if (v5)
  {
    v5->_incidentReportingEnabled = [coderCopy decodeBoolForKey:@"incidentReportingEnabled"];
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"layoutItems"];
    layoutItems = v5->_layoutItems;
    v5->_layoutItems = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutRequestLocation"];
    layoutRequestLocation = v5->_layoutRequestLocation;
    v5->_layoutRequestLocation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutRequestTime"];
    layoutRequestTime = v5->_layoutRequestTime;
    v5->_layoutRequestTime = v10;

    v5->_layoutTimeToLive = [coderCopy decodeIntegerForKey:@"layoutTimeToLive"];
    v5->_layoutFreshnessRadius = [coderCopy decodeIntegerForKey:@"layoutFreshnessRadius"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  incidentReportingEnabled = self->_incidentReportingEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:incidentReportingEnabled forKey:@"incidentReportingEnabled"];
  [coderCopy encodeObject:self->_layoutItems forKey:@"layoutItems"];
  [coderCopy encodeObject:self->_layoutRequestLocation forKey:@"layoutRequestLocation"];
  [coderCopy encodeObject:self->_layoutRequestTime forKey:@"layoutRequestTime"];
  [coderCopy encodeInteger:self->_layoutTimeToLive forKey:@"layoutTimeToLive"];
  [coderCopy encodeInteger:self->_layoutFreshnessRadius forKey:@"layoutFreshnessRadius"];
}

- (void)_populateLayoutFields:(id)fields
{
  fieldsCopy = fields;
  v5 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = fieldsCopy;
  layoutFields = [fieldsCopy layoutFields];
  v7 = [layoutFields countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(layoutFields);
        }

        name = [*(*(&v20 + 1) + 8 * v10) name];
        incidentField = [name incidentField];

        if ([incidentField hasDisplayIncidentOnMap])
        {
          displayIncidentOnMap = [incidentField displayIncidentOnMap];
        }

        else
        {
          displayIncidentOnMap = 1;
        }

        v14 = -[TrafficIncidentLayoutItem initWithTrafficIncidentType:displayOnMap:]([TrafficIncidentLayoutItem alloc], "initWithTrafficIncidentType:displayOnMap:", [incidentField trafficType], displayIncidentOnMap);
        [(NSArray *)v5 addObject:v14];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [layoutFields countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  layoutItems = self->_layoutItems;
  self->_layoutItems = v5;
  v16 = v5;

  self->_incidentReportingEnabled = [v19 enabled];
  self->_layoutTimeToLive = [v19 ttl];
  v17 = +[NSDate date];
  layoutRequestTime = self->_layoutRequestTime;
  self->_layoutRequestTime = v17;

  self->_layoutFreshnessRadius = [v19 radius];
}

- (BOOL)isIncidentTypeDisplayedOnMap:(int)map
{
  if (![(NSArray *)self->_layoutItems count])
  {
    return 1;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_layoutItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 incidentType] == map)
        {
          displayIncidentOnMap = [v10 displayIncidentOnMap];
          goto LABEL_12;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  displayIncidentOnMap = 1;
LABEL_12:

  return displayIncidentOnMap;
}

- (BOOL)isIncidentTypeSupported:(int)supported
{
  if (![(NSArray *)self->_layoutItems count])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_layoutItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) incidentType] == supported)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)shouldInvalidateLayout
{
  v3 = +[MKLocationManager sharedLocationManager];
  currentLocation = [v3 currentLocation];
  LOBYTE(self) = [(TrafficIncidentLayout *)self shouldInvalidateLayoutForLocation:currentLocation];

  return self;
}

- (BOOL)shouldInvalidateLayoutForLocation:(id)location
{
  locationCopy = location;
  if (self->_layoutRequestLocation)
  {
    [(NSDate *)self->_layoutRequestTime timeIntervalSinceNow];
    v6 = v5;
    latLng = [locationCopy latLng];
    [latLng coordinate];
    latLng2 = [(GEOLocation *)self->_layoutRequestLocation latLng];
    [latLng2 coordinate];
    GEOCalculateDistance();
    v10 = v9;

    if (v10 >= self->_layoutFreshnessRadius)
    {
      v12 = 1;
    }

    else
    {
      v11 = -v6;
      if (v6 >= 0.0)
      {
        v11 = v6;
      }

      v12 = v11 > self->_layoutTimeToLive;
    }

    v13 = MAPSGetIncidentsReportingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v18[0] = 67109378;
      v18[1] = v12;
      v19 = 2112;
      selfCopy = self;
      v14 = "TrafficIncidentLayout: shouldInvalidateLayout %d for %@";
      v15 = v13;
      v16 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = MAPSGetIncidentsReportingLog();
    LOBYTE(v12) = 1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18[0]) = 0;
      v14 = "TrafficIncidentLayout: Initial fetching";
      v15 = v13;
      v16 = 2;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, v18, v16);
    }
  }

  return v12;
}

@end
@interface TrafficIncidentLayout
- (BOOL)isIncidentTypeDisplayedOnMap:(int)a3;
- (BOOL)isIncidentTypeSupported:(int)a3;
- (BOOL)shouldInvalidateLayout;
- (BOOL)shouldInvalidateLayoutForLocation:(id)a3;
- (TrafficIncidentLayout)initWithCoder:(id)a3;
- (TrafficIncidentLayout)initWithLayoutFormConfig:(id)a3 location:(id)a4;
- (void)_populateLayoutFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrafficIncidentLayout

- (TrafficIncidentLayout)initWithLayoutFormConfig:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TrafficIncidentLayout;
  v8 = [(TrafficIncidentLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_layoutRequestLocation, a4);
    [(TrafficIncidentLayout *)v9 _populateLayoutFields:v6];
  }

  return v9;
}

- (TrafficIncidentLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TrafficIncidentLayout;
  v5 = [(TrafficIncidentLayout *)&v13 init];
  if (v5)
  {
    v5->_incidentReportingEnabled = [v4 decodeBoolForKey:@"incidentReportingEnabled"];
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"layoutItems"];
    layoutItems = v5->_layoutItems;
    v5->_layoutItems = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutRequestLocation"];
    layoutRequestLocation = v5->_layoutRequestLocation;
    v5->_layoutRequestLocation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutRequestTime"];
    layoutRequestTime = v5->_layoutRequestTime;
    v5->_layoutRequestTime = v10;

    v5->_layoutTimeToLive = [v4 decodeIntegerForKey:@"layoutTimeToLive"];
    v5->_layoutFreshnessRadius = [v4 decodeIntegerForKey:@"layoutFreshnessRadius"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  incidentReportingEnabled = self->_incidentReportingEnabled;
  v5 = a3;
  [v5 encodeBool:incidentReportingEnabled forKey:@"incidentReportingEnabled"];
  [v5 encodeObject:self->_layoutItems forKey:@"layoutItems"];
  [v5 encodeObject:self->_layoutRequestLocation forKey:@"layoutRequestLocation"];
  [v5 encodeObject:self->_layoutRequestTime forKey:@"layoutRequestTime"];
  [v5 encodeInteger:self->_layoutTimeToLive forKey:@"layoutTimeToLive"];
  [v5 encodeInteger:self->_layoutFreshnessRadius forKey:@"layoutFreshnessRadius"];
}

- (void)_populateLayoutFields:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v4;
  v6 = [v4 layoutFields];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) name];
        v12 = [v11 incidentField];

        if ([v12 hasDisplayIncidentOnMap])
        {
          v13 = [v12 displayIncidentOnMap];
        }

        else
        {
          v13 = 1;
        }

        v14 = -[TrafficIncidentLayoutItem initWithTrafficIncidentType:displayOnMap:]([TrafficIncidentLayoutItem alloc], "initWithTrafficIncidentType:displayOnMap:", [v12 trafficType], v13);
        [(NSArray *)v5 addObject:v14];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (BOOL)isIncidentTypeDisplayedOnMap:(int)a3
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
        if ([v10 incidentType] == a3)
        {
          v11 = [v10 displayIncidentOnMap];
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

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)isIncidentTypeSupported:(int)a3
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

        if ([*(*(&v12 + 1) + 8 * i) incidentType] == a3)
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
  v4 = [v3 currentLocation];
  LOBYTE(self) = [(TrafficIncidentLayout *)self shouldInvalidateLayoutForLocation:v4];

  return self;
}

- (BOOL)shouldInvalidateLayoutForLocation:(id)a3
{
  v4 = a3;
  if (self->_layoutRequestLocation)
  {
    [(NSDate *)self->_layoutRequestTime timeIntervalSinceNow];
    v6 = v5;
    v7 = [v4 latLng];
    [v7 coordinate];
    v8 = [(GEOLocation *)self->_layoutRequestLocation latLng];
    [v8 coordinate];
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
      v20 = self;
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
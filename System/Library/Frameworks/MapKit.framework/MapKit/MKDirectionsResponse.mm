@interface MKDirectionsResponse
+ (id)_responseWithGEODirectionsRouteResponse:(id)response routeRequest:(id)request request:(id)a5 origin:(id)origin destination:(id)destination error:(id *)error;
- (NSString)_incidentDescription;
- (NSURL)_mapsURL;
- (id)_initWithGEORouteResponse:(id)response routeRequest:(id)request request:(id)a5 origin:(id)origin destination:(id)destination;
@end

@implementation MKDirectionsResponse

- (NSURL)_mapsURL
{
  v11[2] = *MEMORY[0x1E69E9840];
  destination = self->_destination;
  v11[0] = self->_source;
  v11[1] = destination;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = @"MKLaunchOptionsLaunchIntoRoute";
  data = [(GEODirectionsResponse *)self->_geoResponse data];
  v10 = data;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [MKMapItem urlForMapItems:v4 options:v6];

  return v7;
}

- (NSString)_incidentDescription
{
  v2 = [(GEODirectionsResponse *)self->_geoResponse incidentsOnRoutesAtIndex:0];
  if (v2)
  {
    v3 = +[MKTrafficSupport sharedTrafficSupport];
    v4 = [v3 localizedTitleForGEOIncidentType:objc_msgSend(v2 laneType:"type") laneCount:{objc_msgSend(v2, "laneClosureType"), objc_msgSend(v2, "laneClosureCount")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithGEORouteResponse:(id)response routeRequest:(id)request request:(id)a5 origin:(id)origin destination:(id)destination
{
  v85[2] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestCopy = request;
  v15 = a5;
  originCopy = origin;
  destinationCopy = destination;
  v80.receiver = self;
  v80.super_class = MKDirectionsResponse;
  v18 = [(MKDirectionsResponse *)&v80 init];
  p_isa = &v18->super.isa;
  if (!v18)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v18->_geoResponse, response);
  geoMapItem = [originCopy geoMapItem];
  v21 = [MKMapItem _itemWithGeoMapItem:geoMapItem];
  v22 = p_isa[2];
  p_isa[2] = v21;

  geoMapItem2 = [destinationCopy geoMapItem];
  v24 = [MKMapItem _itemWithGeoMapItem:geoMapItem2];
  v25 = p_isa[3];
  p_isa[3] = v24;

  name = [p_isa[2] name];
  if (!name || (v27 = name, [p_isa[2] name], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "length"), v28, v27, !v29))
  {
    source = [v15 source];
    name2 = [source name];
    [p_isa[2] setName:name2];
  }

  name3 = [p_isa[3] name];
  if (!name3 || (v33 = name3, [p_isa[3] name], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "length"), v34, v33, !v35))
  {
    destination = [v15 destination];
    name4 = [destination name];
    [p_isa[3] setName:name4];
  }

  if ([v15 _includeRoutePoints])
  {
    v69 = v15;
    v38 = objc_alloc(MEMORY[0x1E69A2538]);
    v68 = originCopy;
    v85[0] = originCopy;
    v85[1] = destinationCopy;
    v66 = destinationCopy;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    v70 = requestCopy;
    routeAttributes = [requestCopy routeAttributes];
    v41 = [v38 initWithWaypoints:v39 routeAttributes:routeAttributes directionsResponse:responseCopy];

    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v65 = v41;
    allRoutes = [v41 allRoutes];
    v45 = [allRoutes countByEnumeratingWithState:&v76 objects:v84 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v77;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v77 != v47)
          {
            objc_enumerationMutation(allRoutes);
          }

          v49 = *(*(&v76 + 1) + 8 * i);
          routeType = [v49 routeType];
          v51 = v43;
          if (routeType)
          {
            routeType2 = [v49 routeType];
            v51 = v42;
            if (routeType2 != 1)
            {
              continue;
            }
          }

          [v51 addObject:v49];
        }

        v46 = [allRoutes countByEnumeratingWithState:&v76 objects:v84 count:16];
      }

      while (v46);
    }

    v67 = p_isa;
    v71 = responseCopy;

    [v43 addObjectsFromArray:v42];
    v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v43, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v54 = v43;
    v55 = [v54 countByEnumeratingWithState:&v72 objects:v83 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v73;
      do
      {
        v58 = 0;
        do
        {
          if (*v73 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v72 + 1) + 8 * v58);
          v60 = [[MKRoute alloc] _initWithGEOComposedRoute:v59];
          if (v60)
          {
            [v53 addObject:v60];
          }

          else
          {
            if (MKGetDirectionsLog_onceToken != -1)
            {
              dispatch_once(&MKGetDirectionsLog_onceToken, &__block_literal_global_52);
            }

            v61 = MKGetDirectionsLog_log;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138477827;
              v82 = v59;
              _os_log_impl(&dword_1A2EA0000, v61, OS_LOG_TYPE_DEBUG, "Failed to parse composed route %{private}@", buf, 0xCu);
            }
          }

          ++v58;
        }

        while (v56 != v58);
        v56 = [v54 countByEnumeratingWithState:&v72 objects:v83 count:16];
      }

      while (v56);
    }

    v62 = v67[4];
    v67[4] = v53;
    p_isa = v67;

    requestCopy = v70;
    responseCopy = v71;
    originCopy = v68;
    v15 = v69;
    destinationCopy = v66;
  }

  if ([p_isa[4] count])
  {
    v63 = p_isa;
  }

  else
  {
LABEL_36:
    v63 = 0;
  }

  return v63;
}

+ (id)_responseWithGEODirectionsRouteResponse:(id)response routeRequest:(id)request request:(id)a5 origin:(id)origin destination:(id)destination error:(id *)error
{
  responseCopy = response;
  requestCopy = request;
  v16 = a5;
  originCopy = origin;
  destinationCopy = destination;
  if ([responseCopy routesCount] || objc_msgSend(responseCopy, "waypointRoutesCount"))
  {
    v19 = [[self alloc] _initWithGEORouteResponse:responseCopy routeRequest:requestCopy request:v16 origin:originCopy destination:destinationCopy];
    if (!error)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (!error)
    {
      goto LABEL_6;
    }
  }

  if (!v19)
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    *error = [v20 initWithDomain:MKErrorDomain code:5 userInfo:0];
  }

LABEL_6:

  return v19;
}

@end
@interface MKDirectionsResponse
+ (id)_responseWithGEODirectionsRouteResponse:(id)a3 routeRequest:(id)a4 request:(id)a5 origin:(id)a6 destination:(id)a7 error:(id *)a8;
- (NSString)_incidentDescription;
- (NSURL)_mapsURL;
- (id)_initWithGEORouteResponse:(id)a3 routeRequest:(id)a4 request:(id)a5 origin:(id)a6 destination:(id)a7;
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
  v5 = [(GEODirectionsResponse *)self->_geoResponse data];
  v10 = v5;
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

- (id)_initWithGEORouteResponse:(id)a3 routeRequest:(id)a4 request:(id)a5 origin:(id)a6 destination:(id)a7
{
  v85[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v80.receiver = self;
  v80.super_class = MKDirectionsResponse;
  v18 = [(MKDirectionsResponse *)&v80 init];
  p_isa = &v18->super.isa;
  if (!v18)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v18->_geoResponse, a3);
  v20 = [v16 geoMapItem];
  v21 = [MKMapItem _itemWithGeoMapItem:v20];
  v22 = p_isa[2];
  p_isa[2] = v21;

  v23 = [v17 geoMapItem];
  v24 = [MKMapItem _itemWithGeoMapItem:v23];
  v25 = p_isa[3];
  p_isa[3] = v24;

  v26 = [p_isa[2] name];
  if (!v26 || (v27 = v26, [p_isa[2] name], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "length"), v28, v27, !v29))
  {
    v30 = [v15 source];
    v31 = [v30 name];
    [p_isa[2] setName:v31];
  }

  v32 = [p_isa[3] name];
  if (!v32 || (v33 = v32, [p_isa[3] name], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "length"), v34, v33, !v35))
  {
    v36 = [v15 destination];
    v37 = [v36 name];
    [p_isa[3] setName:v37];
  }

  if ([v15 _includeRoutePoints])
  {
    v69 = v15;
    v38 = objc_alloc(MEMORY[0x1E69A2538]);
    v68 = v16;
    v85[0] = v16;
    v85[1] = v17;
    v66 = v17;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    v70 = v14;
    v40 = [v14 routeAttributes];
    v41 = [v38 initWithWaypoints:v39 routeAttributes:v40 directionsResponse:v13];

    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v65 = v41;
    v44 = [v41 allRoutes];
    v45 = [v44 countByEnumeratingWithState:&v76 objects:v84 count:16];
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
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v76 + 1) + 8 * i);
          v50 = [v49 routeType];
          v51 = v43;
          if (v50)
          {
            v52 = [v49 routeType];
            v51 = v42;
            if (v52 != 1)
            {
              continue;
            }
          }

          [v51 addObject:v49];
        }

        v46 = [v44 countByEnumeratingWithState:&v76 objects:v84 count:16];
      }

      while (v46);
    }

    v67 = p_isa;
    v71 = v13;

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

    v14 = v70;
    v13 = v71;
    v16 = v68;
    v15 = v69;
    v17 = v66;
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

+ (id)_responseWithGEODirectionsRouteResponse:(id)a3 routeRequest:(id)a4 request:(id)a5 origin:(id)a6 destination:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v14 routesCount] || objc_msgSend(v14, "waypointRoutesCount"))
  {
    v19 = [[a1 alloc] _initWithGEORouteResponse:v14 routeRequest:v15 request:v16 origin:v17 destination:v18];
    if (!a8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (!a8)
    {
      goto LABEL_6;
    }
  }

  if (!v19)
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    *a8 = [v20 initWithDomain:MKErrorDomain code:5 userInfo:0];
  }

LABEL_6:

  return v19;
}

@end
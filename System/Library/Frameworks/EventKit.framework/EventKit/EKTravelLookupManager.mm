@interface EKTravelLookupManager
+ (id)defaultManager;
+ (void)estimateGeolocationFromHistoricDevicePositionAtLocation:(id)location withCompletionBlock:(id)block;
- (void)_findCoordinatesForLocation:(id)location completionBlock:(id)block;
- (void)_travelTimeFrom:(id)from to:(id)to arrivalDate:(id)date withRouteType:(id)type withCompletionBlock:(id)block;
- (void)_travelTimeWithStartCoordinate:(id)coordinate endCoordinate:(id)endCoordinate arrivalDate:(id)date withRouteType:(id)type completionBlock:(id)block;
- (void)_updateLocation:(id)location withMapItem:(id)item forRoute:(id)route withCompletionBlock:(id)block;
- (void)travelTimeFrom:(id)from to:(id)to arrivalDate:(id)date withRouteTypes:(id)types withCompletionBlock:(id)block;
@end

@implementation EKTravelLookupManager

+ (id)defaultManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!defaultManager__defaultManager)
  {
    v3 = objc_alloc_init(EKTravelLookupManager);
    v4 = defaultManager__defaultManager;
    defaultManager__defaultManager = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = defaultManager__defaultManager;

  return v5;
}

- (void)_travelTimeFrom:(id)from to:(id)to arrivalDate:(id)date withRouteType:(id)type withCompletionBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  dateCopy = date;
  typeCopy = type;
  blockCopy = block;
  v17 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v32 = fromCopy;
    v33 = 2112;
    v34 = toCopy;
    v35 = 2112;
    v36 = typeCopy;
    v37 = 2112;
    v38 = dateCopy;
    _os_log_debug_impl(&dword_1A805E000, v17, OS_LOG_TYPE_DEBUG, "Received request to find travel time from %@ to %@ by %@ arriving on date %@", buf, 0x2Au);
  }

  v18 = dispatch_get_global_queue(0, 0);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke;
  v25[3] = &unk_1E78002F0;
  v25[4] = self;
  v26 = fromCopy;
  v27 = toCopy;
  v28 = typeCopy;
  v29 = dateCopy;
  v30 = blockCopy;
  v19 = dateCopy;
  v20 = typeCopy;
  v21 = toCopy;
  v22 = blockCopy;
  v23 = fromCopy;
  dispatch_async(v18, v25);

  v24 = *MEMORY[0x1E69E9840];
}

void __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke_2;
  v10[3] = &unk_1E78002C8;
  v14 = *(a1 + 72);
  v9 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v9;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v13 = *(a1 + 64);
  [v2 _findCoordinatesForLocation:v3 completionBlock:v10];
}

void __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 72);
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke_3;
    v13[3] = &unk_1E78002C8;
    v17 = *(a1 + 72);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v14 = v12;
    v15 = v11;
    v16 = *(a1 + 32);
    [v5 _findCoordinatesForLocation:v6 completionBlock:v13];
  }
}

void __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke_3_cold_1(a1);
    }

    [*(a1 + 64) _travelTimeWithStartCoordinate:*(a1 + 32) endCoordinate:*(a1 + 40) arrivalDate:*(a1 + 56) withRouteType:*(a1 + 48) completionBlock:*(a1 + 72)];
  }
}

- (void)travelTimeFrom:(id)from to:(id)to arrivalDate:(id)date withRouteTypes:(id)types withCompletionBlock:(id)block
{
  v50 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  dateCopy = date;
  typesCopy = types;
  blockCopy = block;
  v13 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = fromCopy;
    *&buf[12] = 2112;
    *&buf[14] = toCopy;
    *&buf[22] = 2112;
    v47 = typesCopy;
    v48 = 2112;
    v49 = dateCopy;
    _os_log_debug_impl(&dword_1A805E000, v13, OS_LOG_TYPE_DEBUG, "Received request to find travel time from %@ to %@ by %@ arriving on date %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v47 = [typesCopy count];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = typesCopy;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v15)
  {
    v23 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke;
        v29[3] = &unk_1E7800318;
        v30 = dictionary;
        v31 = v17;
        v38 = buf;
        v39 = v44;
        v18 = v14;
        v32 = v18;
        v19 = fromCopy;
        v33 = v19;
        selfCopy = self;
        v20 = toCopy;
        v35 = v20;
        v21 = dateCopy;
        v36 = v21;
        v37 = blockCopy;
        [(EKTravelLookupManager *)self _travelTimeFrom:v19 to:v20 arrivalDate:v21 withRouteType:v17 withCompletionBlock:v29];

        ++v16;
      }

      while (v15 != v16);
      v15 = [v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v15);
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x1E69E9840];
}

void __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  --*(*(*(a1 + 96) + 8) + 24);
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }

  else if (v6)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:*(a1 + 40)];
    if ([v6 code] == 5 || objc_msgSend(v6, "code") == 4)
    {
      ++*(*(*(a1 + 104) + 8) + 24);
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke_cold_1(a1);
  }

  if (!*(*(*(a1 + 96) + 8) + 24))
  {
    v8 = *(*(*(a1 + 104) + 8) + 24);
    if (v8 == [*(a1 + 48) count])
    {
      v9 = [*(a1 + 56) isCurrentLocation];
      v10 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG);
      if ((v9 & 1) == 0)
      {
        if (v10)
        {
          __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke_cold_3();
        }

        v12 = objc_alloc_init(MEMORY[0x1E6992FD8]);
        [v12 setType:2];
        [*(a1 + 64) travelTimeFrom:v12 to:*(a1 + 72) arrivalDate:*(a1 + 80) withRouteTypes:*(a1 + 48) withCompletionBlock:*(a1 + 88)];
        goto LABEL_21;
      }

      if (v10)
      {
        __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke_cold_4();
      }
    }

    else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke_cold_2((a1 + 32));
    }

    v11 = *(a1 + 88);
    v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:*(a1 + 32)];
    (*(v11 + 16))(v11, v12);
LABEL_21:
  }

  objc_sync_exit(v7);
}

- (void)_travelTimeWithStartCoordinate:(id)coordinate endCoordinate:(id)endCoordinate arrivalDate:(id)date withRouteType:(id)type completionBlock:(id)block
{
  coordinateCopy = coordinate;
  endCoordinateCopy = endCoordinate;
  dateCopy = date;
  typeCopy = type;
  blockCopy = block;
  if ((([coordinateCopy isCurrentLocation] & 1) != 0 || objc_msgSend(endCoordinateCopy, "isCurrentLocation")) && ((v17 = *MEMORY[0x1E69930E8], v18 = objc_msgSend(MEMORY[0x1E6992FE0], "authorizationStatusForBundleIdentifier:", *MEMORY[0x1E69930E8]), v19 = objc_msgSend(MEMORY[0x1E6992FE0], "preciseLocationAuthorizedForBundleIdentifier:", v17), v18 < 3) || (v19 & 1) == 0))
  {
    v21 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v21, OS_LOG_TYPE_DEFAULT, "Can't use current location for travel time estimation because Calendar is not authorized for precise location access.", buf, 2u);
    }

    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = [v22 initWithDomain:EKTravelLookupErrorDomain code:0 userInfo:0];
    blockCopy[2](blockCopy, 0, v20);
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke;
    v23[3] = &unk_1E7800368;
    v24 = coordinateCopy;
    v25 = endCoordinateCopy;
    v26 = typeCopy;
    v27 = dateCopy;
    selfCopy = self;
    v29 = blockCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v23);

    v20 = v24;
  }
}

void __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke(uint64_t a1)
{
  v2 = EKWeakLinkClass();
  v3 = EKWeakLinkClass();
  if ([*(a1 + 32) isCurrentLocation])
  {
    v4 = [v3 mapItemForCurrentLocation];
  }

  else
  {
    v5 = [v2 alloc];
    v6 = [*(a1 + 32) location];
    [v6 coordinate];
    v8 = v7;
    v10 = v9;
    v11 = [*(a1 + 32) placemark];
    v12 = [v11 addressDictionary];
    v13 = [v5 initWithCoordinate:v12 addressDictionary:{v8, v10}];

    v4 = [[v3 alloc] initWithPlacemark:v13];
  }

  if ([*(a1 + 40) isCurrentLocation])
  {
    v14 = [v3 mapItemForCurrentLocation];
  }

  else
  {
    v15 = [v2 alloc];
    v16 = [*(a1 + 40) location];
    [v16 coordinate];
    v18 = v17;
    v20 = v19;
    v21 = [*(a1 + 40) placemark];
    v22 = [v21 addressDictionary];
    v23 = [v15 initWithCoordinate:v22 addressDictionary:{v18, v20}];

    v14 = [[v3 alloc] initWithPlacemark:v23];
  }

  v24 = EKWeakLinkClass();
  v25 = EKWeakLinkClass();
  if ([*(a1 + 48) isEqualToString:*MEMORY[0x1E6992EE0]])
  {
    v26 = 2;
  }

  else if ([*(a1 + 48) isEqualToString:*MEMORY[0x1E6992ED0]])
  {
    v26 = 1;
  }

  else if ([*(a1 + 48) isEqualToString:*MEMORY[0x1E6992ED8]])
  {
    v26 = 4;
  }

  else if ([*(a1 + 48) isEqualToString:*MEMORY[0x1E6992EC8]])
  {
    v26 = 8;
  }

  else
  {
    v26 = 1;
  }

  v27 = objc_alloc_init(v24);
  [v27 setSource:v4];
  [v27 setDestination:v14];
  [v27 setArrivalDate:*(a1 + 56)];
  [v27 setTransportType:v26];
  v28 = [[v25 alloc] initWithRequest:v27];
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_cold_1();
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_36;
  v31[3] = &unk_1E7800340;
  v36 = *(a1 + 72);
  v32 = *(a1 + 32);
  v33 = *(a1 + 40);
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  v34 = v29;
  v35 = v30;
  [v28 calculateETAWithCompletionHandler:v31];
}

void __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_36(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 code];
    if ((v7 - 1) > 4)
    {
      v8 = @"EKTravelLookupErrorUnknown";
    }

    else
    {
      v8 = off_1E7800400[v7 - 1];
    }

    v15 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_36_cold_1(v8, v15, v6);
    }

    (*(a1[8] + 16))();
  }

  else
  {
    [v5 expectedTravelTime];
    v10 = v9;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_36_cold_2();
    }

    v11 = objc_alloc_init(MEMORY[0x1E6993048]);
    [v11 setStart:a1[4]];
    [v11 setEnd:a1[5]];
    [v11 setDuration:v10];
    [v11 setRoute:a1[6]];
    if ([a1[4] isCurrentLocation])
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_36_cold_3();
      }

      v12 = a1[7];
      v13 = a1[4];
      v14 = [v5 source];
      [v12 _updateLocation:v13 withMapItem:v14 forRoute:v11 withCompletionBlock:a1[8]];
    }

    else
    {
      (*(a1[8] + 16))();
    }
  }
}

- (void)_updateLocation:(id)location withMapItem:(id)item forRoute:(id)route withCompletionBlock:(id)block
{
  locationCopy = location;
  routeCopy = route;
  blockCopy = block;
  placemark = [item placemark];
  location = [placemark location];

  [locationCopy setLocation:location];
  v14 = MEMORY[0x1E6992FE8];
  location2 = [locationCopy location];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__EKTravelLookupManager__updateLocation_withMapItem_forRoute_withCompletionBlock___block_invoke;
  v20[3] = &unk_1E7800390;
  v22 = routeCopy;
  v23 = blockCopy;
  v21 = locationCopy;
  v16 = routeCopy;
  v17 = blockCopy;
  v18 = locationCopy;
  v19 = [v14 placemarkForLocation:location2 withCompletionBlock:v20];
}

void __82__EKTravelLookupManager__updateLocation_withMapItem_forRoute_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __82__EKTravelLookupManager__updateLocation_withMapItem_forRoute_withCompletionBlock___block_invoke_cold_2();
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = [v12 initWithDomain:EKTravelLookupErrorDomain code:1 userInfo:0];
  }

  else
  {
    v8 = [v5 addressDictionary];
    if ([v8 count])
    {
      v9 = [MEMORY[0x1E695CF60] postalAddressWithAddressBookDictionaryRepresentation:v8];
      v10 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v9 style:0];
      [*(a1 + 32) setAddress:v10];
    }

    [*(a1 + 32) setPlacemark:v5];
    v11 = [v5 name];
    [*(a1 + 32) setTitle:v11];

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __82__EKTravelLookupManager__updateLocation_withMapItem_forRoute_withCompletionBlock___block_invoke_cold_1((a1 + 32));
    }
  }

  v13 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

- (void)_findCoordinatesForLocation:(id)location completionBlock:(id)block
{
  locationCopy = location;
  blockCopy = block;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKTravelLookupManager _findCoordinatesForLocation:completionBlock:];
  }

  location = [locationCopy location];
  if (location)
  {
    v9 = location;
    location2 = [locationCopy location];
    [location2 coordinate];
    v11 = CLLocationCoordinate2DIsValid(v24);

    if (v11)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [EKTravelLookupManager _findCoordinatesForLocation:completionBlock:];
      }

LABEL_10:
      blockCopy[2](blockCopy, 0);
      goto LABEL_20;
    }
  }

  isCurrentLocation = [locationCopy isCurrentLocation];
  v13 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG);
  if (isCurrentLocation)
  {
    if (v13)
    {
      [EKTravelLookupManager _findCoordinatesForLocation:completionBlock:];
    }

    goto LABEL_10;
  }

  if (v13)
  {
    [EKTravelLookupManager _findCoordinatesForLocation:completionBlock:];
  }

  address = [locationCopy address];

  if (address)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTravelLookupManager _findCoordinatesForLocation:completionBlock:];
    }

    v15 = MEMORY[0x1E6992FE8];
    address2 = [locationCopy address];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke;
    v20[3] = &unk_1E78003B8;
    v21 = locationCopy;
    selfCopy = self;
    v23 = blockCopy;
    v17 = [v15 placemarkForAddress:address2 withCompletionBlock:v20];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = [v18 initWithDomain:EKTravelLookupErrorDomain code:1 userInfo:0];
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTravelLookupManager _findCoordinatesForLocation:completionBlock:];
    }

    (blockCopy)[2](blockCopy, v19);
  }

LABEL_20:
}

void __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 location];
    [v8 coordinate];
    v9 = CLLocationCoordinate2DIsValid(v12);

    if (v9)
    {
      v10 = [v5 location];
      [*(a1 + 32) setLocation:v10];

      [*(a1 + 32) setPlacemark:v5];
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke_cold_1((a1 + 32));
      }
    }
  }

  else if (v6)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke_cold_2(a1);
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = [v11 initWithDomain:EKTravelLookupErrorDomain code:2 userInfo:0];
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke_cold_3(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)estimateGeolocationFromHistoricDevicePositionAtLocation:(id)location withCompletionBlock:(id)block
{
  blockCopy = block;
  locationCopy = location;
  v7 = EKWeakLinkClass();
  v8 = EKWeakLinkClass();
  v9 = objc_alloc_init(v7);
  CFRetain(v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__EKTravelLookupManager_estimateGeolocationFromHistoricDevicePositionAtLocation_withCompletionBlock___block_invoke;
  v12[3] = &unk_1E78003E0;
  v14 = blockCopy;
  v15 = v8;
  v13 = v9;
  v10 = v9;
  v11 = blockCopy;
  [v10 fetchLocationsOfInterestAssociatedToIdentifier:locationCopy withHandler:v12];
}

void __101__EKTravelLookupManager_estimateGeolocationFromHistoricDevicePositionAtLocation_withCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [a2 firstObject];
    [v5 confidence];
    if (v6 >= 0.5)
    {
      v7 = objc_alloc(*(a1 + 48));
      v8 = [v5 location];
      [v8 latitude];
      v10 = v9;
      v11 = [v5 location];
      [v11 longitude];
      v13 = [v7 initWithLatitude:v10 longitude:v12];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  v14 = *(a1 + 32);

  CFRelease(v14);
}

void __90__EKTravelLookupManager__travelTimeFrom_to_arrivalDate_withRouteType_withCompletionBlock___block_invoke_3_cold_1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
  v10 = *MEMORY[0x1E69E9840];
}

void __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v2, v3, "Didn't find route or error for routeType %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __90__EKTravelLookupManager_travelTimeFrom_to_arrivalDate_withRouteTypes_withCompletionBlock___block_invoke_cold_2(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v2, v3, "Finished finding travel times with results %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "Getting directions %@ with request %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_36_cold_1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 description];
  v9 = 138412546;
  v10 = a1;
  OUTLINED_FUNCTION_3_2();
  v11 = v7;
  _os_log_debug_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEBUG, "Travel time lookup failed with error code %@: %@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __112__EKTravelLookupManager__travelTimeWithStartCoordinate_endCoordinate_arrivalDate_withRouteType_completionBlock___block_invoke_36_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Found travel time in seconds %lul", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __82__EKTravelLookupManager__updateLocation_withMapItem_forRoute_withCompletionBlock___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v2, v3, "Updated location to %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __82__EKTravelLookupManager__updateLocation_withMapItem_forRoute_withCompletionBlock___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Failed to get placemark with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_findCoordinatesForLocation:completionBlock:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Making sure that %@ has coordinates", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_findCoordinatesForLocation:completionBlock:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "%@ already has coordinates", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_findCoordinatesForLocation:completionBlock:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "%@ doesn't have coordinates", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_findCoordinatesForLocation:completionBlock:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "%@ has an address.  Looking up coordinates", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_findCoordinatesForLocation:completionBlock:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "%@ has no address", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_findCoordinatesForLocation:completionBlock:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "%@ is for current location.  Let MapKit handle", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v2, v3, "Found coordinates for address. Updated location to %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v2, v3, "Couldn't find coordinates for address for %@ and failed with error %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __69__EKTravelLookupManager__findCoordinatesForLocation_completionBlock___block_invoke_cold_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v2, v3, "Couldn't find coordinates for address for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

@end
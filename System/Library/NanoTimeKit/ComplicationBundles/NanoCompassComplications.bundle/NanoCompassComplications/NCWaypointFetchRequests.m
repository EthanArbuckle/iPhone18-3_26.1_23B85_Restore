@interface NCWaypointFetchRequests
+ (id)fetchRequestForAllWaypoints;
+ (id)fetchRequestForCompassWaypoints;
+ (id)fetchRequestForCompassWaypointsWithAltitude:(BOOL)a3;
+ (id)fetchRequestForCountOfMissingElevationForWaypointsOfType:(int64_t)a3;
+ (id)fetchRequestForCountOfWaypointsInElevationTableOfType:(int64_t)a3;
+ (id)fetchRequestForDatabaseWaypoints;
+ (id)fetchRequestForEnabledCompassWaypoints;
+ (id)fetchRequestForWaypointContainingKeyword:(id)a3;
+ (id)fetchRequestForWaypointWithUUID:(id)a3;
+ (id)fetchRequestForWaypointsOfTypes:(id)a3 withAltitude:(BOOL)a4;
@end

@implementation NCWaypointFetchRequests

+ (id)fetchRequestForAllWaypoints
{
  v3 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint", v2);
  v4 = objc_alloc(MEMORY[0x277CCAC98]);
  v6 = objc_msgSend_initWithKey_ascending_(v4, v5, @"timeOfCreation", 0);
  v9 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v7, v6, v8);
  objc_msgSend_setSortDescriptors_(v3, v10, v9, v11);

  return v3;
}

+ (id)fetchRequestForCompassWaypoints
{
  v3 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint", v2);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"type == %d or type == %d", v5, 4, 0);
  objc_msgSend_setPredicate_(v3, v7, v6, v8);

  v9 = objc_alloc(MEMORY[0x277CCAC98]);
  v11 = objc_msgSend_initWithKey_ascending_(v9, v10, @"timeOfCreation", 0);
  v14 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v12, v11, v13);
  objc_msgSend_setSortDescriptors_(v3, v15, v14, v16);

  return v3;
}

+ (id)fetchRequestForDatabaseWaypoints
{
  v3 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint", v2);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"type == %d or type == %d", v5, 2, 7);
  objc_msgSend_setPredicate_(v3, v7, v6, v8);

  v9 = objc_alloc(MEMORY[0x277CCAC98]);
  v11 = objc_msgSend_initWithKey_ascending_(v9, v10, @"timeOfCreation", 0);
  v14 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v12, v11, v13);
  objc_msgSend_setSortDescriptors_(v3, v15, v14, v16);

  return v3;
}

+ (id)fetchRequestForEnabledCompassWaypoints
{
  v3 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint", v2);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"enabled == YES and (type == %d or type == %d)", v5, 4, 0);
  objc_msgSend_setPredicate_(v3, v7, v6, v8);

  v9 = objc_alloc(MEMORY[0x277CCAC98]);
  v11 = objc_msgSend_initWithKey_ascending_(v9, v10, @"label", 1);
  v14 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v12, v11, v13);
  objc_msgSend_setSortDescriptors_(v3, v15, v14, v16);

  return v3;
}

+ (id)fetchRequestForWaypointWithUUID:(id)a3
{
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v7 = objc_msgSend_fetchRequestWithEntityName_(v3, v5, @"Waypoint", v6);
  v10 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v8, @"uuid == %@", v9, v4);

  objc_msgSend_setPredicate_(v7, v11, v10, v12);
  objc_msgSend_setFetchLimit_(v7, v13, 1, v14);

  return v7;
}

+ (id)fetchRequestForWaypointContainingKeyword:(id)a3
{
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v7 = objc_msgSend_fetchRequestWithEntityName_(v3, v5, @"Waypoint", v6);
  v10 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v8, @"label CONTAINS[cd] %@", v9, v4);

  objc_msgSend_setPredicate_(v7, v11, v10, v12);

  return v7;
}

+ (id)fetchRequestForCountOfMissingElevationForWaypointsOfType:(int64_t)a3
{
  v5 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint", v3);
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v6, @"type == %d and altitudePopulated == 0", v7, a3);
  objc_msgSend_setPredicate_(v5, v9, v8, v10);

  return v5;
}

+ (id)fetchRequestForCountOfWaypointsInElevationTableOfType:(int64_t)a3
{
  v5 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint", v3);
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v6, @"type == %d", v7, a3);
  objc_msgSend_setPredicate_(v5, v9, v8, v10);

  return v5;
}

+ (id)fetchRequestForCompassWaypointsWithAltitude:(BOOL)a3
{
  v4 = a3;
  v5 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint", v3);
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v6, @"(type == %d or type == %d) and altitudePopulated == %d", v7, 4, 0, v4);
  objc_msgSend_setPredicate_(v5, v9, v8, v10);

  return v5;
}

+ (id)fetchRequestForWaypointsOfTypes:(id)a3 withAltitude:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v6, @"Waypoint", v7);
  v11 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v9, @"type IN %@ and altitudePopulated == %d", v10, v5, v4);

  objc_msgSend_setPredicate_(v8, v12, v11, v13);

  return v8;
}

@end
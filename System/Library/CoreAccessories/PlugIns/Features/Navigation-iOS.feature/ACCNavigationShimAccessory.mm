@interface ACCNavigationShimAccessory
- (ACCNavigationShimAccessory)init;
- (id)create_xpc_representation;
- (void)create_xpc_representation;
- (void)dealloc;
@end

@implementation ACCNavigationShimAccessory

- (ACCNavigationShimAccessory)init
{
  v9.receiver = self;
  v9.super_class = ACCNavigationShimAccessory;
  v2 = [(ACCNavigationShimAccessory *)&v9 init];
  v3 = v2;
  if (v2)
  {
    iap2ShimAccessory = v2->_iap2ShimAccessory;
    v2->_iap2ShimAccessory = 0;

    navigationAccessory = v3->_navigationAccessory;
    v3->_navigationAccessory = 0;

    v6 = dispatch_queue_create("com.apple.accNavigation.NavigationProcessingQueue", 0);
    processingQueue = v3->_processingQueue;
    v3->_processingQueue = v6;
  }

  return v3;
}

- (void)dealloc
{
  iap2ShimAccessory = self->_iap2ShimAccessory;
  self->_iap2ShimAccessory = 0;

  navigationAccessory = self->_navigationAccessory;
  self->_navigationAccessory = 0;

  processingQueue = self->_processingQueue;
  self->_processingQueue = 0;

  v6.receiver = self;
  v6.super_class = ACCNavigationShimAccessory;
  [(ACCNavigationShimAccessory *)&v6 dealloc];
}

- (id)create_xpc_representation
{
  v25 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACCNavigationShimAccessory create_xpc_representation];
  }

  v6 = [(ACCiAP2ShimAccessory *)self->_iap2ShimAccessory connectionID];
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(xdict, "identifier", v6);
  v7 = xpc_array_create(0, 0);
  v8 = [(ACCNavigationAccessory *)self->_navigationAccessory componentList];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v8 allKeys];
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [v8 objectForKey:{*(*(&v20 + 1) + 8 * i), xdict}];
        v14 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v14, "isEnabled", [v13 isEnabled]);
        xpc_dictionary_set_uint64(v14, "identifier", [v13 identifier]);
        v15 = [v13 name];
        xpc_dictionary_set_string(v14, "name", [v15 cStringUsingEncoding:4]);

        xpc_dictionary_set_uint64(v14, "maxLength_CurrentRoadName", [v13 maxLength_CurrentRoadName]);
        xpc_dictionary_set_uint64(v14, "maxLength_DestinationRoadName", [v13 maxLength_DestinationRoadName]);
        xpc_dictionary_set_uint64(v14, "maxLength_PostManeuverRoadName", [v13 maxLength_PostManeuverRoadName]);
        xpc_dictionary_set_uint64(v14, "maxLength_ManeuverDescription", [v13 maxLength_ManeuverDescription]);
        xpc_dictionary_set_uint64(v14, "maxCapacity_GuidanceManeuver", [v13 maxCapacity_GuidanceManeuver]);
        xpc_dictionary_set_uint64(v14, "maxLength_LaneGuidanceDescription", [v13 maxLength_LaneGuidanceDescription]);
        xpc_dictionary_set_uint64(v14, "maxCapacity_LaneGuidance", [v13 maxCapacity_LaneGuidance]);
        xpc_dictionary_set_uint64(v14, "requestSourceName", [v13 requestSourceName]);
        xpc_dictionary_set_uint64(v14, "requestSourceSupportsRouteGuidance", [v13 requestSourceSupportsRouteGuidance]);
        xpc_dictionary_set_uint64(v14, "supportsExitInfo", [v13 supportsExitInfo]);
        xpc_array_append_value(v7, v14);
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  xpc_dictionary_set_value(xdict, "components", v7);
  v16 = *MEMORY[0x277D85DE8];

  return xdict;
}

- (void)create_xpc_representation
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2335F7000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end
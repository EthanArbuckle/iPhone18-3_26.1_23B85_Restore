@interface ATXHeuristicEventTimeUtilities
- (ATXHeuristicEventTimeUtilities)init;
- (id)travelTimeToEvent:(id)a3 destination:(id)a4 transportType:(id)a5 heuristicDevice:(id)a6;
@end

@implementation ATXHeuristicEventTimeUtilities

- (ATXHeuristicEventTimeUtilities)init
{
  v3.receiver = self;
  v3.super_class = ATXHeuristicEventTimeUtilities;
  return [(ATXHeuristicEventTimeUtilities *)&v3 init];
}

- (id)travelTimeToEvent:(id)a3 destination:(id)a4 transportType:(id)a5 heuristicDevice:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v37 = a4;
  v36 = a5;
  v12 = a6;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__17;
  v46 = __Block_byref_object_dispose__17;
  v47 = 0;
  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__17;
  v40[3] = __Block_byref_object_dispose__17;
  v41 = 0;
  if (v11)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [v11 startDate];
    v15 = [v13 compare:v14] == 1;

    if (v15)
    {
      v16 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicEventTimeUtilities travelTimeToEvent:destination:transportType:heuristicDevice:];
      }
    }

    v17 = [v11 startDate];
    v18 = [v17 dateByAddingTimeInterval:-600.0];

LABEL_12:
    v23 = [[ATXEventTravelTimeDataSource alloc] initWithDevice:v12];
    objc_storeStrong(&self->_event, a3);
    objc_storeStrong(&self->_dataSource, v23);
    objc_storeStrong(&self->_destination, a4);
    objc_storeStrong(&self->_transportType, a5);
    v24 = dispatch_semaphore_create(0);
    semaphore = self->_semaphore;
    self->_semaphore = v24;

    v26 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v11 eventIdentifier];
      v28 = [(CLPlacemark *)self->_destination name];
      *buf = 138412546;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      _os_log_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEventTimeUtilities: Calling datasource for time (Eid: %@), D:(%@)", buf, 0x16u);
    }

    v29 = [(EKEvent *)self->_event eventIdentifier];
    v30 = [(CLPlacemark *)self->_destination location];
    transportType = self->_transportType;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __94__ATXHeuristicEventTimeUtilities_travelTimeToEvent_destination_transportType_heuristicDevice___block_invoke;
    v38[3] = &unk_278C3D5B8;
    v38[5] = &v42;
    v38[6] = &v39;
    v38[4] = self;
    [(ATXEventTravelTimeDataSource *)v23 travelTimeInfoForEventID:v29 location:v30 expectedArrivalDate:v18 transportType:transportType localOnlyAfterFirstUpdate:1 callback:v38];

    [MEMORY[0x277D425A0] waitForSemaphore:self->_semaphore timeoutSeconds:1.0];
    if (*(v40[0] + 40))
    {
      v32 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicEventTimeUtilities travelTimeToEvent:v40 destination:? transportType:? heuristicDevice:?];
      }
    }

    v33 = v43[5];
    goto LABEL_19;
  }

  v19 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEventTimeUtilities: Event is nil, setting destination expiry time to an hour from now", buf, 2u);
  }

  v20 = [MEMORY[0x277CBEAA8] date];
  v18 = [v20 dateByAddingTimeInterval:3600.0];

  v21 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v37 name];
    *buf = 138412290;
    v49 = v22;
    _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEventTimeUtilities: Determining travel time: (event is nil), D:(%@)", buf, 0xCu);
  }

  if (v37)
  {
    goto LABEL_12;
  }

  v23 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
  {
    [ATXHeuristicEventTimeUtilities travelTimeToEvent:destination:transportType:heuristicDevice:];
  }

  v33 = 0;
LABEL_19:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v42, 8);

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void __94__ATXHeuristicEventTimeUtilities_travelTimeToEvent_destination_transportType_heuristicDevice___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1[4] + 40));
}

- (void)travelTimeToEvent:(uint64_t)a1 destination:transportType:heuristicDevice:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end
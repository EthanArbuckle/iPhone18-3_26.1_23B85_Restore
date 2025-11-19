@interface RTAssistantVehicleEventSearch
- (GEOLocationShifter)locationShifter;
- (OS_dispatch_queue)queue;
- (RTRoutineManager)routineManager;
- (void)performWithCompletion:(id)a3;
@end

@implementation RTAssistantVehicleEventSearch

- (OS_dispatch_queue)queue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_create("com.apple.coreroutine.assistant", 0);
    v5 = self->_queue;
    self->_queue = v4;

    queue = self->_queue;
  }

  return queue;
}

- (RTRoutineManager)routineManager
{
  routineManager = self->_routineManager;
  if (!routineManager)
  {
    v4 = objc_opt_new();
    v5 = self->_routineManager;
    self->_routineManager = v4;

    routineManager = self->_routineManager;
  }

  return routineManager;
}

- (GEOLocationShifter)locationShifter
{
  locationShifter = self->_locationShifter;
  if (!locationShifter)
  {
    v4 = objc_opt_new();
    v5 = self->_locationShifter;
    self->_locationShifter = v4;

    locationShifter = self->_locationShifter;
  }

  return locationShifter;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = sub_23354337C(qword_27DE0EC30);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233541000, v5, OS_LOG_TYPE_INFO, "Received vehicle event search command.", buf, 2u);
    }
  }

  v6 = [(RTAssistantVehicleEventSearch *)self routineManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_233542668;
  v8[3] = &unk_2789DF3D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fetchLastVehicleEventsWithHandler:v8];
}

@end
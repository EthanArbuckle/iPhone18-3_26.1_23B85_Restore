@interface RTAssistantVehicleEventCreate
- (RTRoutineManager)routineManager;
- (void)performWithCompletion:(id)completion;
@end

@implementation RTAssistantVehicleEventCreate

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

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  location = [(SALocalSearchVehicleEventCreate *)self location];

  if (location)
  {
    location2 = [(SALocalSearchVehicleEventCreate *)self location];
    latitude = [location2 latitude];
    [latitude doubleValue];
    v9 = v8;
    [(SALocalSearchVehicleEventCreate *)self location];
    v10 = v33 = completionCopy;
    longitude = [v10 longitude];
    [longitude doubleValue];
    v13 = v12;

    if ([MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{v9, v13}])
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    location3 = [(SALocalSearchVehicleEventCreate *)self location];
    latitude2 = [location3 latitude];
    [latitude2 doubleValue];
    v19 = v18;
    location4 = [(SALocalSearchVehicleEventCreate *)self location];
    longitude2 = [location4 longitude];
    [longitude2 doubleValue];
    v23 = CLLocationCoordinate2DMake(v19, v22);
    location5 = [(SALocalSearchVehicleEventCreate *)self location];
    accuracy = [location5 accuracy];
    [accuracy doubleValue];
    v27 = v26;
    date = [MEMORY[0x277CBEAA8] date];
    v29 = [v15 initWithCoordinate:date altitude:v14 horizontalAccuracy:v23.latitude verticalAccuracy:v23.longitude timestamp:0.0 referenceFrame:{v27, -1.0}];

    completionCopy = v33;
  }

  else
  {
    v29 = 0;
  }

  routineManager = [(RTAssistantVehicleEventCreate *)self routineManager];
  notes = [(SALocalSearchVehicleEventCreate *)self notes];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_233542114;
  v34[3] = &unk_2789DF2E8;
  v35 = completionCopy;
  v32 = completionCopy;
  [routineManager vehicleEventAtLocation:v29 notes:notes handler:v34];
}

@end
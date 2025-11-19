@interface RTAssistantVehicleEventCreate
- (RTRoutineManager)routineManager;
- (void)performWithCompletion:(id)a3;
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

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SALocalSearchVehicleEventCreate *)self location];

  if (v5)
  {
    v6 = [(SALocalSearchVehicleEventCreate *)self location];
    v7 = [v6 latitude];
    [v7 doubleValue];
    v9 = v8;
    [(SALocalSearchVehicleEventCreate *)self location];
    v10 = v33 = v4;
    v11 = [v10 longitude];
    [v11 doubleValue];
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
    v16 = [(SALocalSearchVehicleEventCreate *)self location];
    v17 = [v16 latitude];
    [v17 doubleValue];
    v19 = v18;
    v20 = [(SALocalSearchVehicleEventCreate *)self location];
    v21 = [v20 longitude];
    [v21 doubleValue];
    v23 = CLLocationCoordinate2DMake(v19, v22);
    v24 = [(SALocalSearchVehicleEventCreate *)self location];
    v25 = [v24 accuracy];
    [v25 doubleValue];
    v27 = v26;
    v28 = [MEMORY[0x277CBEAA8] date];
    v29 = [v15 initWithCoordinate:v28 altitude:v14 horizontalAccuracy:v23.latitude verticalAccuracy:v23.longitude timestamp:0.0 referenceFrame:{v27, -1.0}];

    v4 = v33;
  }

  else
  {
    v29 = 0;
  }

  v30 = [(RTAssistantVehicleEventCreate *)self routineManager];
  v31 = [(SALocalSearchVehicleEventCreate *)self notes];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_233542114;
  v34[3] = &unk_2789DF2E8;
  v35 = v4;
  v32 = v4;
  [v30 vehicleEventAtLocation:v29 notes:v31 handler:v34];
}

@end
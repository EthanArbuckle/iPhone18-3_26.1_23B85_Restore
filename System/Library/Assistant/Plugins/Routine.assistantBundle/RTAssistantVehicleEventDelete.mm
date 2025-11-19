@interface RTAssistantVehicleEventDelete
- (RTRoutineManager)routineManager;
- (void)performWithCompletion:(id)a3;
@end

@implementation RTAssistantVehicleEventDelete

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
  v5 = [(RTAssistantVehicleEventDelete *)self routineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2335432E0;
  v7[3] = &unk_2789DF400;
  v8 = v4;
  v6 = v4;
  [v5 clearAllVehicleEventsWithHandler:v7];
}

@end
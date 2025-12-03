@interface CarMapsActionController
- (CarMapsActionController)initWithPlatformController:(id)controller;
- (CarStateManager)carStateManager;
- (void)_applyActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source;
@end

@implementation CarMapsActionController

- (void)_applyActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source
{
  activityCopy = activity;
  carStateManager = [(CarMapsActionController *)self carStateManager];
  [carStateManager setMapsActivity:activityCopy assumedSourceFidelity:fidelity source:source];
}

- (CarStateManager)carStateManager
{
  carStateManager = self->_carStateManager;
  if (!carStateManager)
  {
    v4 = [(AppStateManager *)[CarStateManager alloc] initWithPlatformController:self->_platformController];
    v5 = self->_carStateManager;
    self->_carStateManager = v4;

    carStateManager = self->_carStateManager;
  }

  return carStateManager;
}

- (CarMapsActionController)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CarMapsActionController;
  v6 = [(MapsActionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, controller);
  }

  return v7;
}

@end
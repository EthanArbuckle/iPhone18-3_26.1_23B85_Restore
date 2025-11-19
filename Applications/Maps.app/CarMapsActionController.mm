@interface CarMapsActionController
- (CarMapsActionController)initWithPlatformController:(id)a3;
- (CarStateManager)carStateManager;
- (void)_applyActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5;
@end

@implementation CarMapsActionController

- (void)_applyActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5
{
  v8 = a3;
  v9 = [(CarMapsActionController *)self carStateManager];
  [v9 setMapsActivity:v8 assumedSourceFidelity:a4 source:a5];
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

- (CarMapsActionController)initWithPlatformController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CarMapsActionController;
  v6 = [(MapsActionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, a3);
  }

  return v7;
}

@end
@interface RoutePlanningVehicleSelectionTableViewCell
- (void)setupWithVehicle:(id)vehicle;
@end

@implementation RoutePlanningVehicleSelectionTableViewCell

- (void)setupWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  displayName = [vehicleCopy displayName];
  [(UILabel *)self->_textLabel setText:displayName];

  licensePlate = [vehicleCopy licensePlate];

  [(UILabel *)self->_detailTextLabel setText:licensePlate];
}

@end
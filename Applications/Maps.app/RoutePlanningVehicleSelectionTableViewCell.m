@interface RoutePlanningVehicleSelectionTableViewCell
- (void)setupWithVehicle:(id)a3;
@end

@implementation RoutePlanningVehicleSelectionTableViewCell

- (void)setupWithVehicle:(id)a3
{
  v4 = a3;
  v5 = [v4 displayName];
  [(UILabel *)self->_textLabel setText:v5];

  v6 = [v4 licensePlate];

  [(UILabel *)self->_detailTextLabel setText:v6];
}

@end
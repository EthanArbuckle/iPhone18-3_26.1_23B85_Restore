@interface ChargingStatusViewTableCell
- (ChargingStatusViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation ChargingStatusViewTableCell

- (ChargingStatusViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = ChargingStatusViewTableCell;
  v9 = [(ChargingStatusViewTableCell *)&v13 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIChargingStatusTableViewCellKey"];
    contentConfiguration = [v10 contentConfiguration];
    [(ChargingStatusViewTableCell *)v9 setContentConfiguration:contentConfiguration];
  }

  return v9;
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = ChargingStatusViewTableCell;
  [(ChargingStatusViewTableCell *)&v3 setSeparatorStyle:0];
}

@end
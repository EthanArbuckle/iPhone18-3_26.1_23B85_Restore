@interface ChargingStatusViewTableCell
- (ChargingStatusViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation ChargingStatusViewTableCell

- (ChargingStatusViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = ChargingStatusViewTableCell;
  v9 = [(ChargingStatusViewTableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"PLBatteryUIChargingStatusTableViewCellKey"];
    v11 = [v10 contentConfiguration];
    [(ChargingStatusViewTableCell *)v9 setContentConfiguration:v11];
  }

  return v9;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = ChargingStatusViewTableCell;
  [(ChargingStatusViewTableCell *)&v3 setSeparatorStyle:0];
}

@end
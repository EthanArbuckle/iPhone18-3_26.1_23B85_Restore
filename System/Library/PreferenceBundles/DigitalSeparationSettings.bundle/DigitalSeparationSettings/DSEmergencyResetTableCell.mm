@interface DSEmergencyResetTableCell
- (DSEmergencyResetTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation DSEmergencyResetTableCell

- (DSEmergencyResetTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v7 = [NSString localizedStringForKey:@"SAFETY_RESET"];
  v8 = [NSString localizedStringForKey:@"SAFETY_RESET_CELL_DETAIL"];
  v11.receiver = self;
  v11.super_class = DSEmergencyResetTableCell;
  v9 = [(DSSafetyCheckFlowTableCell *)&v11 initWithStyle:a3 reuseIdentifier:v6 title:v7 detail:v8 systemImageNamed:@"person.2.gobackward"];

  return v9;
}

@end
@interface DSManageSharingTableCell
- (DSManageSharingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation DSManageSharingTableCell

- (DSManageSharingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v7 = [NSString localizedStringForKey:@"SHARING_ACTIVITY"];
  v8 = [NSString localizedStringForKey:@"SHARING_WELCOME_CELL_DETAIL"];
  v11.receiver = self;
  v11.super_class = DSManageSharingTableCell;
  v9 = [(DSSafetyCheckFlowTableCell *)&v11 initWithStyle:a3 reuseIdentifier:v6 title:v7 detail:v8 systemImageNamed:@"person.2.badge.gearshape.fill"];

  return v9;
}

@end
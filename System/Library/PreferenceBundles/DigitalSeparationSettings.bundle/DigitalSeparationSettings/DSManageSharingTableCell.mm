@interface DSManageSharingTableCell
- (DSManageSharingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DSManageSharingTableCell

- (DSManageSharingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [NSString localizedStringForKey:@"SHARING_ACTIVITY"];
  v8 = [NSString localizedStringForKey:@"SHARING_WELCOME_CELL_DETAIL"];
  v11.receiver = self;
  v11.super_class = DSManageSharingTableCell;
  v9 = [(DSSafetyCheckFlowTableCell *)&v11 initWithStyle:style reuseIdentifier:identifierCopy title:v7 detail:v8 systemImageNamed:@"person.2.badge.gearshape.fill"];

  return v9;
}

@end
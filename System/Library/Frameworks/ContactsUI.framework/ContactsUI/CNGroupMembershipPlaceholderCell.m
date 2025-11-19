@interface CNGroupMembershipPlaceholderCell
- (CNPropertyCellDelegate)delegate;
- (void)performDefaultAction;
@end

@implementation CNGroupMembershipPlaceholderCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performDefaultAction
{
  v4 = [(CNGroupMembershipPlaceholderCell *)self delegate];
  v3 = [(CNContactCell *)self cardGroupItem];
  [v4 propertyCell:self performActionForItem:v3 withTransportType:0];
}

@end
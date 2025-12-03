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
  delegate = [(CNGroupMembershipPlaceholderCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:0];
}

@end
@interface CNStaticIdentityPlaceholderCell
- (CNPropertyCellDelegate)delegate;
- (void)performDefaultAction;
@end

@implementation CNStaticIdentityPlaceholderCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performDefaultAction
{
  delegate = [(CNStaticIdentityPlaceholderCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:0];
}

@end
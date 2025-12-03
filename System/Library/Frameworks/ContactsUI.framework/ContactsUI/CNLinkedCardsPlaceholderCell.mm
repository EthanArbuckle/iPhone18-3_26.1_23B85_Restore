@interface CNLinkedCardsPlaceholderCell
- (CNPropertyCellDelegate)delegate;
- (void)performDefaultAction;
@end

@implementation CNLinkedCardsPlaceholderCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performDefaultAction
{
  delegate = [(CNLinkedCardsPlaceholderCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:0];
}

@end
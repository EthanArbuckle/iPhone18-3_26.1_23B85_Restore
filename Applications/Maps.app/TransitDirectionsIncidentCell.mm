@interface TransitDirectionsIncidentCell
- (TransitDirectionsIncidentCellDelegate)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation TransitDirectionsIncidentCell

- (TransitDirectionsIncidentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  stepView = [(TransitDirectionsCell *)self stepView];
  [stepView setDelegate:delegateCopy];
}

@end
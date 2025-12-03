@interface TransitDirectionsIncidentCollectionViewCell
- (TransitDirectionsIncidentCellDelegate)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation TransitDirectionsIncidentCollectionViewCell

- (TransitDirectionsIncidentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  stepView = [(TransitDirectionsCollectionViewCell *)self stepView];
  [stepView setDelegate:delegateCopy];
}

@end
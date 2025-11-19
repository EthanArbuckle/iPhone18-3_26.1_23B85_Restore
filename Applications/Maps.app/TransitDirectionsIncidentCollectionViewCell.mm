@interface TransitDirectionsIncidentCollectionViewCell
- (TransitDirectionsIncidentCellDelegate)delegate;
- (void)setDelegate:(id)a3;
@end

@implementation TransitDirectionsIncidentCollectionViewCell

- (TransitDirectionsIncidentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = [(TransitDirectionsCollectionViewCell *)self stepView];
  [v5 setDelegate:v4];
}

@end
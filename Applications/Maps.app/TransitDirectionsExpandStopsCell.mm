@interface TransitDirectionsExpandStopsCell
- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate;
- (void)setExpandableCellDelegate:(id)delegate;
@end

@implementation TransitDirectionsExpandStopsCell

- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableCellDelegate);

  return WeakRetained;
}

- (void)setExpandableCellDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_expandableCellDelegate, delegateCopy);
  [(TransitDirectionsStepView *)self->super.super._stepView setExpandableCellDelegate:delegateCopy];
}

@end
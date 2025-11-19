@interface TransitDirectionsExpandStopsCell
- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate;
- (void)setExpandableCellDelegate:(id)a3;
@end

@implementation TransitDirectionsExpandStopsCell

- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableCellDelegate);

  return WeakRetained;
}

- (void)setExpandableCellDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_expandableCellDelegate, v4);
  [(TransitDirectionsStepView *)self->super.super._stepView setExpandableCellDelegate:v4];
}

@end
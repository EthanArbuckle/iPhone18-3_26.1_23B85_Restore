@interface MKPlaceAttributionCellButton
- (MKPlaceAttributionCellButtonDelegate)buttonDelegate;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation MKPlaceAttributionCellButton

- (MKPlaceAttributionCellButtonDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    v4 = [(MKPlaceAttributionCellButton *)self buttonDelegate];
    [v4 attributionCellButton:self isHighighted:self->_highlighted executeAction:0];
  }
}

@end
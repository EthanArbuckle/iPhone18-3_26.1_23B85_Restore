@interface MKPlaceAttributionCellButton
- (MKPlaceAttributionCellButtonDelegate)buttonDelegate;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MKPlaceAttributionCellButton

- (MKPlaceAttributionCellButtonDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    buttonDelegate = [(MKPlaceAttributionCellButton *)self buttonDelegate];
    [buttonDelegate attributionCellButton:self isHighighted:self->_highlighted executeAction:0];
  }
}

@end
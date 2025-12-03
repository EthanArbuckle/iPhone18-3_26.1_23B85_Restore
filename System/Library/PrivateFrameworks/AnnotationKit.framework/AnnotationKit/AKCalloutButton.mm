@interface AKCalloutButton
- (AKCalloutBar)bar;
- (AKCalloutButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation AKCalloutButton

- (AKCalloutButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AKCalloutButton;
  v3 = [(AKCalloutButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKCalloutButton *)v3 setAdjustsImageWhenHighlighted:0];
    [(AKCalloutButton *)v4 setShowsTouchWhenHighlighted:0];
    v4->_position = -1;
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = AKCalloutButton;
  [(AKCalloutButton *)&v6 setHighlighted:?];
  v5 = [(AKCalloutButton *)self bar];
  [v5 setHighlighted:highlightedCopy forControl:self];
}

- (AKCalloutBar)bar
{
  WeakRetained = objc_loadWeakRetained(&self->_bar);

  return WeakRetained;
}

@end
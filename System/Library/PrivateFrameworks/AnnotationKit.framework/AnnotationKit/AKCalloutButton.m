@interface AKCalloutButton
- (AKCalloutBar)bar;
- (AKCalloutButton)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AKCalloutButton

- (AKCalloutButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKCalloutButton;
  v3 = [(AKCalloutButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKCalloutButton *)v3 setAdjustsImageWhenHighlighted:0];
    [(AKCalloutButton *)v4 setShowsTouchWhenHighlighted:0];
    v4->_position = -1;
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AKCalloutButton;
  [(AKCalloutButton *)&v6 setHighlighted:?];
  v5 = [(AKCalloutButton *)self bar];
  [v5 setHighlighted:v3 forControl:self];
}

- (AKCalloutBar)bar
{
  WeakRetained = objc_loadWeakRetained(&self->_bar);

  return WeakRetained;
}

@end
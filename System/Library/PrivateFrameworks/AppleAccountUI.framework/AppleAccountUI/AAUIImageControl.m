@interface AAUIImageControl
- (AAUIImageControl)initWithCoder:(id)a3;
- (AAUIImageControl)initWithFrame:(CGRect)a3;
- (void)_updateLabelVisibility;
- (void)_updateOverlayViewVisibility;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AAUIImageControl

- (AAUIImageControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AAUIImageControl;
  v3 = [(AAUIImageControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    _AAUIImageControlInit(v3);
  }

  return v4;
}

- (AAUIImageControl)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUIImageControl;
  v3 = [(AAUIImageControl *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _AAUIImageControlInit(v3);
  }

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AAUIImageControl;
  [(AAUIImageControl *)&v4 setEnabled:a3];
  [(AAUIImageControl *)self _updateLabelVisibility];
}

- (void)_updateLabelVisibility
{
  label = self->_label;
  v3 = [(AAUIImageControl *)self isEnabled]^ 1;

  [(AAUILabel *)label setHidden:v3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AAUIImageControl;
  [(AAUIImageControl *)&v5 setHighlighted:?];
  [(UIImageView *)self->_imageView setHighlighted:v3];
  [(AAUILabel *)self->_label setHighlighted:v3];
  [(AAUIImageControl *)self _updateOverlayViewVisibility];
}

- (void)_updateOverlayViewVisibility
{
  v3 = ![(AAUIImageControl *)self isEnabled]|| ([(AAUIImageControl *)self isHighlighted]& 1) == 0;
  overlayView = self->_overlayView;

  [(UIView *)overlayView setHidden:v3];
}

@end
@interface AAUIImageControl
- (AAUIImageControl)initWithCoder:(id)a3;
- (AAUIImageControl)initWithFrame:(CGRect)a3;
- (void)_updateLabelVisibility;
- (void)_updateOverlayViewVisibility;
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
    sub_5A4C(v3);
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
    sub_5A4C(v3);
  }

  return v4;
}

- (void)_updateLabelVisibility
{
  label = self->_label;
  v3 = [(AAUIImageControl *)self isEnabled]^ 1;

  [(AAUILabel *)label setHidden:v3];
}

- (void)_updateOverlayViewVisibility
{
  v3 = ![(AAUIImageControl *)self isEnabled]|| ([(AAUIImageControl *)self isHighlighted]& 1) == 0;
  overlayView = self->_overlayView;

  [(UIView *)overlayView setHidden:v3];
}

@end
@interface AAUIImageControl
- (AAUIImageControl)initWithCoder:(id)coder;
- (AAUIImageControl)initWithFrame:(CGRect)frame;
- (void)_updateLabelVisibility;
- (void)_updateOverlayViewVisibility;
@end

@implementation AAUIImageControl

- (AAUIImageControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AAUIImageControl;
  v3 = [(AAUIImageControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    sub_5A4C(v3);
  }

  return v4;
}

- (AAUIImageControl)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUIImageControl;
  v3 = [(AAUIImageControl *)&v6 initWithCoder:coder];
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
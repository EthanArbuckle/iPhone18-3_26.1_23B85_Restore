@interface AAUIImageControl
- (AAUIImageControl)initWithCoder:(id)coder;
- (AAUIImageControl)initWithFrame:(CGRect)frame;
- (void)_updateLabelVisibility;
- (void)_updateOverlayViewVisibility;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
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
    _AAUIImageControlInit(v3);
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
    _AAUIImageControlInit(v3);
  }

  return v4;
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = AAUIImageControl;
  [(AAUIImageControl *)&v4 setEnabled:enabled];
  [(AAUIImageControl *)self _updateLabelVisibility];
}

- (void)_updateLabelVisibility
{
  label = self->_label;
  v3 = [(AAUIImageControl *)self isEnabled]^ 1;

  [(AAUILabel *)label setHidden:v3];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = AAUIImageControl;
  [(AAUIImageControl *)&v5 setHighlighted:?];
  [(UIImageView *)self->_imageView setHighlighted:highlightedCopy];
  [(AAUILabel *)self->_label setHighlighted:highlightedCopy];
  [(AAUIImageControl *)self _updateOverlayViewVisibility];
}

- (void)_updateOverlayViewVisibility
{
  v3 = ![(AAUIImageControl *)self isEnabled]|| ([(AAUIImageControl *)self isHighlighted]& 1) == 0;
  overlayView = self->_overlayView;

  [(UIView *)overlayView setHidden:v3];
}

@end
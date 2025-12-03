@interface AXLocCaptionPanelUILockButton
- (void)drawRect:(CGRect)rect;
- (void)setLocked:(BOOL)locked;
@end

@implementation AXLocCaptionPanelUILockButton

- (void)setLocked:(BOOL)locked
{
  if (self->_locked != locked)
  {
    self->_locked = locked;
    [(AXLocCaptionPanelUILockButton *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  v6 = [UIBezierPath bezierPathWithOvalInRect:0.25, 0.25, 19.5, 19.5];
  [v6 setLineWidth:0.5];
  v4 = [UIColor colorWithWhite:1.0 alpha:1.0];
  [v4 set];

  [v6 stroke];
  if (self->_locked)
  {
    v5 = [UIColor colorWithWhite:1.0 alpha:0.75];
    [v5 set];

    [v6 fill];
  }
}

@end
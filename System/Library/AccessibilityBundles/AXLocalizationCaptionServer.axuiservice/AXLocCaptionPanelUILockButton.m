@interface AXLocCaptionPanelUILockButton
- (void)drawRect:(CGRect)a3;
- (void)setLocked:(BOOL)a3;
@end

@implementation AXLocCaptionPanelUILockButton

- (void)setLocked:(BOOL)a3
{
  if (self->_locked != a3)
  {
    self->_locked = a3;
    [(AXLocCaptionPanelUILockButton *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
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
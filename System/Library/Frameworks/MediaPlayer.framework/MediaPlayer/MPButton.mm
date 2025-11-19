@interface MPButton
+ (UIEdgeInsets)easyTouchDefaultHitRectInsets;
+ (id)easyTouchButtonWithType:(int64_t)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (MPButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)hitRectInsets;
- (void)_delayedTriggerHold;
- (void)_handleTouchCancel;
- (void)_handleTouchDown;
- (void)_handleTouchUp;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAlignmentRectInsets:(UIEdgeInsets)a3;
- (void)setHitTestDebugEnabled:(BOOL)a3;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation MPButton

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MPButton;
  [(MPButton *)&v4 layoutSubviews];
  hitTestDebugView = self->_hitTestDebugView;
  [(MPButton *)self hitRect];
  [(UIView *)hitTestDebugView setFrame:?];
}

- (CGRect)hitRect
{
  v13.receiver = self;
  v13.super_class = MPButton;
  [(MPButton *)&v13 hitRect];
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  v6 = v5 + left;
  v8 = v7 - (left + self->_hitRectInsets.right);
  v10 = v9 + top;
  v12 = v11 - (top + self->_hitRectInsets.bottom);
  result.size.height = v12;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v6;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  bottom = self->_hitRectInsets.bottom;
  right = self->_hitRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_handleTouchUp
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedTriggerHold object:0];
  if ([(MPButton *)self isHolding])
  {

    [(MPButton *)self sendActionsForControlEvents:0x2000000];
  }
}

- (void)_handleTouchDown
{
  [(MPButton *)self holdDelayInterval];

  [(MPButton *)self performSelector:sel__delayedTriggerHold withObject:0 afterDelay:?];
}

- (void)_handleTouchCancel
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedTriggerHold object:0];
  if ([(MPButton *)self isHolding])
  {

    [(MPButton *)self sendActionsForControlEvents:0x2000000];
  }
}

- (void)_delayedTriggerHold
{
  *(self + 744) |= 1u;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];

  [(MPButton *)self sendActionsForControlEvents:0x1000000];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPButton;
  [(MPButton *)&v5 touchesEnded:a3 withEvent:a4];
  *(self + 744) &= ~1u;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPButton;
  [(MPButton *)&v5 touchesCancelled:a3 withEvent:a4];
  *(self + 744) &= ~1u;
}

- (void)setHitTestDebugEnabled:(BOOL)a3
{
  if (self->_hitTestDebugEnabled != a3)
  {
    self->_hitTestDebugEnabled = a3;
    hitTestDebugView = self->_hitTestDebugView;
    if (a3)
    {
      if (!hitTestDebugView)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v6 = self->_hitTestDebugView;
        self->_hitTestDebugView = v5;

        [(UIView *)self->_hitTestDebugView setUserInteractionEnabled:0];
        v7 = [MEMORY[0x1E69DC888] redColor];
        v8 = [v7 CGColor];
        v9 = [(UIView *)self->_hitTestDebugView layer];
        [v9 setBorderColor:v8];

        v10 = [(UIView *)self->_hitTestDebugView layer];
        [v10 setBorderWidth:1.0];

        v11 = [MEMORY[0x1E69DC888] redColor];
        v12 = [v11 colorWithAlphaComponent:0.1];
        [(UIView *)self->_hitTestDebugView setBackgroundColor:v12];

        hitTestDebugView = self->_hitTestDebugView;
      }

      [(MPButton *)self addSubview:hitTestDebugView];

      [(MPButton *)self setNeedsLayout];
    }

    else
    {
      [(UIView *)self->_hitTestDebugView removeFromSuperview];
      v13 = self->_hitTestDebugView;
      self->_hitTestDebugView = 0;
    }
  }
}

- (void)setAlignmentRectInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_alignmentRectInsets.top, v3), vceqq_f64(*&self->_alignmentRectInsets.bottom, v4)))) & 1) == 0)
  {
    self->_alignmentRectInsets = a3;
    v5 = [(MPButton *)self superview];
    [v5 setNeedsLayout];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MPButton *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPButton;
  [(MPButton *)&v5 endTrackingWithTouch:a3 withEvent:a4];
  [(MPButton *)self _handleTouchUp];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPButton;
  [(MPButton *)&v4 cancelTrackingWithEvent:a3];
  [(MPButton *)self _handleTouchCancel];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MPButton *)self _handleTouchDown];
  v9.receiver = self;
  v9.super_class = MPButton;
  LOBYTE(self) = [(MPButton *)&v9 beginTrackingWithTouch:v7 withEvent:v6];

  return self;
}

- (MPButton)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MPButton;
  result = [(MPButton *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_holdDelayInterval = 0.75;
  }

  return result;
}

+ (id)easyTouchButtonWithType:(int64_t)a3
{
  v3 = [objc_opt_class() buttonWithType:a3];
  [objc_opt_class() easyTouchDefaultHitRectInsets];
  [v3 setHitRectInsets:?];

  return v3;
}

+ (UIEdgeInsets)easyTouchDefaultHitRectInsets
{
  v2 = -20.0;
  v3 = -20.0;
  v4 = -20.0;
  v5 = -20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end
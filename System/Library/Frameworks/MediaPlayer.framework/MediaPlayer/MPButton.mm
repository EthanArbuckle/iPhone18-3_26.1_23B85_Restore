@interface MPButton
+ (UIEdgeInsets)easyTouchDefaultHitRectInsets;
+ (id)easyTouchButtonWithType:(int64_t)type;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (MPButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)hitRectInsets;
- (void)_delayedTriggerHold;
- (void)_handleTouchCancel;
- (void)_handleTouchDown;
- (void)_handleTouchUp;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAlignmentRectInsets:(UIEdgeInsets)insets;
- (void)setHitTestDebugEnabled:(BOOL)enabled;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MPButton;
  [(MPButton *)&v5 touchesEnded:ended withEvent:event];
  *(self + 744) &= ~1u;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MPButton;
  [(MPButton *)&v5 touchesCancelled:cancelled withEvent:event];
  *(self + 744) &= ~1u;
}

- (void)setHitTestDebugEnabled:(BOOL)enabled
{
  if (self->_hitTestDebugEnabled != enabled)
  {
    self->_hitTestDebugEnabled = enabled;
    hitTestDebugView = self->_hitTestDebugView;
    if (enabled)
    {
      if (!hitTestDebugView)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v6 = self->_hitTestDebugView;
        self->_hitTestDebugView = v5;

        [(UIView *)self->_hitTestDebugView setUserInteractionEnabled:0];
        redColor = [MEMORY[0x1E69DC888] redColor];
        cGColor = [redColor CGColor];
        layer = [(UIView *)self->_hitTestDebugView layer];
        [layer setBorderColor:cGColor];

        layer2 = [(UIView *)self->_hitTestDebugView layer];
        [layer2 setBorderWidth:1.0];

        redColor2 = [MEMORY[0x1E69DC888] redColor];
        v12 = [redColor2 colorWithAlphaComponent:0.1];
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

- (void)setAlignmentRectInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_alignmentRectInsets.top, v3), vceqq_f64(*&self->_alignmentRectInsets.bottom, v4)))) & 1) == 0)
  {
    self->_alignmentRectInsets = insets;
    superview = [(MPButton *)self superview];
    [superview setNeedsLayout];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MPButton *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MPButton;
  [(MPButton *)&v5 endTrackingWithTouch:touch withEvent:event];
  [(MPButton *)self _handleTouchUp];
}

- (void)cancelTrackingWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = MPButton;
  [(MPButton *)&v4 cancelTrackingWithEvent:event];
  [(MPButton *)self _handleTouchCancel];
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [(MPButton *)self _handleTouchDown];
  v9.receiver = self;
  v9.super_class = MPButton;
  LOBYTE(self) = [(MPButton *)&v9 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return self;
}

- (MPButton)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = MPButton;
  result = [(MPButton *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_holdDelayInterval = 0.75;
  }

  return result;
}

+ (id)easyTouchButtonWithType:(int64_t)type
{
  v3 = [objc_opt_class() buttonWithType:type];
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
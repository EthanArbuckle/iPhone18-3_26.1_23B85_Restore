@interface TSWButton
- (UIEdgeInsets)hitRegionEdgeInsets;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation TSWButton

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  [(TSWButton *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TSWButton *)selfCopy hitRegionEdgeInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (([(TSWButton *)selfCopy isHidden]& 1) != 0 || (v25.origin.x = v7 + v17, v25.origin.y = v9 + v15, v25.size.width = v11 - (v17 + v21), v25.size.height = v13 - (v15 + v19), !CGRectContainsPoint(v25, test)))
  {
    v24.receiver = selfCopy;
    v24.super_class = TSWButton;
    return [(TSWButton *)&v24 hitTest:event withEvent:test.x, test.y];
  }

  return selfCopy;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  +[CATransaction begin];
  v5.receiver = self;
  v5.super_class = TSWButton;
  [(TSWButton *)&v5 setHighlighted:highlightedCopy];
  +[CATransaction commit];
}

- (UIEdgeInsets)hitRegionEdgeInsets
{
  top = self->mHitRegionEdgeInsets.top;
  left = self->mHitRegionEdgeInsets.left;
  bottom = self->mHitRegionEdgeInsets.bottom;
  right = self->mHitRegionEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
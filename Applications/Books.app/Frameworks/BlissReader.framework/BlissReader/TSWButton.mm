@interface TSWButton
- (UIEdgeInsets)hitRegionEdgeInsets;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation TSWButton

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v5 = self;
  [(TSWButton *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TSWButton *)v5 hitRegionEdgeInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (([(TSWButton *)v5 isHidden]& 1) != 0 || (v25.origin.x = v7 + v17, v25.origin.y = v9 + v15, v25.size.width = v11 - (v17 + v21), v25.size.height = v13 - (v15 + v19), !CGRectContainsPoint(v25, a3)))
  {
    v24.receiver = v5;
    v24.super_class = TSWButton;
    return [(TSWButton *)&v24 hitTest:a4 withEvent:a3.x, a3.y];
  }

  return v5;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  +[CATransaction begin];
  v5.receiver = self;
  v5.super_class = TSWButton;
  [(TSWButton *)&v5 setHighlighted:v3];
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
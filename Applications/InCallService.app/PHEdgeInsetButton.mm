@interface PHEdgeInsetButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)touchAreaEdgeInsets;
@end

@implementation PHEdgeInsetButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(PHEdgeInsetButton *)self touchAreaEdgeInsets];
  v9.f64[1] = v8;
  v11.f64[1] = v10;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *&UIEdgeInsetsZero.top), vceqq_f64(v11, *&UIEdgeInsetsZero.bottom)))))
  {
    v29.receiver = self;
    v29.super_class = PHEdgeInsetButton;
    v26 = [(PHEdgeInsetButton *)&v29 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    [(PHEdgeInsetButton *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(PHEdgeInsetButton *)self touchAreaEdgeInsets];
    v21 = v15 + v20;
    v24 = v17 - (v22 + v23);
    v31.size.height = v19 - (v20 + v25);
    v31.origin.x = v13 + v22;
    v31.origin.y = v21;
    v31.size.width = v24;
    v30.x = x;
    v30.y = y;
    v26 = CGRectContainsPoint(v31, v30);
  }

  v27 = v26;

  return v27;
}

- (UIEdgeInsets)touchAreaEdgeInsets
{
  top = self->_touchAreaEdgeInsets.top;
  left = self->_touchAreaEdgeInsets.left;
  bottom = self->_touchAreaEdgeInsets.bottom;
  right = self->_touchAreaEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
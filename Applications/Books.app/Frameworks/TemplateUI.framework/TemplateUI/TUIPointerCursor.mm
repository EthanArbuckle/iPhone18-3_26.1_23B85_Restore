@interface TUIPointerCursor
+ (id)defaultPointerCursor;
- (BOOL)isEqual:(id)a3;
- (TUIPointerCursor)init;
- (TUIPointerCursor)initWithOther:(id)a3;
- (TUIPointerCursor)pointerCursorWithCornerRadius:(double)a3;
- (TUIPointerCursor)pointerCursorWithInsets:(UIEdgeInsets)a3;
- (TUIPointerCursor)pointerCursorWithScale:(double)a3;
- (TUIPointerCursor)pointerCursorWithShape:(int64_t)a3;
- (UIEdgeInsets)insets;
- (id)pointerShapeWithBounds:(CGRect)a3 preview:(id)a4;
@end

@implementation TUIPointerCursor

- (TUIPointerCursor)init
{
  v4.receiver = self;
  v4.super_class = TUIPointerCursor;
  result = [(TUIPointerCursor *)&v4 init];
  if (result)
  {
    v3 = vdupq_n_s64(0x7FF8000000000000uLL);
    result->_shape = 0;
    *&result->_insets.top = v3;
    *&result->_insets.bottom = v3;
    *&result->_cornerRadius = xmmword_24D4E0;
  }

  return result;
}

+ (id)defaultPointerCursor
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TUIPointerCursor)initWithOther:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUIPointerCursor;
  v5 = [(TUIPointerCursor *)&v13 init];
  if (v5)
  {
    v5->_shape = [v4 shape];
    [v4 insets];
    v5->_insets.top = v6;
    v5->_insets.left = v7;
    v5->_insets.bottom = v8;
    v5->_insets.right = v9;
    [v4 cornerRadius];
    v5->_cornerRadius = v10;
    [v4 scale];
    v5->_scale = v11;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7 == self;
  if (v7)
  {
    v9 = v7 == self;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = self->_shape == v7->_shape && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *&v7->_insets.top), vceqq_f64(*&self->_insets.bottom, *&v7->_insets.bottom)))) & 1) != 0 && self->_cornerRadius == v7->_cornerRadius && self->_scale == v7->_scale;
  }

  return v8;
}

- (TUIPointerCursor)pointerCursorWithShape:(int64_t)a3
{
  v4 = self;
  if (v4->_shape != a3)
  {
    v5 = [[TUIPointerCursor alloc] initWithOther:v4];

    [(TUIPointerCursor *)v5 setShape:a3];
    v4 = v5;
  }

  return v4;
}

- (TUIPointerCursor)pointerCursorWithInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
  v3 = self;
  v4.f64[0] = top;
  v4.f64[1] = left;
  v5.f64[0] = bottom;
  v5.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v3->_insets.top, v4), vceqq_f64(*&v3->_insets.bottom, v5)))) & 1) == 0)
  {
    v6 = [[TUIPointerCursor alloc] initWithOther:v3];

    [(TUIPointerCursor *)v6 setInsets:top, left, bottom, right];
    v3 = v6;
  }

  return v3;
}

- (TUIPointerCursor)pointerCursorWithCornerRadius:(double)a3
{
  v4 = self;
  if (v4->_cornerRadius != a3)
  {
    v5 = [[TUIPointerCursor alloc] initWithOther:v4];

    [(TUIPointerCursor *)v5 setCornerRadius:a3];
    v4 = v5;
  }

  return v4;
}

- (TUIPointerCursor)pointerCursorWithScale:(double)a3
{
  v4 = self;
  if (v4->_scale != a3)
  {
    v5 = [[TUIPointerCursor alloc] initWithOther:v4];

    [(TUIPointerCursor *)v5 setScale:a3];
    v4 = v5;
  }

  return v4;
}

- (id)pointerShapeWithBounds:(CGRect)a3 preview:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  left = self->_insets.left;
  top = self->_insets.top;
  v12 = x + left;
  v13 = y + top;
  v14 = width - (left + self->_insets.right);
  v15 = height - (top + self->_insets.bottom);
  if (self->_scale != 1.0)
  {
    v31.origin.x = v12;
    v31.origin.y = v13;
    v31.size.width = v14;
    v31.size.height = v15;
    MidX = CGRectGetMidX(v31);
    v32.origin.x = v12;
    v32.origin.y = v13;
    v32.size.width = v14;
    v32.size.height = v15;
    MidY = CGRectGetMidY(v32);
    v33.origin.x = v12;
    v33.origin.y = v13;
    v33.size.width = v14;
    v33.size.height = v15;
    v18 = CGRectGetWidth(v33);
    v34.origin.x = v12;
    v34.origin.y = v13;
    v34.size.width = v14;
    v34.size.height = v15;
    v19 = CGRectGetHeight(v34);
    scale = self->_scale;
    v14 = v18 * scale;
    v15 = v19 * scale;
    v12 = MidX - v18 * scale * 0.5;
    v13 = MidY - v19 * scale * 0.5;
  }

  shape = self->_shape;
  if (shape == 1)
  {
    v28 = [UIPointerShape shapeWithRoundedRect:v12 cornerRadius:v13, v14, v15, self->_cornerRadius];
  }

  else if (shape == 2)
  {
    v35.origin.x = v12;
    v35.origin.y = v13;
    v35.size.width = v14;
    v35.size.height = v15;
    v22 = CGRectGetMidX(v35);
    v36.origin.x = v12;
    v36.origin.y = v13;
    v36.size.width = v14;
    v36.size.height = v15;
    v23 = CGRectGetMidY(v36);
    v37.origin.x = v12;
    v37.origin.y = v13;
    v37.size.width = v14;
    v37.size.height = v15;
    v24 = CGRectGetWidth(v37);
    v38.origin.x = v12;
    v38.origin.y = v13;
    v38.size.width = v14;
    v38.size.height = v15;
    v25 = CGRectGetHeight(v38);
    if (v24 >= v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    v27 = [UIBezierPath bezierPathWithOvalInRect:v22 - v26 * 0.5, v23 - v26 * 0.5, v26, v26];
    v28 = [UIPointerShape shapeWithPath:v27];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
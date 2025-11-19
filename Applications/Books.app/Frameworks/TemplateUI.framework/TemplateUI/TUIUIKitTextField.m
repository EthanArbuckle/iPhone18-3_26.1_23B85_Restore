@interface TUIUIKitTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (UIEdgeInsets)editingInsets;
- (void)layoutSubviews;
@end

@implementation TUIUIKitTextField

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TUIUIKitTextField;
  [(TUIUIKitTextField *)&v4 layoutSubviews];
  v3 = [(TUIUIKitTextField *)self _fieldEditor];
  if (v3)
  {
    [(TUIUIKitTextField *)self bringSubviewToFront:v3];
  }
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = TUIUIKitTextField;
  [(TUIUIKitTextField *)&v22 textRectForBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (!CGRectIsEmpty(v23))
  {
    v16 = *&self->_editingInsets.top;
    v17 = *&self->_editingInsets.bottom;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&UIEdgeInsetsZero.top, v16), vceqq_f64(*&UIEdgeInsetsZero.bottom, v17)))) & 1) == 0)
    {
      v9 = v9 + v16.f64[1];
      v11 = v11 + v16.f64[0];
      v13 = v13 - (v16.f64[1] + v17.f64[1]);
      v15 = v15 - (v16.f64[0] + v17.f64[0]);
    }
  }

  v18 = v9;
  v19 = v11;
  v20 = v13;
  v21 = v15;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  [(TUIUIKitTextField *)self textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIEdgeInsets)editingInsets
{
  top = self->_editingInsets.top;
  left = self->_editingInsets.left;
  bottom = self->_editingInsets.bottom;
  right = self->_editingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
@interface AAUILabel
- (AAUILabel)initWithCoder:(id)a3;
- (AAUILabel)initWithEdgeInsets:(UIEdgeInsets)a3;
- (AAUILabel)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)edgeInsets;
- (void)drawTextInRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AAUILabel

- (AAUILabel)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = AAUILabel;
  result = [(AAUILabel *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    v4 = *&UIEdgeInsetsZero.bottom;
    *&result->_edgeInsets.top = *&UIEdgeInsetsZero.top;
    *&result->_edgeInsets.bottom = v4;
  }

  return result;
}

- (AAUILabel)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AAUILabel;
  result = [(AAUILabel *)&v5 initWithCoder:a3];
  if (result)
  {
    v4 = *&UIEdgeInsetsZero.bottom;
    *&result->_edgeInsets.top = *&UIEdgeInsetsZero.top;
    *&result->_edgeInsets.bottom = v4;
  }

  return result;
}

- (AAUILabel)initWithEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8.receiver = self;
  v8.super_class = AAUILabel;
  result = [(AAUILabel *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (result)
  {
    result->_edgeInsets.top = top;
    result->_edgeInsets.left = left;
    result->_edgeInsets.bottom = bottom;
    result->_edgeInsets.right = right;
  }

  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  v3 = *&self->_edgeInsets.top;
  v4 = *&self->_edgeInsets.bottom;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&UIEdgeInsetsZero.top), vceqq_f64(v4, *&UIEdgeInsetsZero.bottom)))))
  {
    [(AAUILabel *)&v6 drawTextInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, v5.receiver, v5.super_class, self, AAUILabel];
  }

  else
  {
    [(AAUILabel *)&v5 drawTextInRect:a3.origin.x + v3.f64[1], a3.origin.y + v3.f64[0], a3.size.width - (v3.f64[1] + v4.f64[1]), a3.size.height - (v3.f64[0] + v4.f64[0]), self, AAUILabel, v6.receiver, v6.super_class];
  }
}

- (CGSize)intrinsicContentSize
{
  v7.receiver = self;
  v7.super_class = AAUILabel;
  [(AAUILabel *)&v7 intrinsicContentSize];
  v4 = v3 + self->_edgeInsets.left + self->_edgeInsets.right;
  v6 = v5 + self->_edgeInsets.top + self->_edgeInsets.bottom;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  [(AAUILabel *)self bounds];
  [(AAUILabel *)self setPreferredMaxLayoutWidth:CGRectGetWidth(v4)];
  v3.receiver = self;
  v3.super_class = AAUILabel;
  [(AAUILabel *)&v3 layoutSubviews];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
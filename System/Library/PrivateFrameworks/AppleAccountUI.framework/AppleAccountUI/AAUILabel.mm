@interface AAUILabel
- (AAUILabel)initWithCoder:(id)coder;
- (AAUILabel)initWithEdgeInsets:(UIEdgeInsets)insets;
- (AAUILabel)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)edgeInsets;
- (void)drawTextInRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation AAUILabel

- (AAUILabel)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AAUILabel;
  result = [(AAUILabel *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&result->_edgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&result->_edgeInsets.bottom = v4;
  }

  return result;
}

- (AAUILabel)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AAUILabel;
  result = [(AAUILabel *)&v5 initWithCoder:coder];
  if (result)
  {
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&result->_edgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&result->_edgeInsets.bottom = v4;
  }

  return result;
}

- (AAUILabel)initWithEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8.receiver = self;
  v8.super_class = AAUILabel;
  result = [(AAUILabel *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    result->_edgeInsets.top = top;
    result->_edgeInsets.left = left;
    result->_edgeInsets.bottom = bottom;
    result->_edgeInsets.right = right;
  }

  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  v3 = *&self->_edgeInsets.top;
  v4 = *&self->_edgeInsets.bottom;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *MEMORY[0x1E69DDCE0]), vceqq_f64(v4, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    [(AAUILabel *)&v6 drawTextInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v5.receiver, v5.super_class, self, AAUILabel];
  }

  else
  {
    [(AAUILabel *)&v5 drawTextInRect:rect.origin.x + v3.f64[1], rect.origin.y + v3.f64[0], rect.size.width - (v3.f64[1] + v4.f64[1]), rect.size.height - (v3.f64[0] + v4.f64[0]), self, AAUILabel, v6.receiver, v6.super_class];
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
@interface AVTAttributeSectionSeparator
- (AVTAttributeSectionSeparator)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)edgeInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation AVTAttributeSectionSeparator

- (AVTAttributeSectionSeparator)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AVTAttributeSectionSeparator;
  v3 = [(AVTAttributeSectionSeparator *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(AVTAttributeSectionSeparator *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(AVTAttributeSectionSeparator *)v3 setSeparatorView:v5];

    v6 = +[AVTUIColorRepository separatorColor];
    separatorView = [(AVTAttributeSectionSeparator *)v3 separatorView];
    [separatorView setBackgroundColor:v6];

    separatorView2 = [(AVTAttributeSectionSeparator *)v3 separatorView];
    [(AVTAttributeSectionSeparator *)v3 addSubview:separatorView2];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTAttributeSectionSeparator *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = AVTAttributeSectionSeparator;
  [(AVTAttributeSectionSeparator *)&v14 layoutSubviews];
  [(AVTAttributeSectionSeparator *)self edgeInsets];
  v4 = v3;
  [(AVTAttributeSectionSeparator *)self bounds];
  v6 = v5;
  [(AVTAttributeSectionSeparator *)self edgeInsets];
  v8 = v7;
  [(AVTAttributeSectionSeparator *)self edgeInsets];
  v10 = v6 - (v8 + v9);
  [(AVTAttributeSectionSeparator *)self bounds];
  v12 = v11;
  separatorView = [(AVTAttributeSectionSeparator *)self separatorView];
  [separatorView setFrame:{v4, 0.0, v10, v12}];
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_edgeInsets.top), vceqq_f64(v4, *&self->_edgeInsets.bottom)))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    [(AVTAttributeSectionSeparator *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *&self->_edgeInsets.top = *MEMORY[0x1E69DDCE0];
  *&self->_edgeInsets.bottom = v3;
  [(AVTAttributeSectionSeparator *)self setNeedsLayout];
  v4.receiver = self;
  v4.super_class = AVTAttributeSectionSeparator;
  [(AVTAttributeSectionSeparator *)&v4 prepareForReuse];
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
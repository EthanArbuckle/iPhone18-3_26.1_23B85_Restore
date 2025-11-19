@interface MPAVClippingTableViewCell
- (MPAVClippingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)clippingInsets;
- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3;
- (void)_setShouldHaveFullLengthTopSeparator:(BOOL)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryView:(id)a3;
- (void)setClippingInsets:(UIEdgeInsets)a3;
@end

@implementation MPAVClippingTableViewCell

- (UIEdgeInsets)clippingInsets
{
  top = self->_clippingInsets.top;
  left = self->_clippingInsets.left;
  bottom = self->_clippingInsets.bottom;
  right = self->_clippingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MPAVClippingTableViewCell;
  [(MPAVClippingTableViewCell *)&v6 _setShouldHaveFullLengthBottomSeparator:?];
  v5 = v3 && self->_shouldHideSectionBottomSeparator;
  [(UIView *)self->_bottomSeparatorView setHidden:v5];
}

- (void)_setShouldHaveFullLengthTopSeparator:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MPAVClippingTableViewCell;
  [(MPAVClippingTableViewCell *)&v5 _setShouldHaveFullLengthTopSeparator:?];
  [(UIView *)self->_topSeparatorView setHidden:!v3];
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = MPAVClippingTableViewCell;
  [(MPAVClippingTableViewCell *)&v37 layoutSubviews];
  [(MPAVClippingTableViewCell *)self bounds];
  top = self->_clippingInsets.top;
  left = self->_clippingInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_clippingInsets.right);
  v12 = v11 - (top + self->_clippingInsets.bottom);
  [(UIView *)self->_clippingContentView setFrame:v5 + left, v7 + top, v10, v12];
  v13 = [(MPAVClippingTableViewCell *)self _defaultAccessoryView];
  v14 = [v13 maskView];
  clippingMaskView = self->_clippingMaskView;

  if (v14 != clippingMaskView)
  {
    [v13 setMaskView:self->_clippingMaskView];
  }

  [v13 convertRect:self fromView:{v6, v8, v10, v12}];
  [(UIView *)self->_clippingMaskView setFrame:?];
  v16 = [(MPAVClippingTableViewCell *)self contentView];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = -self->_clippingInsets.top;
  v24 = [(MPAVClippingTableViewCell *)self contentView];
  [v24 setFrame:{v18, v23, v20, v22}];

  [(MPAVClippingTableViewCell *)self _separatorFrame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(MPAVClippingTableViewCell *)self bounds];
  Width = CGRectGetWidth(v38);
  v39.origin.x = v26;
  v39.origin.y = v28;
  v39.size.width = v30;
  v39.size.height = v32;
  [(UIView *)self->_topSeparatorView setFrame:0.0, 0.0, Width, CGRectGetHeight(v39)];
  v34 = [(MPAVClippingTableViewCell *)self contentView];
  [v34 bounds];
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = v26;
  v41.origin.y = v28;
  v41.size.width = v30;
  v41.size.height = v32;
  v36 = MaxY - CGRectGetHeight(v41);

  [(UIView *)self->_bottomSeparatorView setFrame:v26, v36, v30, v32];
}

- (void)setClippingInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_clippingInsets.top), vceqq_f64(v4, *&self->_clippingInsets.bottom)))) & 1) == 0)
  {
    self->_clippingInsets = a3;
    [(UIView *)self->_clippingContentView setClipsToBounds:vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v3, *MEMORY[0x1E69DDCE0]), vceqq_f64(v4, *(MEMORY[0x1E69DDCE0] + 16)))))) & 1];

    [(MPAVClippingTableViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MPAVClippingTableViewCell;
  [(MPAVClippingTableViewCell *)&v3 prepareForReuse];
  [(MPAVClippingTableViewCell *)self setClippingInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (void)setAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(MPAVClippingTableViewCell *)self accessoryView];
  [v5 setMaskView:0];

  v8.receiver = self;
  v8.super_class = MPAVClippingTableViewCell;
  [(MPAVClippingTableViewCell *)&v8 setAccessoryView:v4];

  clippingMaskView = self->_clippingMaskView;
  v7 = [(MPAVClippingTableViewCell *)self accessoryView];
  [v7 setMaskView:clippingMaskView];
}

- (void)dealloc
{
  v3 = [(MPAVClippingTableViewCell *)self accessoryView];
  [v3 setMaskView:0];

  v4.receiver = self;
  v4.super_class = MPAVClippingTableViewCell;
  [(MPAVClippingTableViewCell *)&v4 dealloc];
}

- (MPAVClippingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v28.receiver = self;
  v28.super_class = MPAVClippingTableViewCell;
  v4 = [(MPAVClippingTableViewCell *)&v28 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v4 + 1064) = *MEMORY[0x1E69DDCE0];
    *(v4 + 1080) = v6;
    [v4 setClipsToBounds:1];
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    clippingMaskView = v5->_clippingMaskView;
    v5->_clippingMaskView = v12;

    v14 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v5->_clippingMaskView setBackgroundColor:v14];

    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    clippingContentView = v5->_clippingContentView;
    v5->_clippingContentView = v15;

    v17 = v5->_clippingContentView;
    v18 = [(MPAVClippingTableViewCell *)v5 contentView];
    [(UIView *)v17 addSubview:v18];

    [(MPAVClippingTableViewCell *)v5 addSubview:v5->_clippingContentView];
    v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    bottomSeparatorView = v5->_bottomSeparatorView;
    v5->_bottomSeparatorView = v19;

    v21 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v5->_bottomSeparatorView setBackgroundColor:v21];

    v22 = [(MPAVClippingTableViewCell *)v5 contentView];
    [v22 addSubview:v5->_bottomSeparatorView];

    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    topSeparatorView = v5->_topSeparatorView;
    v5->_topSeparatorView = v23;

    v25 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v5->_topSeparatorView setBackgroundColor:v25];

    [(UIView *)v5->_topSeparatorView setHidden:1];
    v26 = [(MPAVClippingTableViewCell *)v5 contentView];
    [v26 addSubview:v5->_topSeparatorView];
  }

  return v5;
}

@end
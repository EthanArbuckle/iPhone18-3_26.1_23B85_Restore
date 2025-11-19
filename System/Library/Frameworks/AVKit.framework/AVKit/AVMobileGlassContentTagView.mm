@interface AVMobileGlassContentTagView
- (AVMobileGlassContentTagView)initWithContentTag:(id)a3 withStyleSheet:(id)a4;
- (CGSize)intrinsicContentSize;
- (void)_updateContentTagLabelFont;
- (void)layoutSubviews;
- (void)setContentTag:(id)a3;
- (void)setStyleSheet:(id)a3;
@end

@implementation AVMobileGlassContentTagView

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = AVMobileGlassContentTagView;
  [(AVView *)&v10 layoutSubviews];
  contentView = self->_contentView;
  [(AVMobileGlassContentTagView *)self bounds];
  [(UIView *)contentView setFrame:?];
  contentTagViewLabel = self->_contentTagViewLabel;
  [(UIView *)self->_contentView frame];
  [(UILabel *)contentTagViewLabel setFrame:?];
  [(AVMobileContentTag *)self->_contentTag normalizedCornerRadius];
  v6 = v5;
  [(UILabel *)self->_contentTagViewLabel frame];
  v8 = v7 * v6;
  v9 = [(UIView *)self->_contentView layer];
  [v9 setCornerRadius:v8];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_contentTagViewLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(AVMobileContentTag *)self->_contentTag layoutMargins];
  v9 = v4 + v7 + v8;
  v12 = v6 + v10 + v11;
  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileGlassContentTagView *)self _updateContentTagLabelFont];
    v5 = v6;
  }
}

- (void)_updateContentTagLabelFont
{
  if (a1)
  {
    v2 = [*(a1 + 520) placement];
    if (v2 == 1)
    {
      v3 = *(a1 + 512);
      v4 = [*(a1 + 528) prominentContentTagFont];
    }

    else
    {
      if (v2)
      {
        return;
      }

      v3 = *(a1 + 512);
      v4 = [*(a1 + 528) contentTagFont];
    }

    v5 = v4;
    [v3 setFont:?];
  }
}

- (void)setContentTag:(id)a3
{
  v5 = a3;
  if (self->_contentTag != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_contentTag, a3);
    contentTagViewLabel = self->_contentTagViewLabel;
    v7 = [(AVMobileContentTag *)self->_contentTag title];
    [(UILabel *)contentTagViewLabel setText:v7];

    v8 = self->_contentTagViewLabel;
    v9 = [(AVMobileContentTag *)self->_contentTag tintColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    v10 = self->_contentTagViewLabel;
    [(AVMobileContentTag *)self->_contentTag layoutMargins];
    [(UILabel *)v10 setLayoutMargins:?];
    [(AVMobileGlassContentTagView *)self _updateContentTagLabelFont];
    [(AVMobileGlassContentTagView *)self setNeedsLayout];
    v5 = v11;
  }
}

- (AVMobileGlassContentTagView)initWithContentTag:(id)a3 withStyleSheet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = AVMobileGlassContentTagView;
  v9 = [(AVMobileGlassContentTagView *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentTag, a3);
    objc_storeStrong(&v10->_styleSheet, a4);
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v10->_contentView;
    v10->_contentView = v11;

    [(AVMobileGlassContentTagView *)v10 addSubview:v10->_contentView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contentTagViewLabel = v10->_contentTagViewLabel;
    v10->_contentTagViewLabel = v13;

    v15 = v10->_contentTagViewLabel;
    v16 = [(AVMobileContentTag *)v10->_contentTag title];
    [(UILabel *)v15 setText:v16];

    v17 = v10->_contentTagViewLabel;
    v18 = [(AVMobileContentTag *)v10->_contentTag tintColor];
    [(UILabel *)v17 setBackgroundColor:v18];

    v19 = v10->_contentTagViewLabel;
    v20 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v19 setTextColor:v20];

    [(UILabel *)v10->_contentTagViewLabel setTextAlignment:1];
    [(UILabel *)v10->_contentTagViewLabel setAutoresizingMask:0];
    v21 = v10->_contentTagViewLabel;
    [(AVMobileContentTag *)v10->_contentTag layoutMargins];
    [(UILabel *)v21 setLayoutMargins:?];
    [(AVMobileGlassContentTagView *)v10 _updateContentTagLabelFont];
    v22 = [(UIView *)v10->_contentView layer];
    [v22 setMasksToBounds:1];

    [(UIView *)v10->_contentView addSubview:v10->_contentTagViewLabel];
  }

  return v10;
}

@end
@interface AVMobileGlassContentTagView
- (AVMobileGlassContentTagView)initWithContentTag:(id)tag withStyleSheet:(id)sheet;
- (CGSize)intrinsicContentSize;
- (void)_updateContentTagLabelFont;
- (void)layoutSubviews;
- (void)setContentTag:(id)tag;
- (void)setStyleSheet:(id)sheet;
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
  layer = [(UIView *)self->_contentView layer];
  [layer setCornerRadius:v8];
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

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v6 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVMobileGlassContentTagView *)self _updateContentTagLabelFont];
    sheetCopy = v6;
  }
}

- (void)_updateContentTagLabelFont
{
  if (self)
  {
    placement = [*(self + 520) placement];
    if (placement == 1)
    {
      v3 = *(self + 512);
      prominentContentTagFont = [*(self + 528) prominentContentTagFont];
    }

    else
    {
      if (placement)
      {
        return;
      }

      v3 = *(self + 512);
      prominentContentTagFont = [*(self + 528) contentTagFont];
    }

    v5 = prominentContentTagFont;
    [v3 setFont:?];
  }
}

- (void)setContentTag:(id)tag
{
  tagCopy = tag;
  if (self->_contentTag != tagCopy)
  {
    v11 = tagCopy;
    objc_storeStrong(&self->_contentTag, tag);
    contentTagViewLabel = self->_contentTagViewLabel;
    title = [(AVMobileContentTag *)self->_contentTag title];
    [(UILabel *)contentTagViewLabel setText:title];

    v8 = self->_contentTagViewLabel;
    tintColor = [(AVMobileContentTag *)self->_contentTag tintColor];
    [(UILabel *)v8 setBackgroundColor:tintColor];

    v10 = self->_contentTagViewLabel;
    [(AVMobileContentTag *)self->_contentTag layoutMargins];
    [(UILabel *)v10 setLayoutMargins:?];
    [(AVMobileGlassContentTagView *)self _updateContentTagLabelFont];
    [(AVMobileGlassContentTagView *)self setNeedsLayout];
    tagCopy = v11;
  }
}

- (AVMobileGlassContentTagView)initWithContentTag:(id)tag withStyleSheet:(id)sheet
{
  tagCopy = tag;
  sheetCopy = sheet;
  v24.receiver = self;
  v24.super_class = AVMobileGlassContentTagView;
  v9 = [(AVMobileGlassContentTagView *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentTag, tag);
    objc_storeStrong(&v10->_styleSheet, sheet);
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v10->_contentView;
    v10->_contentView = v11;

    [(AVMobileGlassContentTagView *)v10 addSubview:v10->_contentView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contentTagViewLabel = v10->_contentTagViewLabel;
    v10->_contentTagViewLabel = v13;

    v15 = v10->_contentTagViewLabel;
    title = [(AVMobileContentTag *)v10->_contentTag title];
    [(UILabel *)v15 setText:title];

    v17 = v10->_contentTagViewLabel;
    tintColor = [(AVMobileContentTag *)v10->_contentTag tintColor];
    [(UILabel *)v17 setBackgroundColor:tintColor];

    v19 = v10->_contentTagViewLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v19 setTextColor:whiteColor];

    [(UILabel *)v10->_contentTagViewLabel setTextAlignment:1];
    [(UILabel *)v10->_contentTagViewLabel setAutoresizingMask:0];
    v21 = v10->_contentTagViewLabel;
    [(AVMobileContentTag *)v10->_contentTag layoutMargins];
    [(UILabel *)v21 setLayoutMargins:?];
    [(AVMobileGlassContentTagView *)v10 _updateContentTagLabelFont];
    layer = [(UIView *)v10->_contentView layer];
    [layer setMasksToBounds:1];

    [(UIView *)v10->_contentView addSubview:v10->_contentTagViewLabel];
  }

  return v10;
}

@end
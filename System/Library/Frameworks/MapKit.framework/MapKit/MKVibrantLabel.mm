@interface MKVibrantLabel
- (CGSize)intrinsicContentSize;
- (MKVibrantLabel)initWithStyle:(int64_t)style;
@end

@implementation MKVibrantLabel

- (CGSize)intrinsicContentSize
{
  text = [(UILabel *)self->_label text];
  if (text)
  {
  }

  else
  {
    attributedText = [(UILabel *)self->_label attributedText];

    if (!attributedText)
    {
      v5 = *MEMORY[0x1E695F060];
      v6 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_6;
    }
  }

  [(UILabel *)self->_label intrinsicContentSize];
LABEL_6:
  result.height = v6;
  result.width = v5;
  return result;
}

- (MKVibrantLabel)initWithStyle:(int64_t)style
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = MKVibrantLabel;
  v4 = [(MKVibrantView *)&v27 initWithEffect:0];
  v5 = v4;
  if (v4)
  {
    [(MKVibrantView *)v4 setStyle:style];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    contentView = [(MKVibrantLabel *)v5 contentView];
    [contentView setBackgroundColor:clearColor];

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(MKVibrantLabel *)v5 bounds];
    v9 = [v8 initWithFrame:?];
    label = v5->_label;
    v5->_label = v9;

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(MKVibrantLabel *)v5 contentView];
    [contentView2 addSubview:v5->_label];

    v22 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v5->_label topAnchor];
    topAnchor2 = [(MKVibrantLabel *)v5 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[0] = v24;
    leadingAnchor = [(UILabel *)v5->_label leadingAnchor];
    leadingAnchor2 = [(MKVibrantLabel *)v5 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[1] = v13;
    bottomAnchor = [(UILabel *)v5->_label bottomAnchor];
    bottomAnchor2 = [(MKVibrantLabel *)v5 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[2] = v16;
    trailingAnchor = [(UILabel *)v5->_label trailingAnchor];
    trailingAnchor2 = [(MKVibrantLabel *)v5 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v22 activateConstraints:v20];
  }

  return v5;
}

@end
@interface MKVibrantLabel
- (CGSize)intrinsicContentSize;
- (MKVibrantLabel)initWithStyle:(int64_t)a3;
@end

@implementation MKVibrantLabel

- (CGSize)intrinsicContentSize
{
  v3 = [(UILabel *)self->_label text];
  if (v3)
  {
  }

  else
  {
    v4 = [(UILabel *)self->_label attributedText];

    if (!v4)
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

- (MKVibrantLabel)initWithStyle:(int64_t)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = MKVibrantLabel;
  v4 = [(MKVibrantView *)&v27 initWithEffect:0];
  v5 = v4;
  if (v4)
  {
    [(MKVibrantView *)v4 setStyle:a3];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    v7 = [(MKVibrantLabel *)v5 contentView];
    [v7 setBackgroundColor:v6];

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(MKVibrantLabel *)v5 bounds];
    v9 = [v8 initWithFrame:?];
    label = v5->_label;
    v5->_label = v9;

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(MKVibrantLabel *)v5 contentView];
    [v11 addSubview:v5->_label];

    v22 = MEMORY[0x1E696ACD8];
    v26 = [(UILabel *)v5->_label topAnchor];
    v25 = [(MKVibrantLabel *)v5 topAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [(UILabel *)v5->_label leadingAnchor];
    v12 = [(MKVibrantLabel *)v5 leadingAnchor];
    v13 = [v23 constraintEqualToAnchor:v12];
    v28[1] = v13;
    v14 = [(UILabel *)v5->_label bottomAnchor];
    v15 = [(MKVibrantLabel *)v5 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v28[2] = v16;
    v17 = [(UILabel *)v5->_label trailingAnchor];
    v18 = [(MKVibrantLabel *)v5 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v28[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v22 activateConstraints:v20];
  }

  return v5;
}

@end
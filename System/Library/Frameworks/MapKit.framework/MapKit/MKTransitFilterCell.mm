@interface MKTransitFilterCell
- (MKTransitFilterCell)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)_setupLabel;
- (void)setSelected:(BOOL)a3;
@end

@implementation MKTransitFilterCell

- (void)setSelected:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBlueColor];
    v5 = [(MKTransitFilterCell *)self contentView];
    [v5 setBackgroundColor:v4];

    v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
    [(UILabel *)self->_label setTextColor:v6];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] clearColor];
    v8 = [(MKTransitFilterCell *)self contentView];
    [v8 setBackgroundColor:v7];

    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_label setTextColor:v9];

    [MEMORY[0x1E69DC888] lightGrayColor];
  }
  v14 = ;
  v10 = v14;
  v11 = [v14 CGColor];
  v12 = [(MKTransitFilterCell *)self contentView];
  v13 = [v12 layer];
  [v13 setBorderColor:v11];
}

- (void)_contentSizeDidChange
{
  v3 = +[MKFontManager sharedManager];
  v4 = [v3 sectionHeaderFont];
  [(UILabel *)self->_label setFont:v4];

  v9 = +[MKFontManager sharedManager];
  v5 = [v9 sectionHeaderFont];
  [v5 _mapkit_scaledValueForValue:32.0];
  v7 = v6 * 0.5;
  v8 = [(MKTransitFilterCell *)self contentView];
  [v8 _setContinuousCornerRadius:v7];
}

- (void)_setupLabel
{
  v24[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  label = self->_label;
  self->_label = v4;

  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setNumberOfLines:1];
  v6 = +[MKFontManager sharedManager];
  v7 = [v6 sectionHeaderFont];
  [(UILabel *)self->_label setFont:v7];

  v8 = [(MKTransitFilterCell *)self contentView];
  [v8 addSubview:self->_label];
  v18 = MEMORY[0x1E696ACD8];
  v23 = [(UILabel *)self->_label leadingAnchor];
  v22 = [v8 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v24[0] = v21;
  v20 = [(UILabel *)self->_label trailingAnchor];
  v19 = [v8 trailingAnchor];
  v9 = [v20 constraintEqualToAnchor:v19];
  v24[1] = v9;
  v10 = [(UILabel *)self->_label topAnchor];
  v11 = [v8 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v24[2] = v12;
  v13 = [(UILabel *)self->_label bottomAnchor];
  v14 = [v8 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v24[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v18 activateConstraints:v16];

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MKTransitFilterCell)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = MKTransitFilterCell;
  v3 = [(MKTransitFilterCell *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitFilterCell *)v3 _setupLabel];
    v5 = +[MKFontManager sharedManager];
    v6 = [v5 sectionHeaderFont];
    [v6 _mapkit_scaledValueForValue:32.0];
    v8 = v7 * 0.5;
    v9 = [(MKTransitFilterCell *)v4 contentView];
    [v9 _setContinuousCornerRadius:v8];

    v10 = [(MKTransitFilterCell *)v4 contentView];
    v11 = [v10 layer];
    [v11 setMasksToBounds:1];

    v12 = [(MKTransitFilterCell *)v4 contentView];
    v13 = [v12 layer];
    [v13 setBorderWidth:1.0];

    v14 = [MEMORY[0x1E69DC888] lightGrayColor];
    v15 = [v14 CGColor];
    v16 = [(MKTransitFilterCell *)v4 contentView];
    v17 = [v16 layer];
    [v17 setBorderColor:v15];

    v18 = [MEMORY[0x1E69DC888] clearColor];
    v19 = [(MKTransitFilterCell *)v4 contentView];
    [v19 setBackgroundColor:v18];
  }

  return v4;
}

@end
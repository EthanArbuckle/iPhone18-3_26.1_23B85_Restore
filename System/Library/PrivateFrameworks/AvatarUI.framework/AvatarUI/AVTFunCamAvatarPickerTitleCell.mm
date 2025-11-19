@interface AVTFunCamAvatarPickerTitleCell
- (AVTFunCamAvatarPickerTitleCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)updateWithTitle:(id)a3;
@end

@implementation AVTFunCamAvatarPickerTitleCell

- (AVTFunCamAvatarPickerTitleCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = AVTFunCamAvatarPickerTitleCell;
  v3 = [(AVTFunCamAvatarPickerTitleCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(AVTFunCamAvatarPickerTitleCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    v7 = +[AVTUIFontRepository funCamItemTitleFont];
    [(UILabel *)v3->_titleLabel setFont:v7];

    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->_titleLabel setTextColor:v8];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setAutoresizingMask:18];
    v9 = [(AVTFunCamAvatarPickerTitleCell *)v3 contentView];
    [v9 addSubview:v3->_titleLabel];
  }

  return v3;
}

- (void)updateWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(AVTFunCamAvatarPickerTitleCell *)self titleLabel];
  [v5 setText:v4];

  [(AVTFunCamAvatarPickerTitleCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AVTFunCamAvatarPickerTitleCell;
  [(AVTFunCamAvatarPickerTitleCell *)&v4 prepareForReuse];
  v3 = [(AVTFunCamAvatarPickerTitleCell *)self titleLabel];
  [v3 setText:0];
}

@end
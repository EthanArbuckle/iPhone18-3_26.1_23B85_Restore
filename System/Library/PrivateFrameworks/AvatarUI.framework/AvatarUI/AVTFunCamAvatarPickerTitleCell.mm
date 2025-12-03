@interface AVTFunCamAvatarPickerTitleCell
- (AVTFunCamAvatarPickerTitleCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)updateWithTitle:(id)title;
@end

@implementation AVTFunCamAvatarPickerTitleCell

- (AVTFunCamAvatarPickerTitleCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AVTFunCamAvatarPickerTitleCell;
  v3 = [(AVTFunCamAvatarPickerTitleCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(AVTFunCamAvatarPickerTitleCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    v7 = +[AVTUIFontRepository funCamItemTitleFont];
    [(UILabel *)v3->_titleLabel setFont:v7];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->_titleLabel setTextColor:whiteColor];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setAutoresizingMask:18];
    contentView = [(AVTFunCamAvatarPickerTitleCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];
  }

  return v3;
}

- (void)updateWithTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(AVTFunCamAvatarPickerTitleCell *)self titleLabel];
  [titleLabel setText:titleCopy];

  [(AVTFunCamAvatarPickerTitleCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AVTFunCamAvatarPickerTitleCell;
  [(AVTFunCamAvatarPickerTitleCell *)&v4 prepareForReuse];
  titleLabel = [(AVTFunCamAvatarPickerTitleCell *)self titleLabel];
  [titleLabel setText:0];
}

@end
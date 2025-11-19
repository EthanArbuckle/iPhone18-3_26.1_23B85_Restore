@interface AVTGroupListCollectionViewCell
+ (id)highlightedBackgroundColor;
- (AVTGroupListCollectionViewCell)initWithFrame:(CGRect)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (double)estimatedLabelWidth;
- (void)setSelected:(BOOL)a3;
- (void)setSymbolName:(id)a3;
- (void)setTitle:(id)a3;
- (void)setupContent;
@end

@implementation AVTGroupListCollectionViewCell

- (AVTGroupListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = AVTGroupListCollectionViewCell;
  v3 = [(AVTGroupListCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTGroupListCollectionViewCell *)v3 setupContent];
    v5 = [(AVTGroupListCollectionViewCell *)v4 layer];
    [v5 setMasksToBounds:1];

    v6 = [(AVTGroupListCollectionViewCell *)v4 layer];
    [v6 setCornerRadius:5.0];
  }

  return v4;
}

- (void)setupContent
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = [(AVTGroupListCollectionViewCell *)self contentView];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  label = self->_label;
  self->_label = v9;

  v11 = +[AVTUIFontRepository groupListLabelFont];
  [(UILabel *)self->_label setFont:v11];

  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_label setBackgroundColor:v12];

  [(UILabel *)self->_label setNumberOfLines:2];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_label];
  v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
  imageView = self->_imageView;
  self->_imageView = v13;

  v15 = [MEMORY[0x1E69DC888] grayColor];
  [(UIImageView *)self->_imageView setTintColor:v15];

  v16 = [MEMORY[0x1E69DC888] clearColor];
  [(UIImageView *)self->_imageView setBackgroundColor:v16];

  v31 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v31];
  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_imageView];
  v17 = MEMORY[0x1E696ACD8];
  v18 = self->_imageView;
  v33[0] = @"image";
  v33[1] = @"label";
  v19 = self->_label;
  v34[0] = v18;
  v34[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v21 = [v17 constraintsWithVisualFormat:@"H:|-(imageL)-[image(imageLength)]-(spacing)-[label]-|" options:0 metrics:&unk_1F39A5D90 views:v20];
  [v3 addConstraints:v21];

  v22 = [(UIImageView *)self->_imageView heightAnchor];
  v23 = [v22 constraintEqualToConstant:18.0];
  v32[0] = v23;
  v24 = [(UIImageView *)self->_imageView centerYAnchor];
  v25 = [v3 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v32[1] = v26;
  v27 = [(UILabel *)self->_label centerYAnchor];
  v28 = [v3 centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v32[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  [v3 addConstraints:v30];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  [objc_opt_class() estimatedLabelWidthForContainerWidth:a3.width];
  v8 = v7;
  v9 = [(AVTGroupListCollectionViewCell *)self label];
  [v9 setPreferredMaxLayoutWidth:v8];

  v10 = [(AVTGroupListCollectionViewCell *)self contentView];
  [v10 systemLayoutSizeFittingSize:{width, 1.0}];
  v12 = v11;

  [(AVTGroupListCollectionViewCell *)self estimatedLabelWidth];
  v14 = v13;
  v15 = [(AVTGroupListCollectionViewCell *)self label];
  [v15 preferredMaxLayoutWidth];
  if (v14 <= v16)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 10.0;
  }

  [(AVTGroupListCollectionViewCell *)self bounds];
  v19 = v18;
  v20 = 48.0;
  if (v12 >= 48.0)
  {
    v20 = v12;
  }

  v21 = v20 + v17;
  result.height = v21;
  result.width = v19;
  return result;
}

- (double)estimatedLabelWidth
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(AVTGroupListCollectionViewCell *)self label];
  v4 = [v3 text];

  if (!v4)
  {
    return 0.0;
  }

  v13 = *MEMORY[0x1E69DB648];
  v5 = [(AVTGroupListCollectionViewCell *)self label];
  v6 = [v5 font];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v8 = [(AVTGroupListCollectionViewCell *)self label];
  v9 = [v8 text];
  [v9 sizeWithAttributes:v7];
  v11 = v10;

  return v11;
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    v5 = [(AVTGroupListCollectionViewCell *)self label];
    [v5 setText:v6];
  }
}

- (void)setSymbolName:(id)a3
{
  v6 = 656;
  v12 = a3;
  if (![(NSString *)self->_symbolName isEqualToString:?])
  {
    objc_storeStrong(&self->_symbolName, a3);
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v12];
    v8 = v7;
    if (!v7)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v6 = [objc_opt_class() defaultSymbolImageName];
      v3 = [v9 _systemImageNamed:v6];
      v8 = [v3 imageWithRenderingMode:2];
    }

    v10 = [(AVTGroupListCollectionViewCell *)self imageView];
    [v10 setImage:v8];

    if (!v7)
    {
    }

    v11 = [(AVTGroupListCollectionViewCell *)self imageView];
    [v11 setContentMode:1];
  }
}

+ (id)highlightedBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [AVTUIColorRepository dynamicColorWithLightColor:v2 darkColor:v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

- (void)setSelected:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AVTGroupListCollectionViewCell;
  [(AVTGroupListCollectionViewCell *)&v6 setSelected:?];
  if (a3)
  {
    +[AVTUIColorRepository groupSidePickerCellSelectedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v5 = ;
  [(AVTGroupListCollectionViewCell *)self setBackgroundColor:v5];
}

@end
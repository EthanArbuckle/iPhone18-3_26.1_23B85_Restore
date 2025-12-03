@interface AVTGroupListCollectionViewCell
+ (id)highlightedBackgroundColor;
- (AVTGroupListCollectionViewCell)initWithFrame:(CGRect)frame;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (double)estimatedLabelWidth;
- (void)setSelected:(BOOL)selected;
- (void)setSymbolName:(id)name;
- (void)setTitle:(id)title;
- (void)setupContent;
@end

@implementation AVTGroupListCollectionViewCell

- (AVTGroupListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = AVTGroupListCollectionViewCell;
  v3 = [(AVTGroupListCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTGroupListCollectionViewCell *)v3 setupContent];
    layer = [(AVTGroupListCollectionViewCell *)v4 layer];
    [layer setMasksToBounds:1];

    layer2 = [(AVTGroupListCollectionViewCell *)v4 layer];
    [layer2 setCornerRadius:5.0];
  }

  return v4;
}

- (void)setupContent
{
  v34[2] = *MEMORY[0x1E69E9840];
  contentView = [(AVTGroupListCollectionViewCell *)self contentView];
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

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_label setBackgroundColor:clearColor];

  [(UILabel *)self->_label setNumberOfLines:2];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_label];
  v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
  imageView = self->_imageView;
  self->_imageView = v13;

  grayColor = [MEMORY[0x1E69DC888] grayColor];
  [(UIImageView *)self->_imageView setTintColor:grayColor];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UIImageView *)self->_imageView setBackgroundColor:clearColor2];

  v31 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v31];
  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_imageView];
  v17 = MEMORY[0x1E696ACD8];
  v18 = self->_imageView;
  v33[0] = @"image";
  v33[1] = @"label";
  v19 = self->_label;
  v34[0] = v18;
  v34[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v21 = [v17 constraintsWithVisualFormat:@"H:|-(imageL)-[image(imageLength)]-(spacing)-[label]-|" options:0 metrics:&unk_1F39A5D90 views:v20];
  [contentView addConstraints:v21];

  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v23 = [heightAnchor constraintEqualToConstant:18.0];
  v32[0] = v23;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[1] = v26;
  centerYAnchor3 = [(UILabel *)self->_label centerYAnchor];
  centerYAnchor4 = [contentView centerYAnchor];
  v29 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v32[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  [contentView addConstraints:v30];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  [objc_opt_class() estimatedLabelWidthForContainerWidth:size.width];
  v8 = v7;
  label = [(AVTGroupListCollectionViewCell *)self label];
  [label setPreferredMaxLayoutWidth:v8];

  contentView = [(AVTGroupListCollectionViewCell *)self contentView];
  [contentView systemLayoutSizeFittingSize:{width, 1.0}];
  v12 = v11;

  [(AVTGroupListCollectionViewCell *)self estimatedLabelWidth];
  v14 = v13;
  label2 = [(AVTGroupListCollectionViewCell *)self label];
  [label2 preferredMaxLayoutWidth];
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
  label = [(AVTGroupListCollectionViewCell *)self label];
  text = [label text];

  if (!text)
  {
    return 0.0;
  }

  v13 = *MEMORY[0x1E69DB648];
  label2 = [(AVTGroupListCollectionViewCell *)self label];
  font = [label2 font];
  v14[0] = font;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  label3 = [(AVTGroupListCollectionViewCell *)self label];
  text2 = [label3 text];
  [text2 sizeWithAttributes:v7];
  v11 = v10;

  return v11;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    label = [(AVTGroupListCollectionViewCell *)self label];
    [label setText:titleCopy];
  }
}

- (void)setSymbolName:(id)name
{
  defaultSymbolImageName = 656;
  nameCopy = name;
  if (![(NSString *)self->_symbolName isEqualToString:?])
  {
    objc_storeStrong(&self->_symbolName, name);
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy];
    v8 = v7;
    if (!v7)
    {
      v9 = MEMORY[0x1E69DCAB8];
      defaultSymbolImageName = [objc_opt_class() defaultSymbolImageName];
      v3 = [v9 _systemImageNamed:defaultSymbolImageName];
      v8 = [v3 imageWithRenderingMode:2];
    }

    imageView = [(AVTGroupListCollectionViewCell *)self imageView];
    [imageView setImage:v8];

    if (!v7)
    {
    }

    imageView2 = [(AVTGroupListCollectionViewCell *)self imageView];
    [imageView2 setContentMode:1];
  }
}

+ (id)highlightedBackgroundColor
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [AVTUIColorRepository dynamicColorWithLightColor:blackColor darkColor:whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

- (void)setSelected:(BOOL)selected
{
  v6.receiver = self;
  v6.super_class = AVTGroupListCollectionViewCell;
  [(AVTGroupListCollectionViewCell *)&v6 setSelected:?];
  if (selected)
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
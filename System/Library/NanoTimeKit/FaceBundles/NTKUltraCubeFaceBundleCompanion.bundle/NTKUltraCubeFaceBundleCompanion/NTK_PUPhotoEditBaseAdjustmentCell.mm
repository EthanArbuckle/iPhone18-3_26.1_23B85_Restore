@interface NTK_PUPhotoEditBaseAdjustmentCell
- (NTK_PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)coder;
- (NTK_PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)frame;
- (double)defaultValue;
- (double)identityValue;
- (double)maxValue;
- (double)minValue;
- (double)value;
- (void)_setupContainerButton;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetToDefault;
- (void)setDefaultValue:(double)value;
- (void)setIdentityValue:(double)value;
- (void)setMaxValue:(double)value;
- (void)setMinValue:(double)value;
- (void)setSelected:(BOOL)selected;
- (void)setValue:(double)value;
@end

@implementation NTK_PUPhotoEditBaseAdjustmentCell

- (NTK_PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  v3 = [(NTK_PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    sub_24558(v3);
  }

  return v4;
}

- (NTK_PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  v3 = [(NTK_PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    sub_24558(v3);
  }

  return v4;
}

- (void)_setupContainerButton
{
  [(NTK_PUPhotoEditBaseAdjustmentCell *)self bounds];
  v7 = [[NTK_PUPhotoEditAdjustmentControl alloc] initWithFrame:v3, v4, v5, v6];
  containerButton = self->_containerButton;
  self->_containerButton = v7;

  [(NTK_PUPhotoEditAdjustmentControl *)self->_containerButton setUserInteractionEnabled:0];
  contentView = [(NTK_PUPhotoEditBaseAdjustmentCell *)self contentView];
  [contentView addSubview:self->_containerButton];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v5 prepareForReuse];
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton resetToDefaults];

  containerButton2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton2 setUserInteractionEnabled:0];

  [(NTK_PUPhotoEditBaseAdjustmentCell *)self setIsUserModifying:0];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v12 layoutSubviews];
  [(NTK_PUPhotoEditBaseAdjustmentCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setFrame:{v4, v6, v8, v10}];
}

- (void)setValue:(double)value
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setValue:value];
}

- (double)value
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton value];
  v4 = v3;

  return v4;
}

- (void)setDefaultValue:(double)value
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setDefaultValue:value];
}

- (double)defaultValue
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton defaultValue];
  v4 = v3;

  return v4;
}

- (void)setIdentityValue:(double)value
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setIdentityValue:value];
}

- (double)identityValue
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton identityValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(double)value
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setMinValue:value];
}

- (double)minValue
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton minValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(double)value
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setMaxValue:value];
}

- (double)maxValue
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton maxValue];
  v4 = v3;

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v7 setSelected:?];
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  alwaysShowValueWhenAdjustmentIsSelected = [v5 alwaysShowValueWhenAdjustmentIsSelected];

  [(NTK_PUPhotoEditBaseAdjustmentCell *)self setIsUserModifying:selectedCopy & alwaysShowValueWhenAdjustmentIsSelected];
}

- (void)resetToDefault
{
  [(NTK_PUPhotoEditBaseAdjustmentCell *)self defaultValue];

  [(NTK_PUPhotoEditBaseAdjustmentCell *)self setValue:?];
}

@end
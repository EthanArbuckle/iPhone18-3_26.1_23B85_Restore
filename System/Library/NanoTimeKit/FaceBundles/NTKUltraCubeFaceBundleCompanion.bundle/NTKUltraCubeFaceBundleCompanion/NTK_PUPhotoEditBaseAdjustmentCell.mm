@interface NTK_PUPhotoEditBaseAdjustmentCell
- (NTK_PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)a3;
- (NTK_PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)a3;
- (double)defaultValue;
- (double)identityValue;
- (double)maxValue;
- (double)minValue;
- (double)value;
- (void)_setupContainerButton;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetToDefault;
- (void)setDefaultValue:(double)a3;
- (void)setIdentityValue:(double)a3;
- (void)setMaxValue:(double)a3;
- (void)setMinValue:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setValue:(double)a3;
@end

@implementation NTK_PUPhotoEditBaseAdjustmentCell

- (NTK_PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  v3 = [(NTK_PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    sub_24558(v3);
  }

  return v4;
}

- (NTK_PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  v3 = [(NTK_PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:a3];
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
  v9 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self contentView];
  [v9 addSubview:self->_containerButton];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v5 prepareForReuse];
  v3 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v3 resetToDefaults];

  v4 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setUserInteractionEnabled:0];

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
  v11 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setValue:(double)a3
{
  v4 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setValue:a3];
}

- (double)value
{
  v2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 value];
  v4 = v3;

  return v4;
}

- (void)setDefaultValue:(double)a3
{
  v4 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setDefaultValue:a3];
}

- (double)defaultValue
{
  v2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 defaultValue];
  v4 = v3;

  return v4;
}

- (void)setIdentityValue:(double)a3
{
  v4 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setIdentityValue:a3];
}

- (double)identityValue
{
  v2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 identityValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(double)a3
{
  v4 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setMinValue:a3];
}

- (double)minValue
{
  v2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 minValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(double)a3
{
  v4 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setMaxValue:a3];
}

- (double)maxValue
{
  v2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 maxValue];
  v4 = v3;

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = NTK_PUPhotoEditBaseAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v7 setSelected:?];
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  v6 = [v5 alwaysShowValueWhenAdjustmentIsSelected];

  [(NTK_PUPhotoEditBaseAdjustmentCell *)self setIsUserModifying:v3 & v6];
}

- (void)resetToDefault
{
  [(NTK_PUPhotoEditBaseAdjustmentCell *)self defaultValue];

  [(NTK_PUPhotoEditBaseAdjustmentCell *)self setValue:?];
}

@end
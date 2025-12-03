@interface NTK_PUPhotoEditAdjustmentControl
- (BOOL)_setContentPropertyKey:(id)key withValue:(id)value forState:(unint64_t)state;
- (NTK_PUPhotoEditAdjustmentControl)initWithFrame:(CGRect)frame;
- (id)_contentForState:(unint64_t)state;
- (id)_currentImage;
- (id)colorForState:(unint64_t)state;
- (id)imageForState:(unint64_t)state;
- (void)_layoutImageView;
- (void)_resetAllValues;
- (void)_setContent:(id)content forState:(unint64_t)state;
- (void)_setup;
- (void)_setupImageView;
- (void)_updateFormatter;
- (void)_updateImageView;
- (void)_updateRingVisibility;
- (void)_updateSubviewColors;
- (void)_updateSubviewValues;
- (void)_updateSubviewVisibility;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)resetToDefaults;
- (void)setDefaultColor:(id)color;
- (void)setDisplayMappedValue:(BOOL)value;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setSelected:(BOOL)selected;
- (void)setShouldShowCircularRing:(BOOL)ring;
- (void)setShouldShowValueLabel:(BOOL)label;
- (void)setValue:(double)value;
@end

@implementation NTK_PUPhotoEditAdjustmentControl

- (NTK_PUPhotoEditAdjustmentControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditAdjustmentControl;
  v3 = [(NTK_PUPhotoEditAdjustmentControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_minValue = -1.0;
    v3->_maxValue = 1.0;
    v3->_value = 0.0;
    v3->_defaultValue = 0.0;
    v3->_identityValue = 0.0;
    [(NTK_PUPhotoEditAdjustmentControl *)v3 _setup];
    [(NTK_PUPhotoEditAdjustmentControl *)v4 setContentMode:3];
  }

  return v4;
}

- (void)_setup
{
  v3 = +[UIColor whiteColor];
  defaultColor = self->_defaultColor;
  self->_defaultColor = v3;

  v5 = +[UIColor systemYellowColor];
  alternateColor = self->_alternateColor;
  self->_alternateColor = v5;

  v7 = [NTK_PUPhotoEditCircularIndicatorView alloc];
  [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
  v8 = [(NTK_PUPhotoEditCircularIndicatorView *)v7 initWithFrame:?];
  circularIndicatorView = self->_circularIndicatorView;
  self->_circularIndicatorView = v8;

  [(NTK_PUPhotoEditCircularIndicatorView *)self->_circularIndicatorView setRingColor:self->_defaultColor];
  [(NTK_PUPhotoEditCircularIndicatorView *)self->_circularIndicatorView setUserInteractionEnabled:0];
  [(NTK_PUPhotoEditAdjustmentControl *)self addSubview:self->_circularIndicatorView];
  v10 = [UILabel alloc];
  [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
  v11 = [v10 initWithFrame:?];
  valueLabel = self->_valueLabel;
  self->_valueLabel = v11;

  v19 = [NTK_PUPhotoEditSupport photoEditStylisticFontForSize:13.0];
  [(UILabel *)self->_valueLabel setFont:v19];
  [(UILabel *)self->_valueLabel setTextAlignment:1];
  [(UILabel *)self->_valueLabel setTextColor:self->_defaultColor];
  v13 = +[NSLocale currentLocale];
  v14 = objc_alloc_init(NSNumberFormatter);
  formatter = self->_formatter;
  self->_formatter = v14;

  [(NSNumberFormatter *)self->_formatter setLocale:v13];
  [(NSNumberFormatter *)self->_formatter setMultiplier:&off_4B6F0];
  [(NSNumberFormatter *)self->_formatter setRoundingMode:4];
  v16 = self->_formatter;
  v17 = [NSNumber numberWithDouble:self->_value];
  v18 = [(NSNumberFormatter *)v16 stringFromNumber:v17];
  [(UILabel *)self->_valueLabel setText:v18];

  [(UILabel *)self->_valueLabel setAlpha:0.0];
  [(NTK_PUPhotoEditAdjustmentControl *)self addSubview:self->_valueLabel];
  self->_shouldShowCircularRing = 1;
  self->_shouldScaleDownImage = 1;
  self->_displayMappedValue = 1;
}

- (void)_resetAllValues
{
  [(NTK_PUPhotoEditAdjustmentControl *)self setValue:0.0];
  self->_minValue = -1.0;
  self->_maxValue = 1.0;
  self->_defaultValue = 0.0;
  self->_identityValue = 0.0;
  defaultColor = self->_defaultColor;
  circularIndicatorView = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView setRingColor:defaultColor];
}

- (void)resetToDefaults
{
  circularIndicatorView = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView resetToDefaults];

  [(NTK_PUPhotoEditAdjustmentControl *)self _resetAllValues];
}

- (void)_setupImageView
{
  if (!self->_imageView)
  {
    [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
    v4 = v3;
    [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
    v6 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v4, v5}];
    imageView = self->_imageView;
    self->_imageView = v6;

    [(UIImageView *)self->_imageView setUserInteractionEnabled:0];
    [(UIImageView *)self->_imageView setContentMode:4];
    [(UIImageView *)self->_imageView setTintColor:self->_defaultColor];
    v8 = self->_imageView;
    valueLabel = self->_valueLabel;

    [(NTK_PUPhotoEditAdjustmentControl *)self insertSubview:v8 belowSubview:valueLabel];
  }
}

- (void)_layoutImageView
{
  imageView = self->_imageView;
  if (imageView && ([(UIImageView *)imageView isHidden]& 1) == 0)
  {
    [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
    v5 = v4;
    [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
    [(UIImageView *)self->_imageView setFrame:0.0, 0.0, v5];
    [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
    PXRectGetCenter();
    v7 = v6;
    v9 = v8;
    imageView = [(NTK_PUPhotoEditAdjustmentControl *)self imageView];
    [imageView setCenter:{v7, v9}];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = NTK_PUPhotoEditAdjustmentControl;
  [(NTK_PUPhotoEditAdjustmentControl *)&v21 layoutSubviews];
  [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  circularIndicatorView = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView setFrame:{v4, v6, v8, v10}];

  [(NTK_PUPhotoEditAdjustmentControl *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  valueLabel = [(NTK_PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setFrame:{v13, v15, v17, v19}];

  [(NTK_PUPhotoEditAdjustmentControl *)self _updateImageView];
  [(NTK_PUPhotoEditAdjustmentControl *)self _layoutImageView];
  [(NTK_PUPhotoEditAdjustmentControl *)self _updateRingVisibility];
}

- (void)_setContent:(id)content forState:(unint64_t)state
{
  contentCopy = content;
  if (!self->_stateToContentMap)
  {
    v6 = +[NSMapTable weakToStrongObjectsMapTable];
    stateToContentMap = self->_stateToContentMap;
    self->_stateToContentMap = v6;
  }

  stateToContentMap = [(NTK_PUPhotoEditAdjustmentControl *)self stateToContentMap];
  v9 = [NSNumber numberWithUnsignedInteger:state];
  if (contentCopy)
  {
    [stateToContentMap setObject:contentCopy forKey:v9];
  }

  else
  {
    [stateToContentMap removeObjectForKey:v9];
  }
}

- (id)_contentForState:(unint64_t)state
{
  if (self->_stateToContentMap)
  {
    stateToContentMap = [(NTK_PUPhotoEditAdjustmentControl *)self stateToContentMap];
    v5 = [NSNumber numberWithUnsignedInteger:state];
    v6 = [stateToContentMap objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_setContentPropertyKey:(id)key withValue:(id)value forState:(unint64_t)state
{
  keyCopy = key;
  valueCopy = value;
  v10 = [(NTK_PUPhotoEditAdjustmentControl *)self _contentForState:state];
  if (!v10)
  {
    v10 = objc_alloc_init(NTK_PUPhotoEditAdjustmentControlContent);
    [(NTK_PUPhotoEditAdjustmentControl *)self _setContent:v10 forState:state];
  }

  v11 = [(NTK_PUPhotoEditAdjustmentControlContent *)v10 valueForKey:keyCopy];
  if (v11 == valueCopy)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = [valueCopy isEqual:v11] ^ 1;
  }

  [(NTK_PUPhotoEditAdjustmentControlContent *)v10 setValue:valueCopy forKey:keyCopy];

  return v12;
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  if ([(NTK_PUPhotoEditAdjustmentControl *)self _setContentPropertyKey:@"image" withValue:image forState:state])
  {

    [(NTK_PUPhotoEditAdjustmentControl *)self _updateImageView];
  }
}

- (id)imageForState:(unint64_t)state
{
  v4 = [(NTK_PUPhotoEditAdjustmentControl *)self _contentForState:state];
  image = [v4 image];

  if (!image)
  {
    v6 = [(NTK_PUPhotoEditAdjustmentControl *)self _contentForState:0];
    image = [v6 image];
  }

  return image;
}

- (id)colorForState:(unint64_t)state
{
  v4 = [(NTK_PUPhotoEditAdjustmentControl *)self _contentForState:state];
  color = [v4 color];

  if (!color)
  {
    v6 = [(NTK_PUPhotoEditAdjustmentControl *)self _contentForState:0];
    color = [v6 color];
  }

  return color;
}

- (id)_currentImage
{
  state = [(NTK_PUPhotoEditAdjustmentControl *)self state];

  return [(NTK_PUPhotoEditAdjustmentControl *)self imageForState:state];
}

- (void)setDefaultColor:(id)color
{
  colorCopy = color;
  if (self->_defaultColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_defaultColor, color);
    [(NTK_PUPhotoEditAdjustmentControl *)self _updateSubviewColors];
    colorCopy = v6;
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(NTK_PUPhotoEditAdjustmentControl *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = NTK_PUPhotoEditAdjustmentControl;
    [(NTK_PUPhotoEditAdjustmentControl *)&v5 setSelected:selectedCopy];
    [(NTK_PUPhotoEditAdjustmentControl *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(NTK_PUPhotoEditAdjustmentControl *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = NTK_PUPhotoEditAdjustmentControl;
    [(NTK_PUPhotoEditAdjustmentControl *)&v5 setEnabled:enabledCopy];
    [(NTK_PUPhotoEditAdjustmentControl *)self setNeedsLayout];
  }
}

- (void)setValue:(double)value
{
  if (self->_value != value)
  {
    [(NTK_PUPhotoEditAdjustmentControl *)self minValue];
    [(NTK_PUPhotoEditAdjustmentControl *)self maxValue];
    PXClamp();
    self->_value = v4;

    [(NTK_PUPhotoEditAdjustmentControl *)self _updateSubviews];
  }
}

- (void)setShouldShowValueLabel:(BOOL)label
{
  if (self->_shouldShowValueLabel != label)
  {
    self->_shouldShowValueLabel = label;
    [(NTK_PUPhotoEditAdjustmentControl *)self _updateSubviewVisibility];
  }
}

- (void)setDisplayMappedValue:(BOOL)value
{
  if (self->_displayMappedValue != value)
  {
    self->_displayMappedValue = value;
    [(NTK_PUPhotoEditAdjustmentControl *)self _updateFormatter];
  }
}

- (void)setShouldShowCircularRing:(BOOL)ring
{
  if (self->_shouldShowCircularRing != ring)
  {
    self->_shouldShowCircularRing = ring;
    [(NTK_PUPhotoEditAdjustmentControl *)self _updateRingVisibility];
  }
}

- (void)_updateImageView
{
  v3 = [(NTK_PUPhotoEditAdjustmentControl *)self imageForState:[(NTK_PUPhotoEditAdjustmentControl *)self state]];
  v5 = v3;
  if (v3)
  {
    [(NTK_PUPhotoEditAdjustmentControl *)self _setupImageView];
    p_imageView = &self->_imageView;
    [(UIImageView *)*p_imageView setImage:v5];
    v3 = v5;
  }

  else
  {
    p_imageView = &self->_imageView;
  }

  [(UIImageView *)*p_imageView setHidden:v3 == 0];
}

- (void)_updateRingVisibility
{
  if ([(NTK_PUPhotoEditAdjustmentControl *)self shouldShowCircularRing])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  circularIndicatorView = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView setAlpha:v3];
}

- (void)_updateSubviewVisibility
{
  if ([(NTK_PUPhotoEditAdjustmentControl *)self shouldShowValueLabel])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  imageView = [(NTK_PUPhotoEditAdjustmentControl *)self imageView];
  [imageView setAlpha:v3];

  if ([(NTK_PUPhotoEditAdjustmentControl *)self shouldShowValueLabel])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  valueLabel = [(NTK_PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setAlpha:v5];
}

- (void)_updateSubviews
{
  [(NTK_PUPhotoEditAdjustmentControl *)self _updateSubviewValues];

  [(NTK_PUPhotoEditAdjustmentControl *)self _updateSubviewColors];
}

- (void)_updateSubviewColors
{
  circularIndicatorView = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView currentValue];
  v5 = v4;

  if (v5 <= 0.0)
  {
    defaultColor = self->_defaultColor;
    circularIndicatorView2 = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
    [circularIndicatorView2 setRingColor:defaultColor];
  }

  else
  {
    alternateColor = self->_alternateColor;
    circularIndicatorView2 = [(NTK_PUPhotoEditAdjustmentControl *)self traitCollection];
    v8 = [(UIColor *)alternateColor resolvedColorWithTraitCollection:circularIndicatorView2];
    circularIndicatorView3 = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
    [circularIndicatorView3 setRingColor:v8];
  }

  [(UIImageView *)self->_imageView setTintColor:self->_defaultColor];
  circularIndicatorView4 = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  ringColor = [circularIndicatorView4 ringColor];
  valueLabel = [(NTK_PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setTextColor:ringColor];
}

- (void)_updateFormatter
{
  if ([(NTK_PUPhotoEditAdjustmentControl *)self displayMappedValue])
  {
    v3 = &off_4B6F0;
  }

  else
  {
    v3 = &off_4B708;
  }

  formatter = [(NTK_PUPhotoEditAdjustmentControl *)self formatter];
  [formatter setMultiplier:v3];
}

- (void)_updateSubviewValues
{
  [(NTK_PUPhotoEditAdjustmentControl *)self minValue];
  v4 = v3;
  [(NTK_PUPhotoEditAdjustmentControl *)self identityValue];
  v5 = 0.0;
  if (v4 < v6)
  {
    circularIndicatorView = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
    [circularIndicatorView minValue];
    v5 = v8;
  }

  [(NTK_PUPhotoEditAdjustmentControl *)self value];
  v10 = v9;
  [(NTK_PUPhotoEditAdjustmentControl *)self minValue];
  v12 = v11;
  [(NTK_PUPhotoEditAdjustmentControl *)self identityValue];
  v14 = v13;
  [(NTK_PUPhotoEditAdjustmentControl *)self maxValue];
  v16 = v15;
  circularIndicatorView2 = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView2 maxValue];
  if (v16 > v12)
  {
    if (v10 >= v14)
    {
      if (v16 > v14)
      {
        v19 = (v10 - v14) * v18 / (v16 - v14) + 0.0;
        goto LABEL_10;
      }
    }

    else if (v14 > v12)
    {
      v19 = v5 + (0.0 - v5) * (v10 - v12) / (v14 - v12);
      goto LABEL_10;
    }
  }

  v19 = 2.22507386e-308;
LABEL_10:

  if (round(v19 * 100.0) / 100.0 == 0.0)
  {
    v19 = 0.0;
  }

  circularIndicatorView3 = [(NTK_PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView3 setCurrentValue:v19];

  if (![(NTK_PUPhotoEditAdjustmentControl *)self displayMappedValue])
  {
    [(NTK_PUPhotoEditAdjustmentControl *)self value];
    v19 = v21;
  }

  formatter = self->_formatter;
  v25 = [NSNumber numberWithDouble:v19];
  v23 = [(NSNumberFormatter *)formatter stringFromNumber:v25];
  valueLabel = [(NTK_PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setText:v23];
}

@end
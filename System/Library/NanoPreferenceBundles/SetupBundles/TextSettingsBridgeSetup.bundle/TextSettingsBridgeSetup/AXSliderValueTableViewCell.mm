@interface AXSliderValueTableViewCell
- (AXSliderValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AXSliderValueTableViewCellDelegate)delegate;
- (UIImage)maximumValueImage;
- (UIImage)minimumValueImage;
- (double)maximumValue;
- (double)minimumValue;
- (double)value;
- (unint64_t)segmentCount;
- (void)_sliderChanged:(id)a3;
- (void)didMoveToSuperview;
- (void)setMaximumValue:(double)a3;
- (void)setMaximumValueImage:(id)a3;
- (void)setMinimumValue:(double)a3;
- (void)setMinimumValueImage:(id)a3;
- (void)setSegmentCount:(unint64_t)a3;
- (void)setValue:(double)a3;
@end

@implementation AXSliderValueTableViewCell

- (AXSliderValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = AXSliderValueTableViewCell;
  v4 = [(AXSliderValueTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AXSliderValueTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc_init(PSSegmentableSlider);
    [(AXSliderValueTableViewCell *)v5 setSlider:v6];

    v7 = [(AXSliderValueTableViewCell *)v5 slider];
    [v7 setMinimumValue:0.0];

    v8 = [(AXSliderValueTableViewCell *)v5 slider];
    LODWORD(v9) = 1.0;
    [v8 setMaximumValue:v9];

    v10 = [(AXSliderValueTableViewCell *)v5 slider];
    [v10 setSegmented:1];

    v11 = [(AXSliderValueTableViewCell *)v5 slider];
    [v11 setSnapsToSegment:1];

    v12 = [(AXSliderValueTableViewCell *)v5 slider];
    [v12 setContinuous:1];

    v13 = [(AXSliderValueTableViewCell *)v5 slider];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(AXSliderValueTableViewCell *)v5 slider];
    [v14 addTarget:v5 action:"_sliderChanged:" forControlEvents:4096];

    v15 = [(AXSliderValueTableViewCell *)v5 contentView];
    v16 = [(AXSliderValueTableViewCell *)v5 slider];
    [v15 addSubview:v16];
  }

  return v5;
}

- (void)didMoveToSuperview
{
  v28.receiver = self;
  v28.super_class = AXSliderValueTableViewCell;
  [(AXSliderValueTableViewCell *)&v28 didMoveToSuperview];
  v27 = [(AXSliderValueTableViewCell *)self slider];
  v25 = [v27 leadingAnchor];
  v26 = [(AXSliderValueTableViewCell *)self contentView];
  v24 = [v26 readableContentGuide];
  v23 = [v24 leadingAnchor];
  v22 = [v25 constraintEqualToAnchor:v23];
  v29[0] = v22;
  v21 = [(AXSliderValueTableViewCell *)self slider];
  v19 = [v21 topAnchor];
  v20 = [(AXSliderValueTableViewCell *)self contentView];
  v18 = [v20 readableContentGuide];
  v17 = [v18 topAnchor];
  v16 = [v19 constraintEqualToAnchor:v17];
  v29[1] = v16;
  v15 = [(AXSliderValueTableViewCell *)self slider];
  v13 = [v15 bottomAnchor];
  v14 = [(AXSliderValueTableViewCell *)self contentView];
  v3 = [v14 readableContentGuide];
  v4 = [v3 bottomAnchor];
  v5 = [v13 constraintEqualToAnchor:v4];
  v29[2] = v5;
  v6 = [(AXSliderValueTableViewCell *)self slider];
  v7 = [v6 trailingAnchor];
  v8 = [(AXSliderValueTableViewCell *)self contentView];
  v9 = [v8 readableContentGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];
  v29[3] = v11;
  v12 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (double)minimumValue
{
  v2 = [(AXSliderValueTableViewCell *)self slider];
  [v2 minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinimumValue:(double)a3
{
  v3 = a3;
  v5 = [(AXSliderValueTableViewCell *)self slider];
  *&v4 = v3;
  [v5 setMinimumValue:v4];
}

- (double)maximumValue
{
  v2 = [(AXSliderValueTableViewCell *)self slider];
  [v2 maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaximumValue:(double)a3
{
  v3 = a3;
  v5 = [(AXSliderValueTableViewCell *)self slider];
  *&v4 = v3;
  [v5 setMaximumValue:v4];
}

- (double)value
{
  v2 = [(AXSliderValueTableViewCell *)self slider];
  [v2 value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)a3
{
  v3 = a3;
  v5 = [(AXSliderValueTableViewCell *)self slider];
  *&v4 = v3;
  [v5 setValue:v4];
}

- (void)_sliderChanged:(id)a3
{
  v4 = [(AXSliderValueTableViewCell *)self slider];
  [v4 value];
  [(AXSliderValueTableViewCell *)self setValue:v5];

  v6 = [(AXSliderValueTableViewCell *)self delegate];
  [(AXSliderValueTableViewCell *)self value];
  [v6 sliderValueTableViewCell:self didChangeValue:?];
}

- (UIImage)minimumValueImage
{
  v2 = [(AXSliderValueTableViewCell *)self slider];
  v3 = [v2 minimumValueImage];

  return v3;
}

- (void)setMinimumValueImage:(id)a3
{
  v4 = a3;
  v5 = [(AXSliderValueTableViewCell *)self slider];
  [v5 setMinimumValueImage:v4];
}

- (UIImage)maximumValueImage
{
  v2 = [(AXSliderValueTableViewCell *)self slider];
  v3 = [v2 maximumValueImage];

  return v3;
}

- (void)setMaximumValueImage:(id)a3
{
  v4 = a3;
  v5 = [(AXSliderValueTableViewCell *)self slider];
  [v5 setMaximumValueImage:v4];
}

- (unint64_t)segmentCount
{
  v2 = [(AXSliderValueTableViewCell *)self slider];
  v3 = [v2 segmentCount];

  return v3;
}

- (void)setSegmentCount:(unint64_t)a3
{
  v4 = [(AXSliderValueTableViewCell *)self slider];
  [v4 setSegmentCount:a3];
}

- (AXSliderValueTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
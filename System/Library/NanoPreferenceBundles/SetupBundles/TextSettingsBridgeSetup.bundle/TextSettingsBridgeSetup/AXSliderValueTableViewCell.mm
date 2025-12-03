@interface AXSliderValueTableViewCell
- (AXSliderValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AXSliderValueTableViewCellDelegate)delegate;
- (UIImage)maximumValueImage;
- (UIImage)minimumValueImage;
- (double)maximumValue;
- (double)minimumValue;
- (double)value;
- (unint64_t)segmentCount;
- (void)_sliderChanged:(id)changed;
- (void)didMoveToSuperview;
- (void)setMaximumValue:(double)value;
- (void)setMaximumValueImage:(id)image;
- (void)setMinimumValue:(double)value;
- (void)setMinimumValueImage:(id)image;
- (void)setSegmentCount:(unint64_t)count;
- (void)setValue:(double)value;
@end

@implementation AXSliderValueTableViewCell

- (AXSliderValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = AXSliderValueTableViewCell;
  v4 = [(AXSliderValueTableViewCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AXSliderValueTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc_init(PSSegmentableSlider);
    [(AXSliderValueTableViewCell *)v5 setSlider:v6];

    slider = [(AXSliderValueTableViewCell *)v5 slider];
    [slider setMinimumValue:0.0];

    slider2 = [(AXSliderValueTableViewCell *)v5 slider];
    LODWORD(v9) = 1.0;
    [slider2 setMaximumValue:v9];

    slider3 = [(AXSliderValueTableViewCell *)v5 slider];
    [slider3 setSegmented:1];

    slider4 = [(AXSliderValueTableViewCell *)v5 slider];
    [slider4 setSnapsToSegment:1];

    slider5 = [(AXSliderValueTableViewCell *)v5 slider];
    [slider5 setContinuous:1];

    slider6 = [(AXSliderValueTableViewCell *)v5 slider];
    [slider6 setTranslatesAutoresizingMaskIntoConstraints:0];

    slider7 = [(AXSliderValueTableViewCell *)v5 slider];
    [slider7 addTarget:v5 action:"_sliderChanged:" forControlEvents:4096];

    contentView = [(AXSliderValueTableViewCell *)v5 contentView];
    slider8 = [(AXSliderValueTableViewCell *)v5 slider];
    [contentView addSubview:slider8];
  }

  return v5;
}

- (void)didMoveToSuperview
{
  v28.receiver = self;
  v28.super_class = AXSliderValueTableViewCell;
  [(AXSliderValueTableViewCell *)&v28 didMoveToSuperview];
  slider = [(AXSliderValueTableViewCell *)self slider];
  leadingAnchor = [slider leadingAnchor];
  contentView = [(AXSliderValueTableViewCell *)self contentView];
  readableContentGuide = [contentView readableContentGuide];
  leadingAnchor2 = [readableContentGuide leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v22;
  slider2 = [(AXSliderValueTableViewCell *)self slider];
  topAnchor = [slider2 topAnchor];
  contentView2 = [(AXSliderValueTableViewCell *)self contentView];
  readableContentGuide2 = [contentView2 readableContentGuide];
  topAnchor2 = [readableContentGuide2 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[1] = v16;
  slider3 = [(AXSliderValueTableViewCell *)self slider];
  bottomAnchor = [slider3 bottomAnchor];
  contentView3 = [(AXSliderValueTableViewCell *)self contentView];
  readableContentGuide3 = [contentView3 readableContentGuide];
  bottomAnchor2 = [readableContentGuide3 bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[2] = v5;
  slider4 = [(AXSliderValueTableViewCell *)self slider];
  trailingAnchor = [slider4 trailingAnchor];
  contentView4 = [(AXSliderValueTableViewCell *)self contentView];
  readableContentGuide4 = [contentView4 readableContentGuide];
  trailingAnchor2 = [readableContentGuide4 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[3] = v11;
  v12 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (double)minimumValue
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  [slider minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinimumValue:(double)value
{
  valueCopy = value;
  slider = [(AXSliderValueTableViewCell *)self slider];
  *&v4 = valueCopy;
  [slider setMinimumValue:v4];
}

- (double)maximumValue
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  [slider maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaximumValue:(double)value
{
  valueCopy = value;
  slider = [(AXSliderValueTableViewCell *)self slider];
  *&v4 = valueCopy;
  [slider setMaximumValue:v4];
}

- (double)value
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  [slider value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)value
{
  valueCopy = value;
  slider = [(AXSliderValueTableViewCell *)self slider];
  *&v4 = valueCopy;
  [slider setValue:v4];
}

- (void)_sliderChanged:(id)changed
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  [slider value];
  [(AXSliderValueTableViewCell *)self setValue:v5];

  delegate = [(AXSliderValueTableViewCell *)self delegate];
  [(AXSliderValueTableViewCell *)self value];
  [delegate sliderValueTableViewCell:self didChangeValue:?];
}

- (UIImage)minimumValueImage
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  minimumValueImage = [slider minimumValueImage];

  return minimumValueImage;
}

- (void)setMinimumValueImage:(id)image
{
  imageCopy = image;
  slider = [(AXSliderValueTableViewCell *)self slider];
  [slider setMinimumValueImage:imageCopy];
}

- (UIImage)maximumValueImage
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  maximumValueImage = [slider maximumValueImage];

  return maximumValueImage;
}

- (void)setMaximumValueImage:(id)image
{
  imageCopy = image;
  slider = [(AXSliderValueTableViewCell *)self slider];
  [slider setMaximumValueImage:imageCopy];
}

- (unint64_t)segmentCount
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  segmentCount = [slider segmentCount];

  return segmentCount;
}

- (void)setSegmentCount:(unint64_t)count
{
  slider = [(AXSliderValueTableViewCell *)self slider];
  [slider setSegmentCount:count];
}

- (AXSliderValueTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
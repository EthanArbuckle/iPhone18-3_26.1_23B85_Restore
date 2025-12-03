@interface StepperControl
- (StepperControl)initWithFrame:(CGRect)frame;
- (void)minusButtonTapped:(id)tapped;
- (void)plusButtonTapped:(id)tapped;
- (void)setMaxValue:(unint64_t)value;
- (void)setMinValue:(unint64_t)value;
- (void)setPluralValueTitleFormat:(id)format;
- (void)setSingularValueTitleFormat:(id)format;
- (void)setValue:(unint64_t)value;
- (void)setupConstraints;
- (void)updateLabel;
@end

@implementation StepperControl

- (void)setMaxValue:(unint64_t)value
{
  if (self->_maxValue != value && self->_minValue <= value)
  {
    self->_maxValue = value;
  }
}

- (void)setMinValue:(unint64_t)value
{
  if (self->_minValue != value && self->_maxValue >= value)
  {
    self->_minValue = value;
    if (self->_value < value)
    {
      [(StepperControl *)self setValue:?];
    }
  }
}

- (void)setValue:(unint64_t)value
{
  if (self->_value != value && [(StepperControl *)self maxValue]>= value && [(StepperControl *)self minValue]<= value)
  {
    self->_value = value;
    [(StepperControl *)self updateLabel];

    [(StepperControl *)self sendActionsForControlEvents:4096];
  }
}

- (void)setSingularValueTitleFormat:(id)format
{
  formatCopy = format;
  if (([formatCopy isEqualToString:self->_singularValueTitleFormat] & 1) == 0)
  {
    v4 = [formatCopy copy];
    singularValueTitleFormat = self->_singularValueTitleFormat;
    self->_singularValueTitleFormat = v4;

    [(StepperControl *)self updateLabel];
  }
}

- (void)setPluralValueTitleFormat:(id)format
{
  formatCopy = format;
  if (([formatCopy isEqualToString:self->_pluralValueTitleFormat] & 1) == 0)
  {
    v4 = [formatCopy copy];
    pluralValueTitleFormat = self->_pluralValueTitleFormat;
    self->_pluralValueTitleFormat = v4;

    [(StepperControl *)self updateLabel];
  }
}

- (void)plusButtonTapped:(id)tapped
{
  v4 = [(StepperControl *)self value]+ 1;

  [(StepperControl *)self setValue:v4];
}

- (void)minusButtonTapped:(id)tapped
{
  v4 = [(StepperControl *)self value]- 1;

  [(StepperControl *)self setValue:v4];
}

- (void)updateLabel
{
  if ([(StepperControl *)self value]== 1)
  {
    [(StepperControl *)self singularValueTitleFormat];
  }

  else
  {
    [(StepperControl *)self pluralValueTitleFormat];
  }
  v7 = ;
  v3 = [NSNumber numberWithUnsignedInteger:[(StepperControl *)self value]];
  stringValue = [v3 stringValue];
  v5 = [v7 stringByReplacingOccurrencesOfString:@"%ld" withString:stringValue];
  titleLabel = [(StepperControl *)self titleLabel];
  [titleLabel setText:v5];
}

- (void)setupConstraints
{
  plusButton = [(StepperControl *)self plusButton];
  [plusButton setTranslatesAutoresizingMaskIntoConstraints:0];

  minusButton = [(StepperControl *)self minusButton];
  [minusButton setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel = [(StepperControl *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  [(StepperControl *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  trailingAnchor = [(StepperControl *)self trailingAnchor];
  plusButton2 = [(StepperControl *)self plusButton];
  trailingAnchor2 = [plusButton2 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  titleLabel2 = [(StepperControl *)self titleLabel];
  trailingAnchor3 = [titleLabel2 trailingAnchor];
  plusButton3 = [(StepperControl *)self plusButton];
  leadingAnchor = [plusButton3 leadingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-8.0];

  plusButton4 = [(StepperControl *)self plusButton];
  v14 = [NSLayoutConstraint constraintWithItem:plusButton4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  titleLabel3 = [(StepperControl *)self titleLabel];
  leadingAnchor2 = [titleLabel3 leadingAnchor];
  minusButton2 = [(StepperControl *)self minusButton];
  trailingAnchor4 = [minusButton2 trailingAnchor];
  v19 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor4 constant:8.0];

  titleLabel4 = [(StepperControl *)self titleLabel];
  v21 = [NSLayoutConstraint constraintWithItem:titleLabel4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  minusButton3 = [(StepperControl *)self minusButton];
  leadingAnchor3 = [minusButton3 leadingAnchor];
  leadingAnchor4 = [(StepperControl *)self leadingAnchor];
  v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  minusButton4 = [(StepperControl *)self minusButton];
  v27 = [NSLayoutConstraint constraintWithItem:minusButton4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  topAnchor = [(StepperControl *)self topAnchor];
  plusButton5 = [(StepperControl *)self plusButton];
  topAnchor2 = [plusButton5 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [(StepperControl *)self bottomAnchor];
  plusButton6 = [(StepperControl *)self plusButton];
  bottomAnchor2 = [plusButton6 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  [v37 setActive:1];
  [v36 setActive:1];
  [v14 setActive:1];
  [v19 setActive:1];
  [v21 setActive:1];
  [v25 setActive:1];
  [v27 setActive:1];
  [v31 setActive:1];
  [v35 setActive:1];
}

- (StepperControl)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = StepperControl;
  v3 = [(StepperControl *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(StepperControl *)v3 setTitleLabel:v4];

    v5 = [UIFont systemFontOfSize:15.0];
    titleLabel = [(StepperControl *)v3 titleLabel];
    [titleLabel setFont:v5];

    v7 = +[UIColor secondaryLabelColor];
    titleLabel2 = [(StepperControl *)v3 titleLabel];
    [titleLabel2 setTextColor:v7];

    v9 = [UIButton buttonWithType:1];
    [(StepperControl *)v3 setMinusButton:v9];

    v10 = [UIButton buttonWithType:1];
    [(StepperControl *)v3 setPlusButton:v10];

    minusButton = [(StepperControl *)v3 minusButton];
    [minusButton setTitle:@"−" forState:0];

    plusButton = [(StepperControl *)v3 plusButton];
    [plusButton setTitle:@"+" forState:0];

    minusButton2 = [(StepperControl *)v3 minusButton];
    [minusButton2 addTarget:v3 action:"minusButtonTapped:" forControlEvents:64];

    plusButton2 = [(StepperControl *)v3 plusButton];
    [plusButton2 addTarget:v3 action:"plusButtonTapped:" forControlEvents:64];

    titleLabel3 = [(StepperControl *)v3 titleLabel];
    [(StepperControl *)v3 addSubview:titleLabel3];

    minusButton3 = [(StepperControl *)v3 minusButton];
    [(StepperControl *)v3 addSubview:minusButton3];

    plusButton3 = [(StepperControl *)v3 plusButton];
    [(StepperControl *)v3 addSubview:plusButton3];

    v3->_minValue = 0;
    v3->_maxValue = -1;
    v3->_value = 0;
    singularValueTitleFormat = v3->_singularValueTitleFormat;
    v3->_singularValueTitleFormat = @"%ld";

    pluralValueTitleFormat = v3->_pluralValueTitleFormat;
    v3->_pluralValueTitleFormat = @"%ld";

    [(StepperControl *)v3 setupConstraints];
  }

  return v3;
}

@end
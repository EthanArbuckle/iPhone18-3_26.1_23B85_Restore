@interface StepperControl
- (StepperControl)initWithFrame:(CGRect)a3;
- (void)minusButtonTapped:(id)a3;
- (void)plusButtonTapped:(id)a3;
- (void)setMaxValue:(unint64_t)a3;
- (void)setMinValue:(unint64_t)a3;
- (void)setPluralValueTitleFormat:(id)a3;
- (void)setSingularValueTitleFormat:(id)a3;
- (void)setValue:(unint64_t)a3;
- (void)setupConstraints;
- (void)updateLabel;
@end

@implementation StepperControl

- (void)setMaxValue:(unint64_t)a3
{
  if (self->_maxValue != a3 && self->_minValue <= a3)
  {
    self->_maxValue = a3;
  }
}

- (void)setMinValue:(unint64_t)a3
{
  if (self->_minValue != a3 && self->_maxValue >= a3)
  {
    self->_minValue = a3;
    if (self->_value < a3)
    {
      [(StepperControl *)self setValue:?];
    }
  }
}

- (void)setValue:(unint64_t)a3
{
  if (self->_value != a3 && [(StepperControl *)self maxValue]>= a3 && [(StepperControl *)self minValue]<= a3)
  {
    self->_value = a3;
    [(StepperControl *)self updateLabel];

    [(StepperControl *)self sendActionsForControlEvents:4096];
  }
}

- (void)setSingularValueTitleFormat:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_singularValueTitleFormat] & 1) == 0)
  {
    v4 = [v6 copy];
    singularValueTitleFormat = self->_singularValueTitleFormat;
    self->_singularValueTitleFormat = v4;

    [(StepperControl *)self updateLabel];
  }
}

- (void)setPluralValueTitleFormat:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_pluralValueTitleFormat] & 1) == 0)
  {
    v4 = [v6 copy];
    pluralValueTitleFormat = self->_pluralValueTitleFormat;
    self->_pluralValueTitleFormat = v4;

    [(StepperControl *)self updateLabel];
  }
}

- (void)plusButtonTapped:(id)a3
{
  v4 = [(StepperControl *)self value]+ 1;

  [(StepperControl *)self setValue:v4];
}

- (void)minusButtonTapped:(id)a3
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
  v4 = [v3 stringValue];
  v5 = [v7 stringByReplacingOccurrencesOfString:@"%ld" withString:v4];
  v6 = [(StepperControl *)self titleLabel];
  [v6 setText:v5];
}

- (void)setupConstraints
{
  v3 = [(StepperControl *)self plusButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(StepperControl *)self minusButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(StepperControl *)self titleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(StepperControl *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(StepperControl *)self trailingAnchor];
  v7 = [(StepperControl *)self plusButton];
  v8 = [v7 trailingAnchor];
  v37 = [v6 constraintEqualToAnchor:v8];

  v9 = [(StepperControl *)self titleLabel];
  v10 = [v9 trailingAnchor];
  v11 = [(StepperControl *)self plusButton];
  v12 = [v11 leadingAnchor];
  v36 = [v10 constraintEqualToAnchor:v12 constant:-8.0];

  v13 = [(StepperControl *)self plusButton];
  v14 = [NSLayoutConstraint constraintWithItem:v13 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  v15 = [(StepperControl *)self titleLabel];
  v16 = [v15 leadingAnchor];
  v17 = [(StepperControl *)self minusButton];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:8.0];

  v20 = [(StepperControl *)self titleLabel];
  v21 = [NSLayoutConstraint constraintWithItem:v20 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  v22 = [(StepperControl *)self minusButton];
  v23 = [v22 leadingAnchor];
  v24 = [(StepperControl *)self leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  v26 = [(StepperControl *)self minusButton];
  v27 = [NSLayoutConstraint constraintWithItem:v26 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  v28 = [(StepperControl *)self topAnchor];
  v29 = [(StepperControl *)self plusButton];
  v30 = [v29 topAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];

  v32 = [(StepperControl *)self bottomAnchor];
  v33 = [(StepperControl *)self plusButton];
  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];

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

- (StepperControl)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = StepperControl;
  v3 = [(StepperControl *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(StepperControl *)v3 setTitleLabel:v4];

    v5 = [UIFont systemFontOfSize:15.0];
    v6 = [(StepperControl *)v3 titleLabel];
    [v6 setFont:v5];

    v7 = +[UIColor secondaryLabelColor];
    v8 = [(StepperControl *)v3 titleLabel];
    [v8 setTextColor:v7];

    v9 = [UIButton buttonWithType:1];
    [(StepperControl *)v3 setMinusButton:v9];

    v10 = [UIButton buttonWithType:1];
    [(StepperControl *)v3 setPlusButton:v10];

    v11 = [(StepperControl *)v3 minusButton];
    [v11 setTitle:@"−" forState:0];

    v12 = [(StepperControl *)v3 plusButton];
    [v12 setTitle:@"+" forState:0];

    v13 = [(StepperControl *)v3 minusButton];
    [v13 addTarget:v3 action:"minusButtonTapped:" forControlEvents:64];

    v14 = [(StepperControl *)v3 plusButton];
    [v14 addTarget:v3 action:"plusButtonTapped:" forControlEvents:64];

    v15 = [(StepperControl *)v3 titleLabel];
    [(StepperControl *)v3 addSubview:v15];

    v16 = [(StepperControl *)v3 minusButton];
    [(StepperControl *)v3 addSubview:v16];

    v17 = [(StepperControl *)v3 plusButton];
    [(StepperControl *)v3 addSubview:v17];

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
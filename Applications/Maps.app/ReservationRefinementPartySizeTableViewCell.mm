@interface ReservationRefinementPartySizeTableViewCell
- (ReservationRefinementPartySizeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupConstraints;
- (void)updateLabel;
- (void)updateStepperValueToValue:(unint64_t)value;
@end

@implementation ReservationRefinementPartySizeTableViewCell

- (void)updateStepperValueToValue:(unint64_t)value
{
  valueCopy = value;
  stepperControl = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  [stepperControl setValue:valueCopy];

  [(ReservationRefinementPartySizeTableViewCell *)self updateLabel];
}

- (void)updateLabel
{
  v3 = [NSString alloc];
  v10 = +[NSBundle mainBundle];
  v4 = [v10 localizedStringForKey:@"number_of_people_reservation_request" value:@"localized string not found" table:0];
  v5 = +[NSLocale autoupdatingCurrentLocale];
  stepperControl = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  [stepperControl value];
  LODWORD(v8) = llround(v7);
  v9 = [v3 initWithFormat:v4 locale:v5, v8];
  [(ReservationTableViewCell *)self setTitleText:v9];
}

- (void)setupConstraints
{
  stepperControl = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  [stepperControl setTranslatesAutoresizingMaskIntoConstraints:0];

  stepperControl2 = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  trailingAnchor = [stepperControl2 trailingAnchor];
  contentView = [(ReservationRefinementPartySizeTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  contentView2 = [(ReservationRefinementPartySizeTableViewCell *)self contentView];
  centerYAnchor = [contentView2 centerYAnchor];
  stepperControl3 = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  centerYAnchor2 = [stepperControl3 centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  [v14 setActive:1];
  [v13 setActive:1];
}

- (ReservationRefinementPartySizeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = ReservationRefinementPartySizeTableViewCell;
  v4 = [(ReservationTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    stepperControl = v4->_stepperControl;
    v4->_stepperControl = v5;

    [(UIStepper *)v4->_stepperControl addTarget:v4 action:"valueChanged:" forControlEvents:4096];
    contentView = [(ReservationRefinementPartySizeTableViewCell *)v4 contentView];
    stepperControl = [(ReservationRefinementPartySizeTableViewCell *)v4 stepperControl];
    [contentView addSubview:stepperControl];

    v9 = +[UIColor labelColor];
    titleLabel = [(ReservationTableViewCell *)v4 titleLabel];
    [titleLabel setTextColor:v9];

    [(ReservationRefinementPartySizeTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end
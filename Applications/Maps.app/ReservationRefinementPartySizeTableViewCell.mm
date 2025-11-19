@interface ReservationRefinementPartySizeTableViewCell
- (ReservationRefinementPartySizeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setupConstraints;
- (void)updateLabel;
- (void)updateStepperValueToValue:(unint64_t)a3;
@end

@implementation ReservationRefinementPartySizeTableViewCell

- (void)updateStepperValueToValue:(unint64_t)a3
{
  v4 = a3;
  v5 = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  [v5 setValue:v4];

  [(ReservationRefinementPartySizeTableViewCell *)self updateLabel];
}

- (void)updateLabel
{
  v3 = [NSString alloc];
  v10 = +[NSBundle mainBundle];
  v4 = [v10 localizedStringForKey:@"number_of_people_reservation_request" value:@"localized string not found" table:0];
  v5 = +[NSLocale autoupdatingCurrentLocale];
  v6 = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  [v6 value];
  LODWORD(v8) = llround(v7);
  v9 = [v3 initWithFormat:v4 locale:v5, v8];
  [(ReservationTableViewCell *)self setTitleText:v9];
}

- (void)setupConstraints
{
  v3 = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  v5 = [v4 trailingAnchor];
  v6 = [(ReservationRefinementPartySizeTableViewCell *)self contentView];
  v7 = [v6 layoutMarginsGuide];
  v8 = [v7 trailingAnchor];
  v14 = [v5 constraintEqualToAnchor:v8];

  v9 = [(ReservationRefinementPartySizeTableViewCell *)self contentView];
  v10 = [v9 centerYAnchor];
  v11 = [(ReservationRefinementPartySizeTableViewCell *)self stepperControl];
  v12 = [v11 centerYAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];

  [v14 setActive:1];
  [v13 setActive:1];
}

- (ReservationRefinementPartySizeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = ReservationRefinementPartySizeTableViewCell;
  v4 = [(ReservationTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    stepperControl = v4->_stepperControl;
    v4->_stepperControl = v5;

    [(UIStepper *)v4->_stepperControl addTarget:v4 action:"valueChanged:" forControlEvents:4096];
    v7 = [(ReservationRefinementPartySizeTableViewCell *)v4 contentView];
    v8 = [(ReservationRefinementPartySizeTableViewCell *)v4 stepperControl];
    [v7 addSubview:v8];

    v9 = +[UIColor labelColor];
    v10 = [(ReservationTableViewCell *)v4 titleLabel];
    [v10 setTextColor:v9];

    [(ReservationRefinementPartySizeTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end
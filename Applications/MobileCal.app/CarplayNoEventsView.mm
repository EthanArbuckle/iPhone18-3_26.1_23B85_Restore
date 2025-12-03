@interface CarplayNoEventsView
- (CarplayNoEventsView)init;
- (void)didMoveToWindow;
- (void)updateHeaderText:(id)text;
@end

@implementation CarplayNoEventsView

- (CarplayNoEventsView)init
{
  v35.receiver = self;
  v35.super_class = CarplayNoEventsView;
  v2 = [(CarplayNoEventsView *)&v35 init];
  if (v2)
  {
    if (CalSystemSolariumEnabled())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tableBackgroundColor];
    }
    v3 = ;
    [(CarplayNoEventsView *)v2 setBackgroundColor:v3];

    [(CarplayNoEventsView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v2->_label;
    v2->_label = v4;

    [(UILabel *)v2->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v6 localizedStringForKey:@"No Events Today" value:&stru_1002133B8 table:0];

    [(UILabel *)v2->_label setText:v34];
    v7 = +[UIColor labelColor];
    [(UILabel *)v2->_label setTextColor:v7];

    [(UILabel *)v2->_label setTextAlignment:1];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    [(UILabel *)v2->_label setFont:v8];

    [(CarplayNoEventsView *)v2 addSubview:v2->_label];
    v9 = objc_opt_new();
    header = v2->_header;
    v2->_header = v9;

    separator = [(CarplayTableViewHeaderContentView *)v2->_header separator];
    [separator setHidden:1];

    [(CarplayTableViewHeaderContentView *)v2->_header setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = CUIKNowDate();
    v13 = CUIKStringForDateAndDayOfWeekInCalendarTimezoneWithFormattingContext();
    label = [(CarplayTableViewHeaderContentView *)v2->_header label];
    [label setText:v13];

    [(CarplayNoEventsView *)v2 addSubview:v2->_header];
    firstBaselineAnchor = [(UILabel *)v2->_label firstBaselineAnchor];
    topAnchor = [(CarplayNoEventsView *)v2 topAnchor];
    window = [(CarplayNoEventsView *)v2 window];
    [window bounds];
    v18 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:CGRectGetHeight(v37) * 0.56];
    labelBaselineConstraint = v2->_labelBaselineConstraint;
    v2->_labelBaselineConstraint = v18;

    leadingAnchor = [(CarplayTableViewHeaderContentView *)v2->_header leadingAnchor];
    leadingAnchor2 = [(CarplayNoEventsView *)v2 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v36[0] = v31;
    topAnchor2 = [(CarplayTableViewHeaderContentView *)v2->_header topAnchor];
    topAnchor3 = [(CarplayNoEventsView *)v2 topAnchor];
    v21 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v36[1] = v21;
    v36[2] = v2->_labelBaselineConstraint;
    trailingAnchor = [(CarplayTableViewHeaderContentView *)v2->_header trailingAnchor];
    trailingAnchor2 = [(CarplayNoEventsView *)v2 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v36[3] = v24;
    centerXAnchor = [(UILabel *)v2->_label centerXAnchor];
    centerXAnchor2 = [(CarplayNoEventsView *)v2 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v36[4] = v27;
    v28 = [NSArray arrayWithObjects:v36 count:5];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v2;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarplayNoEventsView;
  [(CarplayNoEventsView *)&v4 didMoveToWindow];
  window = [(CarplayNoEventsView *)self window];
  [window bounds];
  [(NSLayoutConstraint *)self->_labelBaselineConstraint setConstant:CGRectGetHeight(v5) * 0.56];
}

- (void)updateHeaderText:(id)text
{
  header = self->_header;
  textCopy = text;
  label = [(CarplayTableViewHeaderContentView *)header label];
  [label setText:textCopy];
}

@end
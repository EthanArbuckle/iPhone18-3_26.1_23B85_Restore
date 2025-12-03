@interface TransitScheduleNetworkActivityTableViewCell
- (TransitScheduleNetworkActivityTableViewCell)initWithFrame:(CGRect)frame;
- (void)configureErrorView;
- (void)configureLoadingView;
- (void)setErrorStateWithString:(id)string;
- (void)setState:(unint64_t)state withErrorString:(id)string;
@end

@implementation TransitScheduleNetworkActivityTableViewCell

- (void)setErrorStateWithString:(id)string
{
  stringCopy = string;
  v7 = stringCopy;
  if (self->_state != 3 || (v5 = [stringCopy isEqualToString:self->_serverErrorString], v6 = v7, (v5 & 1) == 0))
  {
    [(TransitScheduleNetworkActivityTableViewCell *)self setState:3 withErrorString:v7];
    v6 = v7;
  }
}

- (void)setState:(unint64_t)state withErrorString:(id)string
{
  self->_state = state;
  v5 = [string copy];
  serverErrorString = self->_serverErrorString;
  self->_serverErrorString = v5;

  [(UIView *)self->_currentView setHidden:1];
  state = self->_state;
  if (state - 3 >= 2)
  {
    if (state != 2)
    {
      goto LABEL_6;
    }

    [(TransitScheduleNetworkActivityTableViewCell *)self configureLoadingView];
    p_loadingView = &self->_loadingView;
    [(LoadingModeView *)self->_loadingView startAnimating];
  }

  else
  {
    [(TransitScheduleNetworkActivityTableViewCell *)self configureErrorView];
    p_loadingView = &self->_errorLabel;
  }

  objc_storeStrong(&self->_currentView, *p_loadingView);
LABEL_6:
  currentView = self->_currentView;

  [(UIView *)currentView setHidden:0];
}

- (void)configureErrorView
{
  if (!self->_errorLabel)
  {
    v3 = objc_alloc_init(UILabel);
    errorLabel = self->_errorLabel;
    self->_errorLabel = v3;

    [(UILabel *)self->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_errorLabel setTextAlignment:1];
    [(UILabel *)self->_errorLabel setNumberOfLines:2];
    labelFont = [(TransitScheduleNetworkActivityTableViewCell *)self labelFont];
    [(UILabel *)self->_errorLabel setFont:labelFont];

    labelColor = [(TransitScheduleNetworkActivityTableViewCell *)self labelColor];
    [(UILabel *)self->_errorLabel setTextColor:labelColor];

    if (self->_state == 3 && [(NSString *)self->_serverErrorString length])
    {
      [(UILabel *)self->_errorLabel setText:self->_serverErrorString];
    }

    else
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"[Transit Schedule] Offline error message" value:@"localized string not found" table:0];
      [(UILabel *)self->_errorLabel setText:v8];
    }

    contentView = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    [contentView addSubview:self->_errorLabel];

    topAnchor = [(UILabel *)self->_errorLabel topAnchor];
    contentView2 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v25 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v29[0] = v25;
    contentView3 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    bottomAnchor = [contentView3 bottomAnchor];
    bottomAnchor2 = [(UILabel *)self->_errorLabel bottomAnchor];
    v21 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v29[1] = v21;
    leadingAnchor = [(UILabel *)self->_errorLabel leadingAnchor];
    contentView4 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[2] = v12;
    trailingAnchor = [(UILabel *)self->_errorLabel trailingAnchor];
    contentView5 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[3] = v16;
    v17 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }

  if (self->_state == 3 && [(NSString *)self->_serverErrorString length])
  {
    [(UILabel *)self->_errorLabel setText:self->_serverErrorString];
  }

  else
  {
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"[Transit Schedule] Offline error message" value:@"localized string not found" table:0];
    [(UILabel *)self->_errorLabel setText:v19];
  }
}

- (void)configureLoadingView
{
  if (!self->_loadingView)
  {
    v3 = [LoadingModeView alloc];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[Transit Schedule] Loading ..." value:@"localized string not found" table:0];
    v6 = [(LoadingModeView *)v3 initWithTitle:v5 axis:0];
    loadingView = self->_loadingView;
    self->_loadingView = v6;

    [(LoadingModeView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_loadingView;
    labelColor = [(TransitScheduleNetworkActivityTableViewCell *)self labelColor];
    [(LoadingModeView *)v8 setTitleColor:labelColor];

    v10 = self->_loadingView;
    labelFont = [(TransitScheduleNetworkActivityTableViewCell *)self labelFont];
    [(LoadingModeView *)v10 setTitleFont:labelFont];

    contentView = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    [contentView addSubview:self->_loadingView];

    topAnchor = [(LoadingModeView *)self->_loadingView topAnchor];
    contentView2 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v26;
    bottomAnchor = [(LoadingModeView *)self->_loadingView bottomAnchor];
    contentView3 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v13;
    leadingAnchor = [(LoadingModeView *)self->_loadingView leadingAnchor];
    contentView4 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[2] = v17;
    trailingAnchor = [(LoadingModeView *)self->_loadingView trailingAnchor];
    contentView5 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[3] = v21;
    v22 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }
}

- (TransitScheduleNetworkActivityTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitScheduleNetworkActivityTableViewCell;
  v3 = [(TransitScheduleNetworkActivityTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitScheduleNetworkActivityTableViewCell *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end
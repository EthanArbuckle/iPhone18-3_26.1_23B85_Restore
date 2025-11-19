@interface TransitScheduleNetworkActivityTableViewCell
- (TransitScheduleNetworkActivityTableViewCell)initWithFrame:(CGRect)a3;
- (void)configureErrorView;
- (void)configureLoadingView;
- (void)setErrorStateWithString:(id)a3;
- (void)setState:(unint64_t)a3 withErrorString:(id)a4;
@end

@implementation TransitScheduleNetworkActivityTableViewCell

- (void)setErrorStateWithString:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_state != 3 || (v5 = [v4 isEqualToString:self->_serverErrorString], v6 = v7, (v5 & 1) == 0))
  {
    [(TransitScheduleNetworkActivityTableViewCell *)self setState:3 withErrorString:v7];
    v6 = v7;
  }
}

- (void)setState:(unint64_t)a3 withErrorString:(id)a4
{
  self->_state = a3;
  v5 = [a4 copy];
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
    v5 = [(TransitScheduleNetworkActivityTableViewCell *)self labelFont];
    [(UILabel *)self->_errorLabel setFont:v5];

    v6 = [(TransitScheduleNetworkActivityTableViewCell *)self labelColor];
    [(UILabel *)self->_errorLabel setTextColor:v6];

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

    v9 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    [v9 addSubview:self->_errorLabel];

    v27 = [(UILabel *)self->_errorLabel topAnchor];
    v28 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v26 = [v28 topAnchor];
    v25 = [v27 constraintEqualToSystemSpacingBelowAnchor:v26 multiplier:1.0];
    v29[0] = v25;
    v24 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v23 = [v24 bottomAnchor];
    v22 = [(UILabel *)self->_errorLabel bottomAnchor];
    v21 = [v23 constraintEqualToSystemSpacingBelowAnchor:v22 multiplier:1.0];
    v29[1] = v21;
    v20 = [(UILabel *)self->_errorLabel leadingAnchor];
    v10 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v11 = [v10 leadingAnchor];
    v12 = [v20 constraintEqualToAnchor:v11];
    v29[2] = v12;
    v13 = [(UILabel *)self->_errorLabel trailingAnchor];
    v14 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
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
    v9 = [(TransitScheduleNetworkActivityTableViewCell *)self labelColor];
    [(LoadingModeView *)v8 setTitleColor:v9];

    v10 = self->_loadingView;
    v11 = [(TransitScheduleNetworkActivityTableViewCell *)self labelFont];
    [(LoadingModeView *)v10 setTitleFont:v11];

    v12 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    [v12 addSubview:self->_loadingView];

    v28 = [(LoadingModeView *)self->_loadingView topAnchor];
    v29 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v27 = [v29 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v30[0] = v26;
    v24 = [(LoadingModeView *)self->_loadingView bottomAnchor];
    v25 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v23 = [v25 bottomAnchor];
    v13 = [v24 constraintEqualToAnchor:v23];
    v30[1] = v13;
    v14 = [(LoadingModeView *)self->_loadingView leadingAnchor];
    v15 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v30[2] = v17;
    v18 = [(LoadingModeView *)self->_loadingView trailingAnchor];
    v19 = [(TransitScheduleNetworkActivityTableViewCell *)self contentView];
    v20 = [v19 trailingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v30[3] = v21;
    v22 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }
}

- (TransitScheduleNetworkActivityTableViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TransitScheduleNetworkActivityTableViewCell;
  v3 = [(TransitScheduleNetworkActivityTableViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitScheduleNetworkActivityTableViewCell *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end
@interface RidesharingEnableAllAppsTableViewCell
- (RidesharingEnableAllAppsTableViewCell)initWithFrame:(CGRect)frame;
- (RidesharingEnableAllAppsTableViewCellDelegate)delegate;
- (void)_enableButtonPressed:(id)pressed;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)configureForType:(unint64_t)type;
- (void)updateTheme;
@end

@implementation RidesharingEnableAllAppsTableViewCell

- (RidesharingEnableAllAppsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_enableButtonPressed:(id)pressed
{
  delegate = [(RidesharingEnableAllAppsTableViewCell *)self delegate];
  [delegate ridesharingEnableAllAppsTableViewCellDidPerformEnableCommand:self];
}

- (void)configureForType:(unint64_t)type
{
  self->_type = type;
  if (type == 1)
  {
    v3 = @"Show Apps [Ride Booking]";
  }

  else
  {
    if (type)
    {
      return;
    }

    v3 = @"Show Rides [Ride Booking]";
  }

  enableButton = self->_enableButton;
  v6 = +[NSBundle mainBundle];
  v5 = [v6 localizedStringForKey:v3 value:@"localized string not found" table:0];
  [(BackgroundColorButton *)enableButton setTitle:v5 forState:0];
}

- (void)_setupConstraints
{
  LODWORD(v2) = 1148846080;
  [(BackgroundColorButton *)self->_enableButton setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v4) = 1148846080;
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setContentHuggingPriority:1 forAxis:v5];
  contentView = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  +[RouteOverviewCell minimumRidesharingHeight];
  v38 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];

  v39[0] = v38;
  firstBaselineAnchor = [(MapsThemeMultiPartLabel *)self->_secondaryLabel firstBaselineAnchor];
  contentView2 = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  topAnchor = [contentView2 topAnchor];
  v34 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:22.0];
  v39[1] = v34;
  lastBaselineAnchor = [(MapsThemeMultiPartLabel *)self->_secondaryLabel lastBaselineAnchor];
  topAnchor2 = [(BackgroundColorButton *)self->_enableButton topAnchor];
  v31 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor2 constant:-16.0];
  v39[2] = v31;
  leadingAnchor = [(MapsThemeMultiPartLabel *)self->_secondaryLabel leadingAnchor];
  contentView3 = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v39[3] = v27;
  trailingAnchor = [(MapsThemeMultiPartLabel *)self->_secondaryLabel trailingAnchor];
  contentView4 = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v39[4] = v23;
  leadingAnchor3 = [(BackgroundColorButton *)self->_enableButton leadingAnchor];
  contentView5 = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v39[5] = v19;
  trailingAnchor3 = [(BackgroundColorButton *)self->_enableButton trailingAnchor];
  contentView6 = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v11 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v39[6] = v11;
  heightAnchor2 = [(BackgroundColorButton *)self->_enableButton heightAnchor];
  v13 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:50.0];
  v39[7] = v13;
  bottomAnchor = [(BackgroundColorButton *)self->_enableButton bottomAnchor];
  contentView7 = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  bottomAnchor2 = [contentView7 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-17.0];
  v39[8] = v17;
  v18 = [NSArray arrayWithObjects:v39 count:9];

  [NSLayoutConstraint activateConstraints:v18];
}

- (void)updateTheme
{
  v12.receiver = self;
  v12.super_class = RidesharingEnableAllAppsTableViewCell;
  [(MapsThemeCollectionViewCell *)&v12 updateTheme];
  theme = [(RidesharingEnableAllAppsTableViewCell *)self theme];
  enableButton = self->_enableButton;
  v5 = [theme blueButtonBackgroundColor:0];
  [(BackgroundColorButton *)enableButton setBackgroundColor:v5 forState:0];

  v6 = self->_enableButton;
  v7 = [theme blueButtonBackgroundColor:1];
  [(BackgroundColorButton *)v6 setBackgroundColor:v7 forState:1];

  v8 = self->_enableButton;
  v9 = [theme blueButtonTitleColor:0];
  [(BackgroundColorButton *)v8 setTitleColor:v9 forState:0];

  v10 = self->_enableButton;
  v11 = [theme blueButtonTitleColor:1];
  [(BackgroundColorButton *)v10 setTitleColor:v11 forState:1];
}

- (void)_setupViews
{
  v3 = [BackgroundColorButton buttonWithType:0];
  enableButton = self->_enableButton;
  self->_enableButton = v3;

  [(BackgroundColorButton *)self->_enableButton setClipsToBounds:1];
  layer = [(BackgroundColorButton *)self->_enableButton layer];
  [layer setCornerRadius:8.0];

  [(BackgroundColorButton *)self->_enableButton setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_type = 0;
  v6 = self->_enableButton;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Show Rides [Ride Booking]" value:@"localized string not found" table:0];
  [(BackgroundColorButton *)v6 setTitle:v8 forState:0];

  titleLabel = [(BackgroundColorButton *)self->_enableButton titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165DA48];

  [(BackgroundColorButton *)self->_enableButton addTarget:self action:"_enableButtonPressed:" forControlEvents:0x2000];
  contentView = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  [contentView addSubview:self->_enableButton];

  v11 = objc_alloc_init(MapsThemeMultiPartLabel);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v11;

  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextAlignment:1];
  v13 = +[UIColor secondaryLabelColor];
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextColor:v13];

  [DynamicTypeWizard autorefreshLabel:self->_secondaryLabel withFontProvider:&stru_10165D908];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Share your location with ride booking apps to estimate fares and wait times. You can manage this at any time in Maps Settings. [Ridesharing]" value:@"localized string not found" table:0];
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setText:v15];

  contentView2 = [(RidesharingEnableAllAppsTableViewCell *)self contentView];
  [contentView2 addSubview:self->_secondaryLabel];

  [(RidesharingEnableAllAppsTableViewCell *)self updateTheme];
}

- (RidesharingEnableAllAppsTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RidesharingEnableAllAppsTableViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RidesharingEnableAllAppsTableViewCell *)v3 _setupViews];
    [(RidesharingEnableAllAppsTableViewCell *)v4 _setupConstraints];
  }

  return v4;
}

@end
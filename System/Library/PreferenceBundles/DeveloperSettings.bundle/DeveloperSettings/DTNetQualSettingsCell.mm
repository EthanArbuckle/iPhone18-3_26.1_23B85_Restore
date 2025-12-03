@interface DTNetQualSettingsCell
- (DTNetQualSettingsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_fillNetworkQualityCell;
- (void)_runNetworkQuality;
- (void)cancelNetworkQualityRun;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)runNetworkQualityWithCompletionHandler:(id)handler;
@end

@implementation DTNetQualSettingsCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = DTNetQualSettingsCell;
  [(DTNetQualSettingsCell *)&v10 refreshCellContentsWithSpecifier:specifierCopy];
  specifier = self->specifier;
  self->specifier = specifierCopy;
  v6 = specifierCopy;

  v7 = [NSBundle bundleForClass:objc_opt_class()];

  v8 = [v7 localizedStringForKey:@"RESPONSIVENESS" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  textLabel = [(DTNetQualSettingsCell *)self textLabel];
  [textLabel setText:v8];

  [(DTNetQualSettingsCell *)self _fillNetworkQualityCell];
}

- (DTNetQualSettingsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = DTNetQualSettingsCell;
  v4 = [(DTNetQualSettingsCell *)&v10 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"RESPONSIVENESS" value:&stru_3E0D8 table:@"DTNetQualSettings"];
    textLabel = [(DTNetQualSettingsCell *)v4 textLabel];
    [textLabel setText:v6];

    [(DTNetQualSettingsCell *)v4 _fillNetworkQualityCell];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v4 selector:"cancelNetworkQualityRun" name:@"com.apple.Preferences.DTNetQualViewWillDisappear" object:0];
  }

  return v4;
}

- (void)cancelNetworkQualityRun
{
  if (self->networkQualityAssessment)
  {
    self->networkQualitySpinning = 0;
    [(NetworkQualityAssessment *)self->networkQualityAssessment cancel];
    networkQualityAssessment = self->networkQualityAssessment;
    self->networkQualityAssessment = 0;
  }
}

- (void)runNetworkQualityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(NetworkQualityConfiguration);
  if ([(DTNetQualSettingsCell *)self isL4SExplicitlyEnabledDisabled])
  {
    [v5 setParallel:0];
  }

  v6 = [[NetworkQualityAssessment alloc] initWithConfiguration:v5];
  networkQualityAssessment = self->networkQualityAssessment;
  self->networkQualityAssessment = v6;

  v8 = self->networkQualityAssessment;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1AFC0;
  v10[3] = &unk_3D718;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NetworkQualityAssessment *)v8 runWithCompletionHandler:v10];
}

- (void)_runNetworkQuality
{
  if (!self->networkQualitySpinning)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[DTNetQualSettingsCell _runNetworkQuality]";
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "NetQuality: %s: User scheduled a run", buf, 0xCu);
    }

    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"DATA_RATES_TITLE" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DATA_RATES_TEXT" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DATA_RATES_CONTINUE" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"DATA_RATES_CANCEL" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v11 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];
    v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:&stru_3D758];
    [v11 addAction:v12];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1B708;
    v15[3] = &unk_3D4E8;
    v15[4] = self;
    v13 = [UIAlertAction actionWithTitle:v8 style:0 handler:v15];
    [v11 addAction:v13];
    [v11 setPreferredAction:v13];
    target = [(PSSpecifier *)self->specifier target];
    [target presentViewController:v11 animated:1 completion:0];
  }
}

- (void)_fillNetworkQualityCell
{
  if (self->networkQualitySpinning)
  {
    v15 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(DTNetQualSettingsCell *)self setAccessoryView:v15];
    [v15 startAnimating];
    goto LABEL_15;
  }

  isL4SExplicitlyEnabledDisabled = [(DTNetQualSettingsCell *)self isL4SExplicitlyEnabledDisabled];
  networkQualityResponsivenessDownlink = self->networkQualityResponsivenessDownlink;
  if (!isL4SExplicitlyEnabledDisabled)
  {
    if (networkQualityResponsivenessDownlink)
    {
      goto LABEL_8;
    }

LABEL_10:
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v6 localizedStringForKey:@"LABEL_TEST" value:&stru_3E0D8 table:@"DTNetQualSettings"];
LABEL_13:

    goto LABEL_14;
  }

  if (!networkQualityResponsivenessDownlink)
  {
    goto LABEL_10;
  }

  if (!self->networkQualityResponsivenessUplink)
  {
LABEL_8:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"LABEL_RPM" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    networkQualityResponsivenessRatingDownlink = self->networkQualityResponsivenessRatingDownlink;
    if (networkQualityResponsivenessRatingDownlink > 2)
    {
      v10 = 0;
    }

    else
    {
      v8 = *(&off_3D778 + networkQualityResponsivenessRatingDownlink);
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:v8 value:&stru_3E0D8 table:@"DTNetQualSettings"];
    }

    v15 = [NSString stringWithFormat:@"%@ (%u %@)", v10, [(NSNumber *)self->networkQualityResponsivenessDownlink unsignedIntValue], v6];

    goto LABEL_13;
  }

  v15 = [NSString stringWithFormat:@"↓ %d ↑ %d", [(NSNumber *)networkQualityResponsivenessDownlink unsignedIntValue], [(NSNumber *)self->networkQualityResponsivenessUplink unsignedIntValue]];
LABEL_14:
  v11 = [UIButton buttonWithType:1];
  [v11 setTitle:v15 forState:0];
  [(DTNetQualSettingsCell *)self setAccessoryView:v11];
  textLabel = [(DTNetQualSettingsCell *)self textLabel];
  font = [textLabel font];
  titleLabel = [v11 titleLabel];
  [titleLabel setFont:font];

  [v11 sizeToFit];
  [v11 addTarget:self action:"_runNetworkQuality" forControlEvents:64];

LABEL_15:
}

@end
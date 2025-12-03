@interface RidesharingAppActionTableViewCell
- (RidesharingAppActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (RidesharingAppActionTableViewCellDelegate)delegate;
- (void)_openAppPressed:(id)pressed;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateContentSizeCategoryDependentFontsAndConstraints;
- (void)configureWithRideBookingRideOptionStatus:(id)status titleType:(unint64_t)type;
- (void)dealloc;
- (void)setApplicationName:(id)name titleType:(unint64_t)type;
- (void)updateTheme;
@end

@implementation RidesharingAppActionTableViewCell

- (RidesharingAppActionTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setApplicationName:(id)name titleType:(unint64_t)type
{
  nameCopy = name;
  self->_titleType = type;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_12;
      }

      actionButton = self->_actionButton;
      v7 = +[NSBundle mainBundle];
      v8 = v7;
      v9 = @"View App %@ [Ridesharing]";
    }

    else
    {
      actionButton = self->_actionButton;
      v7 = +[NSBundle mainBundle];
      v8 = v7;
      v9 = @"Open App %@ [Ridesharing]";
    }

    goto LABEL_10;
  }

  if (type == 2)
  {
    actionButton = self->_actionButton;
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"More from App %@ [Ridesharing]";
LABEL_10:
    v11 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];
    nameCopy = [NSString localizedStringWithFormat:v11, nameCopy];
    [(UIButton *)actionButton setTitle:nameCopy forState:0];

    goto LABEL_11;
  }

  if (type != 3)
  {
    goto LABEL_12;
  }

  v10 = self->_actionButton;
  v8 = +[NSBundle mainBundle];
  v11 = [v8 localizedStringForKey:@"More from the App Store [Ridesharing]" value:@"localized string not found" table:0];
  [(UIButton *)v10 setTitle:v11 forState:0];
LABEL_11:

LABEL_12:
  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  [titleLabel setLineBreakMode:0];

  titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
  [titleLabel2 setNumberOfLines:0];
}

- (void)configureWithRideBookingRideOptionStatus:(id)status titleType:(unint64_t)type
{
  objc_storeStrong(&self->_status, status);
  statusCopy = status;
  application = [statusCopy application];

  name = [application name];
  [(RidesharingAppActionTableViewCell *)self setApplicationName:name titleType:type];
}

- (void)_updateContentSizeCategoryDependentFontsAndConstraints
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline addingSymbolicTraits:0];
  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  [titleLabel setFont:v3];

  titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
  font = [titleLabel2 font];
  [font _mapkit_scaledValueForValue:25.0];
  [(NSLayoutConstraint *)self->_buttonBaselineToTopConstraint setConstant:?];
}

- (void)_openAppPressed:(id)pressed
{
  delegate = [(RidesharingAppActionTableViewCell *)self delegate];
  [delegate ridesharingAppActionTableViewCellDidPerformAction:self];
}

- (void)_setupConstraints
{
  firstBaselineAnchor = [(UIButton *)self->_actionButton firstBaselineAnchor];
  contentView = [(RidesharingAppActionTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  v6 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  buttonBaselineToTopConstraint = self->_buttonBaselineToTopConstraint;
  self->_buttonBaselineToTopConstraint = v6;

  leadingAnchor = [(UIButton *)self->_actionButton leadingAnchor];
  contentView2 = [(RidesharingAppActionTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v22[0] = v18;
  trailingAnchor = [(UIButton *)self->_actionButton trailingAnchor];
  contentView3 = [(RidesharingAppActionTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v11 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];
  v12 = self->_buttonBaselineToTopConstraint;
  v22[1] = v11;
  v22[2] = v12;
  lastBaselineAnchor = [(UIButton *)self->_actionButton lastBaselineAnchor];
  contentView4 = [(RidesharingAppActionTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  v16 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-41.0];
  v22[3] = v16;
  v17 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = RidesharingAppActionTableViewCell;
  [(MapsThemeTableViewCell *)&v9 updateTheme];
  actionButton = self->_actionButton;
  theme = [(RidesharingAppActionTableViewCell *)self theme];
  keyColor = [theme keyColor];
  [(UIButton *)actionButton setTitleColor:keyColor forState:0];

  v6 = self->_actionButton;
  theme2 = [(RidesharingAppActionTableViewCell *)self theme];
  darkKeyColor = [theme2 darkKeyColor];
  [(UIButton *)v6 setTitleColor:darkKeyColor forState:1];
}

- (void)_setupViews
{
  [(RidesharingAppActionTableViewCell *)self setSelectionStyle:0];
  v3 = [UIButton buttonWithType:0];
  actionButton = self->_actionButton;
  self->_actionButton = v3;

  [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_actionButton addTarget:self action:"_openAppPressed:" forControlEvents:0x2000];
  [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"ActionButton"];
  contentView = [(RidesharingAppActionTableViewCell *)self contentView];
  [contentView addSubview:self->_actionButton];

  [(RidesharingAppActionTableViewCell *)self updateTheme];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RidesharingAppActionTableViewCell;
  [(RidesharingAppActionTableViewCell *)&v4 dealloc];
}

- (RidesharingAppActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = RidesharingAppActionTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(RidesharingAppActionTableViewCell *)v4 _setupViews];
    [(RidesharingAppActionTableViewCell *)v5 _setupConstraints];
    [(RidesharingAppActionTableViewCell *)v5 _updateContentSizeCategoryDependentFontsAndConstraints];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_updateContentSizeCategoryDependentFontsAndConstraints" name:UIContentSizeCategoryDidChangeNotification object:0];

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(RidesharingAppActionTableViewCell *)v5 setAccessibilityIdentifier:v8];
  }

  return v5;
}

@end
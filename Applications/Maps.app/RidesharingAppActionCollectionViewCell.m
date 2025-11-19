@interface RidesharingAppActionCollectionViewCell
- (RidesharingAppActionCollectionViewCell)initWithFrame:(CGRect)a3;
- (RidesharingAppActionCollectionViewCellDelegate)delegate;
- (void)_openAppPressed:(id)a3;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateContentSizeCategoryDependentFontsAndConstraints;
- (void)configureWithRideBookingRideOptionStatus:(id)a3 titleType:(unint64_t)a4;
- (void)dealloc;
- (void)setApplicationName:(id)a3 titleType:(unint64_t)a4;
- (void)updateTheme;
@end

@implementation RidesharingAppActionCollectionViewCell

- (RidesharingAppActionCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setApplicationName:(id)a3 titleType:(unint64_t)a4
{
  v13 = a3;
  self->_titleType = a4;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
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

  if (a4 == 2)
  {
    actionButton = self->_actionButton;
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"More from App %@ [Ridesharing]";
LABEL_10:
    v11 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];
    v12 = [NSString localizedStringWithFormat:v11, v13];
    [(UIButton *)actionButton setTitle:v12 forState:0];

    goto LABEL_11;
  }

  if (a4 != 3)
  {
    goto LABEL_12;
  }

  v10 = self->_actionButton;
  v8 = +[NSBundle mainBundle];
  v11 = [v8 localizedStringForKey:@"More from the App Store [Ridesharing]" value:@"localized string not found" table:0];
  [(UIButton *)v10 setTitle:v11 forState:0];
LABEL_11:

LABEL_12:
}

- (void)configureWithRideBookingRideOptionStatus:(id)a3 titleType:(unint64_t)a4
{
  objc_storeStrong(&self->_status, a3);
  v7 = a3;
  v9 = [v7 application];

  v8 = [v9 name];
  [(RidesharingAppActionCollectionViewCell *)self setApplicationName:v8 titleType:a4];
}

- (void)_updateContentSizeCategoryDependentFontsAndConstraints
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline addingSymbolicTraits:0];
  v4 = [(UIButton *)self->_actionButton titleLabel];
  [v4 setFont:v3];

  v6 = [(UIButton *)self->_actionButton titleLabel];
  v5 = [v6 font];
  [v5 _mapkit_scaledValueForValue:25.0];
  [(NSLayoutConstraint *)self->_buttonBaselineToTopConstraint setConstant:?];
}

- (void)_openAppPressed:(id)a3
{
  v4 = [(RidesharingAppActionCollectionViewCell *)self delegate];
  [v4 ridesharingAppActionCollectionViewCellDidPerformAction:self];
}

- (void)_setupConstraints
{
  v3 = [(UIButton *)self->_actionButton firstBaselineAnchor];
  v4 = [(RidesharingAppActionCollectionViewCell *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  buttonBaselineToTopConstraint = self->_buttonBaselineToTopConstraint;
  self->_buttonBaselineToTopConstraint = v6;

  v20 = [(UIButton *)self->_actionButton leadingAnchor];
  v21 = [(RidesharingAppActionCollectionViewCell *)self contentView];
  v19 = [v21 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:16.0];
  v22[0] = v18;
  v8 = [(UIButton *)self->_actionButton trailingAnchor];
  v9 = [(RidesharingAppActionCollectionViewCell *)self contentView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintLessThanOrEqualToAnchor:v10 constant:-16.0];
  v12 = self->_buttonBaselineToTopConstraint;
  v22[1] = v11;
  v22[2] = v12;
  v13 = [(UIButton *)self->_actionButton centerYAnchor];
  v14 = [(RidesharingAppActionCollectionViewCell *)self contentView];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v22[3] = v16;
  v17 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = RidesharingAppActionCollectionViewCell;
  [(MapsThemeCollectionViewCell *)&v9 updateTheme];
  actionButton = self->_actionButton;
  v4 = [(RidesharingAppActionCollectionViewCell *)self theme];
  v5 = [v4 keyColor];
  [(UIButton *)actionButton setTitleColor:v5 forState:0];

  v6 = self->_actionButton;
  v7 = [(RidesharingAppActionCollectionViewCell *)self theme];
  v8 = [v7 darkKeyColor];
  [(UIButton *)v6 setTitleColor:v8 forState:1];
}

- (void)_setupViews
{
  v3 = [UIButton buttonWithType:0];
  actionButton = self->_actionButton;
  self->_actionButton = v3;

  [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_actionButton addTarget:self action:"_openAppPressed:" forControlEvents:0x2000];
  v5 = [(RidesharingAppActionCollectionViewCell *)self contentView];
  [v5 addSubview:self->_actionButton];

  [(RidesharingAppActionCollectionViewCell *)self updateTheme];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RidesharingAppActionCollectionViewCell;
  [(RidesharingAppActionCollectionViewCell *)&v4 dealloc];
}

- (RidesharingAppActionCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RidesharingAppActionCollectionViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RidesharingAppActionCollectionViewCell *)v3 _setupViews];
    [(RidesharingAppActionCollectionViewCell *)v4 _setupConstraints];
    [(RidesharingAppActionCollectionViewCell *)v4 _updateContentSizeCategoryDependentFontsAndConstraints];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_updateContentSizeCategoryDependentFontsAndConstraints" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end
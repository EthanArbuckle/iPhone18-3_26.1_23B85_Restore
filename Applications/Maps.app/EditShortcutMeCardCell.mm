@interface EditShortcutMeCardCell
- (EditShortcutMeCardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_buttonTapped:(id)tapped;
- (void)setMeCardString:(id)string;
@end

@implementation EditShortcutMeCardCell

- (void)_buttonTapped:(id)tapped
{
  openMeCardHandler = self->_openMeCardHandler;
  if (openMeCardHandler)
  {
    openMeCardHandler[2]();
  }
}

- (void)setMeCardString:(id)string
{
  stringCopy = string;
  text = [(UILabel *)self->_label text];
  if (text == stringCopy)
  {
  }

  else
  {
    v5 = [stringCopy isEqual:text];

    if ((v5 & 1) == 0)
    {
      [(UILabel *)self->_label setText:stringCopy];
    }
  }
}

- (EditShortcutMeCardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52.receiver = self;
  v52.super_class = EditShortcutMeCardCell;
  v4 = [(EditShortcutMeCardCell *)&v52 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(EditShortcutMeCardCell *)v4 setAccessibilityIdentifier:@"EditShortcutMeCardCell"];
    contentView = [(EditShortcutMeCardCell *)v5 contentView];
    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v5->_label;
    v5->_label = v7;

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = +[UIColor secondaryLabelColor];
    [(UILabel *)v5->_label setTextColor:v9];

    [(UILabel *)v5->_label setNumberOfLines:0];
    [(UILabel *)v5->_label setAccessibilityIdentifier:@"EditShortcutMeCardLabel"];
    [contentView addSubview:v5->_label];
    if (sub_10000FA08(v5) == 5)
    {
      v10 = +[UIFont system17Tall];
      [(UILabel *)v5->_label setFont:v10];

      topAnchor = [(UILabel *)v5->_label topAnchor];
      topAnchor2 = [contentView topAnchor];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      v54[0] = v13;
      leadingAnchor = [(UILabel *)v5->_label leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
      v54[1] = v16;
      bottomAnchor = [(UILabel *)v5->_label bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v51 = bottomAnchor;
      v49 = [bottomAnchor constraintEqualToAnchor:0.0 constant:?];
      v54[2] = v49;
      trailingAnchor = [(UILabel *)v5->_label trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v47 = [trailingAnchor constraintLessThanOrEqualToAnchor:-17.0 constant:?];
      v54[3] = v47;
      topAnchor3 = [NSArray arrayWithObjects:v54 count:4];
      [NSLayoutConstraint activateConstraints:topAnchor3];
    }

    else
    {
      v20 = +[UIFont system17];
      [(UILabel *)v5->_label setFont:v20];

      v21 = [MapsThemeButton buttonWithType:0];
      button = v5->_button;
      v5->_button = v21;

      [(MapsThemeButton *)v5->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      v23 = v5->_button;
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"[Shortcut] Contact Card" value:@"localized string not found" table:0];
      [(MapsThemeButton *)v23 setTitle:v25 forState:0];

      [(MapsThemeButton *)v5->_button setTitleColorProvider:&stru_101627D70];
      [(MapsThemeButton *)v5->_button addTarget:v5 action:"_buttonTapped:" forControlEvents:64];
      v26 = +[UIFont system17];
      titleLabel = [(MapsThemeButton *)v5->_button titleLabel];
      [titleLabel setFont:v26];

      [(MapsThemeButton *)v5->_button setAccessibilityIdentifier:@"EditShortcutMeCardButton"];
      [contentView addSubview:v5->_button];
      leadingAnchor3 = [(UILabel *)v5->_label leadingAnchor];
      leadingAnchor4 = [contentView leadingAnchor];
      v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
      v53[0] = v44;
      trailingAnchor3 = [(UILabel *)v5->_label trailingAnchor];
      trailingAnchor4 = [contentView trailingAnchor];
      v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
      v53[1] = v43;
      leadingAnchor5 = [(MapsThemeButton *)v5->_button leadingAnchor];
      bottomAnchor2 = [contentView leadingAnchor];
      v51 = leadingAnchor5;
      v49 = [leadingAnchor5 constraintEqualToAnchor:16.0 constant:?];
      v53[2] = v49;
      trailingAnchor5 = [(MapsThemeButton *)v5->_button trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v47 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:-16.0 constant:?];
      v53[3] = v47;
      topAnchor3 = [(UILabel *)v5->_label topAnchor];
      topAnchor4 = [contentView topAnchor];
      v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v53[4] = v38;
      topAnchor5 = [(MapsThemeButton *)v5->_button topAnchor];
      bottomAnchor3 = [(UILabel *)v5->_label bottomAnchor];
      v31 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
      v53[5] = v31;
      bottomAnchor4 = [(MapsThemeButton *)v5->_button bottomAnchor];
      bottomAnchor5 = [contentView bottomAnchor];
      v34 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v53[6] = v34;
      [NSArray arrayWithObjects:v53 count:7];
      v36 = v35 = contentView;
      [NSLayoutConstraint activateConstraints:v36];

      contentView = v35;
      leadingAnchor = trailingAnchor3;

      v13 = v44;
      trailingAnchor = trailingAnchor5;

      leadingAnchor2 = trailingAnchor4;
      topAnchor2 = leadingAnchor4;

      topAnchor = leadingAnchor3;
      v16 = v43;
    }
  }

  return v5;
}

@end
@interface SettingsSpinnerCell
- (SettingsSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SettingsSpinnerCell

- (SettingsSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = SettingsSpinnerCell;
  v4 = [(SettingsSpinnerCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    [(UIActivityIndicatorView *)v4->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(SettingsSpinnerCell *)v4 contentView];
    [contentView addSubview:v4->_spinner];

    centerXAnchor = [(UIActivityIndicatorView *)v4->_spinner centerXAnchor];
    centerXAnchor2 = [(SettingsSpinnerCell *)v4 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v10 setActive:1];

    centerYAnchor = [(UIActivityIndicatorView *)v4->_spinner centerYAnchor];
    centerYAnchor2 = [(SettingsSpinnerCell *)v4 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v13 setActive:1];

    [(UIActivityIndicatorView *)v4->_spinner startAnimating];
    v14 = v4;
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = SettingsSpinnerCell;
  [(SettingsSpinnerCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

@end
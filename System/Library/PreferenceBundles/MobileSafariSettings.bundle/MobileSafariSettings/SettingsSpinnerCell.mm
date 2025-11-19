@interface SettingsSpinnerCell
- (SettingsSpinnerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SettingsSpinnerCell

- (SettingsSpinnerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = SettingsSpinnerCell;
  v4 = [(SettingsSpinnerCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    [(UIActivityIndicatorView *)v4->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(SettingsSpinnerCell *)v4 contentView];
    [v7 addSubview:v4->_spinner];

    v8 = [(UIActivityIndicatorView *)v4->_spinner centerXAnchor];
    v9 = [(SettingsSpinnerCell *)v4 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(UIActivityIndicatorView *)v4->_spinner centerYAnchor];
    v12 = [(SettingsSpinnerCell *)v4 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    [(UIActivityIndicatorView *)v4->_spinner startAnimating];
    v14 = v4;
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SettingsSpinnerCell;
  [(SettingsSpinnerCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

@end
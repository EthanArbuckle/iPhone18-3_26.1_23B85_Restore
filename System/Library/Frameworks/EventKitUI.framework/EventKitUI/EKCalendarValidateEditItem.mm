@interface EKCalendarValidateEditItem
- (EKCalendarValidateEditItem)init;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)footerTitle;
- (void)setAnimateSpinner:(BOOL)spinner;
- (void)setButtonTitle:(id)title;
- (void)setURLIsSpam:(BOOL)spam;
@end

@implementation EKCalendarValidateEditItem

- (EKCalendarValidateEditItem)init
{
  v6.receiver = self;
  v6.super_class = EKCalendarValidateEditItem;
  v2 = [(EKCalendarValidateEditItem *)&v6 init];
  if (v2)
  {
    v3 = EventKitUIBundle();
    v4 = [v3 localizedStringForKey:@"Find" value:&stru_1F4EF6790 table:0];
    [(EKCalendarValidateEditItem *)v2 setButtonTitle:v4];
  }

  return v2;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v31[4] = *MEMORY[0x1E69E9840];
  cell = self->_cell;
  if (!cell)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD028]);
    v6 = self->_cell;
    self->_cell = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v7 setTextColor:labelColor];

    [(UILabel *)v7 setText:self->_buttonTitle];
    contentView = [(UITableViewCell *)self->_cell contentView];
    [contentView addSubview:v7];

    v10 = objc_alloc_init(MEMORY[0x1E69DC638]);
    spinner = self->_spinner;
    self->_spinner = v10;

    [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(UITableViewCell *)self->_cell contentView];
    [contentView2 addSubview:self->_spinner];

    v24 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UILabel *)v7 centerXAnchor];
    contentView3 = [(UITableViewCell *)self->_cell contentView];
    centerXAnchor2 = [contentView3 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v31[0] = v27;
    centerYAnchor = [(UILabel *)v7 centerYAnchor];
    contentView4 = [(UITableViewCell *)self->_cell contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v31[1] = v22;
    centerYAnchor3 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
    centerYAnchor4 = [(UILabel *)v7 centerYAnchor];
    v15 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v31[2] = v15;
    leadingAnchor = [(UIActivityIndicatorView *)self->_spinner leadingAnchor];
    trailingAnchor = [(UILabel *)v7 trailingAnchor];
    v18 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v31[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v24 activateConstraints:v19];

    buttonTextLabel = self->_buttonTextLabel;
    self->_buttonTextLabel = v7;

    cell = self->_cell;
  }

  return cell;
}

- (void)setButtonTitle:(id)title
{
  objc_storeStrong(&self->_buttonTitle, title);
  titleCopy = title;
  [(UILabel *)self->_buttonTextLabel setText:self->_buttonTitle];
}

- (void)setAnimateSpinner:(BOOL)spinner
{
  self->_animateSpinner = spinner;
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }
}

- (void)setURLIsSpam:(BOOL)spam
{
  if (self->_URLIsSpam != spam)
  {
    spamCopy = spam;
    self->_URLIsSpam = spam;
    v6 = EventKitUIBundle();
    v7 = v6;
    if (spamCopy)
    {
      v8 = @"Subscribe Anyway";
    }

    else
    {
      v8 = @"Subscribe";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1F4EF6790 table:0];

    [(EKCalendarValidateEditItem *)self setButtonTitle:v9];
  }
}

- (id)footerTitle
{
  if (self->_showError)
  {
    v2 = EventKitUIBundle();
    v3 = [v2 localizedStringForKey:@"Validation failed. Please edit the URL and try again." value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
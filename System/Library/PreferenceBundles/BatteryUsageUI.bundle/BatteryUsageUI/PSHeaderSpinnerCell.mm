@interface PSHeaderSpinnerCell
- (PSHeaderSpinnerCell)initWithSpecifier:(id)specifier;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)animating;
@end

@implementation PSHeaderSpinnerCell

- (PSHeaderSpinnerCell)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v23.receiver = self;
  v23.super_class = PSHeaderSpinnerCell;
  v5 = [(PSHeaderSpinnerCell *)&v23 init];
  if (v5)
  {
    v6 = +[UIColor clearColor];
    [(PSHeaderSpinnerCell *)v5 setBackgroundColor:v6];

    [(PSHeaderSpinnerCell *)v5 setAutoresizingMask:2];
    v7 = objc_alloc_init(UILabel);
    text = v5->_text;
    v5->_text = v7;

    v9 = [UITableViewHeaderFooterView _defaultFontForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v5->_text setFont:v9];

    v10 = [UITableViewHeaderFooterView _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v5->_text setTextColor:v10];

    v11 = +[UIColor clearColor];
    [(UILabel *)v5->_text setBackgroundColor:v11];

    name = [specifierCopy name];
    name = v5->_name;
    v5->_name = name;

    v14 = v5->_text;
    v22.receiver = v5;
    v22.super_class = PSHeaderSpinnerCell;
    [(PSHeaderSpinnerCell *)&v22 addSubview:v14];
    v15 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v15;

    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    v17 = v5->_spinner;
    v21.receiver = v5;
    v21.super_class = PSHeaderSpinnerCell;
    [(PSHeaderSpinnerCell *)&v21 addSubview:v17];
    [specifierCopy setProperty:v5 forKey:@"PSHeaderSpinner"];
    v18 = [specifierCopy propertyForKey:@"PSHeaderSpinner_Animate"];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      [(UIActivityIndicatorView *)v5->_spinner startAnimating];
    }
  }

  return v5;
}

- (void)setAnimating:(BOOL)animating
{
  spinner = self->_spinner;
  if (animating)
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PSHeaderSpinnerCell;
  [(PSHeaderSpinnerCell *)&v29 layoutSubviews];
  [(UILabel *)self->_text setText:self->_name];
  [(UILabel *)self->_text sizeToFit];
  [(UILabel *)self->_text frame];
  v4 = v3;
  v6 = v5;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v8 = v7;
  v10 = v9;
  if ([UIApp userInterfaceLayoutDirection])
  {
    [(PSHeaderSpinnerCell *)self bounds];
    v12 = v11;
    superview = [(PSHeaderSpinnerCell *)self superview];
    [superview _backgroundInset];
    v15 = v12 - v14;
    PreferencesTableViewCellLeftPad();
    v17 = v15 - v16 - v4;
  }

  else
  {
    superview = [(PSHeaderSpinnerCell *)self superview];
    [superview _backgroundInset];
    v19 = v18;
    PreferencesTableViewCellLeftPad();
    v17 = v19 + v20;
  }

  [(PSHeaderSpinnerCell *)self frame];
  v22 = v21;
  if ([UIApp userInterfaceLayoutDirection])
  {
    v23 = v17 + -10.0 - v8;
  }

  else
  {
    v23 = v4 + v17 + 10.0;
  }

  text = [(UILabel *)self->_text text];
  v25 = [text length];

  if (!v25)
  {
    [(PSHeaderSpinnerCell *)self frame];
    v23 = floor((v26 - v8) * 0.5);
  }

  [(PSHeaderSpinnerCell *)self frame];
  v28 = floor((v27 - v10) * 0.5);
  v30.origin.x = v17;
  v30.origin.y = floor((v22 - v6) * 0.5);
  v30.size.width = v4;
  v30.size.height = v6;
  v31 = CGRectIntegral(v30);
  [(UILabel *)self->_text setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
  v32.origin.x = v23;
  v32.origin.y = v28;
  v32.size.width = v8;
  v32.size.height = v10;
  v33 = CGRectIntegral(v32);
  [(UIActivityIndicatorView *)self->_spinner setFrame:v33.origin.x, v33.origin.y, v33.size.width, v33.size.height];
}

@end
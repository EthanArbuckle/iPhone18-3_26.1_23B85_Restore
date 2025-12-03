@interface STStorageButtonHeader
- (STStorageButtonHeader)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (void)setHeaderButtonTitle:(id)title;
- (void)updateConstraints;
@end

@implementation STStorageButtonHeader

- (STStorageButtonHeader)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v35.receiver = self;
  v35.super_class = STStorageButtonHeader;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(STStorageButtonHeader *)&v35 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = height->_titleLabel;
    height->_titleLabel = v9;

    [(UILabel *)height->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    name = [specifierCopy name];
    v12 = +[NSLocale currentLocale];
    v13 = [name uppercaseStringWithLocale:v12];
    [(UILabel *)height->_titleLabel setText:v13];

    v14 = PreferencesTableViewHeaderFont();
    [(UILabel *)height->_titleLabel setFont:v14];

    v15 = PreferencesTableViewHeaderColor();
    [(UILabel *)height->_titleLabel setTextColor:v15];

    v16 = +[UIColor clearColor];
    [(UILabel *)height->_titleLabel setBackgroundColor:v16];

    [(UILabel *)height->_titleLabel setNumberOfLines:1];
    [(UILabel *)height->_titleLabel setLineBreakMode:4];
    [(UILabel *)height->_titleLabel sizeToFit];
    [(STStorageButtonHeader *)height addSubview:height->_titleLabel];
    v17 = [UIButton buttonWithType:1];
    headerButton = height->_headerButton;
    height->_headerButton = v17;

    [(UIButton *)height->_headerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = height->_headerButton;
    v20 = +[UIColor systemBlueColor];
    [(UIButton *)v19 setTitleColor:v20 forState:0];

    v21 = height->_headerButton;
    v22 = PreferencesTableViewHeaderFont();
    [(UIButton *)v21 _setFont:v22];

    v23 = +[UIColor clearColor];
    [(UIButton *)height->_headerButton setBackgroundColor:v23];

    v24 = [specifierCopy propertyForKey:@"stButtonSymbol"];
    if (v24)
    {
      v25 = height->_headerButton;
      v26 = [UIImage systemImageNamed:v24];
      [(UIButton *)v25 setImage:v26 forState:0];

      height->_hasSymbolButton = 1;
    }

    else
    {
      v27 = [specifierCopy propertyForKey:@"stButtonTitle"];
      v28 = height->_headerButton;
      v29 = +[NSLocale currentLocale];
      v30 = [v27 uppercaseStringWithLocale:v29];
      [(UIButton *)v28 setTitle:v30 forState:0];
    }

    target = [specifierCopy target];
    buttonAction = [specifierCopy buttonAction];
    if (target)
    {
      v33 = buttonAction;
      if (buttonAction)
      {
        [(UIButton *)height->_headerButton addTarget:target action:buttonAction forControlEvents:64];
      }
    }

    [(STStorageButtonHeader *)height addSubview:height->_headerButton, v33];
    [(STStorageButtonHeader *)height updateConstraints];
  }

  return height;
}

- (void)updateConstraints
{
  [(UIButton *)self->_headerButton sizeToFit];
  v3 = _NSDictionaryOfVariableBindings(@"_titleLabel, _headerButton", self->_titleLabel, self->_headerButton, 0);
  if ([(NSMutableArray *)self->_constraints count])
  {
    [NSLayoutConstraint deactivateConstraints:self->_constraints];
  }

  v4 = [NSMutableArray arrayWithCapacity:20];
  constraints = self->_constraints;
  self->_constraints = v4;

  isHidden = [(UIButton *)self->_headerButton isHidden];
  v7 = self->_constraints;
  if (isHidden)
  {
    v8 = @"H:|-16-[_titleLabel]-15-|";
  }

  else
  {
    v8 = @"H:|-16-[_titleLabel]-10-[_headerButton]-15-|";
  }

  v9 = [NSLayoutConstraint constraintsWithVisualFormat:v8 options:0 metrics:0 views:v3];
  [(NSMutableArray *)v7 addObjectsFromArray:v9];

  v10 = self->_constraints;
  headerButton = self->_headerButton;
  [(UIButton *)headerButton bounds];
  v13 = [NSLayoutConstraint constraintWithItem:headerButton attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v12];
  [(NSMutableArray *)v10 addObject:v13];

  text = [(UILabel *)self->_titleLabel text];
  v15 = [text length];

  v16 = self->_constraints;
  if (v15)
  {
    v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=5)-[_titleLabel]-5-|", 0, 0, v3);
    [(NSMutableArray *)v16 addObjectsFromArray:v17];

    v18 = self->_constraints;
    v19 = [NSLayoutConstraint constraintWithItem:self->_headerButton attribute:12 relatedBy:0 toItem:self->_titleLabel attribute:12 multiplier:1.0 constant:0.0];
    [(NSMutableArray *)v18 addObject:v19];
  }

  else
  {
    v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=5)-[_headerButton]-7-|", 0, 0, v3);
    [(NSMutableArray *)v16 addObjectsFromArray:v19];
  }

  if (self->_hasSymbolButton)
  {
    v20 = self->_constraints;
    v21 = [NSLayoutConstraint constraintWithItem:self->_headerButton attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:20.0];
    [(NSMutableArray *)v20 addObject:v21];
  }

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v22.receiver = self;
  v22.super_class = STStorageButtonHeader;
  [(STStorageButtonHeader *)&v22 updateConstraints];
}

- (double)preferredHeightForWidth:(double)width
{
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text length];

  if (v5)
  {
    font = [(UILabel *)self->_titleLabel font];
    [font ascender];
    v8 = v7;
    font2 = [(UILabel *)self->_titleLabel font];
    [font2 descender];
    v11 = v8 - v10 + 12.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = 20.0;
  if (!self->_hasSymbolButton)
  {
    titleLabel = [(UIButton *)self->_headerButton titleLabel];
    text2 = [titleLabel text];
    v15 = [text2 length];

    if (v15)
    {
      font3 = [titleLabel font];
      [font3 ascender];
      v18 = v17;
      font4 = [titleLabel font];
      [font4 descender];
      v12 = v18 - v20 + 12.0;
    }

    else
    {
      v12 = 0.0;
    }
  }

  return round(fmax(v11, v12));
}

- (void)setHeaderButtonTitle:(id)title
{
  headerButton = self->_headerButton;
  titleCopy = title;
  v6 = +[NSLocale currentLocale];
  v7 = [titleCopy uppercaseStringWithLocale:v6];

  [(UIButton *)headerButton setTitle:v7 forState:0];

  [(STStorageButtonHeader *)self updateConstraints];
}

@end
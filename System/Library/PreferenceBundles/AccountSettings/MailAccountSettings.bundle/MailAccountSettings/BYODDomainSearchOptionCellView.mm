@interface BYODDomainSearchOptionCellView
- (BYODDomainSearchOptionCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setChecked:(BOOL)checked;
- (void)setDomain:(id)domain price:(id)price;
@end

@implementation BYODDomainSearchOptionCellView

- (BYODDomainSearchOptionCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v64.receiver = self;
  v64.super_class = BYODDomainSearchOptionCellView;
  v7 = [(BYODDomainSearchOptionCellView *)&v64 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = +[UIColor secondarySystemBackgroundColor];
    [(BYODDomainSearchOptionCellView *)v7 setBackgroundColor:v8];

    [(BYODDomainSearchOptionCellView *)v7 setSelectionStyle:0];
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
    symbolConfig = v7->_symbolConfig;
    v7->_symbolConfig = v9;

    v11 = [UIImage systemImageNamed:@"circle" withConfiguration:v7->_symbolConfig];
    checkmarkImage = v7->_checkmarkImage;
    v7->_checkmarkImage = v11;

    v13 = objc_alloc_init(UILabel);
    name = v7->_name;
    v7->_name = v13;

    [(UILabel *)v7->_name setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_name setLineBreakMode:1];
    [(UILabel *)v7->_name setNumberOfLines:0];
    [(UILabel *)v7->_name sizeToFit];
    contentView = [(BYODDomainSearchOptionCellView *)v7 contentView];
    [contentView addSubview:v7->_name];

    v16 = objc_alloc_init(UILabel);
    price = v7->_price;
    v7->_price = v16;

    v18 = v7->_price;
    v19 = +[UIColor systemGrayColor];
    [(UILabel *)v18 setTextColor:v19];

    v20 = v7->_price;
    +[UIFont smallSystemFontSize];
    v21 = [UIFont systemFontOfSize:?];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v7->_price setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    [contentView2 addSubview:v7->_price];

    v23 = objc_alloc_init(UIButton);
    selectButton = v7->_selectButton;
    v7->_selectButton = v23;

    [(UIButton *)v7->_selectButton setBackgroundImage:v7->_checkmarkImage forState:0];
    v25 = v7->_selectButton;
    v26 = +[UIColor systemGray2Color];
    [(UIButton *)v25 setTintColor:v26];

    [(UIButton *)v7->_selectButton setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    [contentView3 addSubview:v7->_selectButton];

    leadingAnchor = [(UILabel *)v7->_name leadingAnchor];
    contentView4 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v31 setActive:1];

    widthAnchor = [(UILabel *)v7->_name widthAnchor];
    contentView5 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    widthAnchor2 = [contentView5 widthAnchor];
    v35 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.8];
    [v35 setActive:1];

    leadingAnchor3 = [(UILabel *)v7->_price leadingAnchor];
    leadingAnchor4 = [(UILabel *)v7->_name leadingAnchor];
    v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
    [v38 setActive:1];

    trailingAnchor = [(UIButton *)v7->_selectButton trailingAnchor];
    contentView6 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    [v42 setActive:1];

    topAnchor = [(UILabel *)v7->_name topAnchor];
    contentView7 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    [v46 setActive:1];

    bottomAnchor = [(UILabel *)v7->_name bottomAnchor];
    topAnchor3 = [(UILabel *)v7->_price topAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-2.0];
    [v49 setActive:1];

    heightAnchor = [(UILabel *)v7->_name heightAnchor];
    v51 = [heightAnchor constraintGreaterThanOrEqualToConstant:20.0];
    [v51 setActive:1];

    topAnchor4 = [(UILabel *)v7->_price topAnchor];
    bottomAnchor2 = [(UILabel *)v7->_name bottomAnchor];
    v54 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:5.0];
    [v54 setActive:1];

    bottomAnchor3 = [(UILabel *)v7->_price bottomAnchor];
    contentView8 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    bottomAnchor4 = [contentView8 bottomAnchor];
    v58 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-5.0];
    [v58 setActive:1];

    centerYAnchor = [(UIButton *)v7->_selectButton centerYAnchor];
    contentView9 = [(BYODDomainSearchOptionCellView *)v7 contentView];
    centerYAnchor2 = [contentView9 centerYAnchor];
    v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [v62 setActive:1];
  }

  return v7;
}

- (void)setDomain:(id)domain price:(id)price
{
  domainCopy = domain;
  priceCopy = price;
  objc_storeStrong(&self->_domain, domain);
  [(UILabel *)self->_name setText:domainCopy];
  [(UILabel *)self->_price setText:priceCopy];
}

- (void)setChecked:(BOOL)checked
{
  symbolConfig = self->_symbolConfig;
  if (checked)
  {
    v7 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:symbolConfig];
    [UIButton setBackgroundImage:"setBackgroundImage:forState:" forState:?];
    selectButton = self->_selectButton;
    +[UIColor systemBlueColor];
  }

  else
  {
    v7 = [UIImage systemImageNamed:@"circle" withConfiguration:symbolConfig];
    [UIButton setBackgroundImage:"setBackgroundImage:forState:" forState:?];
    selectButton = self->_selectButton;
    +[UIColor systemGray2Color];
  }
  v6 = ;
  [(UIButton *)selectButton setTintColor:v6];
}

@end
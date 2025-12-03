@interface BYODDomainSearchResultCellView
- (BYODDomainSearchResultCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setChecked:(BOOL)checked;
- (void)setDomain:(id)domain price:(id)price;
@end

@implementation BYODDomainSearchResultCellView

- (BYODDomainSearchResultCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v75.receiver = self;
  v75.super_class = BYODDomainSearchResultCellView;
  identifierCopy = identifier;
  v5 = [(BYODDomainSearchResultCellView *)&v75 initWithStyle:style reuseIdentifier:?];
  if (v5)
  {
    v6 = [UIImageSymbolConfiguration configurationWithPointSize:17.0];
    symbolConfig = v5->_symbolConfig;
    v5->_symbolConfig = v6;

    v8 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
    radioConfig = v5->_radioConfig;
    v5->_radioConfig = v8;

    v10 = +[UIColor secondarySystemBackgroundColor];
    [(BYODDomainSearchResultCellView *)v5 setBackgroundColor:v10];

    [(BYODDomainSearchResultCellView *)v5 setSelectionStyle:0];
    v11 = [UIImageView alloc];
    v12 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v5->_symbolConfig];
    v13 = [v11 initWithImage:v12];
    availableCheck = v5->_availableCheck;
    v5->_availableCheck = v13;

    v15 = v5->_availableCheck;
    v16 = +[UIColor systemGreenColor];
    [(UIImageView *)v15 setTintColor:v16];

    [(UIImageView *)v5->_availableCheck setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(BYODDomainSearchResultCellView *)v5 contentView];
    [contentView addSubview:v5->_availableCheck];

    textLabel = [(BYODDomainSearchResultCellView *)v5 textLabel];
    noteLabel = v5->_noteLabel;
    v5->_noteLabel = textLabel;

    [(UILabel *)v5->_noteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_noteLabel setLineBreakMode:1];
    [(UILabel *)v5->_noteLabel setNumberOfLines:0];
    v20 = objc_alloc_init(UILabel);
    priceLabel = v5->_priceLabel;
    v5->_priceLabel = v20;

    v22 = v5->_priceLabel;
    v23 = +[UIColor systemGrayColor];
    [(UILabel *)v22 setTextColor:v23];

    [(UILabel *)v5->_priceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = v5->_priceLabel;
    +[UIFont smallSystemFontSize];
    v25 = [UIFont systemFontOfSize:?];
    [(UILabel *)v24 setFont:v25];

    contentView2 = [(BYODDomainSearchResultCellView *)v5 contentView];
    [contentView2 addSubview:v5->_priceLabel];

    v27 = [UIImage systemImageNamed:@"circle" withConfiguration:v5->_radioConfig];
    checkmarkImage = v5->_checkmarkImage;
    v5->_checkmarkImage = v27;

    v29 = objc_alloc_init(UIButton);
    selectButton = v5->_selectButton;
    v5->_selectButton = v29;

    [(UIButton *)v5->_selectButton setBackgroundImage:v5->_checkmarkImage forState:0];
    v31 = v5->_selectButton;
    v32 = +[UIColor systemGray2Color];
    [(UIButton *)v31 setTintColor:v32];

    [(UIButton *)v5->_selectButton setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(BYODDomainSearchResultCellView *)v5 contentView];
    [contentView3 addSubview:v5->_selectButton];

    leadingAnchor = [(UIImageView *)v5->_availableCheck leadingAnchor];
    contentView4 = [(BYODDomainSearchResultCellView *)v5 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    [v37 setActive:1];

    leadingAnchor3 = [(UILabel *)v5->_noteLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v5->_availableCheck trailingAnchor];
    v40 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:5.0];
    [v40 setActive:1];

    widthAnchor = [(UILabel *)v5->_noteLabel widthAnchor];
    contentView5 = [(BYODDomainSearchResultCellView *)v5 contentView];
    widthAnchor2 = [contentView5 widthAnchor];
    v44 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.75];
    [v44 setActive:1];

    leadingAnchor4 = [(UILabel *)v5->_priceLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v5->_noteLabel leadingAnchor];
    v47 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:0.0];
    [v47 setActive:1];

    trailingAnchor2 = [(UIButton *)v5->_selectButton trailingAnchor];
    contentView6 = [(BYODDomainSearchResultCellView *)v5 contentView];
    trailingAnchor3 = [contentView6 trailingAnchor];
    v51 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-15.0];
    [v51 setActive:1];

    centerYAnchor = [(UIImageView *)v5->_availableCheck centerYAnchor];
    centerYAnchor2 = [(UILabel *)v5->_noteLabel centerYAnchor];
    v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [v54 setActive:1];

    topAnchor = [(UILabel *)v5->_noteLabel topAnchor];
    contentView7 = [(BYODDomainSearchResultCellView *)v5 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v58 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    [v58 setActive:1];

    bottomAnchor = [(UILabel *)v5->_noteLabel bottomAnchor];
    topAnchor3 = [(UILabel *)v5->_priceLabel topAnchor];
    v61 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-2.0];
    [v61 setActive:1];

    topAnchor4 = [(UILabel *)v5->_priceLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v5->_noteLabel bottomAnchor];
    v64 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:5.0];
    [v64 setActive:1];

    bottomAnchor3 = [(UILabel *)v5->_priceLabel bottomAnchor];
    contentView8 = [(BYODDomainSearchResultCellView *)v5 contentView];
    bottomAnchor4 = [contentView8 bottomAnchor];
    v68 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
    [v68 setActive:1];

    centerYAnchor3 = [(UIButton *)v5->_selectButton centerYAnchor];
    contentView9 = [(BYODDomainSearchResultCellView *)v5 contentView];
    centerYAnchor4 = [contentView9 centerYAnchor];
    v72 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:0.0];
    [v72 setActive:1];
  }

  return v5;
}

- (void)setDomain:(id)domain price:(id)price
{
  domainCopy = domain;
  priceCopy = price;
  objc_storeStrong(&self->_domain, domain);
  v23 = NSFontAttributeName;
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v24 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v21 = NSFontAttributeName;
  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v22 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_NAME_AVAILABLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  domainCopy = [NSString stringWithFormat:v14, domainCopy];

  v16 = [[NSMutableAttributedString alloc] initWithString:domainCopy attributes:v12];
  mutableString = [v16 mutableString];
  v18 = [mutableString rangeOfString:domainCopy];
  v20 = v19;

  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 addAttributes:v10 range:{v18, v20}];
  }

  [(UILabel *)self->_noteLabel setAttributedText:v16];
  [(UILabel *)self->_priceLabel setText:priceCopy];
}

- (void)setChecked:(BOOL)checked
{
  radioConfig = self->_radioConfig;
  if (checked)
  {
    v7 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:radioConfig];
    [UIButton setBackgroundImage:"setBackgroundImage:forState:" forState:?];
    selectButton = self->_selectButton;
    +[UIColor systemBlueColor];
  }

  else
  {
    v7 = [UIImage systemImageNamed:@"circle" withConfiguration:radioConfig];
    [UIButton setBackgroundImage:"setBackgroundImage:forState:" forState:?];
    selectButton = self->_selectButton;
    +[UIColor systemGray2Color];
  }
  v6 = ;
  [(UIButton *)selectButton setTintColor:v6];
}

@end
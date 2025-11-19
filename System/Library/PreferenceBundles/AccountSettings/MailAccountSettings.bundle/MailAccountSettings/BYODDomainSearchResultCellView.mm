@interface BYODDomainSearchResultCellView
- (BYODDomainSearchResultCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setChecked:(BOOL)a3;
- (void)setDomain:(id)a3 price:(id)a4;
@end

@implementation BYODDomainSearchResultCellView

- (BYODDomainSearchResultCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v75.receiver = self;
  v75.super_class = BYODDomainSearchResultCellView;
  v74 = a4;
  v5 = [(BYODDomainSearchResultCellView *)&v75 initWithStyle:a3 reuseIdentifier:?];
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
    v17 = [(BYODDomainSearchResultCellView *)v5 contentView];
    [v17 addSubview:v5->_availableCheck];

    v18 = [(BYODDomainSearchResultCellView *)v5 textLabel];
    noteLabel = v5->_noteLabel;
    v5->_noteLabel = v18;

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

    v26 = [(BYODDomainSearchResultCellView *)v5 contentView];
    [v26 addSubview:v5->_priceLabel];

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
    v33 = [(BYODDomainSearchResultCellView *)v5 contentView];
    [v33 addSubview:v5->_selectButton];

    v34 = [(UIImageView *)v5->_availableCheck leadingAnchor];
    v35 = [(BYODDomainSearchResultCellView *)v5 contentView];
    v36 = [v35 leadingAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:15.0];
    [v37 setActive:1];

    v38 = [(UILabel *)v5->_noteLabel leadingAnchor];
    v39 = [(UIImageView *)v5->_availableCheck trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:5.0];
    [v40 setActive:1];

    v41 = [(UILabel *)v5->_noteLabel widthAnchor];
    v42 = [(BYODDomainSearchResultCellView *)v5 contentView];
    v43 = [v42 widthAnchor];
    v44 = [v41 constraintLessThanOrEqualToAnchor:v43 multiplier:0.75];
    [v44 setActive:1];

    v45 = [(UILabel *)v5->_priceLabel leadingAnchor];
    v46 = [(UILabel *)v5->_noteLabel leadingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:0.0];
    [v47 setActive:1];

    v48 = [(UIButton *)v5->_selectButton trailingAnchor];
    v49 = [(BYODDomainSearchResultCellView *)v5 contentView];
    v50 = [v49 trailingAnchor];
    v51 = [v48 constraintEqualToAnchor:v50 constant:-15.0];
    [v51 setActive:1];

    v52 = [(UIImageView *)v5->_availableCheck centerYAnchor];
    v53 = [(UILabel *)v5->_noteLabel centerYAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:0.0];
    [v54 setActive:1];

    v55 = [(UILabel *)v5->_noteLabel topAnchor];
    v56 = [(BYODDomainSearchResultCellView *)v5 contentView];
    v57 = [v56 topAnchor];
    v58 = [v55 constraintEqualToAnchor:v57 constant:10.0];
    [v58 setActive:1];

    v59 = [(UILabel *)v5->_noteLabel bottomAnchor];
    v60 = [(UILabel *)v5->_priceLabel topAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:-2.0];
    [v61 setActive:1];

    v62 = [(UILabel *)v5->_priceLabel topAnchor];
    v63 = [(UILabel *)v5->_noteLabel bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:5.0];
    [v64 setActive:1];

    v65 = [(UILabel *)v5->_priceLabel bottomAnchor];
    v66 = [(BYODDomainSearchResultCellView *)v5 contentView];
    v67 = [v66 bottomAnchor];
    v68 = [v65 constraintEqualToAnchor:v67 constant:-10.0];
    [v68 setActive:1];

    v69 = [(UIButton *)v5->_selectButton centerYAnchor];
    v70 = [(BYODDomainSearchResultCellView *)v5 contentView];
    v71 = [v70 centerYAnchor];
    v72 = [v69 constraintEqualToAnchor:v71 constant:0.0];
    [v72 setActive:1];
  }

  return v5;
}

- (void)setDomain:(id)a3 price:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_domain, a3);
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
  v15 = [NSString stringWithFormat:v14, v7];

  v16 = [[NSMutableAttributedString alloc] initWithString:v15 attributes:v12];
  v17 = [v16 mutableString];
  v18 = [v17 rangeOfString:v7];
  v20 = v19;

  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 addAttributes:v10 range:{v18, v20}];
  }

  [(UILabel *)self->_noteLabel setAttributedText:v16];
  [(UILabel *)self->_priceLabel setText:v8];
}

- (void)setChecked:(BOOL)a3
{
  radioConfig = self->_radioConfig;
  if (a3)
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
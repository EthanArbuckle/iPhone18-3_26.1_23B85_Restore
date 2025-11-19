@interface MailActionRecategorizationCell
- (MailActionRecategorizationCell)initWithFrame:(CGRect)a3;
- (void)_setupViews;
- (void)setCardAction:(id)a3;
@end

@implementation MailActionRecategorizationCell

- (MailActionRecategorizationCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MailActionRecategorizationCell;
  v3 = [(MailActionVerticalGroupedCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailActionRecategorizationCell *)v3 _setupViews];
  }

  return v4;
}

- (void)setCardAction:(id)a3
{
  v56.receiver = self;
  v56.super_class = MailActionRecategorizationCell;
  v55 = a3;
  [(MailActionCell *)&v56 setCardAction:?];
  v4 = [(MailActionCell *)self titleLabel];
  [v4 setText:0];

  v5 = [(MailActionCell *)self imageView];
  [v5 setImage:0];

  v6 = [v55 imageName];
  LODWORD(v5) = v6 == 0;

  if (v5)
  {
    v35 = [(MailActionRecategorizationCell *)self categoryIconView];
    [v35 removeFromSuperview];
  }

  else
  {
    v7 = [v55 imageName];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v9 = [UIImageSymbolConfiguration configurationWithFont:v8];
    v54 = [UIImage systemImageNamed:v7 withConfiguration:v9];

    v10 = [(MailActionRecategorizationCell *)self categoryImageView];
    [v10 setImage:v54];

    v11 = [(MailActionRecategorizationCell *)self categoryIconView];
    LOBYTE(v8) = [v11 isDescendantOfView:self];

    if ((v8 & 1) == 0)
    {
      v12 = [(MailActionRecategorizationCell *)self stackView];
      v13 = [(MailActionRecategorizationCell *)self categoryIconView];
      [v12 insertArrangedSubview:v13 atIndex:0];
    }

    v14 = +[UIColor systemWhiteColor];
    v15 = [(MailActionRecategorizationCell *)self categoryImageView];
    [v15 setTintColor:v14];

    v16 = [v55 tintColor];
    v17 = [(MailActionRecategorizationCell *)self categoryIconView];
    [v17 setBackgroundColor:v16];

    [v54 size];
    v19 = v18;
    [v54 size];
    v21 = v20;
    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v22 capHeight];
    v24 = v23;

    v50 = [(MailActionRecategorizationCell *)self categoryImageView];
    v53 = [v50 topAnchor];
    v49 = [(MailActionRecategorizationCell *)self categoryIconView];
    [v49 topAnchor];
    v48 = v25 = (v24 - v21) * 0.5 + 8.0;
    v47 = [v53 constraintEqualToAnchor:v25 constant:?];
    v57[0] = v47;
    v46 = [(MailActionRecategorizationCell *)self categoryImageView];
    v52 = [v46 bottomAnchor];
    v45 = [(MailActionRecategorizationCell *)self categoryIconView];
    v44 = [v45 bottomAnchor];
    v43 = [v52 constraintEqualToAnchor:-v25 constant:?];
    v57[1] = v43;
    v42 = [(MailActionRecategorizationCell *)self categoryImageView];
    v51 = [v42 leadingAnchor];
    v41 = [(MailActionRecategorizationCell *)self categoryIconView];
    v26 = [v41 leadingAnchor];
    v27 = (v24 - v19) * 0.5 + 8.0;
    v28 = [v51 constraintEqualToAnchor:v26 constant:v27];
    v57[2] = v28;
    v29 = [(MailActionRecategorizationCell *)self categoryImageView];
    v30 = [v29 trailingAnchor];
    v31 = [(MailActionRecategorizationCell *)self categoryIconView];
    v32 = [v31 trailingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32 constant:-v27];
    v57[3] = v33;
    v34 = [NSArray arrayWithObjects:v57 count:4];
    [NSLayoutConstraint activateConstraints:v34];

    v35 = v54;
  }

  v36 = [v55 title];
  v37 = [(MailActionRecategorizationCell *)self categoryLabel];
  [v37 setText:v36];

  v38 = +[UIColor labelColor];
  v39 = [(MailActionRecategorizationCell *)self categoryLabel];
  [v39 setTextColor:v38];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v55 isSelected])
    {
      v40 = [(MailActionRecategorizationCell *)self selectionImage];
      [v40 setHidden:0];
    }

    else
    {
      v40 = [(MailActionRecategorizationCell *)self selectionImage];
      [v40 setHidden:1];
    }
  }
}

- (void)_setupViews
{
  v3 = objc_alloc_init(UILabel);
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 setFont:v4];

  v5 = +[UIColor systemBlueColor];
  [v3 setTextColor:v5];

  v6 = objc_alloc_init(UIImageView);
  [v6 setContentMode:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1144750080;
  [v6 setContentHuggingPriority:0 forAxis:v7];
  v8 = objc_alloc_init(UIView);
  [v8 addSubview:v6];
  [v8 setContentMode:1];
  v9 = [v8 layer];
  [v9 setCornerRadius:6.0];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1132068864;
  [v8 setContentHuggingPriority:0 forAxis:v10];
  v11 = [UIImageView alloc];
  v12 = [UIImage systemImageNamed:MFImageGlyphCheckmark];
  v13 = [v11 initWithImage:v12];

  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v15 = [UIImageSymbolConfiguration configurationWithFont:v14];
  [v13 setPreferredSymbolConfiguration:v15];

  [v13 setContentMode:1];
  [v13 setHidden:1];
  v16 = [UIStackView alloc];
  v25[0] = v8;
  v25[1] = v3;
  v25[2] = v13;
  v17 = [NSArray arrayWithObjects:v25 count:3];
  v18 = [v16 initWithArrangedSubviews:v17];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setSpacing:12.0];
  [(MailActionRecategorizationCell *)self setStackView:v18];
  v19 = [(MailActionRecategorizationCell *)self contentView];
  [v19 addSubview:v18];

  v20 = MUISolariumFeatureEnabled();
  v21 = [(MailActionRecategorizationCell *)self contentView];
  v22 = v21;
  v23 = 10.0;
  if (v20)
  {
    v23 = 20.0;
  }

  [v21 setLayoutMargins:{v23, 20.0, v23, 20.0}];

  v24 = [(MailActionRecategorizationCell *)self contentView];
  [v18 mf_pinToView:v24 usingLayoutMargins:1];

  [(MailActionRecategorizationCell *)self setCategoryImageView:v6];
  [(MailActionRecategorizationCell *)self setCategoryIconView:v8];
  [(MailActionRecategorizationCell *)self setCategoryLabel:v3];
  [(MailActionRecategorizationCell *)self setSelectionImage:v13];
}

@end
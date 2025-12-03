@interface MailActionRecategorizationCell
- (MailActionRecategorizationCell)initWithFrame:(CGRect)frame;
- (void)_setupViews;
- (void)setCardAction:(id)action;
@end

@implementation MailActionRecategorizationCell

- (MailActionRecategorizationCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MailActionRecategorizationCell;
  v3 = [(MailActionVerticalGroupedCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailActionRecategorizationCell *)v3 _setupViews];
  }

  return v4;
}

- (void)setCardAction:(id)action
{
  v56.receiver = self;
  v56.super_class = MailActionRecategorizationCell;
  actionCopy = action;
  [(MailActionCell *)&v56 setCardAction:?];
  titleLabel = [(MailActionCell *)self titleLabel];
  [titleLabel setText:0];

  imageView = [(MailActionCell *)self imageView];
  [imageView setImage:0];

  imageName = [actionCopy imageName];
  LODWORD(imageView) = imageName == 0;

  if (imageView)
  {
    categoryIconView = [(MailActionRecategorizationCell *)self categoryIconView];
    [categoryIconView removeFromSuperview];
  }

  else
  {
    imageName2 = [actionCopy imageName];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v9 = [UIImageSymbolConfiguration configurationWithFont:v8];
    v54 = [UIImage systemImageNamed:imageName2 withConfiguration:v9];

    categoryImageView = [(MailActionRecategorizationCell *)self categoryImageView];
    [categoryImageView setImage:v54];

    categoryIconView2 = [(MailActionRecategorizationCell *)self categoryIconView];
    LOBYTE(v8) = [categoryIconView2 isDescendantOfView:self];

    if ((v8 & 1) == 0)
    {
      stackView = [(MailActionRecategorizationCell *)self stackView];
      categoryIconView3 = [(MailActionRecategorizationCell *)self categoryIconView];
      [stackView insertArrangedSubview:categoryIconView3 atIndex:0];
    }

    v14 = +[UIColor systemWhiteColor];
    categoryImageView2 = [(MailActionRecategorizationCell *)self categoryImageView];
    [categoryImageView2 setTintColor:v14];

    tintColor = [actionCopy tintColor];
    categoryIconView4 = [(MailActionRecategorizationCell *)self categoryIconView];
    [categoryIconView4 setBackgroundColor:tintColor];

    [v54 size];
    v19 = v18;
    [v54 size];
    v21 = v20;
    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v22 capHeight];
    v24 = v23;

    categoryImageView3 = [(MailActionRecategorizationCell *)self categoryImageView];
    topAnchor = [categoryImageView3 topAnchor];
    categoryIconView5 = [(MailActionRecategorizationCell *)self categoryIconView];
    [categoryIconView5 topAnchor];
    v48 = v25 = (v24 - v21) * 0.5 + 8.0;
    v47 = [topAnchor constraintEqualToAnchor:v25 constant:?];
    v57[0] = v47;
    categoryImageView4 = [(MailActionRecategorizationCell *)self categoryImageView];
    bottomAnchor = [categoryImageView4 bottomAnchor];
    categoryIconView6 = [(MailActionRecategorizationCell *)self categoryIconView];
    bottomAnchor2 = [categoryIconView6 bottomAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:-v25 constant:?];
    v57[1] = v43;
    categoryImageView5 = [(MailActionRecategorizationCell *)self categoryImageView];
    leadingAnchor = [categoryImageView5 leadingAnchor];
    categoryIconView7 = [(MailActionRecategorizationCell *)self categoryIconView];
    leadingAnchor2 = [categoryIconView7 leadingAnchor];
    v27 = (v24 - v19) * 0.5 + 8.0;
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v27];
    v57[2] = v28;
    categoryImageView6 = [(MailActionRecategorizationCell *)self categoryImageView];
    trailingAnchor = [categoryImageView6 trailingAnchor];
    categoryIconView8 = [(MailActionRecategorizationCell *)self categoryIconView];
    trailingAnchor2 = [categoryIconView8 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v27];
    v57[3] = v33;
    v34 = [NSArray arrayWithObjects:v57 count:4];
    [NSLayoutConstraint activateConstraints:v34];

    categoryIconView = v54;
  }

  title = [actionCopy title];
  categoryLabel = [(MailActionRecategorizationCell *)self categoryLabel];
  [categoryLabel setText:title];

  v38 = +[UIColor labelColor];
  categoryLabel2 = [(MailActionRecategorizationCell *)self categoryLabel];
  [categoryLabel2 setTextColor:v38];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([actionCopy isSelected])
    {
      selectionImage = [(MailActionRecategorizationCell *)self selectionImage];
      [selectionImage setHidden:0];
    }

    else
    {
      selectionImage = [(MailActionRecategorizationCell *)self selectionImage];
      [selectionImage setHidden:1];
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
  layer = [v8 layer];
  [layer setCornerRadius:6.0];

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
  contentView = [(MailActionRecategorizationCell *)self contentView];
  [contentView addSubview:v18];

  v20 = MUISolariumFeatureEnabled();
  contentView2 = [(MailActionRecategorizationCell *)self contentView];
  v22 = contentView2;
  v23 = 10.0;
  if (v20)
  {
    v23 = 20.0;
  }

  [contentView2 setLayoutMargins:{v23, 20.0, v23, 20.0}];

  contentView3 = [(MailActionRecategorizationCell *)self contentView];
  [v18 mf_pinToView:contentView3 usingLayoutMargins:1];

  [(MailActionRecategorizationCell *)self setCategoryImageView:v6];
  [(MailActionRecategorizationCell *)self setCategoryIconView:v8];
  [(MailActionRecategorizationCell *)self setCategoryLabel:v3];
  [(MailActionRecategorizationCell *)self setSelectionImage:v13];
}

@end
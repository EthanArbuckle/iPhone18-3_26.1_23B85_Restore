@interface CategorizationOptionView
- (CategorizationOptionDelegate)delegate;
- (CategorizationOptionView)initWithDelegate:(id)a3;
- (void)_setupView;
- (void)handleCategoriesTapped:(id)a3;
- (void)handleListViewTapped:(id)a3;
@end

@implementation CategorizationOptionView

- (CategorizationOptionView)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CategorizationOptionView;
  v5 = [(CategorizationOptionView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(CategorizationOptionView *)v6 _setupView];
  }

  return v6;
}

- (void)handleListViewTapped:(id)a3
{
  v4 = [(CategorizationOptionView *)self delegate];
  [v4 handleListViewTappedForOptionView:self];
}

- (void)handleCategoriesTapped:(id)a3
{
  v4 = [(CategorizationOptionView *)self delegate];
  [v4 handleCategoriesTappedForOptionView:self];
}

- (void)_setupView
{
  v36 = [(CategorizationOptionView *)self delegate];
  v35 = objc_alloc_init(NSMutableArray);
  v30 = [UIImage imageNamed:@"PhoneWithBuckets"];
  v31 = [UIImage imageNamed:@"PhoneWithNoBuckets"];
  v33 = [UIImage systemImageNamed:MFImageGlyphCategorizationCheckmark];
  v32 = [UIImage systemImageNamed:MFImageGlyphCategorizationEmptyCheckmark];
  v3 = objc_alloc_init(UIStackView);
  [v3 setAxis:1];
  [v3 setAlignment:3];
  v4 = objc_alloc_init(UIImageView);
  v34 = v4;
  [v4 setContentMode:1];
  [v4 setImage:v30];
  if ([v36 isCategorizationEnabledForOptionsView:self])
  {
    +[UIColor mailMessageListPrimarySelectionColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v5 = ;
  [v4 setTintColor:v5];

  v6 = objc_alloc_init(UILabel);
  v7 = _EFLocalizedStringFromTable();
  [v6 setText:v7];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v6 setFont:v8];

  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:0];
  v9 = [v6 widthAnchor];
  v10 = [v9 constraintGreaterThanOrEqualToConstant:80.0];
  [v35 addObject:v10];

  v11 = objc_alloc_init(UIImageView);
  [v11 setContentMode:1];
  if ([v36 isCategorizationEnabledForOptionsView:self])
  {
    v12 = v33;
  }

  else
  {
    v12 = v32;
  }

  [v11 setImage:v12];
  if ([v36 isCategorizationEnabledForOptionsView:self])
  {
    +[UIColor mailMessageListPrimarySelectionColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v13 = ;
  [v11 setTintColor:v13];

  v14 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2];
  [v11 setPreferredSymbolConfiguration:v14];

  [v3 addArrangedSubview:v4];
  [v3 addArrangedSubview:v6];
  [v3 addArrangedSubview:v11];
  [v3 setCustomSpacing:v4 afterView:10.0];
  [v3 setCustomSpacing:v6 afterView:14.0];
  v29 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleCategoriesTapped:"];
  [v3 addGestureRecognizer:v29];
  [v3 setUserInteractionEnabled:1];
  v15 = objc_alloc_init(UIStackView);
  [v15 setAxis:1];
  [v15 setAlignment:3];
  v16 = objc_alloc_init(UIImageView);
  [v16 setContentMode:1];
  [v16 setImage:v31];
  if ([v36 isCategorizationEnabledForOptionsView:self])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor mailMessageListPrimarySelectionColor];
  }
  v17 = ;
  [v16 setTintColor:v17];

  v18 = objc_alloc_init(UILabel);
  v19 = _EFLocalizedStringFromTable();
  [v18 setText:v19];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v18 setFont:v20];

  [v18 setTextAlignment:1];
  [v18 setNumberOfLines:0];
  v21 = [v18 widthAnchor];
  v22 = [v21 constraintGreaterThanOrEqualToConstant:80.0];
  [v35 addObject:v22];

  v23 = objc_alloc_init(UIImageView);
  [v23 setContentMode:1];
  if ([v36 isCategorizationEnabledForOptionsView:self])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor mailMessageListPrimarySelectionColor];
  }
  v24 = ;
  [v23 setTintColor:v24];

  if ([v36 isCategorizationEnabledForOptionsView:self])
  {
    v25 = v32;
  }

  else
  {
    v25 = v33;
  }

  [v23 setImage:v25];
  v26 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2];
  [v23 setPreferredSymbolConfiguration:v26];

  [v15 addArrangedSubview:v16];
  [v15 addArrangedSubview:v18];
  [v15 addArrangedSubview:v23];
  [v15 setCustomSpacing:v16 afterView:10.0];
  [v15 setCustomSpacing:v18 afterView:14.0];
  [NSLayoutConstraint activateConstraints:v35];
  v27 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleListViewTapped:"];
  [v15 addGestureRecognizer:v27];
  [v15 setUserInteractionEnabled:1];
  v28 = objc_alloc_init(UIStackView);
  [v28 setAxis:0];
  [v28 setLayoutMargins:{30.0, 30.0, 16.0, 30.0}];
  [v28 setLayoutMarginsRelativeArrangement:1];
  [v28 setAlignment:1];
  [v28 setDistribution:1];
  [v28 addArrangedSubview:v3];
  [v28 addArrangedSubview:v15];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CategorizationOptionView *)self addSubview:v28];
  [(CategorizationOptionView *)self mf_pinToView:v28 usingLayoutMargins:0];
}

- (CategorizationOptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
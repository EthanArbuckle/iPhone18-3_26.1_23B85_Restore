@interface ICActionSheetHeaderView
- (ICActionSheetHeaderView)initWithTitle:(id)a3 snippet:(id)a4 iconImage:(id)a5;
- (void)initializeSubviews;
- (void)setupConstraints;
@end

@implementation ICActionSheetHeaderView

- (ICActionSheetHeaderView)initWithTitle:(id)a3 snippet:(id)a4 iconImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ICActionSheetHeaderView;
  v11 = [(ICActionSheetHeaderView *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ICActionSheetHeaderView *)v11 setIconImage:v10];
    [(ICActionSheetHeaderView *)v12 setTitle:v8];
    [(ICActionSheetHeaderView *)v12 setSnippet:v9];
    [(ICActionSheetHeaderView *)v12 initializeSubviews];
    [(ICActionSheetHeaderView *)v12 setupConstraints];
  }

  return v12;
}

- (void)initializeSubviews
{
  v3 = [(ICActionSheetHeaderView *)self iconImageView];
  [v3 removeFromSuperview];

  v4 = [(ICActionSheetHeaderView *)self titleView];
  [v4 removeFromSuperview];

  v5 = [(ICActionSheetHeaderView *)self snippetView];
  [v5 removeFromSuperview];

  v6 = [UIImageView alloc];
  v7 = [(ICActionSheetHeaderView *)self iconImage];
  v8 = [v6 initWithImage:v7];
  [(ICActionSheetHeaderView *)self setIconImageView:v8];

  v9 = [(ICActionSheetHeaderView *)self iconImageView];
  [v9 setAccessibilityIgnoresInvertColors:1];

  v10 = objc_alloc_init(UILabel);
  [(ICActionSheetHeaderView *)self setTitleView:v10];

  v11 = [NSAttributedString alloc];
  v12 = [(ICActionSheetHeaderView *)self title];
  v35 = NSFontAttributeName;
  v13 = [UIFont boldSystemFontOfSize:21.0];
  v14 = [v13 ic_fontWithSingleLineA];
  v36 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v16 = [v11 initWithString:v12 attributes:v15];
  v17 = [(ICActionSheetHeaderView *)self titleView];
  [v17 setAttributedText:v16];

  v18 = objc_alloc_init(UILabel);
  [(ICActionSheetHeaderView *)self setSnippetView:v18];

  v19 = [NSAttributedString alloc];
  v20 = [(ICActionSheetHeaderView *)self snippet];
  v33[0] = NSFontAttributeName;
  v21 = [UIFont systemFontOfSize:16.0];
  v22 = [v21 ic_fontWithSingleLineA];
  v34[0] = v22;
  v33[1] = NSForegroundColorAttributeName;
  v23 = [UIColor colorWithRed:0.652 green:0.667 blue:0.663 alpha:1.0];
  v34[1] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v25 = [v19 initWithString:v20 attributes:v24];
  v26 = [(ICActionSheetHeaderView *)self snippetView];
  [v26 setAttributedText:v25];

  [(ICActionSheetHeaderView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [(ICActionSheetHeaderView *)self iconImageView];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [(ICActionSheetHeaderView *)self titleView];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = [(ICActionSheetHeaderView *)self snippetView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(ICActionSheetHeaderView *)self iconImageView];
  [(ICActionSheetHeaderView *)self addSubview:v30];

  v31 = [(ICActionSheetHeaderView *)self titleView];
  [(ICActionSheetHeaderView *)self addSubview:v31];

  v32 = [(ICActionSheetHeaderView *)self snippetView];
  [(ICActionSheetHeaderView *)self addSubview:v32];
}

- (void)setupConstraints
{
  v3 = [(ICActionSheetHeaderView *)self activatedConstraints];

  if (v3)
  {
    v4 = [(ICActionSheetHeaderView *)self activatedConstraints];
    [NSLayoutConstraint deactivateConstraints:v4];

    [(ICActionSheetHeaderView *)self setActivatedConstraints:0];
  }

  v26 = objc_alloc_init(NSMutableArray);
  v5 = [NSLayoutConstraint constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:94.0];
  [v26 addObject:v5];

  v6 = [(ICActionSheetHeaderView *)self iconImageView];
  v7 = [NSLayoutConstraint constraintWithItem:v6 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v26 addObject:v7];

  v8 = [(ICActionSheetHeaderView *)self iconImageView];
  v9 = [NSLayoutConstraint constraintWithItem:v8 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:20.0];
  [v26 addObject:v9];

  v10 = [(ICActionSheetHeaderView *)self titleView];
  v11 = [(ICActionSheetHeaderView *)self iconImageView];
  v12 = [NSLayoutConstraint constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:5.0];
  [v26 addObject:v12];

  v13 = [(ICActionSheetHeaderView *)self snippetView];
  v14 = [(ICActionSheetHeaderView *)self iconImageView];
  v15 = [NSLayoutConstraint constraintWithItem:v13 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:-4.0];
  [v26 addObject:v15];

  v16 = [(ICActionSheetHeaderView *)self titleView];
  v17 = [(ICActionSheetHeaderView *)self iconImageView];
  v18 = [NSLayoutConstraint constraintWithItem:v16 attribute:5 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:10.0];
  [v26 addObject:v18];

  v19 = [(ICActionSheetHeaderView *)self snippetView];
  v20 = [(ICActionSheetHeaderView *)self iconImageView];
  v21 = [NSLayoutConstraint constraintWithItem:v19 attribute:5 relatedBy:0 toItem:v20 attribute:6 multiplier:1.0 constant:10.0];
  [v26 addObject:v21];

  v22 = [(ICActionSheetHeaderView *)self titleView];
  v23 = [NSLayoutConstraint constraintWithItem:v22 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:-20.0];
  [v26 addObject:v23];

  v24 = [(ICActionSheetHeaderView *)self snippetView];
  v25 = [NSLayoutConstraint constraintWithItem:v24 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:-20.0];
  [v26 addObject:v25];

  [NSLayoutConstraint activateConstraints:v26];
  [(ICActionSheetHeaderView *)self setActivatedConstraints:v26];
}

@end
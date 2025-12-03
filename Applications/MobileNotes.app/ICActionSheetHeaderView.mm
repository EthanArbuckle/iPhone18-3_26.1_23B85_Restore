@interface ICActionSheetHeaderView
- (ICActionSheetHeaderView)initWithTitle:(id)title snippet:(id)snippet iconImage:(id)image;
- (void)initializeSubviews;
- (void)setupConstraints;
@end

@implementation ICActionSheetHeaderView

- (ICActionSheetHeaderView)initWithTitle:(id)title snippet:(id)snippet iconImage:(id)image
{
  titleCopy = title;
  snippetCopy = snippet;
  imageCopy = image;
  v14.receiver = self;
  v14.super_class = ICActionSheetHeaderView;
  v11 = [(ICActionSheetHeaderView *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ICActionSheetHeaderView *)v11 setIconImage:imageCopy];
    [(ICActionSheetHeaderView *)v12 setTitle:titleCopy];
    [(ICActionSheetHeaderView *)v12 setSnippet:snippetCopy];
    [(ICActionSheetHeaderView *)v12 initializeSubviews];
    [(ICActionSheetHeaderView *)v12 setupConstraints];
  }

  return v12;
}

- (void)initializeSubviews
{
  iconImageView = [(ICActionSheetHeaderView *)self iconImageView];
  [iconImageView removeFromSuperview];

  titleView = [(ICActionSheetHeaderView *)self titleView];
  [titleView removeFromSuperview];

  snippetView = [(ICActionSheetHeaderView *)self snippetView];
  [snippetView removeFromSuperview];

  v6 = [UIImageView alloc];
  iconImage = [(ICActionSheetHeaderView *)self iconImage];
  v8 = [v6 initWithImage:iconImage];
  [(ICActionSheetHeaderView *)self setIconImageView:v8];

  iconImageView2 = [(ICActionSheetHeaderView *)self iconImageView];
  [iconImageView2 setAccessibilityIgnoresInvertColors:1];

  v10 = objc_alloc_init(UILabel);
  [(ICActionSheetHeaderView *)self setTitleView:v10];

  v11 = [NSAttributedString alloc];
  title = [(ICActionSheetHeaderView *)self title];
  v35 = NSFontAttributeName;
  v13 = [UIFont boldSystemFontOfSize:21.0];
  ic_fontWithSingleLineA = [v13 ic_fontWithSingleLineA];
  v36 = ic_fontWithSingleLineA;
  v15 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v16 = [v11 initWithString:title attributes:v15];
  titleView2 = [(ICActionSheetHeaderView *)self titleView];
  [titleView2 setAttributedText:v16];

  v18 = objc_alloc_init(UILabel);
  [(ICActionSheetHeaderView *)self setSnippetView:v18];

  v19 = [NSAttributedString alloc];
  snippet = [(ICActionSheetHeaderView *)self snippet];
  v33[0] = NSFontAttributeName;
  v21 = [UIFont systemFontOfSize:16.0];
  ic_fontWithSingleLineA2 = [v21 ic_fontWithSingleLineA];
  v34[0] = ic_fontWithSingleLineA2;
  v33[1] = NSForegroundColorAttributeName;
  v23 = [UIColor colorWithRed:0.652 green:0.667 blue:0.663 alpha:1.0];
  v34[1] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v25 = [v19 initWithString:snippet attributes:v24];
  snippetView2 = [(ICActionSheetHeaderView *)self snippetView];
  [snippetView2 setAttributedText:v25];

  [(ICActionSheetHeaderView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  iconImageView3 = [(ICActionSheetHeaderView *)self iconImageView];
  [iconImageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleView3 = [(ICActionSheetHeaderView *)self titleView];
  [titleView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  snippetView3 = [(ICActionSheetHeaderView *)self snippetView];
  [snippetView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  iconImageView4 = [(ICActionSheetHeaderView *)self iconImageView];
  [(ICActionSheetHeaderView *)self addSubview:iconImageView4];

  titleView4 = [(ICActionSheetHeaderView *)self titleView];
  [(ICActionSheetHeaderView *)self addSubview:titleView4];

  snippetView4 = [(ICActionSheetHeaderView *)self snippetView];
  [(ICActionSheetHeaderView *)self addSubview:snippetView4];
}

- (void)setupConstraints
{
  activatedConstraints = [(ICActionSheetHeaderView *)self activatedConstraints];

  if (activatedConstraints)
  {
    activatedConstraints2 = [(ICActionSheetHeaderView *)self activatedConstraints];
    [NSLayoutConstraint deactivateConstraints:activatedConstraints2];

    [(ICActionSheetHeaderView *)self setActivatedConstraints:0];
  }

  v26 = objc_alloc_init(NSMutableArray);
  v5 = [NSLayoutConstraint constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:94.0];
  [v26 addObject:v5];

  iconImageView = [(ICActionSheetHeaderView *)self iconImageView];
  v7 = [NSLayoutConstraint constraintWithItem:iconImageView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v26 addObject:v7];

  iconImageView2 = [(ICActionSheetHeaderView *)self iconImageView];
  v9 = [NSLayoutConstraint constraintWithItem:iconImageView2 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:20.0];
  [v26 addObject:v9];

  titleView = [(ICActionSheetHeaderView *)self titleView];
  iconImageView3 = [(ICActionSheetHeaderView *)self iconImageView];
  v12 = [NSLayoutConstraint constraintWithItem:titleView attribute:3 relatedBy:0 toItem:iconImageView3 attribute:3 multiplier:1.0 constant:5.0];
  [v26 addObject:v12];

  snippetView = [(ICActionSheetHeaderView *)self snippetView];
  iconImageView4 = [(ICActionSheetHeaderView *)self iconImageView];
  v15 = [NSLayoutConstraint constraintWithItem:snippetView attribute:4 relatedBy:0 toItem:iconImageView4 attribute:4 multiplier:1.0 constant:-4.0];
  [v26 addObject:v15];

  titleView2 = [(ICActionSheetHeaderView *)self titleView];
  iconImageView5 = [(ICActionSheetHeaderView *)self iconImageView];
  v18 = [NSLayoutConstraint constraintWithItem:titleView2 attribute:5 relatedBy:0 toItem:iconImageView5 attribute:6 multiplier:1.0 constant:10.0];
  [v26 addObject:v18];

  snippetView2 = [(ICActionSheetHeaderView *)self snippetView];
  iconImageView6 = [(ICActionSheetHeaderView *)self iconImageView];
  v21 = [NSLayoutConstraint constraintWithItem:snippetView2 attribute:5 relatedBy:0 toItem:iconImageView6 attribute:6 multiplier:1.0 constant:10.0];
  [v26 addObject:v21];

  titleView3 = [(ICActionSheetHeaderView *)self titleView];
  v23 = [NSLayoutConstraint constraintWithItem:titleView3 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:-20.0];
  [v26 addObject:v23];

  snippetView3 = [(ICActionSheetHeaderView *)self snippetView];
  v25 = [NSLayoutConstraint constraintWithItem:snippetView3 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:-20.0];
  [v26 addObject:v25];

  [NSLayoutConstraint activateConstraints:v26];
  [(ICActionSheetHeaderView *)self setActivatedConstraints:v26];
}

@end
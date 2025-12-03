@interface ICNavigationTitleView
- (ICNavigationTitleView)init;
- (id)accessibilityLabel;
@end

@implementation ICNavigationTitleView

- (ICNavigationTitleView)init
{
  v15.receiver = self;
  v15.super_class = ICNavigationTitleView;
  v2 = [(ICNavigationTitleView *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(ICNavigationTitleView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_alloc_init(UILabel);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setTextAlignment:1];
    v5 = [UIFont boldSystemFontOfSize:16.0];
    ic_fontWithSingleLineA = [v5 ic_fontWithSingleLineA];
    [v4 setFont:ic_fontWithSingleLineA];

    v7 = objc_alloc_init(UILabel);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTextAlignment:1];
    v8 = [UIFont systemFontOfSize:11.0];
    ic_fontWithSingleLineA2 = [v8 ic_fontWithSingleLineA];
    [v7 setFont:ic_fontWithSingleLineA2];

    [(ICNavigationTitleView *)v3 addSubview:v4];
    [(ICNavigationTitleView *)v3 addSubview:v7];
    v10 = _NSDictionaryOfVariableBindings(@"titleLabel, subtitleLabel", v4, v7, 0);
    v11 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-0-[titleLabel]-0-|", 0, 0, v10);
    [(ICNavigationTitleView *)v3 addConstraints:v11];

    v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-0-[subtitleLabel]-0-|", 0, 0, v10);
    [(ICNavigationTitleView *)v3 addConstraints:v12];

    v13 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0-[titleLabel]-0-[subtitleLabel]-0-|", 0, 0, v10);
    [(ICNavigationTitleView *)v3 addConstraints:v13];

    [(ICNavigationTitleView *)v3 setTitleLabel:v4];
    [(ICNavigationTitleView *)v3 setSubtitleLabel:v7];
    [(ICNavigationTitleView *)v3 setIsAccessibilityElement:1];
  }

  return v3;
}

- (id)accessibilityLabel
{
  titleLabel = [(ICNavigationTitleView *)self titleLabel];
  text = [titleLabel text];
  subtitleLabel = [(ICNavigationTitleView *)self subtitleLabel];
  text2 = [subtitleLabel text];
  v6 = __ICAccessibilityStringForVariables();

  return v6;
}

@end
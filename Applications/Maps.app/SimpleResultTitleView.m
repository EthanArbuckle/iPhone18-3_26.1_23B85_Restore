@interface SimpleResultTitleView
- (SimpleResultTitleView)initWithFrame:(CGRect)a3;
- (void)activeLayout;
- (void)updateContent;
- (void)updateLabelFonts;
- (void)updateTitleNumberOfLines;
@end

@implementation SimpleResultTitleView

- (void)activeLayout
{
  v3 = [(MapsThemeLabel *)self->_titleLabel centerYAnchor];
  v4 = [(SimpleResultTitleView *)self centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:0.0];
  v10[0] = v5;
  v6 = [(MapsThemeLabel *)self->_titleLabel leadingAnchor];
  v7 = [(SimpleResultTitleView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:15.0];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [NSLayoutConstraint activateConstraints:v9];
}

- (void)updateContent
{
  [(SimpleResultTitleView *)self updateLabelFonts];
  [(SimpleResultTitleView *)self updateTitleNumberOfLines];

  [(SimpleResultTitleView *)self activeLayout];
}

- (void)updateLabelFonts
{
  v3 = [(SimpleResultTitleView *)self traitCollection];
  v5 = [(SimpleResultTitleView *)self effectiveTraitCollectionWithTraitCollection:v3];

  v4 = [(SimpleResultTitleView *)self titlefontWithTraitCollection:v5];
  [(MapsThemeLabel *)self->_titleLabel setFont:v4];
}

- (void)updateTitleNumberOfLines
{
  if (+[UIFont accessibilityTextEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  titleLabel = self->_titleLabel;

  [(MapsThemeLabel *)titleLabel setNumberOfLines:v3];
}

- (SimpleResultTitleView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SimpleResultTitleView;
  v3 = [(SimpleResultTitleView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(SimpleResultTitleView *)v3 setAccessibilityIdentifier:v5];

    v6 = objc_alloc_init(MapsThemeLabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(MapsThemeLabel *)v3->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(MapsThemeLabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = +[UIColor clearColor];
    [(MapsThemeLabel *)v3->_titleLabel setBackgroundColor:v8];

    v9 = +[UIColor secondaryLabelColor];
    [(MapsThemeLabel *)v3->_titleLabel setTextColor:v9];

    [(SimpleResultTitleView *)v3 addSubview:v3->_titleLabel];
    [(SimpleResultTitleView *)v3 updateContent];
  }

  return v3;
}

@end
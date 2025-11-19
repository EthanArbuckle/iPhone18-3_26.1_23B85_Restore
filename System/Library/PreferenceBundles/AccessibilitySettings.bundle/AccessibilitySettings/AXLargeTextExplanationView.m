@interface AXLargeTextExplanationView
- (AXLargeTextExplanationView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4;
- (void)layoutForWidth:(double)a3 inTableView:(id)a4;
- (void)layoutSubviews;
- (void)refreshContentsWithSpecifier:(id)a3;
@end

@implementation AXLargeTextExplanationView

- (AXLargeTextExplanationView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AXLargeTextExplanationView;
  v5 = [(AXLargeTextExplanationView *)&v18 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [v4 propertyForKey:@"BundleIdentifier"];
    appID = v5->_appID;
    v5->_appID = v6;

    v8 = objc_alloc_init(UILabel);
    bodyExampleLabel = v5->_bodyExampleLabel;
    v5->_bodyExampleLabel = v8;

    v10 = +[UIColor clearColor];
    [(UILabel *)v5->_bodyExampleLabel setBackgroundColor:v10];

    v11 = +[PSListController appearance];
    v12 = [v11 textColor];
    [(UILabel *)v5->_bodyExampleLabel setTextColor:v12];

    [(UILabel *)v5->_bodyExampleLabel setNumberOfLines:0];
    [(UILabel *)v5->_bodyExampleLabel setLineBreakMode:0];
    [(UILabel *)v5->_bodyExampleLabel setTextAlignment:1];
    v13 = settingsLocString(@"PERAPPSETTINGS_DYNAMIC_TYPE_DESCRIPTION", @"Accessibility");
    v14 = AXAppNameForBundleId();
    v15 = [NSString localizedStringWithFormat:v13, v14];
    [(UILabel *)v5->_bodyExampleLabel setText:v15];

    LODWORD(v16) = 0.5;
    [(UILabel *)v5->_bodyExampleLabel _setHyphenationFactor:v16];
    [(AXLargeTextExplanationView *)v5 addSubview:v5->_bodyExampleLabel];
  }

  return v5;
}

- (void)refreshContentsWithSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"BundleIdentifier"];
  appID = self->_appID;
  self->_appID = v4;

  v8 = settingsLocString(@"PERAPPSETTINGS_DYNAMIC_TYPE_DESCRIPTION", @"Accessibility");
  v6 = AXAppNameForBundleId();
  v7 = [NSString localizedStringWithFormat:v8, v6];
  [(UILabel *)self->_bodyExampleLabel setText:v7];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = AXLargeTextExplanationView;
  [(AXLargeTextExplanationView *)&v6 layoutSubviews];
  [(AXLargeTextExplanationView *)self bounds];
  v4 = v3;
  v5 = [(AXLargeTextExplanationView *)self superview];
  [(AXLargeTextExplanationView *)self layoutForWidth:v5 inTableView:v4];
}

- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4
{
  [(AXLargeTextExplanationView *)self layoutForWidth:a4 inTableView:a3];
  [(UILabel *)self->_bodyExampleLabel frame];
  return CGRectGetMaxY(v6) + 10.0;
}

- (void)layoutForWidth:(double)a3 inTableView:(id)a4
{
  [a4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(AXLargeTextExplanationView *)self frame];
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  v14 = v10 + (MinX - CGRectGetMinX(v21) + 25.0) * -2.0;
  if (v14 > 0.0)
  {
    v15 = [(AXLargeTextExplanationView *)self categoryName];
    v18 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v15];

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v18];
    [(UILabel *)self->_bodyExampleLabel setFont:v16];
    [(UILabel *)self->_bodyExampleLabel frame];
    [(UILabel *)self->_bodyExampleLabel sizeThatFits:v14, 1.79769313e308];
    [(UILabel *)self->_bodyExampleLabel setFrame:25.0, 10.0, v14, v17];
  }
}

@end
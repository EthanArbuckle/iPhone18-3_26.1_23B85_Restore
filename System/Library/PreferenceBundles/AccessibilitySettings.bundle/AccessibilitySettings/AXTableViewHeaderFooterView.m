@interface AXTableViewHeaderFooterView
- (AXTableViewHeaderFooterView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
@end

@implementation AXTableViewHeaderFooterView

- (AXTableViewHeaderFooterView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AXTableViewHeaderFooterView;
  v5 = [(AXTableViewHeaderFooterView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [v4 name];
    v7 = [v6 uppercaseString];
    v8 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [v8 setText:v7];

    v9 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [v9 setNumberOfLines:0];

    v10 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v10 setFont:v11];

    v12 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [v12 setLineBreakMode:4];

    v13 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [v13 setAdjustsFontForContentSizeCategory:1];
  }

  return v5;
}

- (double)preferredHeightForWidth:(double)a3
{
  [(AXTableViewHeaderFooterView *)self layoutMargins];
  v6 = a3 - v5;
  [(AXTableViewHeaderFooterView *)self layoutMargins];
  v8 = v6 - v7;
  v9 = [(AXTableViewHeaderFooterView *)self textLabel];
  [v9 sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;

  [(AXTableViewHeaderFooterView *)self layoutMargins];
  v13 = v11 + v12;
  [(AXTableViewHeaderFooterView *)self layoutMargins];
  return v13 + v14;
}

@end
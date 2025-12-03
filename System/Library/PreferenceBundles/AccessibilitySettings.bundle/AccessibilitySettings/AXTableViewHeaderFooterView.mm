@interface AXTableViewHeaderFooterView
- (AXTableViewHeaderFooterView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
@end

@implementation AXTableViewHeaderFooterView

- (AXTableViewHeaderFooterView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = AXTableViewHeaderFooterView;
  v5 = [(AXTableViewHeaderFooterView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    name = [specifierCopy name];
    uppercaseString = [name uppercaseString];
    textLabel = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [textLabel setText:uppercaseString];

    textLabel2 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [textLabel3 setFont:v11];

    textLabel4 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [textLabel4 setLineBreakMode:4];

    textLabel5 = [(AXTableViewHeaderFooterView *)v5 textLabel];
    [textLabel5 setAdjustsFontForContentSizeCategory:1];
  }

  return v5;
}

- (double)preferredHeightForWidth:(double)width
{
  [(AXTableViewHeaderFooterView *)self layoutMargins];
  v6 = width - v5;
  [(AXTableViewHeaderFooterView *)self layoutMargins];
  v8 = v6 - v7;
  textLabel = [(AXTableViewHeaderFooterView *)self textLabel];
  [textLabel sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;

  [(AXTableViewHeaderFooterView *)self layoutMargins];
  v13 = v11 + v12;
  [(AXTableViewHeaderFooterView *)self layoutMargins];
  return v13 + v14;
}

@end
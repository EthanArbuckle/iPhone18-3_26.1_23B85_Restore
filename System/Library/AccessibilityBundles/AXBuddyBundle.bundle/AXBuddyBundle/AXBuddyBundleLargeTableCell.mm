@interface AXBuddyBundleLargeTableCell
- (AXBuddyBundleLargeTableCell)initWithCoder:(id)coder;
- (AXBuddyBundleLargeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_largeTableCellCommonInit;
@end

@implementation AXBuddyBundleLargeTableCell

- (id)_largeTableCellCommonInit
{
  v3 = sub_336C();
  [v3 applyThemeToTableCell:self];

  return self;
}

- (AXBuddyBundleLargeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AXBuddyBundleLargeTableCell;
  v4 = [(AXBuddyBundleTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  _largeTableCellCommonInit = [(AXBuddyBundleLargeTableCell *)v4 _largeTableCellCommonInit];

  return _largeTableCellCommonInit;
}

- (AXBuddyBundleLargeTableCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AXBuddyBundleLargeTableCell;
  v3 = [(AXBuddyBundleTableCell *)&v6 initWithCoder:coder];
  _largeTableCellCommonInit = [(AXBuddyBundleLargeTableCell *)v3 _largeTableCellCommonInit];

  return _largeTableCellCommonInit;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v12.receiver = self;
  v12.super_class = AXBuddyBundleLargeTableCell;
  [(AXBuddyBundleLargeTableCell *)&v12 sizeThatFits:fits.width, fits.height];
  v4 = v3;
  v6 = v5;
  v7 = sub_336C();
  [v7 tallRowHeight];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = v4;
  result.height = v10;
  result.width = v11;
  return result;
}

@end
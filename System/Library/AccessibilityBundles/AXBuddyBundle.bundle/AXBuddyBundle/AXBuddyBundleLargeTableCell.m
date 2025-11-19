@interface AXBuddyBundleLargeTableCell
- (AXBuddyBundleLargeTableCell)initWithCoder:(id)a3;
- (AXBuddyBundleLargeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_largeTableCellCommonInit;
@end

@implementation AXBuddyBundleLargeTableCell

- (id)_largeTableCellCommonInit
{
  v3 = sub_336C();
  [v3 applyThemeToTableCell:self];

  return self;
}

- (AXBuddyBundleLargeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXBuddyBundleLargeTableCell;
  v4 = [(AXBuddyBundleTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = [(AXBuddyBundleLargeTableCell *)v4 _largeTableCellCommonInit];

  return v5;
}

- (AXBuddyBundleLargeTableCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXBuddyBundleLargeTableCell;
  v3 = [(AXBuddyBundleTableCell *)&v6 initWithCoder:a3];
  v4 = [(AXBuddyBundleLargeTableCell *)v3 _largeTableCellCommonInit];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v12.receiver = self;
  v12.super_class = AXBuddyBundleLargeTableCell;
  [(AXBuddyBundleLargeTableCell *)&v12 sizeThatFits:a3.width, a3.height];
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
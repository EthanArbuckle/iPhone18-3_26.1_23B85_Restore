@interface AXBuddyBundleTableCell
- (AXBuddyBundleTableCell)initWithCoder:(id)a3;
- (AXBuddyBundleTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_commonInit;
@end

@implementation AXBuddyBundleTableCell

- (id)_commonInit
{
  [(AXBuddyBundleTableCell *)self setSeparatorStyle:1];
  [(AXBuddyBundleTableCell *)self _setShouldHaveFullLengthTopSeparator:0];
  [(AXBuddyBundleTableCell *)self _setShouldHaveFullLengthBottomSeparator:0];
  return self;
}

- (AXBuddyBundleTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXBuddyBundleTableCell;
  v4 = [(AXBuddyBundleTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = [(AXBuddyBundleTableCell *)v4 _commonInit];

  return v5;
}

- (AXBuddyBundleTableCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXBuddyBundleTableCell;
  v3 = [(AXBuddyBundleTableCell *)&v6 initWithCoder:a3];
  v4 = [(AXBuddyBundleTableCell *)v3 _commonInit];

  return v4;
}

@end
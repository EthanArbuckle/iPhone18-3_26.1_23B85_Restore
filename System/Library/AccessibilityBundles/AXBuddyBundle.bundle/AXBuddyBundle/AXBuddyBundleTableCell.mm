@interface AXBuddyBundleTableCell
- (AXBuddyBundleTableCell)initWithCoder:(id)coder;
- (AXBuddyBundleTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
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

- (AXBuddyBundleTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AXBuddyBundleTableCell;
  v4 = [(AXBuddyBundleTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  _commonInit = [(AXBuddyBundleTableCell *)v4 _commonInit];

  return _commonInit;
}

- (AXBuddyBundleTableCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AXBuddyBundleTableCell;
  v3 = [(AXBuddyBundleTableCell *)&v6 initWithCoder:coder];
  _commonInit = [(AXBuddyBundleTableCell *)v3 _commonInit];

  return _commonInit;
}

@end
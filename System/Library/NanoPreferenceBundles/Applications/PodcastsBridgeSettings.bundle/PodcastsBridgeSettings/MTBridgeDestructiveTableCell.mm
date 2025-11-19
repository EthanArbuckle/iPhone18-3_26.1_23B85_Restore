@interface MTBridgeDestructiveTableCell
- (void)layoutSubviews;
@end

@implementation MTBridgeDestructiveTableCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTBridgeDestructiveTableCell;
  [(MTBridgeDestructiveTableCell *)&v7 layoutSubviews];
  v3 = +[UIColor systemRedColor];
  v4 = [(MTBridgeDestructiveTableCell *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = +[UIColor systemRedColor];
  v6 = [(MTBridgeDestructiveTableCell *)self titleLabel];
  [v6 setHighlightedTextColor:v5];
}

@end
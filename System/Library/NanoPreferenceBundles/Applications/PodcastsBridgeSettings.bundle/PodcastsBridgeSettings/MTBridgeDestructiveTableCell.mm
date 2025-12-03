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
  titleLabel = [(MTBridgeDestructiveTableCell *)self titleLabel];
  [titleLabel setTextColor:v3];

  v5 = +[UIColor systemRedColor];
  titleLabel2 = [(MTBridgeDestructiveTableCell *)self titleLabel];
  [titleLabel2 setHighlightedTextColor:v5];
}

@end
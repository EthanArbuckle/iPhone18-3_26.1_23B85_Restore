@interface COSLeftAlignedDeleteButtonCell
- (COSLeftAlignedDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation COSLeftAlignedDeleteButtonCell

- (COSLeftAlignedDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = COSLeftAlignedDeleteButtonCell;
  return [(COSLeftAlignedDeleteButtonCell *)&v6 initWithStyle:0 reuseIdentifier:a4 specifier:a5];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = COSLeftAlignedDeleteButtonCell;
  [(COSLeftAlignedDeleteButtonCell *)&v8 layoutSubviews];
  v3 = [(COSLeftAlignedDeleteButtonCell *)self textLabel];
  [v3 setTextAlignment:4];

  v4 = +[UIColor systemRedColor];
  v5 = [(COSLeftAlignedDeleteButtonCell *)self titleLabel];
  [v5 setTextColor:v4];

  v6 = +[UIColor systemRedColor];
  v7 = [(COSLeftAlignedDeleteButtonCell *)self titleLabel];
  [v7 setHighlightedTextColor:v6];
}

@end
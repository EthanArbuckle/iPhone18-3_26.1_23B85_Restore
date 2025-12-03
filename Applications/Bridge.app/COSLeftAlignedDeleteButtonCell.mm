@interface COSLeftAlignedDeleteButtonCell
- (COSLeftAlignedDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation COSLeftAlignedDeleteButtonCell

- (COSLeftAlignedDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = COSLeftAlignedDeleteButtonCell;
  return [(COSLeftAlignedDeleteButtonCell *)&v6 initWithStyle:0 reuseIdentifier:identifier specifier:specifier];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = COSLeftAlignedDeleteButtonCell;
  [(COSLeftAlignedDeleteButtonCell *)&v8 layoutSubviews];
  textLabel = [(COSLeftAlignedDeleteButtonCell *)self textLabel];
  [textLabel setTextAlignment:4];

  v4 = +[UIColor systemRedColor];
  titleLabel = [(COSLeftAlignedDeleteButtonCell *)self titleLabel];
  [titleLabel setTextColor:v4];

  v6 = +[UIColor systemRedColor];
  titleLabel2 = [(COSLeftAlignedDeleteButtonCell *)self titleLabel];
  [titleLabel2 setHighlightedTextColor:v6];
}

@end
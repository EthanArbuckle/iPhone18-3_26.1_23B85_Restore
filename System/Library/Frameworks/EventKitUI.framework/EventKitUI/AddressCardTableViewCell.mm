@interface AddressCardTableViewCell
- (void)layoutSubviews;
@end

@implementation AddressCardTableViewCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AddressCardTableViewCell;
  [(AddressCardTableViewCell *)&v7 layoutSubviews];
  v3 = [(AddressCardTableViewCell *)self imageView];
  [v3 frame];
  v5 = v4;

  v6 = [(AddressCardTableViewCell *)self imageView];
  [v6 setFrame:{v5, 1.0, 61.0, 61.0}];
}

@end
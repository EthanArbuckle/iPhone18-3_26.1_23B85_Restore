@interface AddressCardTableViewCell
- (void)layoutSubviews;
@end

@implementation AddressCardTableViewCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AddressCardTableViewCell;
  [(AddressCardTableViewCell *)&v7 layoutSubviews];
  imageView = [(AddressCardTableViewCell *)self imageView];
  [imageView frame];
  v5 = v4;

  imageView2 = [(AddressCardTableViewCell *)self imageView];
  [imageView2 setFrame:{v5, 1.0, 61.0, 61.0}];
}

@end
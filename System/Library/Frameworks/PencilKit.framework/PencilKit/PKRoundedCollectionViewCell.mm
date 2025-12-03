@interface PKRoundedCollectionViewCell
- (void)layoutSubviews;
@end

@implementation PKRoundedCollectionViewCell

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKRoundedCollectionViewCell;
  [(PKRoundedCollectionViewCell *)&v9 layoutSubviews];
  [(PKRoundedCollectionViewCell *)self bounds];
  v4 = v3;
  [(PKRoundedCollectionViewCell *)self bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  layer = [(PKRoundedCollectionViewCell *)self layer];
  [layer setCornerRadius:v7];
}

@end
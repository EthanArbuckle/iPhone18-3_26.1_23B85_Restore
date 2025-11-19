@interface TripleClickCell
- (void)layoutSubviews;
@end

@implementation TripleClickCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TripleClickCell;
  [(PSTableCell *)&v4 layoutSubviews];
  if (([(TripleClickCell *)self isEnabled]& 1) == 0)
  {
    v3 = [(TripleClickCell *)self _defaultAccessoryView];
    [v3 setAlpha:0.5];
  }
}

@end
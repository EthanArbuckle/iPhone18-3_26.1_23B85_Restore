@interface CollapsedCellBackgroundView
- (void)layoutSubviews;
@end

@implementation CollapsedCellBackgroundView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CollapsedCellBackgroundView;
  [(CollapsedCellBackgroundView *)&v6 layoutSubviews];
  [(CollapsedCellBackgroundView *)self bounds];
  v4 = v3 * 0.5;
  layer = [(CollapsedCellBackgroundView *)self layer];
  [layer setCornerRadius:v4];
}

@end
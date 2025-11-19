@interface COSShrinkingTextCell
- (void)layoutSubviews;
@end

@implementation COSShrinkingTextCell

- (void)layoutSubviews
{
  v3 = [(COSShrinkingTextCell *)self titleLabel];
  [v3 setAdjustsFontSizeToFitWidth:1];

  v4 = [(COSShrinkingTextCell *)self titleLabel];
  [v4 setEnabled:0];

  v5.receiver = self;
  v5.super_class = COSShrinkingTextCell;
  [(COSShrinkingTextCell *)&v5 layoutSubviews];
}

@end
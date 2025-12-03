@interface COSShrinkingTextCell
- (void)layoutSubviews;
@end

@implementation COSShrinkingTextCell

- (void)layoutSubviews
{
  titleLabel = [(COSShrinkingTextCell *)self titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  titleLabel2 = [(COSShrinkingTextCell *)self titleLabel];
  [titleLabel2 setEnabled:0];

  v5.receiver = self;
  v5.super_class = COSShrinkingTextCell;
  [(COSShrinkingTextCell *)&v5 layoutSubviews];
}

@end
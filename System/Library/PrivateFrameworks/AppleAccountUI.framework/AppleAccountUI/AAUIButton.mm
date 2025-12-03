@interface AAUIButton
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation AAUIButton

- (CGSize)intrinsicContentSize
{
  titleLabel = [(AAUIButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  [(AAUIButton *)self bounds];
  Width = CGRectGetWidth(v6);
  titleLabel = [(AAUIButton *)self titleLabel];
  [titleLabel setPreferredMaxLayoutWidth:Width];

  v5.receiver = self;
  v5.super_class = AAUIButton;
  [(AAUIButton *)&v5 layoutSubviews];
}

@end
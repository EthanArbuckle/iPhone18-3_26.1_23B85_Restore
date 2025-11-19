@interface AAUIButton
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation AAUIButton

- (CGSize)intrinsicContentSize
{
  v2 = [(AAUIButton *)self titleLabel];
  [v2 intrinsicContentSize];
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
  v4 = [(AAUIButton *)self titleLabel];
  [v4 setPreferredMaxLayoutWidth:Width];

  v5.receiver = self;
  v5.super_class = AAUIButton;
  [(AAUIButton *)&v5 layoutSubviews];
}

@end
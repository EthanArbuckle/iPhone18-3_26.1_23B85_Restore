@interface UIButton(ABUIAdditions)
- (id)ab_text;
- (id)ab_textAttributes;
- (void)setAb_text:()ABUIAdditions;
- (void)setAb_textAttributes:()ABUIAdditions;
@end

@implementation UIButton(ABUIAdditions)

- (void)setAb_textAttributes:()ABUIAdditions
{
  v4 = a3;
  v5 = [a1 titleLabel];
  [v5 setAb_textAttributes:v4];
}

- (id)ab_textAttributes
{
  v1 = [a1 titleLabel];
  v2 = [v1 ab_textAttributes];

  return v2;
}

- (void)setAb_text:()ABUIAdditions
{
  v4 = a3;
  v5 = [a1 titleLabel];
  [v5 setText:v4];
}

- (id)ab_text
{
  v1 = [a1 titleLabel];
  v2 = [v1 text];

  return v2;
}

@end
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
  titleLabel = [self titleLabel];
  [titleLabel setAb_textAttributes:v4];
}

- (id)ab_textAttributes
{
  titleLabel = [self titleLabel];
  ab_textAttributes = [titleLabel ab_textAttributes];

  return ab_textAttributes;
}

- (void)setAb_text:()ABUIAdditions
{
  v4 = a3;
  titleLabel = [self titleLabel];
  [titleLabel setText:v4];
}

- (id)ab_text
{
  titleLabel = [self titleLabel];
  text = [titleLabel text];

  return text;
}

@end
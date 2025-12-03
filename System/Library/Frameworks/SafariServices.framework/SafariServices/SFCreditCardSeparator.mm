@interface SFCreditCardSeparator
- (SFCreditCardSeparator)initWithFrame:(CGRect)frame;
@end

@implementation SFCreditCardSeparator

- (SFCreditCardSeparator)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SFCreditCardSeparator;
  v3 = [(SFCreditCardSeparator *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    [(SFCreditCardSeparator *)v3 setBackgroundColor:systemFillColor];

    v5 = v3;
  }

  return v3;
}

@end
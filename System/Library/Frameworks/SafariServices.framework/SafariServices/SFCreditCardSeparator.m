@interface SFCreditCardSeparator
- (SFCreditCardSeparator)initWithFrame:(CGRect)a3;
@end

@implementation SFCreditCardSeparator

- (SFCreditCardSeparator)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SFCreditCardSeparator;
  v3 = [(SFCreditCardSeparator *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemFillColor];
    [(SFCreditCardSeparator *)v3 setBackgroundColor:v4];

    v5 = v3;
  }

  return v3;
}

@end
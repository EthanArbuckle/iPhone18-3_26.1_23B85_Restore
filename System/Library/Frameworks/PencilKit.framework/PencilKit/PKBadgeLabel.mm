@interface PKBadgeLabel
- (PKBadgeLabel)init;
@end

@implementation PKBadgeLabel

- (PKBadgeLabel)init
{
  v9.receiver = self;
  v9.super_class = PKBadgeLabel;
  v2 = [(PKBadgeLabel *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(PKBadgeLabel *)v2 setAdjustsFontForContentSizeCategory:1];
    v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] design:*MEMORY[0x1E69DB8D8] weight:*MEMORY[0x1E69DB980]];
    [(PKBadgeLabel *)v3 setFont:v4];

    v5 = [MEMORY[0x1E69DC888] _pk_betaLabelTextColor];
    [(PKBadgeLabel *)v3 setTextColor:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69DC5D8]);
    v7 = [MEMORY[0x1E69DC888] _pk_betaLabelTextEncapsulationColor];
    [v6 setColor:v7];

    [v6 setScale:1];
    [v6 setStyle:1];
    [v6 setShape:2];
    [v6 setPlatterSize:0];
    [(PKBadgeLabel *)v3 _setTextEncapsulation:v6];
  }

  return v3;
}

@end
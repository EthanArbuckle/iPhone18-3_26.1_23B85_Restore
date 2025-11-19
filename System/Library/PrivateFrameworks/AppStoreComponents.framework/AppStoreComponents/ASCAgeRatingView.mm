@interface ASCAgeRatingView
- (ASCAgeRatingView)initWithCoder:(id)a3;
- (ASCAgeRatingView)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
@end

@implementation ASCAgeRatingView

- (ASCAgeRatingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = ASCAgeRatingView;
  v3 = [(ASCAgeRatingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(ASCAgeRatingView *)v3 setTextColor:v4];

    [(ASCAgeRatingView *)v3 setAdjustsFontForContentSizeCategory:1];
    v5 = objc_alloc_init(MEMORY[0x277CC4818]);
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v5 setColor:v6];

    [(ASCAgeRatingView *)v3 _setTextEncapsulation:v5];
  }

  return v3;
}

- (ASCAgeRatingView)initWithCoder:(id)a3
{
  [(ASCAgeRatingView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x277CCACA8];
  v4 = ASCLocalizedFormatString(@"AX_AGE_RATING");
  v5 = [(ASCAgeRatingView *)self text];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

@end
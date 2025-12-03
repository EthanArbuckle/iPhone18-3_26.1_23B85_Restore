@interface ASCAgeRatingView
- (ASCAgeRatingView)initWithCoder:(id)coder;
- (ASCAgeRatingView)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
@end

@implementation ASCAgeRatingView

- (ASCAgeRatingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = ASCAgeRatingView;
  v3 = [(ASCAgeRatingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(ASCAgeRatingView *)v3 setTextColor:secondaryLabelColor];

    [(ASCAgeRatingView *)v3 setAdjustsFontForContentSizeCategory:1];
    v5 = objc_alloc_init(MEMORY[0x277CC4818]);
    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v5 setColor:secondaryLabelColor2];

    [(ASCAgeRatingView *)v3 _setTextEncapsulation:v5];
  }

  return v3;
}

- (ASCAgeRatingView)initWithCoder:(id)coder
{
  [(ASCAgeRatingView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x277CCACA8];
  v4 = ASCLocalizedFormatString(@"AX_AGE_RATING");
  text = [(ASCAgeRatingView *)self text];
  v6 = [v3 localizedStringWithFormat:v4, text];

  return v6;
}

@end
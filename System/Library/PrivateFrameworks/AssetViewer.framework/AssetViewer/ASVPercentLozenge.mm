@interface ASVPercentLozenge
- (ASVPercentLozenge)init;
- (CGSize)intrinsicContentSize;
- (id)lozengeFont;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setPercentage:(float)a3;
- (void)setText:(id)a3;
- (void)sizeToFit;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ASVPercentLozenge

- (ASVPercentLozenge)init
{
  v14.receiver = self;
  v14.super_class = ASVPercentLozenge;
  v2 = [(ASVPercentLozenge *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    percentageFormatter = v2->_percentageFormatter;
    v2->_percentageFormatter = v3;

    [(NSNumberFormatter *)v2->_percentageFormatter setNumberStyle:3];
    v5 = objc_alloc(MEMORY[0x277D75D40]);
    [ASVSettings floatForKey:@"ASVSettingPercentLozengeFadeOutDuration"];
    v7 = [v5 initWithDuration:0 curve:0 animations:v6];
    percentLozengeAnimator = v2->_percentLozengeAnimator;
    v2->_percentLozengeAnimator = v7;

    v9 = [MEMORY[0x277D75348] blackColor];
    [(ASVPercentLozenge *)v2 setTextColor:v9];

    [(ASVPercentLozenge *)v2 setTextAlignment:1];
    v10 = [MEMORY[0x277D75348] whiteColor];
    [(ASVPercentLozenge *)v2 setBackgroundColor:v10];

    v11 = [(ASVPercentLozenge *)v2 lozengeFont];
    [(ASVPercentLozenge *)v2 setFont:v11];

    [(ASVPercentLozenge *)v2 setAdjustsFontForContentSizeCategory:1];
    v12 = [(ASVPercentLozenge *)v2 layer];
    [v12 setMasksToBounds:1];
  }

  return v2;
}

- (void)setPercentage:(float)a3
{
  v8 = [(ASVPercentLozenge *)self percentageFormatter];
  *&v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v7 = [v8 stringFromNumber:v6];
  [(ASVPercentLozenge *)self setText:v7];
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = ASVPercentLozenge;
  [(ASVPercentLozenge *)&v4 setText:a3];
  [(ASVPercentLozenge *)self sizeToFit];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = ASVPercentLozenge;
  v4 = a3;
  [(ASVPercentLozenge *)&v8 traitCollectionDidChange:v4];
  v5 = [(ASVPercentLozenge *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(ASVPercentLozenge *)self sizeToFit];
  }
}

- (void)sizeToFit
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  [(ASVPercentLozenge *)self intrinsicContentSize];

  [(ASVPercentLozenge *)self setBounds:v3, v4, v5, v6];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = ASVPercentLozenge;
  [(ASVPercentLozenge *)&v9 layoutSubviews];
  [(ASVPercentLozenge *)self bounds];
  v4 = v3;
  [(ASVPercentLozenge *)self bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  v8 = [(ASVPercentLozenge *)self layer];
  [v8 setCornerRadius:v7];
}

- (CGSize)intrinsicContentSize
{
  v6.receiver = self;
  v6.super_class = ASVPercentLozenge;
  [(ASVPercentLozenge *)&v6 intrinsicContentSize];
  v3 = v2 + 20.0;
  v5 = v4 + 10.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277D75D18];
    [ASVSettings floatForKey:@"ASVSettingPercentLozengeFadeOutDuration"];
    v8 = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__ASVPercentLozenge_setHidden_animated___block_invoke;
    v10[3] = &unk_278CCB1F0;
    objc_copyWeak(&v11, &location);
    v12 = v4;
    [v6 animateWithDuration:0 delay:v10 options:&__block_literal_global_9 animations:v8 completion:0.0];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [(ASVPercentLozenge *)self percentLozengeAnimator];
    [v9 stopAnimation:1];

    [(ASVPercentLozenge *)self setAlpha:!v4];
  }
}

void __40__ASVPercentLozenge_setHidden_animated___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 40) ^ 1u);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:v1];
}

- (id)lozengeFont
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [(ASVPercentLozenge *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = *MEMORY[0x277D76808];
  if ((UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x277D76808]) & 0x8000000000000000) == 0)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v3];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:v6];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  v21 = *MEMORY[0x277D74338];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{6, *MEMORY[0x277D74398]}];
  v19[0] = v10;
  v18[1] = *MEMORY[0x277D74388];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v20 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v22[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v15 = [v9 fontDescriptorByAddingAttributes:v14];

  v16 = [MEMORY[0x277D74300] fontWithDescriptor:v15 size:0.0];

  return v16;
}

@end
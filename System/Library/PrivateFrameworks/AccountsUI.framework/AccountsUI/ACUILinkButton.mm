@interface ACUILinkButton
- (ACUILinkButton)initWithText:(id)a3 target:(id)a4 action:(SEL)a5;
- (id)_highlightedStringAttributes;
- (id)_normalStringAttributes;
- (void)drawRect:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ACUILinkButton

- (ACUILinkButton)initWithText:(id)a3 target:(id)a4 action:(SEL)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = a5;
  v5 = v28;
  v28 = 0;
  v24.receiver = v5;
  v24.super_class = ACUILinkButton;
  v21 = [(ACUILinkButton *)&v24 init];
  v28 = v21;
  objc_storeStrong(&v28, v21);
  if (v21)
  {
    [(ACUILinkButton *)v28 setAcui_titleString:location[0]];
    [(ACUILinkButton *)v28 addTarget:v26 action:v25 forControlEvents:64];
    v12 = v28;
    UIEdgeInsetsMake();
    v23[1] = v6;
    v23[2] = v7;
    v23[3] = v8;
    v23[4] = v9;
    [(ACUILinkButton *)v12 setContentEdgeInsets:*&v6, *&v7, *&v8, *&v9];
    v14 = objc_alloc(MEMORY[0x277CCA898]);
    v13 = location[0];
    v15 = [(ACUILinkButton *)v28 _normalStringAttributes];
    v23[0] = [v14 initWithString:v13 attributes:?];
    MEMORY[0x277D82BD8](v15);
    v17 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = location[0];
    v18 = [(ACUILinkButton *)v28 _highlightedStringAttributes];
    v22 = [v17 initWithString:v16 attributes:?];
    MEMORY[0x277D82BD8](v18);
    [(ACUILinkButton *)v28 setAttributedTitle:v23[0] forState:0];
    [(ACUILinkButton *)v28 setAttributedTitle:v22 forState:1];
    [(ACUILinkButton *)v28 sizeToFit];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(v23, 0);
  }

  v11 = MEMORY[0x277D82BE0](v28);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v28, 0);
  return v11;
}

- (id)_highlightedStringAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v7[0] = v5;
  v6[1] = *MEMORY[0x277D740C0];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_normalStringAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v7[0] = v5;
  v6[1] = *MEMORY[0x277D740C0];
  v3 = [MEMORY[0x277D75348] _systemInteractionTintColor];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = ACUILinkButton;
  [(ACUILinkButton *)&v3 setHighlighted:a3];
  [(ACUILinkButton *)v6 setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v11 = a3;
  v10 = self;
  v9[1] = a2;
  if (([(ACUILinkButton *)self isHighlighted]& 1) != 0)
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
    [v7 set];
    MEMORY[0x277D82BD8](v7);
    v8 = MEMORY[0x277D75208];
    [(ACUILinkButton *)v10 bounds];
    v9[0] = [v8 roundedRectBezierPath:255 withRoundedCorners:v3 withCornerRadius:{v4, v5, v6, 4.0}];
    [v9[0] fill];
    objc_storeStrong(v9, 0);
  }
}

@end
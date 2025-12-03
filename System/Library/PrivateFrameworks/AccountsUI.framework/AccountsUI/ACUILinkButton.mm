@interface ACUILinkButton
- (ACUILinkButton)initWithText:(id)text target:(id)target action:(SEL)action;
- (id)_highlightedStringAttributes;
- (id)_normalStringAttributes;
- (void)drawRect:(CGRect)rect;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ACUILinkButton

- (ACUILinkButton)initWithText:(id)text target:(id)target action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v26 = 0;
  objc_storeStrong(&v26, target);
  actionCopy = action;
  v5 = selfCopy;
  selfCopy = 0;
  v24.receiver = v5;
  v24.super_class = ACUILinkButton;
  v21 = [(ACUILinkButton *)&v24 init];
  selfCopy = v21;
  objc_storeStrong(&selfCopy, v21);
  if (v21)
  {
    [(ACUILinkButton *)selfCopy setAcui_titleString:location[0]];
    [(ACUILinkButton *)selfCopy addTarget:v26 action:actionCopy forControlEvents:64];
    v12 = selfCopy;
    UIEdgeInsetsMake();
    v23[1] = v6;
    v23[2] = v7;
    v23[3] = v8;
    v23[4] = v9;
    [(ACUILinkButton *)v12 setContentEdgeInsets:*&v6, *&v7, *&v8, *&v9];
    v14 = objc_alloc(MEMORY[0x277CCA898]);
    v13 = location[0];
    _normalStringAttributes = [(ACUILinkButton *)selfCopy _normalStringAttributes];
    v23[0] = [v14 initWithString:v13 attributes:?];
    MEMORY[0x277D82BD8](_normalStringAttributes);
    v17 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = location[0];
    _highlightedStringAttributes = [(ACUILinkButton *)selfCopy _highlightedStringAttributes];
    v22 = [v17 initWithString:v16 attributes:?];
    MEMORY[0x277D82BD8](_highlightedStringAttributes);
    [(ACUILinkButton *)selfCopy setAttributedTitle:v23[0] forState:0];
    [(ACUILinkButton *)selfCopy setAttributedTitle:v22 forState:1];
    [(ACUILinkButton *)selfCopy sizeToFit];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(v23, 0);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)_highlightedStringAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v7[0] = v5;
  v6[1] = *MEMORY[0x277D740C0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v7[1] = whiteColor;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  MEMORY[0x277D82BD8](whiteColor);
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
  _systemInteractionTintColor = [MEMORY[0x277D75348] _systemInteractionTintColor];
  v7[1] = _systemInteractionTintColor;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  MEMORY[0x277D82BD8](_systemInteractionTintColor);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v5 = a2;
  highlightedCopy = highlighted;
  v3.receiver = self;
  v3.super_class = ACUILinkButton;
  [(ACUILinkButton *)&v3 setHighlighted:highlighted];
  [(ACUILinkButton *)selfCopy setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  v9[1] = a2;
  if (([(ACUILinkButton *)self isHighlighted]& 1) != 0)
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
    [v7 set];
    MEMORY[0x277D82BD8](v7);
    v8 = MEMORY[0x277D75208];
    [(ACUILinkButton *)selfCopy bounds];
    v9[0] = [v8 roundedRectBezierPath:255 withRoundedCorners:v3 withCornerRadius:{v4, v5, v6, 4.0}];
    [v9[0] fill];
    objc_storeStrong(v9, 0);
  }
}

@end
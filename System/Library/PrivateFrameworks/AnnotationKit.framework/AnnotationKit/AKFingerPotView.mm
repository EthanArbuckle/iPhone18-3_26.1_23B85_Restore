@interface AKFingerPotView
- (AKFingerPotView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation AKFingerPotView

- (AKFingerPotView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AKFingerPotView;
  v3 = [(AKFingerPotView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKFingerPotView *)v3 setAdjustsImageWhenHighlighted:0];
    [(AKFingerPotView *)v4 setShowsTouchWhenHighlighted:0];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(AKFingerPotView *)self isSelected]!= selected)
  {
    v14.receiver = self;
    v14.super_class = AKFingerPotView;
    [(AKFingerPotView *)&v14 setSelected:selectedCopy];
    if (selectedCopy)
    {
      selectedOutline = [(AKFingerPotView *)self selectedOutline];

      if (!selectedOutline)
      {
        v6 = objc_alloc(MEMORY[0x277D755E8]);
        v7 = [MEMORY[0x277D755B8] imageNamed:@"ib_text_pop_icon_highlight_swatch_selection"];
        v8 = [v6 initWithImage:v7];
        [(AKFingerPotView *)self setSelectedOutline:v8];

        selectedOutline2 = [(AKFingerPotView *)self selectedOutline];
        [selectedOutline2 setContentMode:4];

        selectedOutline3 = [(AKFingerPotView *)self selectedOutline];
        [(AKFingerPotView *)self addSubview:selectedOutline3];

        highlight = [(AKFingerPotView *)self highlight];

        if (highlight)
        {
          highlight2 = [(AKFingerPotView *)self highlight];
          [(AKFingerPotView *)self bringSubviewToFront:highlight2];
        }
      }
    }

    selectedOutline4 = [(AKFingerPotView *)self selectedOutline];
    [selectedOutline4 setHidden:selectedCopy ^ 1];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(AKFingerPotView *)self isHighlighted]!= highlighted)
  {
    v14.receiver = self;
    v14.super_class = AKFingerPotView;
    [(AKFingerPotView *)&v14 setHighlighted:highlightedCopy];
    highlight = [(AKFingerPotView *)self highlight];

    if (highlight)
    {
      if (highlightedCopy)
      {
LABEL_4:
        highlight2 = [(AKFingerPotView *)self highlight];
        [highlight2 setAlpha:1.0];

        return;
      }
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D755E8]);
      v8 = [MEMORY[0x277D755B8] imageNamed:@"FingerPot_Pressed"];
      v9 = [v7 initWithImage:v8];
      [(AKFingerPotView *)self setHighlight:v9];

      highlight3 = [(AKFingerPotView *)self highlight];
      [highlight3 setOpaque:0];

      highlight4 = [(AKFingerPotView *)self highlight];
      [highlight4 setAlpha:0.0];

      highlight5 = [(AKFingerPotView *)self highlight];
      [(AKFingerPotView *)self addSubview:highlight5];

      if (highlightedCopy)
      {
        goto LABEL_4;
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23F45E7F4;
    v13[3] = &unk_278C7B540;
    v13[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.25];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = AKFingerPotView;
  [(AKFingerPotView *)&v26 layoutSubviews];
  v3 = [(AKFingerPotView *)self imageForState:1];

  [(AKFingerPotView *)self bounds];
  [(AKFingerPotView *)self contentRectForBounds:?];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (v3)
  {
    [(AKFingerPotView *)self imageRectForContentRect:v4, v5, v6, v7];
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  selectedOutline = [(AKFingerPotView *)self selectedOutline];
  [selectedOutline setFrame:{v8, v9, v10, v11}];

  v27.origin.x = v8;
  v27.origin.y = v9;
  v27.size.width = v10;
  v27.size.height = v11;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = v8;
  v28.origin.y = v9;
  v28.size.width = v10;
  v28.size.height = v11;
  MidY = CGRectGetMidY(v28);
  highlight = [(AKFingerPotView *)self highlight];
  [highlight setCenter:{MidX, MidY}];

  highlight2 = [(AKFingerPotView *)self highlight];
  [highlight2 frame];
  v30 = CGRectIntegral(v29);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  highlight3 = [(AKFingerPotView *)self highlight];
  [highlight3 setFrame:{x, y, width, height}];
}

@end
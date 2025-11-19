@interface AKFingerPotView
- (AKFingerPotView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation AKFingerPotView

- (AKFingerPotView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKFingerPotView;
  v3 = [(AKFingerPotView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKFingerPotView *)v3 setAdjustsImageWhenHighlighted:0];
    [(AKFingerPotView *)v4 setShowsTouchWhenHighlighted:0];
  }

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(AKFingerPotView *)self isSelected]!= a3)
  {
    v14.receiver = self;
    v14.super_class = AKFingerPotView;
    [(AKFingerPotView *)&v14 setSelected:v3];
    if (v3)
    {
      v5 = [(AKFingerPotView *)self selectedOutline];

      if (!v5)
      {
        v6 = objc_alloc(MEMORY[0x277D755E8]);
        v7 = [MEMORY[0x277D755B8] imageNamed:@"ib_text_pop_icon_highlight_swatch_selection"];
        v8 = [v6 initWithImage:v7];
        [(AKFingerPotView *)self setSelectedOutline:v8];

        v9 = [(AKFingerPotView *)self selectedOutline];
        [v9 setContentMode:4];

        v10 = [(AKFingerPotView *)self selectedOutline];
        [(AKFingerPotView *)self addSubview:v10];

        v11 = [(AKFingerPotView *)self highlight];

        if (v11)
        {
          v12 = [(AKFingerPotView *)self highlight];
          [(AKFingerPotView *)self bringSubviewToFront:v12];
        }
      }
    }

    v13 = [(AKFingerPotView *)self selectedOutline];
    [v13 setHidden:v3 ^ 1];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(AKFingerPotView *)self isHighlighted]!= a3)
  {
    v14.receiver = self;
    v14.super_class = AKFingerPotView;
    [(AKFingerPotView *)&v14 setHighlighted:v3];
    v5 = [(AKFingerPotView *)self highlight];

    if (v5)
    {
      if (v3)
      {
LABEL_4:
        v6 = [(AKFingerPotView *)self highlight];
        [v6 setAlpha:1.0];

        return;
      }
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D755E8]);
      v8 = [MEMORY[0x277D755B8] imageNamed:@"FingerPot_Pressed"];
      v9 = [v7 initWithImage:v8];
      [(AKFingerPotView *)self setHighlight:v9];

      v10 = [(AKFingerPotView *)self highlight];
      [v10 setOpaque:0];

      v11 = [(AKFingerPotView *)self highlight];
      [v11 setAlpha:0.0];

      v12 = [(AKFingerPotView *)self highlight];
      [(AKFingerPotView *)self addSubview:v12];

      if (v3)
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

  v16 = [(AKFingerPotView *)self selectedOutline];
  [v16 setFrame:{v8, v9, v10, v11}];

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
  v19 = [(AKFingerPotView *)self highlight];
  [v19 setCenter:{MidX, MidY}];

  v20 = [(AKFingerPotView *)self highlight];
  [v20 frame];
  v30 = CGRectIntegral(v29);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v25 = [(AKFingerPotView *)self highlight];
  [v25 setFrame:{x, y, width, height}];
}

@end
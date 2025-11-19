@interface BCChatButton
- (BCChatButton)initWithCoder:(NSCoder *)coder;
- (BCChatButton)initWithFrame:(CGRect)a3;
- (BCChatButton)initWithStyle:(BCChatButtonStyle)style;
- (double)calculateButtonLayout;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)updateAppearanceForState:(id *)result;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (uint64_t)setup;
- (void)_populateArchivedSubviews:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)sizeToFit;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation BCChatButton

- (BCChatButton)initWithStyle:(BCChatButtonStyle)style
{
  v7.receiver = self;
  v7.super_class = BCChatButton;
  v4 = [(BCChatButton *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    [(BCChatButton *)v4 setup];
  }

  return v5;
}

- (uint64_t)setup
{
  v2 = +[BCShared classBundle];
  v3 = [v2 localizedStringForKey:@"CHAT_BUTTON_DOUBLE_LINE_INVERTED" value:&stru_2849DDCD8 table:0];
  *(a1 + 456) = [v3 isEqual:@"true"];

  v4 = objc_opt_new();
  v5 = *(a1 + 496);
  *(a1 + 496) = v4;

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:@"MessagesIcon" inBundle:v8];
  v10 = [v6 initWithImage:v9];
  v11 = *(a1 + 488);
  *(a1 + 488) = v10;

  v12 = objc_opt_new();
  v13 = *(a1 + 472);
  *(a1 + 472) = v12;

  v14 = *MEMORY[0x277D74410];
  v15 = [MEMORY[0x277D74300] systemFontOfSize:23.0 weight:*MEMORY[0x277D74410]];
  [*(a1 + 472) setFont:v15];

  v16 = +[BCShared classBundle];
  v17 = [v16 localizedStringForKey:@"CHAT_BUTTON_DOUBLE_LINE_LARGE_LABEL" value:&stru_2849DDCD8 table:0];
  [*(a1 + 472) setText:v17];

  [*(a1 + 472) setTextAlignment:0];
  [*(a1 + 472) setContentMode:7];
  v18 = objc_opt_new();
  v19 = *(a1 + 480);
  *(a1 + 480) = v18;

  v20 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:v14];
  [*(a1 + 480) setFont:v20];

  v21 = +[BCShared classBundle];
  v22 = [v21 localizedStringForKey:@"CHAT_BUTTON_DOUBLE_LINE_SMALL_LABEL" value:&stru_2849DDCD8 table:0];
  [*(a1 + 480) setText:v22];

  [*(a1 + 480) setTextAlignment:0];
  [a1 _setContinuousCornerRadius:8.0];
  v23 = [a1 layer];
  [v23 setMasksToBounds:1];

  v24 = [a1 layer];
  [v24 setBorderWidth:1.0];

  v25 = *(a1 + 472);
  v26 = *(a1 + 496);
  [v26 addSubview:v25];

  v27 = *(a1 + 480);
  v28 = *(a1 + 496);
  [v28 addSubview:v27];

  v29 = *(a1 + 488);
  v30 = *(a1 + 496);
  [v30 addSubview:v29];

  [a1 addSubview:*(a1 + 496)];
  [(BCChatButton *)a1 updateAppearanceForState:?];
  v31 = +[BCShared classBundle];
  v32 = [v31 localizedStringForKey:@"CHAT_BUTTON_ACCESSIBILITY_LABEL" value:&stru_2849DDCD8 table:0];
  [a1 setAccessibilityLabel:v32];

  [a1 setAccessibilityTraits:*MEMORY[0x277D76548]];

  return [a1 sizeToFit];
}

- (BCChatButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(BCChatButton *)self initWithStyle:1];
  v8 = v7;
  if (v7)
  {
    [(BCChatButton *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (BCChatButton)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v7.receiver = self;
  v7.super_class = BCChatButton;
  v5 = [(BCChatButton *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_style = [(NSCoder *)v4 decodeIntegerForKey:@"BCChatButtonStyleIdentifier"];
    [(BCChatButton *)v5 setup];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"BCChatButtonStyleIdentifier"];
  v6.receiver = self;
  v6.super_class = BCChatButton;
  [(BCChatButton *)&v6 encodeWithCoder:v5];
}

- (id)updateAppearanceForState:(id *)result
{
  if (result)
  {
    v3 = result;
    if ([result isHighlighted])
    {
      a2 = 1;
    }

    v4 = [v3 isEnabled];
    v5 = 2;
    if (v4)
    {
      v5 = a2;
    }

    v6 = 17 * v5;
    v7 = &dbl_236EB4F60[85 * v3[58] + 17 * v5];
    v8 = [MEMORY[0x277D75348] colorWithRed:v7[8] green:v7[9] blue:v7[10] alpha:v7[11]];
    [v3[59] setTextColor:v8];

    v9 = &dbl_236EB4F60[85 * v3[58] + v6];
    v10 = [MEMORY[0x277D75348] colorWithRed:v9[8] green:v9[9] blue:v9[10] alpha:v9[11]];
    [v3[60] setTextColor:v10];

    v11 = &dbl_236EB4F60[85 * v3[58] + v6];
    v12 = [MEMORY[0x277D75348] colorWithRed:*v11 green:v11[1] blue:v11[2] alpha:v11[3]];
    v13 = [v12 CGColor];
    v14 = [v3 layer];
    [v14 setBackgroundColor:v13];

    v15 = &dbl_236EB4F60[85 * v3[58] + v6];
    v16 = [MEMORY[0x277D75348] colorWithRed:v15[12] green:v15[13] blue:v15[14] alpha:v15[15]];
    v17 = [v16 CGColor];
    v18 = [v3 layer];
    [v18 setBorderColor:v17];

    v19 = dbl_236EB4F60[85 * v3[58] + 16 + v6];
    v20 = v3[61];

    return [v20 setAlpha:v19];
  }

  return result;
}

- (double)calculateButtonLayout
{
  v45[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *MEMORY[0x277D74410];
    v3 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
    v4 = [MEMORY[0x277D74300] systemFontOfSize:23.0 weight:v2];
    v5 = *(a1 + 480);
    v6 = [v5 text];
    v44 = *MEMORY[0x277D740A8];
    v7 = v44;
    v45[0] = v3;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];

    [v6 sizeWithAttributes:v8];
    v10 = v9;
    v12 = v11;

    v13 = *(a1 + 472);
    v14 = [v13 text];
    v42 = v7;
    v43 = v4;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

    [v14 sizeWithAttributes:v15];
    v17 = v16;
    v19 = v18;

    if (*(a1 + 456) == 1)
    {
      [*(a1 + 472) setFrame:{41.0, -6.0, v17, v19}];
      v20 = &OBJC_IVAR___BCChatButton__smallLabel;
      v21 = *(a1 + 472);
      [v21 frame];
      v23 = v19 + v22;
    }

    else
    {
      [*(a1 + 480) setFrame:{41.0, -1.0, v10, v12}];
      v21 = *(a1 + 480);
      [v21 frame];
      v23 = v12 + v24 + -3.0;
      v10 = v17;
      v12 = v19;
      v20 = &OBJC_IVAR___BCChatButton__label;
    }

    [*(a1 + *v20) setFrame:{41.0, v23, v10, v12}];

    v25 = *(a1 + 472);
    [v25 frame];
    v27 = v26;
    v28 = *(a1 + 472);
    [v28 frame];
    v30 = v27 + v29;
    v31 = *(a1 + 480);
    [v31 frame];
    v33 = v32;
    [*(a1 + 480) frame];
    v35 = fmax(v30, v33 + v34);

    [*(a1 + 488) setFrame:{0.0, 0.0, 32.0, 32.0}];
    [a1 bounds];
    v37 = v36 * 0.5 - v35 * 0.5;
    [a1 bounds];
    [*(a1 + 496) setFrame:{v37, v38 * 0.5 + -16.0, v35, 32.0}];
    v39 = fmax(v35 + 18.0, 156.0);
  }

  else
  {
    v39 = 0.0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = BCChatButton;
  [(BCChatButton *)&v6 setEnabled:?];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  [(BCChatButton *)&self->super.super.super.super.isa updateAppearanceForState:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = BCChatButton;
  [(BCChatButton *)&v5 setHighlighted:?];
  [(BCChatButton *)&self->super.super.super.super.isa updateAppearanceForState:v3];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = BCChatButton;
  [(BCChatButton *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self)
  {
    [(BCChatButton *)self calculateButtonLayout];
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v3.receiver = self;
  v3.super_class = BCChatButton;
  [(BCChatButton *)&v3 _populateArchivedSubviews:a3];
}

- (void)sizeToFit
{
  [(BCChatButton *)self calculateButtonLayout];
  [(BCChatButton *)self frame];
  v4 = v3;
  [(BCChatButton *)self frame];

  [(BCChatButton *)self setFrame:v4];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = BCChatButton;
  [(BCChatButton *)&v6 touchesBegan:a3 withEvent:a4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__BCChatButton_touchesBegan_withEvent___block_invoke;
  v5[3] = &unk_278A0E678;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.2];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = BCChatButton;
  [(BCChatButton *)&v6 touchesEnded:a3 withEvent:a4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__BCChatButton_touchesEnded_withEvent___block_invoke;
  v5[3] = &unk_278A0E678;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.2];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(BCChatButton *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BCChatButton;
  [(BCChatButton *)&v3 layoutSubviews];
  if (self)
  {
    [(BCChatButton *)self calculateButtonLayout];
  }
}

- (id)viewForFirstBaselineLayout
{
  if (self)
  {
    self = self->_smallLabel;
  }

  return self;
}

- (id)viewForLastBaselineLayout
{
  if (self)
  {
    self = self->_label;
  }

  return self;
}

@end
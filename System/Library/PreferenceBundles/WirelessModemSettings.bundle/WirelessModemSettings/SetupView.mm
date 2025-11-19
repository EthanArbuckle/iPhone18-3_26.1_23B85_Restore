@interface SetupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 shouldSetSize:(BOOL)a4;
- (SetupView)initWithFrame:(CGRect)a3;
- (id)_preferenceLabelWithText:(id)a3;
- (void)addStep:(id)a3;
- (void)layoutSubviews;
- (void)setIcon:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SetupView

- (SetupView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SetupView;
  v3 = [(SetupView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(SetupView *)v3 setBackgroundColor:v4];

    [(SetupView *)v3 setAutoresizingMask:2];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    setupSteps = v3->_setupSteps;
    v3->_setupSteps = v5;

    v7 = [MEMORY[0x277D75128] sharedApplication];
    v3->_layoutDirection = [v7 userInterfaceLayoutDirection];
  }

  return v3;
}

- (id)_preferenceLabelWithText:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v7 = PreferencesTableViewFooterFont();
  [v6 setFont:v7];

  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v6 setTextColor:v8];

  v9 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v9];

  [v6 setLineBreakMode:0];
  [v6 setNumberOfLines:0];
  [v6 setText:v4];

  return v6;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  title = self->_title;
  v11 = v4;
  if (title)
  {
    [(UILabel *)title removeFromSuperview];
    v6 = self->_title;
    self->_title = 0;

    v4 = v11;
  }

  if (v4)
  {
    v7 = [(SetupView *)self _preferenceLabelWithText:v11];
    v8 = self->_title;
    self->_title = v7;

    v9 = PreferencesTableViewHeaderFont();
    [(UILabel *)self->_title setFont:v9];

    v10 = PreferencesTableViewHeaderColor();
    [(UILabel *)self->_title setTextColor:v10];

    [(SetupView *)self addSubview:self->_title];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  icon = self->_icon;
  v11 = v4;
  if (icon)
  {
    [(UIImageView *)icon removeFromSuperview];
    v6 = self->_icon;
    self->_icon = 0;

    v4 = v11;
  }

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    v8 = self->_icon;
    self->_icon = v7;

    [(UIImageView *)self->_icon setContentMode:4];
    v9 = self->_icon;
    v10 = [MEMORY[0x277D75348] labelColor];
    [(UIImageView *)v9 setTintColor:v10];

    [(SetupView *)self addSubview:self->_icon];
  }

  MEMORY[0x2821F96F8]();
}

- (void)addStep:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  setupSteps = self->_setupSteps;
  v6 = a3;
  v13 = [v4 stringWithFormat:@"STEP_%lu", -[NSMutableArray count](setupSteps, "count") + 1];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v13 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v9 = [(SetupView *)self _preferenceLabelWithText:v8];

  v10 = [(SetupView *)self _preferenceLabelWithText:v6];

  if (self->_layoutDirection == 1)
  {
    [v10 setTextAlignment:2];
  }

  v11 = self->_setupSteps;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:{v9, v10, 0}];
  [(NSMutableArray *)v11 addObject:v12];

  [(SetupView *)self addSubview:v9];
  [(SetupView *)self addSubview:v10];
}

- (CGSize)sizeThatFits:(CGSize)a3 shouldSetSize:(BOOL)a4
{
  v72 = a4;
  width = a3.width;
  v5 = self;
  v81[1] = *MEMORY[0x277D85DE8];
  [(UIImageView *)self->_icon frame:a3.width];
  if (width >= v6 + 20.0 + 15.0)
  {
    layoutDirection = v5->_layoutDirection;
    v83.size.height = 1.79769313e308;
    v83.origin.x = 5.0;
    v83.origin.y = 0.0;
    v68 = width;
    v83.size.width = width;
    v84 = CGRectInset(v83, 10.0, 5.0);
    x = v84.origin.x;
    y = v84.origin.y;
    v12 = v84.size.width;
    height = v84.size.height;
    icon = v5->_icon;
    if (icon)
    {
      [(UIImageView *)icon frame];
      v16 = v15;
      v17 = x;
      if (layoutDirection == 1)
      {
        [(UIImageView *)v5->_icon frame];
        v17 = v12 - v18;
      }

      if (v72)
      {
        v85.size.width = 40.0;
        v85.origin.x = v17;
        v85.origin.y = y;
        v85.size.height = v16;
        v86 = CGRectIntegral(v85);
        [(UIImageView *)v5->_icon setFrame:v86.origin.x, v86.origin.y, v86.size.width, v86.size.height];
      }

      if (layoutDirection != 1)
      {
        x = v17 + 40.0 + 15.0;
      }

      v12 = v12 + -40.0 + -15.0;
    }

    title = v5->_title;
    v20 = MEMORY[0x277D740A8];
    v21 = 0x277CBE000uLL;
    if (title)
    {
      v22 = [(UILabel *)title text];
      v80 = *v20;
      v23 = [(UILabel *)v5->_title font];
      v81[0] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:&v80 count:1];
      [v22 boundingRectWithSize:1 options:v24 attributes:0 context:{v12, height}];
      v26 = v25;
      v28 = v27;

      if (v72)
      {
        v29 = v12 - v26;
        if (layoutDirection != 1)
        {
          v29 = x;
        }

        v30 = y;
        v31 = v26;
        v32 = v28;
        v87 = CGRectIntegral(*&v29);
        [(UILabel *)v5->_title setFrame:v87.origin.x, v87.origin.y, v87.size.width, v87.size.height];
      }

      y = y + v28 + 5.0;
      height = height - v28 + -5.0;
    }

    if ([(NSMutableArray *)v5->_setupSteps count])
    {
      v69 = x;
      v33 = 0;
      v34 = *v20;
      v35 = 1;
      v70 = *v20;
      v71 = layoutDirection;
      do
      {
        v36 = v5;
        v37 = [(NSMutableArray *)v5->_setupSteps objectAtIndex:v33];
        v38 = [v37 objectAtIndex:0];
        v39 = [v37 objectAtIndex:1];
        v40 = [v38 text];
        v78 = v34;
        v41 = [v38 font];
        v79 = v41;
        [*(v21 + 2752) dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v43 = v42 = v21;
        [v40 boundingRectWithSize:0 options:v43 attributes:0 context:{v12, height}];
        v45 = v44;
        rect = v46;

        v47 = v12 - v45;
        if (v71 == 1)
        {
          v48 = [v39 text];
          v76 = v34;
          v49 = [v39 font];
          v77 = v49;
          v50 = [*(v42 + 2752) dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          [v48 boundingRectWithSize:1 options:v50 attributes:0 context:{v47 + -10.0, height}];
          v52 = v51;
          v54 = v53;

          v55 = v47 - v52 + -5.0;
        }

        else
        {
          v55 = v69 + v45 + 5.0;
          v56 = [v39 text];
          v74 = v34;
          v57 = [v39 font];
          v75 = v57;
          v58 = [*(v42 + 2752) dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          [v56 boundingRectWithSize:1 options:v58 attributes:0 context:{v47 + -5.0, height}];
          v52 = v59;
          v54 = v60;

          v47 = v69;
        }

        v5 = v36;
        if (v72)
        {
          v88.origin.x = v47;
          v88.origin.y = y;
          v88.size.width = v45;
          v88.size.height = rect;
          v89 = CGRectIntegral(v88);
          [v38 setFrame:{v89.origin.x, v89.origin.y, v89.size.width, v89.size.height}];
          v90.origin.x = v55;
          v90.origin.y = y;
          v90.size.width = v52;
          v90.size.height = v54;
          v91 = CGRectIntegral(v90);
          [v39 setFrame:{v91.origin.x, v91.origin.y, v91.size.width, v91.size.height}];
        }

        y = y + v54 + 5.0;
        height = height - v54 + -5.0;

        v33 = v35;
        v61 = [(NSMutableArray *)v36->_setupSteps count]> v35++;
        v21 = 0x277CBE000;
        v34 = v70;
      }

      while (v61);
    }

    [(UIImageView *)v5->_icon frame];
    v63 = v62;
    [(UIImageView *)v5->_icon frame];
    if (y >= v63 + v64)
    {
      v65 = y;
    }

    else
    {
      v65 = v63 + v64;
    }

    v66 = v68;
    v7 = ceilf(v66);
    v67 = v65 + 5.0;
    v8 = ceilf(v67);
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SetupView *)self sizeThatFits:0 shouldSetSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SetupView;
  [(SetupView *)&v5 layoutSubviews];
  [(SetupView *)self bounds];
  [(SetupView *)self sizeThatFits:1 shouldSetSize:v3, v4];
}

@end
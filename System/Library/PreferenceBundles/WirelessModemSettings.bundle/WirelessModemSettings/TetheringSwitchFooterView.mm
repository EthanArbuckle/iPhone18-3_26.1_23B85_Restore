@interface TetheringSwitchFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 inTableView:(id)a4 shouldSetSize:(BOOL)a5;
- (TetheringSwitchFooterView)initWithSpecifier:(id)a3;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation TetheringSwitchFooterView

- (TetheringSwitchFooterView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TetheringSwitchFooterView;
  v5 = [(TetheringSwitchFooterView *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = v5->_labels;
    v5->_labels = v6;

    v8 = [MEMORY[0x277D75348] clearColor];
    [(TetheringSwitchFooterView *)v5 setBackgroundColor:v8];

    v9 = [v4 propertyForKey:@"TextFooterInitialText"];
    [(TetheringSwitchFooterView *)v5 setText:v9];
  }

  return v5;
}

- (void)setText:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(TetheringSwitchFooterView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v26 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_labels removeAllObjects];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v4;
  obj = [v4 componentsSeparatedByString:@"\n"];
  v10 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = PreferencesTableViewFooterColor();
        [v15 setTextColor:v16];

        v17 = [MEMORY[0x277D75348] clearColor];
        [v15 setBackgroundColor:v17];

        [v15 setLineBreakMode:0];
        v18 = PreferencesTableViewFooterFont();
        [v15 setFont:v18];

        [v15 setNumberOfLines:0];
        [v15 setText:v14];
        [(NSMutableArray *)self->_labels addObject:v15];
        v21.receiver = self;
        v21.super_class = TetheringSwitchFooterView;
        [(TetheringSwitchFooterView *)&v21 addSubview:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v11);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 inTableView:(id)a4 shouldSetSize:(BOOL)a5
{
  v5 = a5;
  width = a3.width;
  v38 = *MEMORY[0x277D85DE8];
  PreferencesTableViewCellLeftPad();
  v9 = v8;
  PreferencesTableViewCellLeftPad();
  v11 = v10;
  PreferencesTableViewCellRightPad();
  v13 = v12;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_labels;
  v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = width - v11 - v13;
    v17 = v9;
    v18 = *v32;
    v19 = *MEMORY[0x277D740A8];
    v20 = -8.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        [v22 frame];
        v23 = [v22 text];
        v35 = v19;
        v24 = [v22 font];
        v36 = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v23 boundingRectWithSize:1 options:v25 attributes:0 context:{v16, 3.40282347e38}];
        v27 = v26;

        if (v5)
        {
          v40.origin.x = v17;
          v40.origin.y = v20;
          v40.size.width = v16;
          v40.size.height = v27;
          v41 = CGRectIntegral(v40);
          [v22 setFrame:{v41.origin.x, v41.origin.y, v41.size.width, v41.size.height}];
        }

        v20 = v20 + v27;
      }

      v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v15);
  }

  else
  {
    v20 = -8.0;
  }

  v28 = width;
  v29 = v20;
  result.height = v29;
  result.width = v28;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TetheringSwitchFooterView *)self superview];
  [(TetheringSwitchFooterView *)self sizeThatFits:v6 inTableView:0 shouldSetSize:width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = TetheringSwitchFooterView;
  [(TetheringSwitchFooterView *)&v8 layoutSubviews];
  [(TetheringSwitchFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(TetheringSwitchFooterView *)self superview];
  [(TetheringSwitchFooterView *)self sizeThatFits:v7 inTableView:1 shouldSetSize:v4, v6];
}

@end
@interface WFCameraFlashButton
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (UIImageView)flashView;
- (WFCameraFlashButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)flashMode;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3;
- (void)setFlashMode:(int64_t)a3;
@end

@implementation WFCameraFlashButton

- (UIImageView)flashView
{
  WeakRetained = objc_loadWeakRetained(&self->_flashView);

  return WeakRetained;
}

- (int64_t)flashMode
{
  v2 = [(WFCameraFlashButton *)self selectedLabel];
  v3 = [v2 tag];

  return v3;
}

- (void)setFlashMode:(int64_t)a3
{
  v5 = [(WFCameraFlashButton *)self labels];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__WFCameraFlashButton_setFlashMode___block_invoke;
  v9[3] = &__block_descriptor_40_e23_B32__0__UIView_8Q16_B24l;
  v9[4] = a3;
  v6 = [v5 indexOfObjectPassingTest:v9];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(WFCameraFlashButton *)self labels];
    v8 = [v7 objectAtIndexedSubscript:v6];
    [(WFCameraFlashButton *)self setSelectedLabel:v8];
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    if (a3)
    {
      v5 = MEMORY[0x277D75D18];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __35__WFCameraFlashButton_setExpanded___block_invoke;
      v10[3] = &unk_278C37538;
      v10[4] = self;
      v6 = v10;
    }

    else
    {
      v7 = [(WFCameraFlashButton *)self flashView];
      [v7 frame];
      v8 = CGRectGetMaxX(v11) + 5.0;

      v5 = MEMORY[0x277D75D18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __35__WFCameraFlashButton_setExpanded___block_invoke_2;
      v9[3] = &unk_278C374C0;
      v9[4] = self;
      *&v9[5] = v8;
      v6 = v9;
    }

    [v5 animateWithDuration:v6 animations:0.200000003];
  }

  self->_expanded = a3;
}

void __35__WFCameraFlashButton_setExpanded___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) labels];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    v14 = *MEMORY[0x277CBF2C0];
    v12 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v15[0] = v14;
        v15[1] = v13;
        v15[2] = v12;
        [v7 setTransform:{v15, v12, v13, v14}];
        [v7 setAlpha:1.0];
        v8 = [*(a1 + 32) selectedLabel];
        v9 = [v8 isEqual:v7];

        if (v9)
        {
          [*(a1 + 32) tintColor];
        }

        else
        {
          [MEMORY[0x277D75348] whiteColor];
        }
        v10 = ;
        [v7 setTextColor:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __35__WFCameraFlashButton_setExpanded___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) labels];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [MEMORY[0x277D75348] whiteColor];
        [v7 setTextColor:v8];

        v9 = *(a1 + 40);
        [v7 frame];
        MinX = CGRectGetMinX(v22);
        CGAffineTransformMakeTranslation(&v15, v9 - MinX, 0.0);
        v14 = v15;
        [v7 setTransform:&v14];
        v11 = [*(a1 + 32) selectedLabel];
        v12 = [v11 isEqual:v7];

        if ((v12 & 1) == 0)
        {
          [v7 setAlpha:0.0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = WFCameraFlashButton;
  v8 = [(WFCameraFlashButton *)&v21 beginTrackingWithTouch:v6 withEvent:v7];
  if (v8)
  {
    if ([(WFCameraFlashButton *)self expanded])
    {
      [v6 locationInView:self];
      v20.receiver = self;
      v20.super_class = WFCameraFlashButton;
      v9 = [(WFCameraFlashButton *)&v20 hitTest:v7 withEvent:?];
      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = [(WFCameraFlashButton *)self labels];
        v11 = [v10 containsObject:v9];

        v12 = v9;
        if (v11)
        {
          v13 = [MEMORY[0x277D75348] whiteColor];
          v14 = [(WFCameraFlashButton *)self selectedLabel];
          [v14 setTextColor:v13];

          [(WFCameraFlashButton *)self setSelectedLabel:v9];
          v15 = [(WFCameraFlashButton *)self tintColor];
          v16 = [(WFCameraFlashButton *)self selectedLabel];
          [v16 setTextColor:v15];

          [(WFCameraFlashButton *)self setExpanded:0];
          [(WFCameraFlashButton *)self sendActionsForControlEvents:4096];
          v12 = v9;
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {

        v12 = 0;
      }

      v17 = [(WFCameraFlashButton *)self flashView];
      v18 = [v9 isEqual:v17];

      if (v18)
      {
        [(WFCameraFlashButton *)self setExpanded:0];
      }

      goto LABEL_11;
    }

    [(WFCameraFlashButton *)self setExpanded:1];
  }

LABEL_12:

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v8.receiver = self;
  v8.super_class = WFCameraFlashButton;
  v5 = [(WFCameraFlashButton *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (![(WFCameraFlashButton *)v5 isDescendantOfView:v4])
  {
    v4 = v5;
  }

  v6 = v4;

  return v4;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = WFCameraFlashButton;
  [(WFCameraFlashButton *)&v4 didMoveToWindow];
  v3 = [(WFCameraFlashButton *)self window];

  if (v3)
  {
    [(WFCameraFlashButton *)self setNeedsHiding:1];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = WFCameraFlashButton;
  [(WFCameraFlashButton *)&v4 layoutSubviews];
  if ([(WFCameraFlashButton *)self needsHiding])
  {
    [(WFCameraFlashButton *)self setNeedsHiding:0];
    [(WFCameraFlashButton *)self setExpanded:0];
    v3.receiver = self;
    v3.super_class = WFCameraFlashButton;
    [(WFCameraFlashButton *)&v3 layoutSubviews];
  }
}

- (WFCameraFlashButton)initWithFrame:(CGRect)a3
{
  v35[3] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = WFCameraFlashButton;
  v3 = [(WFCameraFlashButton *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithRed:0.945 green:0.804 blue:0.137 alpha:1.0];
    [(WFCameraFlashButton *)v3 setTintColor:v4];

    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v6 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"CameraFlash"];
    v7 = [v6 UIImage];
    v8 = [v5 initWithImage:v7];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setContentMode:1];
    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v9];
    [(WFCameraFlashButton *)v3 addSubview:v8];
    [(WFCameraFlashButton *)v3 setFlashView:v8];
    v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v8 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [(WFCameraFlashButton *)v3 addConstraint:v10];

    v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v8 attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
    [(WFCameraFlashButton *)v3 addConstraint:v11];

    v12 = WFLocalizedString(@"Auto");
    v35[0] = v12;
    v13 = WFLocalizedStringWithKey(@"Flash On", @"On");
    v35[1] = v13;
    v14 = WFLocalizedString(@"Off");
    v35[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];

    v16 = [MEMORY[0x277CBEB18] array];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __37__WFCameraFlashButton_initWithFrame___block_invoke;
    v28[3] = &unk_278C36590;
    v29 = &unk_2850AB3D8;
    v17 = v3;
    v30 = v17;
    v31 = v16;
    v32 = v8;
    v33 = v15;
    v18 = v15;
    v19 = v8;
    v20 = v16;
    [v18 enumerateObjectsUsingBlock:v28];
    [(WFCameraFlashButton *)v17 setLabels:v20];
    v21 = [v20 firstObject];
    [(WFCameraFlashButton *)v17 setSelectedLabel:v21];

    [(WFCameraFlashButton *)v17 setExpanded:1];
    LODWORD(v22) = 1144750080;
    [(WFCameraFlashButton *)v17 setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1144750080;
    [(WFCameraFlashButton *)v17 setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1132068864;
    [(WFCameraFlashButton *)v17 setContentHuggingPriority:0 forAxis:v24];
    LODWORD(v25) = 1132068864;
    [(WFCameraFlashButton *)v17 setContentHuggingPriority:1 forAxis:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

void __37__WFCameraFlashButton_initWithFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D756B8];
  v6 = a2;
  firstValue = objc_alloc_init(v5);
  [firstValue setUserInteractionEnabled:1];
  [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [firstValue setFont:v7];

  v8 = [MEMORY[0x277D75348] whiteColor];
  [firstValue setTextColor:v8];

  v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [firstValue setTag:{objc_msgSend(v9, "integerValue")}];

  [firstValue setText:v6];
  [*(a1 + 40) addSubview:firstValue];
  [*(a1 + 48) addObject:firstValue];
  v10 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, firstValue, 0);
  v11 = *(a1 + 40);
  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:0 views:v10];
  [v11 addConstraints:v12];

  v13 = *(a1 + 40);
  v14 = MEMORY[0x277CCAAD0];
  if (a3)
  {
    v15 = [*(a1 + 48) objectAtIndexedSubscript:a3 - 1];
    v16 = [v14 constraintWithItem:firstValue attribute:1 relatedBy:0 toItem:v15 attribute:2 multiplier:1.0 constant:20.0];
    [v13 addConstraint:v16];
  }

  else
  {
    v15 = [MEMORY[0x277CCAAD0] constraintWithItem:firstValue attribute:1 relatedBy:0 toItem:*(a1 + 56) attribute:2 multiplier:1.0 constant:20.0];
    [v13 addConstraint:v15];
  }

  if ([*(a1 + 64) count] - 1 == a3)
  {
    v17 = *(a1 + 40);
    v18 = [MEMORY[0x277CCAAD0] constraintWithItem:firstValue attribute:2 relatedBy:0 toItem:v17 attribute:2 multiplier:1.0 constant:0.0];
    [v17 addConstraint:v18];
  }
}

@end
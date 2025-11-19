@interface CPWindow
- (CPTemplateApplicationScene)templateApplicationScene;
- (CPWindow)initWithFrame:(CGRect)a3 templateScene:(id)a4;
- (UIEdgeInsets)edgeInsets;
- (void)updateLayoutGuideWithInsets:(UIEdgeInsets)a3;
@end

@implementation CPWindow

- (CPWindow)initWithFrame:(CGRect)a3 templateScene:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v40[4] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v39.receiver = self;
  v39.super_class = CPWindow;
  v10 = [(CPWindow *)&v39 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_templateApplicationScene, v9);
    v12 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPWindow *)v11 addLayoutGuide:v12];
    mapButtonSafeAreaLayoutGuide = v11->_mapButtonSafeAreaLayoutGuide;
    v11->_mapButtonSafeAreaLayoutGuide = v12;
    v14 = v12;

    v15 = *(MEMORY[0x277D768C8] + 16);
    *&v11->_edgeInsets.top = *MEMORY[0x277D768C8];
    *&v11->_edgeInsets.bottom = v15;
    v16 = [(CPWindow *)v11 topAnchor];
    v17 = [(UILayoutGuide *)v14 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:v11->_edgeInsets.top];

    v19 = [(CPWindow *)v11 bottomAnchor];
    v20 = [(UILayoutGuide *)v14 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:v11->_edgeInsets.bottom];

    v22 = [(CPWindow *)v11 leftAnchor];
    v23 = [(UILayoutGuide *)v14 leftAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:v11->_edgeInsets.left];

    v25 = [(CPWindow *)v11 rightAnchor];
    v26 = [(UILayoutGuide *)v14 rightAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:v11->_edgeInsets.right];

    v28 = MEMORY[0x277CCAAD0];
    v40[0] = v18;
    v40[1] = v21;
    v40[2] = v24;
    v40[3] = v27;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v28 activateConstraints:v29];

    topConstraint = v11->_topConstraint;
    v11->_topConstraint = v18;
    v31 = v18;

    bottomConstraint = v11->_bottomConstraint;
    v11->_bottomConstraint = v21;
    v33 = v21;

    leftConstraint = v11->_leftConstraint;
    v11->_leftConstraint = v24;
    v35 = v24;

    rightConstraint = v11->_rightConstraint;
    v11->_rightConstraint = v27;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)updateLayoutGuideWithInsets:(UIEdgeInsets)a3
{
  p_edgeInsets = &self->_edgeInsets;
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_edgeInsets.top), vceqq_f64(v5, *&self->_edgeInsets.bottom)))) & 1) == 0)
  {
    bottom = a3.bottom;
    right = a3.right;
    top = a3.top;
    left = a3.left;
    v7 = [(CPWindow *)self topConstraint];
    [v7 setConstant:-top];

    v8 = [(CPWindow *)self bottomConstraint];
    [v8 setConstant:bottom];

    v9 = [(CPWindow *)self leftConstraint];
    [v9 setConstant:-left];

    v10 = [(CPWindow *)self rightConstraint];
    [v10 setConstant:right];

    p_edgeInsets->top = top;
    p_edgeInsets->left = left;
    p_edgeInsets->bottom = bottom;
    p_edgeInsets->right = right;
    v11 = *MEMORY[0x277D76DA0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__CPWindow_updateLayoutGuideWithInsets___block_invoke;
    v16[3] = &unk_278A105A0;
    v16[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v16 animations:v11];
  }
}

- (CPTemplateApplicationScene)templateApplicationScene
{
  WeakRetained = objc_loadWeakRetained(&self->_templateApplicationScene);

  return WeakRetained;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
@interface CPWindow
- (CPTemplateApplicationScene)templateApplicationScene;
- (CPWindow)initWithFrame:(CGRect)frame templateScene:(id)scene;
- (UIEdgeInsets)edgeInsets;
- (void)updateLayoutGuideWithInsets:(UIEdgeInsets)insets;
@end

@implementation CPWindow

- (CPWindow)initWithFrame:(CGRect)frame templateScene:(id)scene
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v40[4] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v39.receiver = self;
  v39.super_class = CPWindow;
  height = [(CPWindow *)&v39 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_templateApplicationScene, sceneCopy);
    v12 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPWindow *)v11 addLayoutGuide:v12];
    mapButtonSafeAreaLayoutGuide = v11->_mapButtonSafeAreaLayoutGuide;
    v11->_mapButtonSafeAreaLayoutGuide = v12;
    v14 = v12;

    v15 = *(MEMORY[0x277D768C8] + 16);
    *&v11->_edgeInsets.top = *MEMORY[0x277D768C8];
    *&v11->_edgeInsets.bottom = v15;
    topAnchor = [(CPWindow *)v11 topAnchor];
    topAnchor2 = [(UILayoutGuide *)v14 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v11->_edgeInsets.top];

    bottomAnchor = [(CPWindow *)v11 bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)v14 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v11->_edgeInsets.bottom];

    leftAnchor = [(CPWindow *)v11 leftAnchor];
    leftAnchor2 = [(UILayoutGuide *)v14 leftAnchor];
    v24 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v11->_edgeInsets.left];

    rightAnchor = [(CPWindow *)v11 rightAnchor];
    rightAnchor2 = [(UILayoutGuide *)v14 rightAnchor];
    v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v11->_edgeInsets.right];

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

- (void)updateLayoutGuideWithInsets:(UIEdgeInsets)insets
{
  p_edgeInsets = &self->_edgeInsets;
  v4.f64[0] = insets.top;
  v4.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_edgeInsets.top), vceqq_f64(v5, *&self->_edgeInsets.bottom)))) & 1) == 0)
  {
    bottom = insets.bottom;
    right = insets.right;
    top = insets.top;
    left = insets.left;
    topConstraint = [(CPWindow *)self topConstraint];
    [topConstraint setConstant:-top];

    bottomConstraint = [(CPWindow *)self bottomConstraint];
    [bottomConstraint setConstant:bottom];

    leftConstraint = [(CPWindow *)self leftConstraint];
    [leftConstraint setConstant:-left];

    rightConstraint = [(CPWindow *)self rightConstraint];
    [rightConstraint setConstant:right];

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
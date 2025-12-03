@interface ASVControlsView
- (ASVControlsView)initWithArrangedSubviews:(id)subviews;
- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point;
- (id)_buttonAtPoint:(CGPoint)point;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point;
@end

@implementation ASVControlsView

- (ASVControlsView)initWithArrangedSubviews:(id)subviews
{
  v35[4] = *MEMORY[0x277D85DE8];
  subviewsCopy = subviews;
  v34.receiver = self;
  v34.super_class = ASVControlsView;
  v5 = [(ASVControlsView *)&v34 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(ASVControlsView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:subviewsCopy];
    v33 = subviewsCopy;
    stackView = v6->_stackView;
    v6->_stackView = v7;

    [(UIStackView *)v6->_stackView setDistribution:3];
    [(UIStackView *)v6->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v6->_stackView setSpacing:10.0];
    [(ASVControlsView *)v6 addSubview:v6->_stackView];
    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)v6->_stackView leadingAnchor];
    leadingAnchor2 = [(ASVControlsView *)v6 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v30;
    trailingAnchor = [(UIStackView *)v6->_stackView trailingAnchor];
    trailingAnchor2 = [(ASVControlsView *)v6 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v10;
    topAnchor = [(UIStackView *)v6->_stackView topAnchor];
    topAnchor2 = [(ASVControlsView *)v6 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[2] = v13;
    bottomAnchor = [(UIStackView *)v6->_stackView bottomAnchor];
    bottomAnchor2 = [(ASVControlsView *)v6 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v28 activateConstraints:v17];

    subviewsCopy = v33;
    layer = [(ASVControlsView *)v6 layer];
    [layer setMasksToBounds:0];

    layer2 = [(ASVControlsView *)v6 layer];
    LODWORD(v20) = *"\nף=";
    [layer2 setShadowOpacity:v20];

    v21 = *MEMORY[0x277CBF3A8];
    v22 = *(MEMORY[0x277CBF3A8] + 8);
    layer3 = [(ASVControlsView *)v6 layer];
    [layer3 setShadowOffset:{v21, v22}];

    layer4 = [(ASVControlsView *)v6 layer];
    [layer4 setShadowRadius:20.0];

    v25 = [objc_alloc(MEMORY[0x277D750A8]) initWithView:v6 delegate:v6];
    largeTextHUDGestureManager = v6->_largeTextHUDGestureManager;
    v6->_largeTextHUDGestureManager = v25;
  }

  return v6;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = ASVControlsView;
  v5 = [(ASVControlsView *)&v10 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {
    v8 = 0;
  }

  else
  {
    stackView = [(ASVControlsView *)self stackView];
    if (v5 == stackView)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
  }

  return v8;
}

- (id)_buttonAtPoint:(CGPoint)point
{
  v3 = [(ASVControlsView *)self hitTest:0 withEvent:point.x, point.y];
  objc_opt_class();
  v4 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  return v4;
}

- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point
{
  v4 = [(ASVControlsView *)self _buttonAtPoint:manager, point.x, point.y];
  v5 = v4;
  if (v4)
  {
    superview = [v4 superview];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      superview2 = [v5 superview];
      [superview2 largeImageInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v10 = *MEMORY[0x277D768C8];
      v12 = *(MEMORY[0x277D768C8] + 8);
      v14 = *(MEMORY[0x277D768C8] + 16);
      v16 = *(MEMORY[0x277D768C8] + 24);
    }

    v18 = objc_alloc(MEMORY[0x277D750B0]);
    v19 = [v5 titleForState:0];
    v20 = [v5 imageForState:0];
    v17 = [v18 initWithTitle:v19 image:v20 imageInsets:1 scaleImage:{v10, v12, v14, v16}];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point
{
  v4 = [(ASVControlsView *)self _buttonAtPoint:manager, point.x, point.y];
  v5 = v4;
  if (v4)
  {
    [v4 sendActionsForControlEvents:64];
    [v5 setHighlighted:1];
    v6 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__ASVControlsView__accessibilityHUDGestureManager_gestureLiftedAtPoint___block_invoke;
    block[3] = &unk_278CCADC0;
    v8 = v5;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }
}

@end
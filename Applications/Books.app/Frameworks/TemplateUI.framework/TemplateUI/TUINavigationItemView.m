@interface TUINavigationItemView
- (CGSize)intrinsicContentSize;
- (TUINavigationItemView)initWithCoder:(id)a3;
- (TUINavigationItemView)initWithFrame:(CGRect)a3;
- (TUIViewFactory)factory;
- (void)_buttonPressed:(id)a3;
- (void)_configureWithAXAttributes:(id)a3;
- (void)addDefaultButton;
- (void)addSubviewButton;
- (void)configureWithModel:(id)a3;
- (void)setFactory:(id)a3;
@end

@implementation TUINavigationItemView

- (TUINavigationItemView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TUINavigationItemView;
  result = [(TUINavigationItemView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_intrinsicContentSize.width = UIViewNoIntrinsicMetric;
    result->_intrinsicContentSize.height = UIViewNoIntrinsicMetric;
  }

  return result;
}

- (TUINavigationItemView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TUINavigationItemView;
  result = [(TUINavigationItemView *)&v4 initWithCoder:a3];
  if (result)
  {
    result->_intrinsicContentSize.width = UIViewNoIntrinsicMetric;
    result->_intrinsicContentSize.height = UIViewNoIntrinsicMetric;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setFactory:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_factory, obj);
    v5 = obj;
  }
}

- (void)configureWithModel:(id)a3
{
  v5 = a3;
  if (self->_renderModel != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_renderModel, a3);
    v6 = [(TUIRenderModelNavigationItem *)self->_renderModel subviewsModel];
    if (v6)
    {
      [(TUINavigationItemView *)self addSubviewButton];
    }

    else
    {
      [(TUINavigationItemView *)self addDefaultButton];
    }

    v7 = [(TUIRenderModelNavigationItem *)v8 axAttributes];
    if (v7)
    {
      [(TUINavigationItemView *)self _configureWithAXAttributes:v7];
    }

    v5 = v8;
  }
}

- (void)addDefaultButton
{
  if ([(TUIRenderModelNavigationItem *)self->_renderModel buttonType])
  {
    v3 = [TUIControlView uiButtonTypeFromTUIButtonType:[(TUIRenderModelNavigationItem *)self->_renderModel buttonType]];
  }

  else
  {
    v3 = 1;
  }

  v19 = [TUIUIKitButton buttonWithType:v3];
  [v19 setRole:{+[TUIControlView uiButtonRoleFromTUIButtonRole:](TUIControlView, "uiButtonRoleFromTUIButtonRole:", -[TUIRenderModelNavigationItem buttonRole](self->_renderModel, "buttonRole"))}];
  [v19 addTarget:self action:"_buttonPressed:" forControlEvents:64];
  v4 = [(TUIRenderModelNavigationItem *)self->_renderModel title];
  [v19 setTitle:v4 forState:0];

  v5 = [(TUIRenderModelNavigationItem *)self->_renderModel attributedTitle];
  [v19 setAttributedTitle:v5 forState:0];

  v6 = [(TUIRenderModelNavigationItem *)self->_renderModel image];
  [v19 setImage:v6 forState:0];

  v7 = [(TUIRenderModelNavigationItem *)self->_renderModel menu];
  [v19 setTui_menu:v7];

  [v19 setEnabled:{-[TUIRenderModelNavigationItem isEnabled](self->_renderModel, "isEnabled")}];
  [v19 setClipsToBounds:{-[TUINavigationItemView clipsToBounds](self, "clipsToBounds")}];
  [v19 sizeToFit];
  [v19 frame];
  [v19 alignmentRectForFrame:?];
  v9 = v8;
  v11 = v10;
  [(TUIRenderModelNavigationItem *)self->_renderModel width];
  if (v12 > 0.0)
  {
    [(TUIRenderModelNavigationItem *)self->_renderModel width];
    v9 = v13;
  }

  [(TUIRenderModelNavigationItem *)self->_renderModel minWidth];
  if (v14 > 0.0)
  {
    [(TUIRenderModelNavigationItem *)self->_renderModel minWidth];
    v9 = fmax(v9, v15);
  }

  y = CGPointZero.y;
  [(TUIRenderModelNavigationItem *)self->_renderModel maxWidth];
  if (v17 > 0.0)
  {
    [(TUIRenderModelNavigationItem *)self->_renderModel maxWidth];
    v9 = fmin(v9, v18);
  }

  [(TUINavigationItemView *)self setFrame:CGPointZero.x, y, v9, v11];
  [v19 frameForAlignmentRect:{CGPointZero.x, y, v9, v11}];
  [v19 setFrame:?];
  self->_intrinsicContentSize.width = v9;
  self->_intrinsicContentSize.height = v11;
  [(TUINavigationItemView *)self addSubview:v19];
  [(TUINavigationItemView *)self verifyHierarchyForSubview:v19];
}

- (void)addSubviewButton
{
  v3 = [(TUIRenderModelNavigationItem *)self->_renderModel subviewsModel];
  [v3 size];
  v5 = v4;
  v7 = v6;
  [(TUINavigationItemView *)self setFrame:0.0, 0.0, v4, v6];
  self->_intrinsicContentSize.width = v5;
  self->_intrinsicContentSize.height = v7;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  [WeakRetained viewFactoryPrepareToReuseHost:self];

  if (v3)
  {
    v9 = objc_loadWeakRetained(&self->_factory);

    if (v9)
    {
      [v3 prepare];
      v21 = 0;
      v10 = objc_loadWeakRetained(&self->_factory);
      v11 = [v3 configureSubviewsWithFactory:v10 outsets:self host:0 overrides:&v21 usedOverrides:0 UUID:0 uid:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [(TUINavigationItemView *)self verifyHierarchyForSubview:*(*(&v17 + 1) + 8 * v16), v17];
            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)_buttonPressed:(id)a3
{
  v4 = [(TUINavigationItemView *)self renderModel];
  v3 = [v4 actionHandler];
  [v3 invoke:@"press" arguments:0];
}

- (void)_configureWithAXAttributes:(id)a3
{
  v22 = a3;
  -[TUINavigationItemView setIsAccessibilityElement:](self, "setIsAccessibilityElement:", [v22 isAXElement]);
  v4 = [v22 axIdentifier];

  if (v4)
  {
    v5 = [v22 axIdentifier];
    [(TUINavigationItemView *)self setAccessibilityIdentifier:v5];
  }

  v6 = [v22 axLabel];

  if (v6)
  {
    v7 = [v22 axLabel];
    [(TUINavigationItemView *)self setAccessibilityLabel:v7];
  }

  v8 = [v22 axValue];

  if (v8)
  {
    v9 = [v22 axValue];
    [(TUINavigationItemView *)self setAccessibilityValue:v9];
  }

  v10 = [v22 axHint];

  if (v10)
  {
    v11 = [v22 axHint];
    [(TUINavigationItemView *)self setAccessibilityHint:v11];
  }

  v12 = [(TUINavigationItemView *)self accessibilityTraits];
  if ([v22 axTouchContainer])
  {
    [(TUINavigationItemView *)self setAccessibilityContainerType:4];
  }

  v13 = [v22 axButton];
  v14 = UIAccessibilityTraitButton;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = v14 | v12;
  if ([v22 axImage])
  {
    v16 = UIAccessibilityTraitImage;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v22 axHeading];
  v18 = UIAccessibilityTraitHeader;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = v15 | v16 | v18;
  v20 = [v22 axToggle];
  v21 = UIAccessibilityTraitToggleButton;
  if (!v20)
  {
    v21 = 0;
  }

  [(TUINavigationItemView *)self setAccessibilityTraits:v19 | v21];
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end
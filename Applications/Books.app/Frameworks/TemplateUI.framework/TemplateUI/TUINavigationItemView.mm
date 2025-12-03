@interface TUINavigationItemView
- (CGSize)intrinsicContentSize;
- (TUINavigationItemView)initWithCoder:(id)coder;
- (TUINavigationItemView)initWithFrame:(CGRect)frame;
- (TUIViewFactory)factory;
- (void)_buttonPressed:(id)pressed;
- (void)_configureWithAXAttributes:(id)attributes;
- (void)addDefaultButton;
- (void)addSubviewButton;
- (void)configureWithModel:(id)model;
- (void)setFactory:(id)factory;
@end

@implementation TUINavigationItemView

- (TUINavigationItemView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TUINavigationItemView;
  result = [(TUINavigationItemView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_intrinsicContentSize.width = UIViewNoIntrinsicMetric;
    result->_intrinsicContentSize.height = UIViewNoIntrinsicMetric;
  }

  return result;
}

- (TUINavigationItemView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TUINavigationItemView;
  result = [(TUINavigationItemView *)&v4 initWithCoder:coder];
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

- (void)setFactory:(id)factory
{
  obj = factory;
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_factory, obj);
    v5 = obj;
  }
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  if (self->_renderModel != modelCopy)
  {
    v8 = modelCopy;
    objc_storeStrong(&self->_renderModel, model);
    subviewsModel = [(TUIRenderModelNavigationItem *)self->_renderModel subviewsModel];
    if (subviewsModel)
    {
      [(TUINavigationItemView *)self addSubviewButton];
    }

    else
    {
      [(TUINavigationItemView *)self addDefaultButton];
    }

    axAttributes = [(TUIRenderModelNavigationItem *)v8 axAttributes];
    if (axAttributes)
    {
      [(TUINavigationItemView *)self _configureWithAXAttributes:axAttributes];
    }

    modelCopy = v8;
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
  title = [(TUIRenderModelNavigationItem *)self->_renderModel title];
  [v19 setTitle:title forState:0];

  attributedTitle = [(TUIRenderModelNavigationItem *)self->_renderModel attributedTitle];
  [v19 setAttributedTitle:attributedTitle forState:0];

  image = [(TUIRenderModelNavigationItem *)self->_renderModel image];
  [v19 setImage:image forState:0];

  menu = [(TUIRenderModelNavigationItem *)self->_renderModel menu];
  [v19 setTui_menu:menu];

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
  subviewsModel = [(TUIRenderModelNavigationItem *)self->_renderModel subviewsModel];
  [subviewsModel size];
  v5 = v4;
  v7 = v6;
  [(TUINavigationItemView *)self setFrame:0.0, 0.0, v4, v6];
  self->_intrinsicContentSize.width = v5;
  self->_intrinsicContentSize.height = v7;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  [WeakRetained viewFactoryPrepareToReuseHost:self];

  if (subviewsModel)
  {
    v9 = objc_loadWeakRetained(&self->_factory);

    if (v9)
    {
      [subviewsModel prepare];
      v21 = 0;
      v10 = objc_loadWeakRetained(&self->_factory);
      v11 = [subviewsModel configureSubviewsWithFactory:v10 outsets:self host:0 overrides:&v21 usedOverrides:0 UUID:0 uid:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

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

- (void)_buttonPressed:(id)pressed
{
  renderModel = [(TUINavigationItemView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:@"press" arguments:0];
}

- (void)_configureWithAXAttributes:(id)attributes
{
  attributesCopy = attributes;
  -[TUINavigationItemView setIsAccessibilityElement:](self, "setIsAccessibilityElement:", [attributesCopy isAXElement]);
  axIdentifier = [attributesCopy axIdentifier];

  if (axIdentifier)
  {
    axIdentifier2 = [attributesCopy axIdentifier];
    [(TUINavigationItemView *)self setAccessibilityIdentifier:axIdentifier2];
  }

  axLabel = [attributesCopy axLabel];

  if (axLabel)
  {
    axLabel2 = [attributesCopy axLabel];
    [(TUINavigationItemView *)self setAccessibilityLabel:axLabel2];
  }

  axValue = [attributesCopy axValue];

  if (axValue)
  {
    axValue2 = [attributesCopy axValue];
    [(TUINavigationItemView *)self setAccessibilityValue:axValue2];
  }

  axHint = [attributesCopy axHint];

  if (axHint)
  {
    axHint2 = [attributesCopy axHint];
    [(TUINavigationItemView *)self setAccessibilityHint:axHint2];
  }

  accessibilityTraits = [(TUINavigationItemView *)self accessibilityTraits];
  if ([attributesCopy axTouchContainer])
  {
    [(TUINavigationItemView *)self setAccessibilityContainerType:4];
  }

  axButton = [attributesCopy axButton];
  v14 = UIAccessibilityTraitButton;
  if (!axButton)
  {
    v14 = 0;
  }

  v15 = v14 | accessibilityTraits;
  if ([attributesCopy axImage])
  {
    v16 = UIAccessibilityTraitImage;
  }

  else
  {
    v16 = 0;
  }

  axHeading = [attributesCopy axHeading];
  v18 = UIAccessibilityTraitHeader;
  if (!axHeading)
  {
    v18 = 0;
  }

  v19 = v15 | v16 | v18;
  axToggle = [attributesCopy axToggle];
  v21 = UIAccessibilityTraitToggleButton;
  if (!axToggle)
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
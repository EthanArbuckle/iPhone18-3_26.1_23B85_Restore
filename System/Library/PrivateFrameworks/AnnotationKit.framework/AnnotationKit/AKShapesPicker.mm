@interface AKShapesPicker
- (AKShapesPicker)initWithFrame:(CGRect)frame shapeTags:(id)tags;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_shapeButtonPressed:(id)pressed;
- (void)_updateCurrentAppearanceIfNeeded;
- (void)layoutSubviews;
- (void)setShapes:(id)shapes;
@end

@implementation AKShapesPicker

- (AKShapesPicker)initWithFrame:(CGRect)frame shapeTags:(id)tags
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  tagsCopy = tags;
  v16.receiver = self;
  v16.super_class = AKShapesPicker;
  height = [(AKModernToolbarPicker *)&v16 initWithFrame:0 controller:x, y, width, height];
  if (height)
  {
    if ([tagsCopy count])
    {
      v11 = height;
      v12 = tagsCopy;
    }

    else
    {
      v12 = &unk_2851BAAA0;
      v11 = height;
    }

    [(AKShapesPicker *)v11 setShapes:v12];
    traitCollection = [(AKShapesPicker *)height traitCollection];
    height->_style = [traitCollection userInterfaceStyle];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(AKShapesPicker *)height setTintColor:labelColor];
  }

  return height;
}

- (void)setShapes:(id)shapes
{
  v33 = *MEMORY[0x277D85DE8];
  shapesCopy = shapes;
  stackview = [(AKModernToolbarPicker *)self stackview];
  subviews = [stackview subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  v7 = [shapesCopy copy];
  shapes = self->_shapes;
  self->_shapes = v7;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = shapesCopy;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v27 = *v29;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v29 != v27)
      {
        objc_enumerationMutation(obj);
      }

      longValue = [*(*(&v28 + 1) + 8 * v11) longValue];
      v13 = longValue - 764000;
      if ((longValue - 764000) > 7 || ((0xA5u >> v13) & 1) == 0)
      {
        break;
      }

      v14 = longValue;
      v15 = *(&off_278C7BA08 + v13);
      v16 = [MEMORY[0x277D755B8] systemImageNamed:*(&off_278C7BA48 + v13)];
      v17 = [MEMORY[0x277D755D0] configurationWithScale:3];
      v18 = [v16 imageByApplyingSymbolConfiguration:v17];

      configuration = [v18 configuration];
      _configurationIgnoringDynamicType = [configuration _configurationIgnoringDynamicType];
      v21 = [v18 imageWithConfiguration:_configurationIgnoringDynamicType];

      v22 = [MEMORY[0x277D75220] buttonWithType:1];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [v22 widthAnchor];
      v24 = [widthAnchor constraintEqualToConstant:36.0];
      [v24 setActive:1];

      [v22 addTarget:self action:sel__shapeButtonPressed_ forControlEvents:64];
      [v22 setImage:v21 forState:0];
      [v22 setTag:v14];
      [v22 setAccessibilityIdentifier:v15];
      stackview2 = [(AKModernToolbarPicker *)self stackview];
      [stackview2 addArrangedSubview:v22];

      if (v10 == ++v11)
      {
        v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  shapes = [(AKShapesPicker *)self shapes];
  v5 = [shapes count] * 45.0 + -9.0;

  v6 = v5;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_shapeButtonPressed:(id)pressed
{
  [pressed tag];

  MEMORY[0x2821F9670](self, sel_setCurrentTag_);
}

- (void)_updateCurrentAppearanceIfNeeded
{
  traitCollection = [(AKShapesPicker *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != self->_style)
  {
    self->_style = userInterfaceStyle;
    shapes = self->_shapes;

    [(AKShapesPicker *)self setShapes:shapes];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AKShapesPicker;
  [(AKShapesPicker *)&v3 layoutSubviews];
  [(AKShapesPicker *)self _updateCurrentAppearanceIfNeeded];
}

@end
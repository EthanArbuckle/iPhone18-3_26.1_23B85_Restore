@interface AKShapesPicker
- (AKShapesPicker)initWithFrame:(CGRect)a3 shapeTags:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_shapeButtonPressed:(id)a3;
- (void)_updateCurrentAppearanceIfNeeded;
- (void)layoutSubviews;
- (void)setShapes:(id)a3;
@end

@implementation AKShapesPicker

- (AKShapesPicker)initWithFrame:(CGRect)a3 shapeTags:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = AKShapesPicker;
  v10 = [(AKModernToolbarPicker *)&v16 initWithFrame:0 controller:x, y, width, height];
  if (v10)
  {
    if ([v9 count])
    {
      v11 = v10;
      v12 = v9;
    }

    else
    {
      v12 = &unk_2851BAAA0;
      v11 = v10;
    }

    [(AKShapesPicker *)v11 setShapes:v12];
    v13 = [(AKShapesPicker *)v10 traitCollection];
    v10->_style = [v13 userInterfaceStyle];

    v14 = [MEMORY[0x277D75348] labelColor];
    [(AKShapesPicker *)v10 setTintColor:v14];
  }

  return v10;
}

- (void)setShapes:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKModernToolbarPicker *)self stackview];
  v6 = [v5 subviews];
  [v6 makeObjectsPerformSelector:sel_removeFromSuperview];

  v7 = [v4 copy];
  shapes = self->_shapes;
  self->_shapes = v7;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
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

      v12 = [*(*(&v28 + 1) + 8 * v11) longValue];
      v13 = v12 - 764000;
      if ((v12 - 764000) > 7 || ((0xA5u >> v13) & 1) == 0)
      {
        break;
      }

      v14 = v12;
      v15 = *(&off_278C7BA08 + v13);
      v16 = [MEMORY[0x277D755B8] systemImageNamed:*(&off_278C7BA48 + v13)];
      v17 = [MEMORY[0x277D755D0] configurationWithScale:3];
      v18 = [v16 imageByApplyingSymbolConfiguration:v17];

      v19 = [v18 configuration];
      v20 = [v19 _configurationIgnoringDynamicType];
      v21 = [v18 imageWithConfiguration:v20];

      v22 = [MEMORY[0x277D75220] buttonWithType:1];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      v23 = [v22 widthAnchor];
      v24 = [v23 constraintEqualToConstant:36.0];
      [v24 setActive:1];

      [v22 addTarget:self action:sel__shapeButtonPressed_ forControlEvents:64];
      [v22 setImage:v21 forState:0];
      [v22 setTag:v14];
      [v22 setAccessibilityIdentifier:v15];
      v25 = [(AKModernToolbarPicker *)self stackview];
      [v25 addArrangedSubview:v22];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v4 = [(AKShapesPicker *)self shapes];
  v5 = [v4 count] * 45.0 + -9.0;

  v6 = v5;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_shapeButtonPressed:(id)a3
{
  [a3 tag];

  MEMORY[0x2821F9670](self, sel_setCurrentTag_);
}

- (void)_updateCurrentAppearanceIfNeeded
{
  v3 = [(AKShapesPicker *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 != self->_style)
  {
    self->_style = v4;
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
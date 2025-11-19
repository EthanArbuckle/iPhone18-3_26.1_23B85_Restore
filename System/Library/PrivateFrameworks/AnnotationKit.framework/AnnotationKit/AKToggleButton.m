@interface AKToggleButton
+ (id)colorImage:(id)a3 withColor:(id)a4;
- (AKToggleButton)initWithFrame:(CGRect)a3 templateImage:(id)a4 autoUpdatesColor:(BOOL)a5;
- (void)_setDeselectedStateColorImage;
- (void)_setSelectedStateColorImage;
- (void)_touchCommitted:(id)a3;
- (void)_updateSelectionColorsAnimated:(BOOL)a3;
- (void)_updateStateColors;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setSelected:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AKToggleButton

- (AKToggleButton)initWithFrame:(CGRect)a3 templateImage:(id)a4 autoUpdatesColor:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v19.receiver = self;
  v19.super_class = AKToggleButton;
  v12 = [(AKToggleButton *)&v19 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v12->_showsBackgroundColor = 1;
    v12->_shouldTintNormalImage = 0;
    v14 = [MEMORY[0x277D75348] whiteColor];
    selectedColor = v13->_selectedColor;
    v13->_selectedColor = v14;

    v16 = [v11 imageWithRenderingMode:2];
    templateImage = v13->_templateImage;
    v13->_templateImage = v16;

    if (v5)
    {
      [(AKToggleButton *)v13 addTarget:v13 action:sel__touchCommitted_ forControlEvents:64];
    }
  }

  return v13;
}

- (void)_touchCommitted:(id)a3
{
  v4 = [(AKToggleButton *)self isSelected]^ 1;

  [(AKToggleButton *)self setSelected:v4];
}

- (void)setSelected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AKToggleButton;
  [(AKToggleButton *)&v5 setSelected:a3];
  v4 = [(AKToggleButton *)self imageForState:4];
  if (!v4)
  {
    NSLog(&cfstr_CreateASelecte.isa);
  }

  if ([(AKToggleButton *)self showsBackgroundColor])
  {
    [(AKToggleButton *)self _updateSelectionColorsAnimated:1];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AKToggleButton;
  [(AKToggleButton *)&v4 setHighlighted:a3];
  if ([(AKToggleButton *)self showsBackgroundColor])
  {
    [(AKToggleButton *)self _updateSelectionColorsAnimated:1];
  }
}

- (void)_updateSelectionColorsAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(AKToggleButton *)self showsBackgroundColor])
  {
LABEL_13:
    v9 = [MEMORY[0x277D75348] clearColor];
    v13 = v9;
    goto LABEL_14;
  }

  if (v3)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 0.0;
  }

  if ([(AKToggleButton *)self isSelected])
  {
    v6 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23F409ED0;
    v15[3] = &unk_278C7B540;
    v15[4] = self;
    v7 = v15;
LABEL_12:
    [v6 animateWithDuration:v7 animations:v5];
    return;
  }

  if (![(AKToggleButton *)self isHighlighted])
  {
    if (([(AKToggleButton *)self isSelected]& 1) != 0 || ([(AKToggleButton *)self isHighlighted]& 1) != 0)
    {
      v6 = MEMORY[0x277D75D18];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_23F409F48;
      v14[3] = &unk_278C7B540;
      v14[4] = self;
      v7 = v14;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v8 = [(AKToggleButton *)self tintColor];
  v13 = [v8 colorWithAlphaComponent:0.35];

  v9 = v13;
LABEL_14:
  v10 = v9;
  v11 = [v13 CGColor];
  v12 = [(AKToggleButton *)self layer];
  [v12 setBackgroundColor:v11];
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v11.receiver = self;
    v11.super_class = AKToggleButton;
    [(AKToggleButton *)&v11 setImage:v6 forState:a4];
  }

  else
  {
    if ([(AKToggleButton *)self shouldTintNormalImage])
    {
      v7 = objc_opt_class();
      v8 = [(AKToggleButton *)self templateImage];
      v9 = [(AKToggleButton *)self tintColor];
      v10 = [v7 colorImage:v8 withColor:v9];

      v13.receiver = self;
      v13.super_class = AKToggleButton;
      [(AKToggleButton *)&v13 setImage:v10 forState:0];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = AKToggleButton;
      [(AKToggleButton *)&v12 setImage:v6 forState:0];
    }

    [(AKToggleButton *)self _setSelectedStateColorImage];
  }
}

- (void)_setSelectedStateColorImage
{
  if ([(AKToggleButton *)self shouldTintNormalImage])
  {
    if ([(AKToggleButton *)self tintAdjustmentMode]== 2)
    {
      [(AKToggleButton *)self tintColor];
    }

    else
    {
      [(AKToggleButton *)self selectedColor];
    }
    v3 = ;
    v4 = objc_opt_class();
    v5 = [(AKToggleButton *)self templateImage];
    v6 = [v4 colorImage:v5 withColor:v3];

    v7.receiver = self;
    v7.super_class = AKToggleButton;
    [(AKToggleButton *)&v7 setImage:v6 forState:4];
  }
}

- (void)_setDeselectedStateColorImage
{
  if ([(AKToggleButton *)self shouldTintNormalImage])
  {
    v3 = [(AKToggleButton *)self tintColor];
    v4 = objc_opt_class();
    v5 = [(AKToggleButton *)self templateImage];
    v6 = [v4 colorImage:v5 withColor:v3];

    v7.receiver = self;
    v7.super_class = AKToggleButton;
    [(AKToggleButton *)&v7 setImage:v6 forState:0];
  }
}

- (void)_updateStateColors
{
  v3 = [(AKToggleButton *)self traitCollection];
  v4 = sub_23F4516FC(v3);

  if (!v4)
  {
    [(AKToggleButton *)self _setSelectedStateColorImage];
  }

  [(AKToggleButton *)self _setDeselectedStateColorImage];

  [(AKToggleButton *)self _updateSelectionColorsAnimated:0];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = AKToggleButton;
  [(AKToggleButton *)&v3 tintColorDidChange];
  [(AKToggleButton *)self _updateStateColors];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = AKToggleButton;
  v4 = a3;
  [(AKToggleButton *)&v7 traitCollectionDidChange:v4];
  v5 = [(AKToggleButton *)self traitCollection:v7.receiver];
  v6 = sub_23F45174C(v5, v4);

  if (!v6)
  {
    [(AKToggleButton *)self _updateStateColors];
  }
}

+ (id)colorImage:(id)a3 withColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 size];
  UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
  [v6 size];
  v8 = v7;
  [v6 size];
  v10 = v9;
  CurrentContext = UIGraphicsGetCurrentContext();
  [v6 size];
  v17.b = 0.0;
  v17.c = 0.0;
  v17.a = 1.0;
  *&v17.d = xmmword_23F4D9490;
  v17.ty = v12;
  CGContextConcatCTM(CurrentContext, &v17);
  v13 = [v6 CGImage];

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v8;
  v20.size.height = v10;
  CGContextClipToMask(CurrentContext, v20, v13);
  v14 = [v5 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v14);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v8;
  v21.size.height = v10;
  CGContextFillRect(CurrentContext, v21);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

@end
@interface AKToggleButton
+ (id)colorImage:(id)image withColor:(id)color;
- (AKToggleButton)initWithFrame:(CGRect)frame templateImage:(id)image autoUpdatesColor:(BOOL)color;
- (void)_setDeselectedStateColorImage;
- (void)_setSelectedStateColorImage;
- (void)_touchCommitted:(id)committed;
- (void)_updateSelectionColorsAnimated:(BOOL)animated;
- (void)_updateStateColors;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setSelected:(BOOL)selected;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AKToggleButton

- (AKToggleButton)initWithFrame:(CGRect)frame templateImage:(id)image autoUpdatesColor:(BOOL)color
{
  colorCopy = color;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  v19.receiver = self;
  v19.super_class = AKToggleButton;
  height = [(AKToggleButton *)&v19 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    height->_showsBackgroundColor = 1;
    height->_shouldTintNormalImage = 0;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    selectedColor = v13->_selectedColor;
    v13->_selectedColor = whiteColor;

    v16 = [imageCopy imageWithRenderingMode:2];
    templateImage = v13->_templateImage;
    v13->_templateImage = v16;

    if (colorCopy)
    {
      [(AKToggleButton *)v13 addTarget:v13 action:sel__touchCommitted_ forControlEvents:64];
    }
  }

  return v13;
}

- (void)_touchCommitted:(id)committed
{
  v4 = [(AKToggleButton *)self isSelected]^ 1;

  [(AKToggleButton *)self setSelected:v4];
}

- (void)setSelected:(BOOL)selected
{
  v5.receiver = self;
  v5.super_class = AKToggleButton;
  [(AKToggleButton *)&v5 setSelected:selected];
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

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = AKToggleButton;
  [(AKToggleButton *)&v4 setHighlighted:highlighted];
  if ([(AKToggleButton *)self showsBackgroundColor])
  {
    [(AKToggleButton *)self _updateSelectionColorsAnimated:1];
  }
}

- (void)_updateSelectionColorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(AKToggleButton *)self showsBackgroundColor])
  {
LABEL_13:
    clearColor = [MEMORY[0x277D75348] clearColor];
    v13 = clearColor;
    goto LABEL_14;
  }

  if (animatedCopy)
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

  tintColor = [(AKToggleButton *)self tintColor];
  v13 = [tintColor colorWithAlphaComponent:0.35];

  clearColor = v13;
LABEL_14:
  v10 = clearColor;
  cGColor = [v13 CGColor];
  layer = [(AKToggleButton *)self layer];
  [layer setBackgroundColor:cGColor];
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  if (state)
  {
    v11.receiver = self;
    v11.super_class = AKToggleButton;
    [(AKToggleButton *)&v11 setImage:imageCopy forState:state];
  }

  else
  {
    if ([(AKToggleButton *)self shouldTintNormalImage])
    {
      v7 = objc_opt_class();
      templateImage = [(AKToggleButton *)self templateImage];
      tintColor = [(AKToggleButton *)self tintColor];
      v10 = [v7 colorImage:templateImage withColor:tintColor];

      v13.receiver = self;
      v13.super_class = AKToggleButton;
      [(AKToggleButton *)&v13 setImage:v10 forState:0];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = AKToggleButton;
      [(AKToggleButton *)&v12 setImage:imageCopy forState:0];
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
    templateImage = [(AKToggleButton *)self templateImage];
    v6 = [v4 colorImage:templateImage withColor:v3];

    v7.receiver = self;
    v7.super_class = AKToggleButton;
    [(AKToggleButton *)&v7 setImage:v6 forState:4];
  }
}

- (void)_setDeselectedStateColorImage
{
  if ([(AKToggleButton *)self shouldTintNormalImage])
  {
    tintColor = [(AKToggleButton *)self tintColor];
    v4 = objc_opt_class();
    templateImage = [(AKToggleButton *)self templateImage];
    v6 = [v4 colorImage:templateImage withColor:tintColor];

    v7.receiver = self;
    v7.super_class = AKToggleButton;
    [(AKToggleButton *)&v7 setImage:v6 forState:0];
  }
}

- (void)_updateStateColors
{
  traitCollection = [(AKToggleButton *)self traitCollection];
  v4 = sub_23F4516FC(traitCollection);

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

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = AKToggleButton;
  changeCopy = change;
  [(AKToggleButton *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(AKToggleButton *)self traitCollection:v7.receiver];
  v6 = sub_23F45174C(v5, changeCopy);

  if (!v6)
  {
    [(AKToggleButton *)self _updateStateColors];
  }
}

+ (id)colorImage:(id)image withColor:(id)color
{
  colorCopy = color;
  imageCopy = image;
  [imageCopy size];
  UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
  [imageCopy size];
  v8 = v7;
  [imageCopy size];
  v10 = v9;
  CurrentContext = UIGraphicsGetCurrentContext();
  [imageCopy size];
  v17.b = 0.0;
  v17.c = 0.0;
  v17.a = 1.0;
  *&v17.d = xmmword_23F4D9490;
  v17.ty = v12;
  CGContextConcatCTM(CurrentContext, &v17);
  cGImage = [imageCopy CGImage];

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v8;
  v20.size.height = v10;
  CGContextClipToMask(CurrentContext, v20, cGImage);
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
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
@interface _UNMaterialButton
- (_UNMaterialButton)initWithFrame:(CGRect)a3;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_applyButtonStyling;
- (void)_applyImageViewStyling;
- (void)_applyStyling;
- (void)_setFlagsRelatedToState:(unint64_t)a3 to:(BOOL)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageViewStyle:(int64_t)a3 forState:(unint64_t)a4;
- (void)setSelected:(BOOL)a3;
- (void)setStyle:(int64_t)a3 forState:(unint64_t)a4;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation _UNMaterialButton

- (_UNMaterialButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UNMaterialButton;
  v3 = [(_UNMaterialButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    styling = v3->_styling;
    v3->_styling = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    imageViewStyling = v3->_imageViewStyling;
    v3->_imageViewStyling = v6;

    [(_UNMaterialButton *)v3 setShowsTouchWhenHighlighted:0];
    [(_UNMaterialButton *)v3 _applyStyling];
  }

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(_UNMaterialButton *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UNMaterialButton;
    [(_UNMaterialButton *)&v5 setEnabled:v3];
    [(_UNMaterialButton *)self _applyStyling];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(_UNMaterialButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UNMaterialButton;
    [(_UNMaterialButton *)&v5 setHighlighted:v3];
    [(_UNMaterialButton *)self _applyStyling];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(_UNMaterialButton *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UNMaterialButton;
    [(_UNMaterialButton *)&v5 setSelected:v3];
    [(_UNMaterialButton *)self _applyStyling];
  }
}

- (void)setStyle:(int64_t)a3 forState:(unint64_t)a4
{
  styling = self->_styling;
  if (a3 == -1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)styling removeObjectForKey:v7];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)styling setObject:v7 forKey:v8];
  }

  if ([(_UNMaterialButton *)self state]== a4)
  {

    [(_UNMaterialButton *)self _applyButtonStyling];
  }
}

- (void)setImageViewStyle:(int64_t)a3 forState:(unint64_t)a4
{
  imageViewStyling = self->_imageViewStyling;
  if (a3 == -1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)imageViewStyling removeObjectForKey:v8];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)imageViewStyling setObject:v8 forKey:v9];
  }

  [(_UNMaterialButton *)self _setFlagsRelatedToState:a4 to:a3 == -1];
  if ([(_UNMaterialButton *)self state]== a4)
  {

    [(_UNMaterialButton *)self _applyImageViewStyling];
  }
}

- (void)_setFlagsRelatedToState:(unint64_t)a3 to:(BOOL)a4
{
  if (a3 == 2)
  {
    [(_UNMaterialButton *)self setAdjustsImageWhenDisabled:a4];
  }

  else if (a3 == 1)
  {
    [(_UNMaterialButton *)self setAdjustsImageWhenHighlighted:a4];
  }
}

- (void)_applyStyling
{
  [(_UNMaterialButton *)self _applyButtonStyling];

  [(_UNMaterialButton *)self _applyImageViewStyling];
}

- (void)_applyButtonStyling
{
  [(_UNMaterialButton *)self mt_removeAllVisualStyling];
  styling = self->_styling;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_UNMaterialButton state](self, "state")}];
  v7 = [(NSMutableDictionary *)styling objectForKey:v4];

  v5 = v7;
  if (v7)
  {
    v6 = [v7 integerValue];
    v5 = v7;
    if (v6 != -1)
    {
      [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self withStyle:?];
      v5 = v7;
    }
  }
}

- (void)_applyImageViewStyling
{
  v3 = [(_UNMaterialButton *)self imageView];
  [v3 mt_removeAllVisualStyling];

  imageViewStyling = self->_imageViewStyling;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_UNMaterialButton state](self, "state")}];
  v10 = [(NSMutableDictionary *)imageViewStyling objectForKey:v5];

  v6 = v10;
  if (v10)
  {
    v7 = [v10 integerValue];
    v6 = v10;
    if (v7 != -1)
    {
      visualStylingProvider = self->_visualStylingProvider;
      v9 = [(_UNMaterialButton *)self imageView];
      [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:v9 withStyle:v7];

      v6 = v10;
    }
  }
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  if (a3 == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  visualStylingProvider = a3;
  v8 = visualStylingProvider;
  if (a4 == 1)
  {
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider != v8)
    {
      v11 = v8;
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self];
      v9 = self->_visualStylingProvider;
      v10 = [(_UNMaterialButton *)self imageView];
      [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:v10];

      objc_storeStrong(&self->_visualStylingProvider, a3);
      visualStylingProvider = [(_UNMaterialButton *)self _applyStyling];
      v8 = v11;
    }
  }

  MEMORY[0x2821F96F8](visualStylingProvider, v8);
}

@end
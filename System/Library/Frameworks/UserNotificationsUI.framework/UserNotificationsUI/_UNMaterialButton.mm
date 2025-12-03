@interface _UNMaterialButton
- (_UNMaterialButton)initWithFrame:(CGRect)frame;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_applyButtonStyling;
- (void)_applyImageViewStyling;
- (void)_applyStyling;
- (void)_setFlagsRelatedToState:(unint64_t)state to:(BOOL)to;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageViewStyle:(int64_t)style forState:(unint64_t)state;
- (void)setSelected:(BOOL)selected;
- (void)setStyle:(int64_t)style forState:(unint64_t)state;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation _UNMaterialButton

- (_UNMaterialButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UNMaterialButton;
  v3 = [(_UNMaterialButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    styling = v3->_styling;
    v3->_styling = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    imageViewStyling = v3->_imageViewStyling;
    v3->_imageViewStyling = dictionary2;

    [(_UNMaterialButton *)v3 setShowsTouchWhenHighlighted:0];
    [(_UNMaterialButton *)v3 _applyStyling];
  }

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(_UNMaterialButton *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = _UNMaterialButton;
    [(_UNMaterialButton *)&v5 setEnabled:enabledCopy];
    [(_UNMaterialButton *)self _applyStyling];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(_UNMaterialButton *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = _UNMaterialButton;
    [(_UNMaterialButton *)&v5 setHighlighted:highlightedCopy];
    [(_UNMaterialButton *)self _applyStyling];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(_UNMaterialButton *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = _UNMaterialButton;
    [(_UNMaterialButton *)&v5 setSelected:selectedCopy];
    [(_UNMaterialButton *)self _applyStyling];
  }
}

- (void)setStyle:(int64_t)style forState:(unint64_t)state
{
  styling = self->_styling;
  if (style == -1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)styling removeObjectForKey:v7];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)styling setObject:v7 forKey:v8];
  }

  if ([(_UNMaterialButton *)self state]== state)
  {

    [(_UNMaterialButton *)self _applyButtonStyling];
  }
}

- (void)setImageViewStyle:(int64_t)style forState:(unint64_t)state
{
  imageViewStyling = self->_imageViewStyling;
  if (style == -1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)imageViewStyling removeObjectForKey:v8];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:style];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)imageViewStyling setObject:v8 forKey:v9];
  }

  [(_UNMaterialButton *)self _setFlagsRelatedToState:state to:style == -1];
  if ([(_UNMaterialButton *)self state]== state)
  {

    [(_UNMaterialButton *)self _applyImageViewStyling];
  }
}

- (void)_setFlagsRelatedToState:(unint64_t)state to:(BOOL)to
{
  if (state == 2)
  {
    [(_UNMaterialButton *)self setAdjustsImageWhenDisabled:to];
  }

  else if (state == 1)
  {
    [(_UNMaterialButton *)self setAdjustsImageWhenHighlighted:to];
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
    integerValue = [v7 integerValue];
    v5 = v7;
    if (integerValue != -1)
    {
      [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self withStyle:?];
      v5 = v7;
    }
  }
}

- (void)_applyImageViewStyling
{
  imageView = [(_UNMaterialButton *)self imageView];
  [imageView mt_removeAllVisualStyling];

  imageViewStyling = self->_imageViewStyling;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_UNMaterialButton state](self, "state")}];
  v10 = [(NSMutableDictionary *)imageViewStyling objectForKey:v5];

  v6 = v10;
  if (v10)
  {
    integerValue = [v10 integerValue];
    v6 = v10;
    if (integerValue != -1)
    {
      visualStylingProvider = self->_visualStylingProvider;
      imageView2 = [(_UNMaterialButton *)self imageView];
      [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:imageView2 withStyle:integerValue];

      v6 = v10;
    }
  }
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  if (category == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  visualStylingProvider = provider;
  v8 = visualStylingProvider;
  if (category == 1)
  {
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider != v8)
    {
      v11 = v8;
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self];
      v9 = self->_visualStylingProvider;
      imageView = [(_UNMaterialButton *)self imageView];
      [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:imageView];

      objc_storeStrong(&self->_visualStylingProvider, provider);
      visualStylingProvider = [(_UNMaterialButton *)self _applyStyling];
      v8 = v11;
    }
  }

  MEMORY[0x2821F96F8](visualStylingProvider, v8);
}

@end
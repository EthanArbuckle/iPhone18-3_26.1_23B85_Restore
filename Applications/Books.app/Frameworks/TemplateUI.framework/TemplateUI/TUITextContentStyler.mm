@interface TUITextContentStyler
- (BOOL)isEqualToStyle:(id)style;
- (void)applyStylingToLayer:(id)layer;
- (void)applyStylingToView:(id)view;
@end

@implementation TUITextContentStyler

- (void)applyStylingToLayer:(id)layer
{
  v3.receiver = self;
  v3.super_class = TUITextContentStyler;
  [(TUIBackgroundColorStyler *)&v3 applyStylingToLayer:layer];
}

- (void)applyStylingToView:(id)view
{
  viewCopy = view;
  v5.receiver = self;
  v5.super_class = TUITextContentStyler;
  [(TUIBackgroundColorStyler *)&v5 applyStylingToView:viewCopy];
  if (self->_tintColor && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewCopy setTintColor:self->_tintColor];
  }

  if (self->_textColor && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewCopy setTextColor:self->_textColor];
  }

  if (self->_font && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewCopy setFont:self->_font];
  }
}

- (BOOL)isEqualToStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, styleCopy);

  v12.receiver = self;
  v12.super_class = TUITextContentStyler;
  if ([(TUIBackgroundColorStyler *)&v12 isEqualToStyle:v6]&& ((textColor = self->_textColor, textColor == v6[2]) || [(UIColor *)textColor isEqual:?]) && ((font = self->_font, font == v6[3]) || [(UIFont *)font isEqual:?]))
  {
    tintColor = self->_tintColor;
    if (tintColor == v6[4])
    {
      v10 = 1;
    }

    else
    {
      v10 = [(UIColor *)tintColor isEqual:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
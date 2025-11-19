@interface TUITextContentStyler
- (BOOL)isEqualToStyle:(id)a3;
- (void)applyStylingToLayer:(id)a3;
- (void)applyStylingToView:(id)a3;
@end

@implementation TUITextContentStyler

- (void)applyStylingToLayer:(id)a3
{
  v3.receiver = self;
  v3.super_class = TUITextContentStyler;
  [(TUIBackgroundColorStyler *)&v3 applyStylingToLayer:a3];
}

- (void)applyStylingToView:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = TUITextContentStyler;
  [(TUIBackgroundColorStyler *)&v5 applyStylingToView:v4];
  if (self->_tintColor && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 setTintColor:self->_tintColor];
  }

  if (self->_textColor && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 setTextColor:self->_textColor];
  }

  if (self->_font && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 setFont:self->_font];
  }
}

- (BOOL)isEqualToStyle:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

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
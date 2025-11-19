@interface TUIBackgroundColorStyler
- (BOOL)isEqualToStyle:(id)a3;
- (void)applyStylingToLayer:(id)a3;
@end

@implementation TUIBackgroundColorStyler

- (void)applyStylingToLayer:(id)a3
{
  backgroundColor = self->_backgroundColor;
  v4 = a3;
  [v4 setBackgroundColor:{-[UIColor CGColor](backgroundColor, "CGColor")}];
}

- (BOOL)isEqualToStyle:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7 == self)
  {
    goto LABEL_8;
  }

  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor == v8->_backgroundColor)
  {
LABEL_8:
    v10 = 1;
  }

  else
  {
    v10 = [(UIColor *)backgroundColor isEqual:?];
  }

LABEL_10:

  return v10;
}

@end
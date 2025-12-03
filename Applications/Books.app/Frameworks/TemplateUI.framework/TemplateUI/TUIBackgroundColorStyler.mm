@interface TUIBackgroundColorStyler
- (BOOL)isEqualToStyle:(id)style;
- (void)applyStylingToLayer:(id)layer;
@end

@implementation TUIBackgroundColorStyler

- (void)applyStylingToLayer:(id)layer
{
  backgroundColor = self->_backgroundColor;
  layerCopy = layer;
  [layerCopy setBackgroundColor:{-[UIColor CGColor](backgroundColor, "CGColor")}];
}

- (BOOL)isEqualToStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = styleCopy;
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
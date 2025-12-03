@interface _TUIVisualEffectBoxStyler
- (BOOL)isEqualToStyle:(id)style;
- (_TUIVisualEffectBoxStyler)initWithBlurStyle:(unint64_t)style;
- (void)applyStylingToView:(id)view;
- (void)removeStylingFromView:(id)view;
@end

@implementation _TUIVisualEffectBoxStyler

- (_TUIVisualEffectBoxStyler)initWithBlurStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = _TUIVisualEffectBoxStyler;
  result = [(_TUIVisualEffectBoxStyler *)&v5 init];
  if (result)
  {
    result->_blurStyle = style;
  }

  return result;
}

- (void)applyStylingToView:(id)view
{
  blurStyle = self->_blurStyle;
  viewCopy = view;
  v9 = [UIBlurEffect effectWithStyle:[TUIVisualEffectBox uiBlurEffectStyle:blurStyle]];
  [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
  v6 = [[UIVisualEffectView alloc] initWithEffect:v9];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v6;

  [viewCopy frame];
  Width = CGRectGetWidth(v11);
  [viewCopy frame];
  [(UIVisualEffectView *)self->_visualEffectView setFrame:0.0, 0.0, Width, CGRectGetHeight(v12)];
  [viewCopy addSubview:self->_visualEffectView];

  [(UIVisualEffectView *)self->_visualEffectView setAutoresizingMask:18];
}

- (BOOL)isEqualToStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, styleCopy);

  if (v6 == self)
  {
    v8 = 1;
  }

  else
  {
    blurStyle = [(_TUIVisualEffectBoxStyler *)v6 blurStyle];
    v8 = blurStyle == [(_TUIVisualEffectBoxStyler *)self blurStyle];
  }

  return v8;
}

- (void)removeStylingFromView:(id)view
{
  [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = 0;
}

@end
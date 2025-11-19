@interface _TUIVisualEffectBoxStyler
- (BOOL)isEqualToStyle:(id)a3;
- (_TUIVisualEffectBoxStyler)initWithBlurStyle:(unint64_t)a3;
- (void)applyStylingToView:(id)a3;
- (void)removeStylingFromView:(id)a3;
@end

@implementation _TUIVisualEffectBoxStyler

- (_TUIVisualEffectBoxStyler)initWithBlurStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _TUIVisualEffectBoxStyler;
  result = [(_TUIVisualEffectBoxStyler *)&v5 init];
  if (result)
  {
    result->_blurStyle = a3;
  }

  return result;
}

- (void)applyStylingToView:(id)a3
{
  blurStyle = self->_blurStyle;
  v5 = a3;
  v9 = [UIBlurEffect effectWithStyle:[TUIVisualEffectBox uiBlurEffectStyle:blurStyle]];
  [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
  v6 = [[UIVisualEffectView alloc] initWithEffect:v9];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v6;

  [v5 frame];
  Width = CGRectGetWidth(v11);
  [v5 frame];
  [(UIVisualEffectView *)self->_visualEffectView setFrame:0.0, 0.0, Width, CGRectGetHeight(v12)];
  [v5 addSubview:self->_visualEffectView];

  [(UIVisualEffectView *)self->_visualEffectView setAutoresizingMask:18];
}

- (BOOL)isEqualToStyle:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (v6 == self)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(_TUIVisualEffectBoxStyler *)v6 blurStyle];
    v8 = v7 == [(_TUIVisualEffectBoxStyler *)self blurStyle];
  }

  return v8;
}

- (void)removeStylingFromView:(id)a3
{
  [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = 0;
}

@end
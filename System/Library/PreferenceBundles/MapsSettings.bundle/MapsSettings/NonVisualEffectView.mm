@interface NonVisualEffectView
- (NonVisualEffectView)initWithCoder:(id)coder;
- (NonVisualEffectView)initWithEffect:(id)effect;
- (NonVisualEffectView)initWithFrame:(CGRect)frame;
- (UIView)contentView;
- (void)_setCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius continuous:(BOOL)continuous maskedCorners:(unint64_t)corners;
- (void)setCustomBackgroundColor:(id)color;
- (void)setEffect:(id)effect;
- (void)updateTheme;
@end

@implementation NonVisualEffectView

- (NonVisualEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(NonVisualEffectView *)self initWithEffect:0];
  v8 = v7;
  if (v7)
  {
    [(NonVisualEffectView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (NonVisualEffectView)initWithEffect:(id)effect
{
  effectCopy = effect;
  v8.receiver = self;
  v8.super_class = NonVisualEffectView;
  v5 = [(NonVisualEffectView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(NonVisualEffectView *)v5 setAutoresizesSubviews:1];
    [(NonVisualEffectView *)v6 setEffect:effectCopy];
  }

  return v6;
}

- (NonVisualEffectView)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemeneted", v6, v7];

  return [(NonVisualEffectView *)self initWithEffect:0];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [UIView alloc];
    [(NonVisualEffectView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_contentView;
    self->_contentView = v5;

    [(UIView *)self->_contentView setClipsToBounds:1];
    [(UIView *)self->_contentView setAutoresizingMask:18];
    [(UIView *)self->_contentView _setCornerRadius:self->_cornerRadius];
    [(NonVisualEffectView *)self addSubview:self->_contentView];
    contentView = self->_contentView;
  }

  return contentView;
}

- (void)setEffect:(id)effect
{
  effectCopy = effect;
  effect = self->_effect;
  if (effect != effectCopy)
  {
    v15 = effectCopy;
    if (([(UIVisualEffect *)effect isEqual:effectCopy]& 1) == 0)
    {
      v6 = [(UIVisualEffect *)v15 copy];
      v7 = self->_effect;
      self->_effect = v6;

      backgroundView = self->_backgroundView;
      if (!self->_effect)
      {
        v9 = 1;
        goto LABEL_7;
      }

      if (backgroundView)
      {
        v9 = 0;
LABEL_7:
        [(UIView *)backgroundView setHidden:v9];
        goto LABEL_9;
      }

      v10 = [UIView alloc];
      [(NonVisualEffectView *)self bounds];
      v11 = [v10 initWithFrame:?];
      v12 = self->_backgroundView;
      self->_backgroundView = v11;

      [(UIView *)self->_backgroundView setAutoresizingMask:18];
      [(UIView *)self->_backgroundView _setCornerRadius:self->_cornerRadius];
      [(UIView *)self->_backgroundView setClipsToBounds:1];
      theme = [(NonVisualEffectView *)self theme];
      controlBackgroundColor = [theme controlBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:controlBackgroundColor];

      [(NonVisualEffectView *)self insertSubview:self->_backgroundView atIndex:0];
    }
  }

LABEL_9:

  _objc_release_x1();
}

- (void)_setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [(NonVisualEffectView *)self subviews];
    v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v9 + 1) + 8 * i) _setCornerRadius:radius];
        }

        v6 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_setCornerRadius:(double)radius continuous:(BOOL)continuous maskedCorners:(unint64_t)corners
{
  continuousCopy = continuous;
  self->_cornerRadius = radius;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  subviews = [(NonVisualEffectView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        layer = [v13 layer];
        [layer setMaskedCorners:corners];

        if (continuousCopy)
        {
          [v13 _setContinuousCornerRadius:radius];
        }

        else
        {
          [v13 _setCornerRadius:radius];
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)setCustomBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = self->_customBackgroundColor;
  v6 = colorCopy;
  if (v6 | v5)
  {
    v12 = v6;
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v12 copy];
      customBackgroundColor = self->_customBackgroundColor;
      self->_customBackgroundColor = v8;

      if (self->_customBackgroundColor)
      {
        [(NonVisualEffectView *)self setBackgroundColor:?];
      }

      else
      {
        theme = [(NonVisualEffectView *)self theme];
        controlBackgroundColor = [theme controlBackgroundColor];
        [(NonVisualEffectView *)self setBackgroundColor:controlBackgroundColor];
      }
    }
  }

  _objc_release_x1();
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = NonVisualEffectView;
  [(MapsThemeView *)&v6 updateTheme];
  customBackgroundColor = [(NonVisualEffectView *)self customBackgroundColor];

  if (!customBackgroundColor)
  {
    theme = [(NonVisualEffectView *)self theme];
    controlBackgroundColor = [theme controlBackgroundColor];
    [(UIView *)self->_backgroundView setBackgroundColor:controlBackgroundColor];
  }
}

@end
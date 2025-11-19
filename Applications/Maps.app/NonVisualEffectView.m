@interface NonVisualEffectView
- (NonVisualEffectView)initWithCoder:(id)a3;
- (NonVisualEffectView)initWithEffect:(id)a3;
- (NonVisualEffectView)initWithFrame:(CGRect)a3;
- (UIView)contentView;
- (void)_setCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3 continuous:(BOOL)a4 maskedCorners:(unint64_t)a5;
- (void)setCustomBackgroundColor:(id)a3;
- (void)setEffect:(id)a3;
- (void)updateTheme;
@end

@implementation NonVisualEffectView

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = NonVisualEffectView;
  [(MapsThemeView *)&v6 updateTheme];
  v3 = [(NonVisualEffectView *)self customBackgroundColor];

  if (!v3)
  {
    v4 = [(NonVisualEffectView *)self theme];
    v5 = [v4 controlBackgroundColor];
    [(UIView *)self->_backgroundView setBackgroundColor:v5];
  }
}

- (void)setCustomBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = self->_customBackgroundColor;
  v6 = v4;
  if (v6 | v5)
  {
    v12 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v12;
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
        v10 = [(NonVisualEffectView *)self theme];
        v11 = [v10 controlBackgroundColor];
        [(NonVisualEffectView *)self setBackgroundColor:v11];
      }

      v6 = v12;
    }
  }
}

- (void)_setCornerRadius:(double)a3 continuous:(BOOL)a4 maskedCorners:(unint64_t)a5
{
  v6 = a4;
  self->_cornerRadius = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NonVisualEffectView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 layer];
        [v14 setMaskedCorners:a5];

        if (v6)
        {
          [v13 _setContinuousCornerRadius:a3];
        }

        else
        {
          [v13 _setCornerRadius:a3];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NonVisualEffectView *)self subviews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) _setCornerRadius:a3];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setEffect:(id)a3
{
  v4 = a3;
  effect = self->_effect;
  if (effect != v4)
  {
    v16 = v4;
    v6 = [(UIVisualEffect *)effect isEqual:v4];
    v4 = v16;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIVisualEffect *)v16 copy];
      v8 = self->_effect;
      self->_effect = v7;

      backgroundView = self->_backgroundView;
      if (self->_effect)
      {
        if (!backgroundView)
        {
          v11 = [UIView alloc];
          [(NonVisualEffectView *)self bounds];
          v12 = [v11 initWithFrame:?];
          v13 = self->_backgroundView;
          self->_backgroundView = v12;

          [(UIView *)self->_backgroundView setAutoresizingMask:18];
          [(UIView *)self->_backgroundView _setCornerRadius:self->_cornerRadius];
          [(UIView *)self->_backgroundView setClipsToBounds:1];
          v14 = [(NonVisualEffectView *)self theme];
          v15 = [v14 controlBackgroundColor];
          [(UIView *)self->_backgroundView setBackgroundColor:v15];

          [(NonVisualEffectView *)self insertSubview:self->_backgroundView atIndex:0];
          goto LABEL_9;
        }

        v10 = 0;
      }

      else
      {
        v10 = 1;
      }

      [(UIView *)backgroundView setHidden:v10];
LABEL_9:
      v4 = v16;
    }
  }
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

- (NonVisualEffectView)initWithCoder:(id)a3
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemeneted", v6, v7];

  return [(NonVisualEffectView *)self initWithEffect:0];
}

- (NonVisualEffectView)initWithEffect:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NonVisualEffectView;
  v5 = [(NonVisualEffectView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(NonVisualEffectView *)v5 setAutoresizesSubviews:1];
    [(NonVisualEffectView *)v6 setEffect:v4];
  }

  return v6;
}

- (NonVisualEffectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(NonVisualEffectView *)self initWithEffect:0];
  v8 = v7;
  if (v7)
  {
    [(NonVisualEffectView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

@end
@interface TUIPointerStyle
+ (id)defaultPointerStyle;
- (BOOL)isEqual:(id)a3;
- (TUIPointerStyle)init;
- (TUIPointerStyle)initWithOther:(id)a3;
- (TUIPointerStyle)pointerStyleWithCursor:(id)a3;
- (TUIPointerStyle)pointerStyleWithEffect:(int64_t)a3;
- (TUIPointerStyle)pointerStyleWithPreferredTintMode:(int64_t)a3;
- (TUIPointerStyle)pointerStyleWithPrefersScale:(BOOL)a3;
- (TUIPointerStyle)pointerStyleWithPrefersShadow:(BOOL)a3;
- (id)pointerEffectWithPreview:(id)a3;
@end

@implementation TUIPointerStyle

- (TUIPointerStyle)init
{
  v3.receiver = self;
  v3.super_class = TUIPointerStyle;
  result = [(TUIPointerStyle *)&v3 init];
  if (result)
  {
    *&result->_prefersShadow = 257;
    result->_effect = 0;
    result->_preferredTintMode = 1;
  }

  return result;
}

- (TUIPointerStyle)initWithOther:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIPointerStyle;
  v5 = [(TUIPointerStyle *)&v9 init];
  if (v5)
  {
    v5->_effect = [v4 effect];
    v5->_prefersShadow = [v4 prefersShadow];
    v5->_prefersScale = [v4 prefersScale];
    v5->_preferredTintMode = [v4 preferredTintMode];
    v6 = [v4 cursor];
    cursor = v5->_cursor;
    v5->_cursor = v6;
  }

  return v5;
}

+ (id)defaultPointerStyle
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BOOL)isEqual:(id)a3
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
  v9 = v7 == self;
  if (v7)
  {
    v10 = v7 == self;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (self->_effect == v7->_effect && self->_prefersShadow == v7->_prefersShadow && self->_prefersScale == v7->_prefersScale && self->_preferredTintMode == v7->_preferredTintMode)
    {
      cursor = self->_cursor;
      if (cursor == v8->_cursor)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(TUIPointerCursor *)cursor isEqual:?];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)pointerEffectWithPreview:(id)a3
{
  v4 = a3;
  v5 = 0;
  effect = self->_effect;
  if (effect <= 1)
  {
    if (effect)
    {
      if (effect != 1)
      {
        goto LABEL_11;
      }

      v7 = UIPointerHighlightEffect;
    }

    else
    {
      v7 = UIPointerEffect;
    }

    goto LABEL_10;
  }

  if (effect == 2)
  {
    v7 = UIPointerLiftEffect;
LABEL_10:
    v5 = [v7 effectWithPreview:v4];
    goto LABEL_11;
  }

  if (effect == 3)
  {
    v5 = [UIPointerHoverEffect effectWithPreview:v4];
    [v5 setPrefersShadow:self->_prefersShadow];
    [v5 setPrefersScaledContent:self->_prefersScale];
    [v5 setPreferredTintMode:self->_preferredTintMode];
  }

LABEL_11:

  return v5;
}

- (TUIPointerStyle)pointerStyleWithEffect:(int64_t)a3
{
  v4 = self;
  if (v4->_effect != a3)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:v4];

    [(TUIPointerStyle *)v5 setEffect:a3];
    v4 = v5;
  }

  return v4;
}

- (TUIPointerStyle)pointerStyleWithPrefersShadow:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (v4->_prefersShadow != v3)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:v4];

    [(TUIPointerStyle *)v5 setPrefersShadow:v3];
    v4 = v5;
  }

  return v4;
}

- (TUIPointerStyle)pointerStyleWithPrefersScale:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (v4->_prefersScale != v3)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:v4];

    [(TUIPointerStyle *)v5 setPrefersScale:v3];
    v4 = v5;
  }

  return v4;
}

- (TUIPointerStyle)pointerStyleWithPreferredTintMode:(int64_t)a3
{
  v4 = self;
  if (v4->_preferredTintMode != a3)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:v4];

    [(TUIPointerStyle *)v5 setPreferredTintMode:a3];
    v4 = v5;
  }

  return v4;
}

- (TUIPointerStyle)pointerStyleWithCursor:(id)a3
{
  v4 = a3;
  v5 = [[TUIPointerStyle alloc] initWithOther:self];
  [(TUIPointerStyle *)v5 setCursor:v4];

  return v5;
}

@end
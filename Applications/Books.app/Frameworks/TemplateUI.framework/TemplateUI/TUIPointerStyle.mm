@interface TUIPointerStyle
+ (id)defaultPointerStyle;
- (BOOL)isEqual:(id)equal;
- (TUIPointerStyle)init;
- (TUIPointerStyle)initWithOther:(id)other;
- (TUIPointerStyle)pointerStyleWithCursor:(id)cursor;
- (TUIPointerStyle)pointerStyleWithEffect:(int64_t)effect;
- (TUIPointerStyle)pointerStyleWithPreferredTintMode:(int64_t)mode;
- (TUIPointerStyle)pointerStyleWithPrefersScale:(BOOL)scale;
- (TUIPointerStyle)pointerStyleWithPrefersShadow:(BOOL)shadow;
- (id)pointerEffectWithPreview:(id)preview;
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

- (TUIPointerStyle)initWithOther:(id)other
{
  otherCopy = other;
  v9.receiver = self;
  v9.super_class = TUIPointerStyle;
  v5 = [(TUIPointerStyle *)&v9 init];
  if (v5)
  {
    v5->_effect = [otherCopy effect];
    v5->_prefersShadow = [otherCopy prefersShadow];
    v5->_prefersScale = [otherCopy prefersScale];
    v5->_preferredTintMode = [otherCopy preferredTintMode];
    cursor = [otherCopy cursor];
    cursor = v5->_cursor;
    v5->_cursor = cursor;
  }

  return v5;
}

+ (id)defaultPointerStyle
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = equalCopy;
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

- (id)pointerEffectWithPreview:(id)preview
{
  previewCopy = preview;
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
    v5 = [v7 effectWithPreview:previewCopy];
    goto LABEL_11;
  }

  if (effect == 3)
  {
    v5 = [UIPointerHoverEffect effectWithPreview:previewCopy];
    [v5 setPrefersShadow:self->_prefersShadow];
    [v5 setPrefersScaledContent:self->_prefersScale];
    [v5 setPreferredTintMode:self->_preferredTintMode];
  }

LABEL_11:

  return v5;
}

- (TUIPointerStyle)pointerStyleWithEffect:(int64_t)effect
{
  selfCopy = self;
  if (selfCopy->_effect != effect)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:selfCopy];

    [(TUIPointerStyle *)v5 setEffect:effect];
    selfCopy = v5;
  }

  return selfCopy;
}

- (TUIPointerStyle)pointerStyleWithPrefersShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  selfCopy = self;
  if (selfCopy->_prefersShadow != shadowCopy)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:selfCopy];

    [(TUIPointerStyle *)v5 setPrefersShadow:shadowCopy];
    selfCopy = v5;
  }

  return selfCopy;
}

- (TUIPointerStyle)pointerStyleWithPrefersScale:(BOOL)scale
{
  scaleCopy = scale;
  selfCopy = self;
  if (selfCopy->_prefersScale != scaleCopy)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:selfCopy];

    [(TUIPointerStyle *)v5 setPrefersScale:scaleCopy];
    selfCopy = v5;
  }

  return selfCopy;
}

- (TUIPointerStyle)pointerStyleWithPreferredTintMode:(int64_t)mode
{
  selfCopy = self;
  if (selfCopy->_preferredTintMode != mode)
  {
    v5 = [[TUIPointerStyle alloc] initWithOther:selfCopy];

    [(TUIPointerStyle *)v5 setPreferredTintMode:mode];
    selfCopy = v5;
  }

  return selfCopy;
}

- (TUIPointerStyle)pointerStyleWithCursor:(id)cursor
{
  cursorCopy = cursor;
  v5 = [[TUIPointerStyle alloc] initWithOther:self];
  [(TUIPointerStyle *)v5 setCursor:cursorCopy];

  return v5;
}

@end
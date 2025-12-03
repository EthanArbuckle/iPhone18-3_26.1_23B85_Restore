@interface ABCarouselItem
- (BOOL)isEqual:(id)equal;
- (id)initWithImage:(char)image canBeHighlighted:(void *)highlighted identifier:;
@end

@implementation ABCarouselItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self)
    {
      canBeHighlighted = self->_canBeHighlighted;
      if (v5)
      {
        if (canBeHighlighted == *(v5 + 8))
        {
          v8 = self->_identifier;
LABEL_6:
          v9 = v6[2];
LABEL_7:
          v10 = ABEqualObjects(v8, v9);

LABEL_14:
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (canBeHighlighted)
      {
        goto LABEL_13;
      }

      v8 = self->_identifier;
    }

    else
    {
      if (v5)
      {
        if ((v5[1] & 1) == 0)
        {
          v8 = 0;
          goto LABEL_6;
        }

LABEL_13:
        v10 = 0;
        goto LABEL_14;
      }

      v8 = 0;
    }

    v9 = 0;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (id)initWithImage:(char)image canBeHighlighted:(void *)highlighted identifier:
{
  v8 = a2;
  highlightedCopy = highlighted;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = ABCarouselItem;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      *(self + 8) = image;
      v11 = [highlightedCopy copy];
      v12 = self[2];
      self[2] = v11;
    }
  }

  return self;
}

@end
@interface ABCarouselItem
- (BOOL)isEqual:(id)a3;
- (id)initWithImage:(char)a3 canBeHighlighted:(void *)a4 identifier:;
@end

@implementation ABCarouselItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (id)initWithImage:(char)a3 canBeHighlighted:(void *)a4 identifier:
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = ABCarouselItem;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      *(a1 + 8) = a3;
      v11 = [v9 copy];
      v12 = a1[2];
      a1[2] = v11;
    }
  }

  return a1;
}

@end
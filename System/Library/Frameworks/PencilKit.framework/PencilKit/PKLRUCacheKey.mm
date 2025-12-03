@interface PKLRUCacheKey
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PKLRUCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self)
      {
        key = self->_key;
      }

      else
      {
        key = 0;
      }

      v7 = key;
      v8 = v7;
      if (v5)
      {
        v9 = v5->_key;
      }

      else
      {
        v9 = 0;
      }

      if (![(NSCopying *)v7 isEqual:v9])
      {
        v12 = 0;
        goto LABEL_15;
      }

      if (self)
      {
        scaleFactor = self->_scaleFactor;
        if (v5)
        {
LABEL_10:
          v11 = v5->_scaleFactor;
LABEL_11:
          v12 = scaleFactor == v11;
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        scaleFactor = 0;
        if (v5)
        {
          goto LABEL_10;
        }
      }

      v11 = 0;
      goto LABEL_11;
    }

    v12 = 0;
  }

LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  if (self)
  {
    key = self->_key;
  }

  else
  {
    key = 0;
  }

  v4 = key;
  v5 = [(NSCopying *)v4 hash];
  if (self)
  {
    scaleFactor = self->_scaleFactor;
  }

  else
  {
    scaleFactor = 0;
  }

  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (scaleFactor ^ (scaleFactor >> 30))) ^ ((0xBF58476D1CE4E5B9 * (scaleFactor ^ (scaleFactor >> 30))) >> 27));
  v8 = v5 ^ (v7 >> 31);

  return v8 ^ v7;
}

@end
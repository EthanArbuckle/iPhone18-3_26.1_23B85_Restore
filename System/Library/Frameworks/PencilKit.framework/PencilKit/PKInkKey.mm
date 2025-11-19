@interface PKInkKey
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)initWithIdentifier:(uint64_t)a3 version:(void *)a4 variant:;
@end

@implementation PKInkKey

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = 0xBF58476D1CE4E5B9 * (self->_version ^ (self->_version >> 30));
  return [(NSString *)self->_variant hash]^ v3 ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27)));
}

- (void)initWithIdentifier:(uint64_t)a3 version:(void *)a4 variant:
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = PKInkKey;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      a1[2] = a3;
      v11 = [v9 copy];
      v12 = a1[3];
      a1[3] = v11;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self)
    {
      identifier = self->_identifier;
    }

    else
    {
      identifier = 0;
    }

    v7 = identifier;
    if (v5)
    {
      v8 = v5[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (![(NSString *)v7 isEqualToString:v9])
    {
      goto LABEL_17;
    }

    if (self)
    {
      version = self->_version;
      if (v5)
      {
LABEL_9:
        v11 = v5[2];
        goto LABEL_10;
      }
    }

    else
    {
      version = 0;
      if (v5)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_10:
    if (version == v11)
    {
      if (self)
      {
        variant = self->_variant;
      }

      else
      {
        variant = 0;
      }

      v13 = variant;
      v14 = v13;
      if (v5)
      {
        v15 = v5[3];
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NSString *)v13 isEqualToString:v15];

      goto LABEL_18;
    }

LABEL_17:
    v16 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v16 = 0;
LABEL_19:

  return v16;
}

@end
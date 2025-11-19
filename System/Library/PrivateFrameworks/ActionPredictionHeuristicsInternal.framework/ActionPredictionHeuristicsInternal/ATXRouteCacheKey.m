@interface ATXRouteCacheKey
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXRouteCacheKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = self->destinationLocation;
        v8 = v7;
        if (v7 == v6[1])
        {
        }

        else
        {
          v9 = [(NSString *)v7 isEqual:?];

          if ((v9 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v11 = self->transportType;
        v12 = v11;
        if (v11 == v6[2])
        {
        }

        else
        {
          v13 = [(NSString *)v11 isEqual:?];

          if ((v13 & 1) == 0)
          {
LABEL_12:
            v10 = 0;
LABEL_15:

            goto LABEL_16;
          }
        }

        v10 = self->localOnlyAfterFirstUpdate == *(v6 + 24);
        goto LABEL_15;
      }
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->destinationLocation hash];
  v4 = [(NSString *)self->transportType hash];
  return self->localOnlyAfterFirstUpdate - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
}

@end
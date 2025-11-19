@interface FPPair
+ (id)pairWithFirst:(id)a3 second:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPair:(id)a3;
@end

@implementation FPPair

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 8), a3);
    objc_storeStrong(v9 + 2, a4);
  }

  return v9;
}

- (BOOL)isEqualToPair:(id)a3
{
  v4 = a3;
  first = self->_first;
  if (first == v4[1] || [first isEqual:?])
  {
    second = self->_second;
    if (second == v4[2])
    {
      v7 = 1;
    }

    else
    {
      v7 = [second isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(FPPair *)self isEqualToPair:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

@end
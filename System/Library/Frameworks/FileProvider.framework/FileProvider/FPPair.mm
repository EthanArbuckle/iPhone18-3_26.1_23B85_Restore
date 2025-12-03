@interface FPPair
+ (id)pairWithFirst:(id)first second:(id)second;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPair:(id)pair;
@end

@implementation FPPair

+ (id)pairWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 8), first);
    objc_storeStrong(v9 + 2, second);
  }

  return v9;
}

- (BOOL)isEqualToPair:(id)pair
{
  pairCopy = pair;
  first = self->_first;
  if (first == pairCopy[1] || [first isEqual:?])
  {
    second = self->_second;
    if (second == pairCopy[2])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
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
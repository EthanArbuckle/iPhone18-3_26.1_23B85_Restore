@interface NSDictionary
- (BOOL)ds_BOOLFromKey:(id)key defaultValue:(BOOL)value failed:(BOOL *)failed;
- (id)ds_numberFromKey:(id)key defaultValue:(id)value failed:(BOOL *)failed;
- (id)ds_numberFromKey:(id)key lowerBound:(id)bound upperBound:(id)upperBound defaultValue:(id)value failed:(BOOL *)failed;
@end

@implementation NSDictionary

- (id)ds_numberFromKey:(id)key lowerBound:(id)bound upperBound:(id)upperBound defaultValue:(id)value failed:(BOOL *)failed
{
  boundCopy = bound;
  upperBoundCopy = upperBound;
  valueCopy = value;
  v15 = [(NSDictionary *)self objectForKey:key];
  if (v15)
  {
    v16 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v17 = [v16 compare:upperBoundCopy], objc_msgSend(v16, "compare:", boundCopy) <= 1) && v17 + 1 < 2)
    {
      v18 = v16;
    }

    else
    {
      v18 = valueCopy;

      if (failed)
      {
        *failed = 1;
      }
    }
  }

  else
  {
    v18 = valueCopy;
  }

  return v18;
}

- (id)ds_numberFromKey:(id)key defaultValue:(id)value failed:(BOOL *)failed
{
  valueCopy = value;
  v9 = [(NSDictionary *)self objectForKey:key];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = valueCopy;

      if (failed)
      {
        *failed = 1;
      }
    }
  }

  else
  {
    v11 = valueCopy;
  }

  return v11;
}

- (BOOL)ds_BOOLFromKey:(id)key defaultValue:(BOOL)value failed:(BOOL *)failed
{
  v7 = [(NSDictionary *)self objectForKey:key];
  if (!v7)
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    value = [v7 BOOLValue];
LABEL_4:

    return value;
  }

  if (!failed)
  {
    goto LABEL_4;
  }

  *failed = 1;

  return value;
}

@end
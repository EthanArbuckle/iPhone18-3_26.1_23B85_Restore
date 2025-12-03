@interface CADPropertyFilter(EKPredicateEvaluating)
- (BOOL)ekPredicateFilterMatches:()EKPredicateEvaluating;
@end

@implementation CADPropertyFilter(EKPredicateEvaluating)

- (BOOL)ekPredicateFilterMatches:()EKPredicateEvaluating
{
  v4 = a3;
  property = [self property];
  if (property > 0xE)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E77FDE50[property];
  }

  v7 = [v4 valueForKeyPath:v6];

  if ([self isInteger])
  {
    stringValue = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "integerValue")}];
  }

  else if ([self isString])
  {
    stringValue = [self stringValue];
  }

  else
  {
    if (([self isDate] & 1) == 0)
    {
      v9 = 0;
      v10 = v7 == 0;
      v11 = 1;
      goto LABEL_30;
    }

    stringValue = [self dateValue];
  }

  v9 = stringValue;
  v10 = v7 == 0;
  v11 = stringValue == 0;
  if (v7 && stringValue)
  {
    v12 = [v7 compare:stringValue];
    comparison = [self comparison];
    if (comparison > 2)
    {
      v14 = v12 != 1;
      v15 = v12 == 1;
      v19 = v12 != -1;
      if (comparison != 5)
      {
        v19 = v12 != 1;
      }

      if (comparison != 4)
      {
        v15 = v19;
      }

      v17 = comparison == 3;
    }

    else
    {
      v14 = v12 == 0;
      v15 = v12 != 0;
      v16 = v12 == -1;
      if (comparison != 2)
      {
        v16 = v12 == 0;
      }

      if (comparison != 1)
      {
        v15 = v16;
      }

      v17 = comparison == 0;
    }

    if (v17)
    {
      v18 = v14;
    }

    else
    {
      v18 = v15;
    }

    goto LABEL_33;
  }

  if (stringValue && !v7)
  {
    v18 = 0;
    goto LABEL_33;
  }

LABEL_30:
  comparison2 = [self comparison];
  v21 = v10 ^ v11;
  if (((1 << comparison2) & 0x16) == 0)
  {
    v21 = v10 ^ v11 ^ 1;
  }

  v18 = v21;
LABEL_33:

  return v18;
}

@end
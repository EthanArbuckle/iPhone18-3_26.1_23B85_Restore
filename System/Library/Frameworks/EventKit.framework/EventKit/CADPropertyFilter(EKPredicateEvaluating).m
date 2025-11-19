@interface CADPropertyFilter(EKPredicateEvaluating)
- (BOOL)ekPredicateFilterMatches:()EKPredicateEvaluating;
@end

@implementation CADPropertyFilter(EKPredicateEvaluating)

- (BOOL)ekPredicateFilterMatches:()EKPredicateEvaluating
{
  v4 = a3;
  v5 = [a1 property];
  if (v5 > 0xE)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E77FDE50[v5];
  }

  v7 = [v4 valueForKeyPath:v6];

  if ([a1 isInteger])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "integerValue")}];
  }

  else if ([a1 isString])
  {
    v8 = [a1 stringValue];
  }

  else
  {
    if (([a1 isDate] & 1) == 0)
    {
      v9 = 0;
      v10 = v7 == 0;
      v11 = 1;
      goto LABEL_30;
    }

    v8 = [a1 dateValue];
  }

  v9 = v8;
  v10 = v7 == 0;
  v11 = v8 == 0;
  if (v7 && v8)
  {
    v12 = [v7 compare:v8];
    v13 = [a1 comparison];
    if (v13 > 2)
    {
      v14 = v12 != 1;
      v15 = v12 == 1;
      v19 = v12 != -1;
      if (v13 != 5)
      {
        v19 = v12 != 1;
      }

      if (v13 != 4)
      {
        v15 = v19;
      }

      v17 = v13 == 3;
    }

    else
    {
      v14 = v12 == 0;
      v15 = v12 != 0;
      v16 = v12 == -1;
      if (v13 != 2)
      {
        v16 = v12 == 0;
      }

      if (v13 != 1)
      {
        v15 = v16;
      }

      v17 = v13 == 0;
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

  if (v8 && !v7)
  {
    v18 = 0;
    goto LABEL_33;
  }

LABEL_30:
  v20 = [a1 comparison];
  v21 = v10 ^ v11;
  if (((1 << v20) & 0x16) == 0)
  {
    v21 = v10 ^ v11 ^ 1;
  }

  v18 = v21;
LABEL_33:

  return v18;
}

@end
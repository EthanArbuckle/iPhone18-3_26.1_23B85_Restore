@interface UITouch(PKAdditions)
- (double)PK_locationInView:()PKAdditions;
- (double)PK_preciseLocationInView:()PKAdditions;
- (double)PK_rollAngle;
@end

@implementation UITouch(PKAdditions)

- (double)PK_locationInView:()PKAdditions
{
  v4 = a3;
  v5 = [v4 window];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [a1 window];
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v4 window];
  v10 = [a1 window];

  if (v9 == v10)
  {
LABEL_6:
    [a1 locationInView:v4];
    v18 = v19;
    goto LABEL_7;
  }

  v11 = [a1 window];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  v16 = [a1 window];
  [v16 PK_convertPoint:v4 toView:{v13, v15}];
  v18 = v17;

LABEL_7:
  return v18;
}

- (double)PK_preciseLocationInView:()PKAdditions
{
  v4 = a3;
  v5 = [v4 window];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [a1 window];
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v4 window];
  v10 = [a1 window];

  if (v9 == v10)
  {
LABEL_6:
    [a1 preciseLocationInView:v4];
    v18 = v19;
    goto LABEL_7;
  }

  v11 = [a1 window];
  [a1 preciseLocationInView:v11];
  v13 = v12;
  v15 = v14;

  v16 = [a1 window];
  [v16 PK_convertPoint:v4 toView:{v13, v15}];
  v18 = v17;

LABEL_7:
  return v18;
}

- (double)PK_rollAngle
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  [a1 _rollAngle];
  return result;
}

@end
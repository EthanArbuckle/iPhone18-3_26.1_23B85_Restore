@interface UITouch(PKAdditions)
- (double)PK_locationInView:()PKAdditions;
- (double)PK_preciseLocationInView:()PKAdditions;
- (double)PK_rollAngle;
@end

@implementation UITouch(PKAdditions)

- (double)PK_locationInView:()PKAdditions
{
  v4 = a3;
  window = [v4 window];
  if (!window)
  {
    goto LABEL_6;
  }

  v6 = window;
  window2 = [self window];
  if (!window2)
  {

    goto LABEL_6;
  }

  v8 = window2;
  window3 = [v4 window];
  window4 = [self window];

  if (window3 == window4)
  {
LABEL_6:
    [self locationInView:v4];
    v18 = v19;
    goto LABEL_7;
  }

  window5 = [self window];
  [self locationInView:window5];
  v13 = v12;
  v15 = v14;

  window6 = [self window];
  [window6 PK_convertPoint:v4 toView:{v13, v15}];
  v18 = v17;

LABEL_7:
  return v18;
}

- (double)PK_preciseLocationInView:()PKAdditions
{
  v4 = a3;
  window = [v4 window];
  if (!window)
  {
    goto LABEL_6;
  }

  v6 = window;
  window2 = [self window];
  if (!window2)
  {

    goto LABEL_6;
  }

  v8 = window2;
  window3 = [v4 window];
  window4 = [self window];

  if (window3 == window4)
  {
LABEL_6:
    [self preciseLocationInView:v4];
    v18 = v19;
    goto LABEL_7;
  }

  window5 = [self window];
  [self preciseLocationInView:window5];
  v13 = v12;
  v15 = v14;

  window6 = [self window];
  [window6 PK_convertPoint:v4 toView:{v13, v15}];
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

  [self _rollAngle];
  return result;
}

@end
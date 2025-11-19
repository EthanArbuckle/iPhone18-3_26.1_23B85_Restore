@interface QLPXAngleNumberFilter
- (double)updatedOutput;
@end

@implementation QLPXAngleNumberFilter

- (double)updatedOutput
{
  [(QLPXNumberFilter *)self input];
  v4 = v3;
  [(QLPXNumberFilter *)self output];
  for (i = v4 - v5; v4 - v5 > 3.14159265; i = v4 - v5)
  {
    v4 = v4 + -6.28318531;
  }

  if (i < -3.14159265)
  {
    do
    {
      v4 = v4 + 6.28318531;
    }

    while (v4 - v5 < -3.14159265);
  }

  return v4;
}

@end
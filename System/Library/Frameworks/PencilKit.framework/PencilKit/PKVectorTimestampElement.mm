@interface PKVectorTimestampElement
- (BOOL)isEqual:(id)a3;
@end

@implementation PKVectorTimestampElement

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PKVectorTimestampElement *)self clock];
  if (v5 == [v4 clock])
  {
    v6 = [(PKVectorTimestampElement *)self subclock];
    v7 = v6 == [v4 subclock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
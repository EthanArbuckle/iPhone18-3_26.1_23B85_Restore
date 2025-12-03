@interface PKVectorTimestampElement
- (BOOL)isEqual:(id)equal;
@end

@implementation PKVectorTimestampElement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  clock = [(PKVectorTimestampElement *)self clock];
  if (clock == [equalCopy clock])
  {
    subclock = [(PKVectorTimestampElement *)self subclock];
    v7 = subclock == [equalCopy subclock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
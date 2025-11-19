@interface CNContainerMeIdentifierDescription
- (void)ABValueFromCNValue:(id)a3;
@end

@implementation CNContainerMeIdentifierDescription

- (void)ABValueFromCNValue:(id)a3
{
  v3 = [a3 intValue];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  if (!v4)
  {
    return 0;
  }

  v5 = CFRetain(v4);
  if (!v5)
  {
    return 0;
  }

  return CFAutorelease(v5);
}

@end
@interface CNContainerMeIdentifierDescription
- (void)ABValueFromCNValue:(id)value;
@end

@implementation CNContainerMeIdentifierDescription

- (void)ABValueFromCNValue:(id)value
{
  intValue = [value intValue];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
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
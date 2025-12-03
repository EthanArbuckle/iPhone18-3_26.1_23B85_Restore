@interface CNContainerIdentifierDescription
- (id)CNValueFromABValue:(void *)value;
@end

@implementation CNContainerIdentifierDescription

- (id)CNValueFromABValue:(void *)value
{
  v3 = MEMORY[0x1E696AEC0];
  valueCopy = value;
  v5 = [[v3 alloc] initWithString:valueCopy];

  return v5;
}

@end
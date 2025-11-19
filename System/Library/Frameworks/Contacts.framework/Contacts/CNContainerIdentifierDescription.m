@interface CNContainerIdentifierDescription
- (id)CNValueFromABValue:(void *)a3;
@end

@implementation CNContainerIdentifierDescription

- (id)CNValueFromABValue:(void *)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  return v5;
}

@end
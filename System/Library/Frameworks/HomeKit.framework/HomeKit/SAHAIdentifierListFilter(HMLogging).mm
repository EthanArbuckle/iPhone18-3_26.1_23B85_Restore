@interface SAHAIdentifierListFilter(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAIdentifierListFilter(HMLogging)

- (id)hm_shortDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7E40];
  identifiers = [self identifiers];
  appendToShortDescription(string, v3, identifiers);

  return string;
}

@end
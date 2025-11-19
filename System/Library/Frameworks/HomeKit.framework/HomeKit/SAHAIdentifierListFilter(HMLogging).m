@interface SAHAIdentifierListFilter(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAIdentifierListFilter(HMLogging)

- (id)hm_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7E40];
  v4 = [a1 identifiers];
  appendToShortDescription(v2, v3, v4);

  return v2;
}

@end
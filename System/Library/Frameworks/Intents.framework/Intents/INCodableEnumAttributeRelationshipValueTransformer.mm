@interface INCodableEnumAttributeRelationshipValueTransformer
@end

@implementation INCodableEnumAttributeRelationshipValueTransformer

uint64_t __79___INCodableEnumAttributeRelationshipValueTransformer__transformedStringValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end
@interface FigAlternateObjCVideoAttributesDummy
- (id)videoLayoutAttributes;
@end

@implementation FigAlternateObjCVideoAttributesDummy

- (id)videoLayoutAttributes
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = objc_alloc_init(FigAlternateObjCVideoLayoutAttributesDummy);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

@end